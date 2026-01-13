import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { trpc } from "@/lib/trpc";
import { Link } from "wouter";
import {
  User,
  Crown,
  Settings,
  Award,
  TrendingUp,
  Clock,
  Flame,
  BookOpen,
} from "lucide-react";
import { DailyPracticeReminder } from "@/components/DailyPracticeReminder";

export default function Profile() {
  // Fetch user statistics (will return defaults if not authenticated)
  const { data: meditationStats } = trpc.meditations.myStats.useQuery(undefined, {
    retry: false,
  });

  const { data: streakData } = trpc.progress.streak.useQuery(undefined, {
    retry: false,
  });

  // Fetch progress for all 6 pathways
  const { data: pathway1 } = trpc.pathways.myProgress.useQuery({ pathwayId: 1 }, { retry: false });
  const { data: pathway2 } = trpc.pathways.myProgress.useQuery({ pathwayId: 2 }, { retry: false });
  const { data: pathway3 } = trpc.pathways.myProgress.useQuery({ pathwayId: 3 }, { retry: false });
  const { data: pathway4 } = trpc.pathways.myProgress.useQuery({ pathwayId: 4 }, { retry: false });
  const { data: pathway5 } = trpc.pathways.myProgress.useQuery({ pathwayId: 5 }, { retry: false });
  const { data: pathway6 } = trpc.pathways.myProgress.useQuery({ pathwayId: 6 }, { retry: false });

  const pathwayProgress = [pathway1, pathway2, pathway3, pathway4, pathway5, pathway6].filter(Boolean);

  // Calculate total progress across all pathways
  const totalProgress = pathwayProgress && pathwayProgress.length > 0
    ? Math.floor(
        pathwayProgress.reduce((sum: number, p: any) => sum + (p?.completionPercentage || 0), 0) /
          pathwayProgress.length
      )
    : 0;

  // Calculate total completed lessons
  const totalLessons = pathwayProgress && pathwayProgress.length > 0
    ? pathwayProgress.reduce((sum: number, p: any) => sum + (p?.completedLessons || 0), 0)
    : 0;

  // Calculate meditation streak
  const meditationStreak = streakData?.currentStreak || 0;
  const totalMinutes = meditationStats?.totalMinutes || 0;
  const totalSessions = meditationStats?.totalSessions || 0;

  // Calculate achievements (simple milestone-based)
  const achievements = [];
  if (totalLessons >= 1) achievements.push("First Lesson");
  if (totalLessons >= 5) achievements.push("Knowledge Seeker");
  if (totalLessons >= 10) achievements.push("Dedicated Student");
  if (meditationStreak >= 3) achievements.push("3-Day Streak");
  if (meditationStreak >= 7) achievements.push("Week Warrior");
  if (meditationStreak >= 30) achievements.push("Month Master");
  if (totalMinutes >= 60) achievements.push("Hour of Peace");
  if (totalMinutes >= 300) achievements.push("Meditation Devotee");

  return (
    <div className="min-h-screen pb-24">
      {/* Header */}
      <div className="bg-gradient-to-br from-orange-50 to-purple-50 dark:from-orange-950 dark:to-purple-950 px-6 py-8">
        <div className="flex items-center gap-4 mb-6">
          <div className="w-20 h-20 bg-gradient-to-br from-orange-500 to-purple-600 rounded-full flex items-center justify-center">
            <User className="w-10 h-10 text-white" />
          </div>
          <div className="flex-1">
            <h1 className="text-2xl font-bold">Seeker of Wisdom</h1>
            <p className="text-sm text-muted-foreground">Tamil AI Student</p>
          </div>
        </div>

        <div className="flex items-center gap-2">
          <Badge className="capitalize">
            <Crown className="w-3 h-3 mr-1" />
            Full Access
          </Badge>
        </div>
      </div>

      {/* Stats */}
      <div className="px-6 py-6">
        <h2 className="text-lg font-semibold mb-4">Your Progress</h2>
        <div className="grid grid-cols-2 gap-3">
          <Card>
            <CardContent className="pt-6 text-center">
              <div className="w-12 h-12 bg-orange-100 dark:bg-orange-900 rounded-full flex items-center justify-center mx-auto mb-2">
                <Flame className="w-6 h-6 text-orange-600" />
              </div>
              <p className="text-2xl font-bold">{meditationStreak}</p>
              <p className="text-xs text-muted-foreground">Day Streak</p>
            </CardContent>
          </Card>

          <Card>
            <CardContent className="pt-6 text-center">
              <div className="w-12 h-12 bg-purple-100 dark:bg-purple-900 rounded-full flex items-center justify-center mx-auto mb-2">
                <Clock className="w-6 h-6 text-purple-600" />
              </div>
              <p className="text-2xl font-bold">{totalMinutes}</p>
              <p className="text-xs text-muted-foreground">Minutes</p>
            </CardContent>
          </Card>

          <Card>
            <CardContent className="pt-6 text-center">
              <div className="w-12 h-12 bg-pink-100 dark:bg-pink-900 rounded-full flex items-center justify-center mx-auto mb-2">
                <Award className="w-6 h-6 text-pink-600" />
              </div>
              <p className="text-2xl font-bold">{achievements.length}</p>
              <p className="text-xs text-muted-foreground">Achievements</p>
            </CardContent>
          </Card>

          <Card>
            <CardContent className="pt-6 text-center">
              <div className="w-12 h-12 bg-blue-100 dark:bg-blue-900 rounded-full flex items-center justify-center mx-auto mb-2">
                <TrendingUp className="w-6 h-6 text-blue-600" />
              </div>
              <p className="text-2xl font-bold">{totalProgress}%</p>
              <p className="text-xs text-muted-foreground">Complete</p>
            </CardContent>
          </Card>
        </div>
      </div>

      {/* Learning Progress */}
      <div className="px-6 py-6">
        <h2 className="text-lg font-semibold mb-4">Learning Pathways</h2>
        <div className="space-y-3">
          {pathwayProgress.length > 0 ? (
            pathwayProgress.map((pathway: any) => (
              <Card key={pathway.pathwayId}>
                <CardContent className="p-4">
                  <div className="flex items-center justify-between mb-2">
                    <div className="flex items-center gap-2">
                      <BookOpen className="w-4 h-4 text-primary" />
                      <span className="font-medium text-sm">
                        Pathway {pathway.pathwayId}
                      </span>
                    </div>
                    <span className="text-sm font-bold">
                      {Math.floor(pathway.completionPercentage || 0)}%
                    </span>
                  </div>
                  <div className="w-full bg-secondary rounded-full h-2">
                    <div
                      className="bg-primary rounded-full h-2 transition-all"
                      style={{ width: `${pathway.completionPercentage || 0}%` }}
                    />
                  </div>
                  <p className="text-xs text-muted-foreground mt-2">
                    {pathway.completedLessons || 0} lessons completed
                  </p>
                </CardContent>
              </Card>
            ))
          ) : (
            <Card>
              <CardContent className="p-6 text-center">
                <BookOpen className="w-12 h-12 text-muted-foreground mx-auto mb-3" />
                <p className="text-muted-foreground">No progress yet</p>
                <p className="text-sm text-muted-foreground mt-2">
                  Start learning to track your progress
                </p>
                <Link href="/learn">
                  <Button className="mt-4">Start Learning</Button>
                </Link>
              </CardContent>
            </Card>
          )}
        </div>
      </div>

      {/* Meditation Stats */}
      <div className="px-6 py-6">
        <h2 className="text-lg font-semibold mb-4">Meditation Practice</h2>
        <Card>
          <CardContent className="p-6">
            <div className="space-y-4">
              <div className="flex items-center justify-between">
                <span className="text-sm text-muted-foreground">
                  Total Sessions
                </span>
                <span className="font-bold">{totalSessions}</span>
              </div>
              <div className="flex items-center justify-between">
                <span className="text-sm text-muted-foreground">
                  Total Time
                </span>
                <span className="font-bold">{totalMinutes} minutes</span>
              </div>
              <div className="flex items-center justify-between">
                <span className="text-sm text-muted-foreground">
                  Current Streak
                </span>
                <span className="font-bold">{meditationStreak} days</span>
              </div>
              <div className="flex items-center justify-between">
                <span className="text-sm text-muted-foreground">
                  Average Session
                </span>
                <span className="font-bold">
                  {totalSessions > 0
                    ? Math.floor(totalMinutes / totalSessions)
                    : 0}{" "}
                  minutes
                </span>
              </div>
            </div>
          </CardContent>
        </Card>
      </div>

      {/* Daily Practice Reminder */}
      <div className="px-6 py-6">
        <DailyPracticeReminder />
      </div>

      {/* Achievements */}
      <div className="px-6 py-6">
        <h2 className="text-lg font-semibold mb-4">Achievements</h2>
        {achievements.length > 0 ? (
          <div className="grid grid-cols-2 gap-3">
            {achievements.map((achievement) => (
              <Card key={achievement}>
                <CardContent className="p-4 text-center">
                  <Award className="w-8 h-8 text-primary mx-auto mb-2" />
                  <p className="text-xs font-medium">{achievement}</p>
                </CardContent>
              </Card>
            ))}
          </div>
        ) : (
          <Card>
            <CardContent className="p-6 text-center">
              <Award className="w-12 h-12 text-muted-foreground mx-auto mb-3" />
              <p className="text-muted-foreground">No achievements yet</p>
              <p className="text-sm text-muted-foreground mt-2">
                Complete lessons and meditate to unlock achievements
              </p>
            </CardContent>
          </Card>
        )}
      </div>

      {/* Settings */}
      <div className="px-6 py-6 space-y-3">
        <Card className="cursor-pointer hover:shadow-md transition-shadow">
          <CardContent className="p-4 flex items-center justify-between">
            <div className="flex items-center gap-3">
              <Settings className="w-5 h-5" />
              <span className="font-medium">Settings</span>
            </div>
          </CardContent>
        </Card>
        
        <Link href="/attribution">
          <Card className="cursor-pointer hover:shadow-md transition-shadow">
            <CardContent className="p-4 flex items-center justify-between">
              <div className="flex items-center gap-3">
                <BookOpen className="w-5 h-5" />
                <span className="font-medium">Attribution & Sources</span>
              </div>
            </CardContent>
          </Card>
        </Link>
      </div>
    </div>
  );
}
