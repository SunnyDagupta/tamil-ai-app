import { trpc } from "@/lib/trpc";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import {
  Flame,
  Clock,
  CheckCircle2,
  TrendingUp,
  Award,
  BookOpen,
  Loader2,
} from "lucide-react";
import { Link } from "wouter";
import { useAuth } from "@/_core/hooks/useAuth";

export default function Dashboard() {
  const { user } = useAuth();

  const { data: streak, isLoading: streakLoading } = trpc.progress.streak.useQuery();
  const { data: stats, isLoading: statsLoading } = trpc.meditations.myStats.useQuery();
  const { data: achievements, isLoading: achievementsLoading } =
    trpc.progress.achievements.useQuery();
  const { data: recentSessions, isLoading: sessionsLoading } =
    trpc.meditations.mySessions.useQuery({ limit: 5 });
  const { data: subscription } = trpc.subscription.current.useQuery();

  const isLoading = streakLoading || statsLoading || achievementsLoading || sessionsLoading;

  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <Loader2 className="w-8 h-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-b from-background to-muted/20">
      <div className="container mx-auto px-4 py-8">
        {/* Header */}
        <div className="mb-8">
          <h1 className="text-4xl font-bold mb-2">Welcome back, {user?.name}!</h1>
          <p className="text-muted-foreground">Track your journey to super intelligence</p>
        </div>

        {/* Stats Grid */}
        <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
          {/* Streak */}
          <Card>
            <CardHeader className="pb-3">
              <div className="flex items-center justify-between">
                <CardTitle className="text-sm font-medium">Current Streak</CardTitle>
                <Flame className="w-5 h-5 text-orange-500" />
              </div>
            </CardHeader>
            <CardContent>
              <div className="text-3xl font-bold">{streak?.currentStreak || 0} days</div>
              <p className="text-xs text-muted-foreground mt-1">
                Longest: {streak?.longestStreak || 0} days
              </p>
            </CardContent>
          </Card>

          {/* Total Time */}
          <Card>
            <CardHeader className="pb-3">
              <div className="flex items-center justify-between">
                <CardTitle className="text-sm font-medium">Total Time</CardTitle>
                <Clock className="w-5 h-5 text-primary" />
              </div>
            </CardHeader>
            <CardContent>
              <div className="text-3xl font-bold">{stats?.totalMinutes || 0} min</div>
              <p className="text-xs text-muted-foreground mt-1">
                {stats?.totalSessions || 0} sessions
              </p>
            </CardContent>
          </Card>

          {/* Completed */}
          <Card>
            <CardHeader className="pb-3">
              <div className="flex items-center justify-between">
                <CardTitle className="text-sm font-medium">Completed</CardTitle>
                <CheckCircle2 className="w-5 h-5 text-green-500" />
              </div>
            </CardHeader>
            <CardContent>
              <div className="text-3xl font-bold">{stats?.completedSessions || 0}</div>
              <p className="text-xs text-muted-foreground mt-1">
                {stats?.totalSessions
                  ? Math.round((stats.completedSessions / stats.totalSessions) * 100)
                  : 0}
                % completion rate
              </p>
            </CardContent>
          </Card>

          {/* Tier */}
          <Card>
            <CardHeader className="pb-3">
              <div className="flex items-center justify-between">
                <CardTitle className="text-sm font-medium">Subscription</CardTitle>
                <TrendingUp className="w-5 h-5 text-accent" />
              </div>
            </CardHeader>
            <CardContent>
              <Badge className="text-base">
                {subscription?.tier.displayName || "Beginner"}
              </Badge>
              {!subscription && (
                <Link href="/pricing">
                  <Button variant="link" size="sm" className="mt-2 p-0 h-auto">
                    Upgrade →
                  </Button>
                </Link>
              )}
            </CardContent>
          </Card>
        </div>

        <div className="grid lg:grid-cols-2 gap-8">
          {/* Recent Sessions */}
          <Card>
            <CardHeader>
              <div className="flex items-center justify-between">
                <CardTitle>Recent Sessions</CardTitle>
                <Link href="/meditations">
                  <Button variant="ghost" size="sm">
                    View All
                  </Button>
                </Link>
              </div>
            </CardHeader>
            <CardContent>
              {recentSessions && recentSessions.length > 0 ? (
                <div className="space-y-4">
                  {recentSessions.map((session) => (
                    <div
                      key={session.session.id}
                      className="flex items-center justify-between p-3 rounded-lg bg-muted/50"
                    >
                      <div className="flex-1">
                        <p className="font-medium">{session.meditation.title}</p>
                        <p className="text-sm text-muted-foreground">
                          {Math.floor(session.session.durationListenedSeconds / 60)} minutes
                        </p>
                      </div>
                      {session.session.completed ? (
                        <CheckCircle2 className="w-5 h-5 text-green-500" />
                      ) : (
                        <Badge variant="outline">In Progress</Badge>
                      )}
                    </div>
                  ))}
                </div>
              ) : (
                <div className="text-center py-8 text-muted-foreground">
                  <BookOpen className="w-12 h-12 mx-auto mb-4 opacity-50" />
                  <p>No sessions yet. Start your first meditation!</p>
                  <Link href="/meditations">
                    <Button className="mt-4">Browse Meditations</Button>
                  </Link>
                </div>
              )}
            </CardContent>
          </Card>

          {/* Achievements */}
          <Card>
            <CardHeader>
              <div className="flex items-center justify-between">
                <CardTitle>Achievements</CardTitle>
                <Award className="w-5 h-5 text-accent" />
              </div>
              <CardDescription>Unlock badges as you progress</CardDescription>
            </CardHeader>
            <CardContent>
              {achievements && achievements.length > 0 ? (
                <div className="grid grid-cols-3 gap-4">
                  {achievements.map((ua) => (
                    <div
                      key={ua.userAchievement.id}
                      className="flex flex-col items-center text-center p-3 rounded-lg bg-muted/50"
                    >
                      {ua.achievement.iconUrl ? (
                        <img
                          src={ua.achievement.iconUrl}
                          alt={ua.achievement.name}
                          className="w-12 h-12 mb-2"
                        />
                      ) : (
                        <Award className="w-12 h-12 mb-2 text-primary" />
                      )}
                      <p className="text-xs font-medium">{ua.achievement.name}</p>
                    </div>
                  ))}
                </div>
              ) : (
                <div className="text-center py-8 text-muted-foreground">
                  <Award className="w-12 h-12 mx-auto mb-4 opacity-50" />
                  <p>Complete meditations to unlock achievements!</p>
                </div>
              )}
            </CardContent>
          </Card>
        </div>

        {/* Quick Actions */}
        <Card className="mt-8">
          <CardHeader>
            <CardTitle>Continue Your Journey</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="grid md:grid-cols-3 gap-4">
              <Link href="/meditations">
                <Button variant="outline" className="w-full h-auto py-6 flex-col gap-2">
                  <BookOpen className="w-6 h-6" />
                  <span>Browse Meditations</span>
                </Button>
              </Link>
              <Link href="/search">
                <Button variant="outline" className="w-full h-auto py-6 flex-col gap-2">
                  <BookOpen className="w-6 h-6" />
                  <span>Search Thirukkural</span>
                </Button>
              </Link>
              <Link href="/pathways">
                <Button variant="outline" className="w-full h-auto py-6 flex-col gap-2">
                  <TrendingUp className="w-6 h-6" />
                  <span>Learning Pathways</span>
                </Button>
              </Link>
            </div>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
