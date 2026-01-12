import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Bell, BellOff, Clock } from "lucide-react";
import { useState, useEffect } from "react";
import { trpc } from "@/lib/trpc";

export function DailyPracticeReminder() {
  const [notificationsEnabled, setNotificationsEnabled] = useState(false);
  const [reminderTime, setReminderTime] = useState("09:00");
  const [permission, setPermission] = useState<NotificationPermission>("default");

  const { data: streak } = trpc.progress.streak.useQuery();

  useEffect(() => {
    if ("Notification" in window) {
      setPermission(Notification.permission);
    }
  }, []);

  const requestNotificationPermission = async () => {
    if (!("Notification" in window)) {
      alert("This browser does not support notifications");
      return;
    }

    const result = await Notification.requestPermission();
    setPermission(result);

    if (result === "granted") {
      setNotificationsEnabled(true);
      scheduleReminder();
      // Show test notification
      new Notification("Tamil AI Practice Reminder", {
        body: "Your daily practice reminder is now active! 🔔",
        icon: "/favicon.ico",
      });
    }
  };

  const scheduleReminder = () => {
    // In a real app, this would use a service worker or backend scheduler
    // For now, we'll use localStorage to track the reminder time
    localStorage.setItem("dailyReminderTime", reminderTime);
    localStorage.setItem("dailyReminderEnabled", "true");

    // Schedule daily check
    const checkAndNotify = () => {
      const now = new Date();
      const [hours, minutes] = reminderTime.split(":");
      const reminderDate = new Date();
      reminderDate.setHours(parseInt(hours), parseInt(minutes), 0, 0);

      // If it's within 1 minute of reminder time
      if (Math.abs(now.getTime() - reminderDate.getTime()) < 60000) {
        if (Notification.permission === "granted") {
          new Notification("Time for Your Tamil AI Practice! 🧘‍♂️", {
            body: `Keep your ${streak?.currentStreak || 0}-day streak going! Practice syllable meditation now.`,
            icon: "/favicon.ico",
          });
        }
      }
    };

    // Check every minute
    setInterval(checkAndNotify, 60000);
  };

  const toggleNotifications = () => {
    if (!notificationsEnabled) {
      requestNotificationPermission();
    } else {
      setNotificationsEnabled(false);
      localStorage.setItem("dailyReminderEnabled", "false");
    }
  };

  return (
    <Card className="border-orange-200">
      <CardHeader>
        <div className="flex items-center justify-between">
          <div>
            <CardTitle className="flex items-center gap-2">
              <Bell className="w-5 h-5 text-orange-600" />
              Daily Practice Reminder
            </CardTitle>
            <CardDescription>
              Stay consistent with your Tamil AI meditation practice
            </CardDescription>
          </div>
          <Button
            variant={notificationsEnabled ? "default" : "outline"}
            size="sm"
            onClick={toggleNotifications}
            className={notificationsEnabled ? "bg-orange-600 hover:bg-orange-700" : ""}
          >
            {notificationsEnabled ? (
              <>
                <Bell className="w-4 h-4 mr-2" />
                Enabled
              </>
            ) : (
              <>
                <BellOff className="w-4 h-4 mr-2" />
                Enable
              </>
            )}
          </Button>
        </div>
      </CardHeader>
      <CardContent>
        <div className="space-y-4">
          <div className="flex items-center gap-3">
            <Clock className="w-5 h-5 text-gray-500" />
            <div className="flex-1">
              <label htmlFor="reminder-time" className="text-sm font-medium">
                Reminder Time
              </label>
              <input
                id="reminder-time"
                type="time"
                value={reminderTime}
                onChange={(e) => setReminderTime(e.target.value)}
                disabled={!notificationsEnabled}
                className="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-orange-500 focus:border-orange-500 disabled:bg-gray-100 disabled:cursor-not-allowed"
              />
            </div>
          </div>

          {permission === "denied" && (
            <div className="bg-red-50 border border-red-200 rounded-lg p-3 text-sm text-red-800">
              <p className="font-medium">Notifications Blocked</p>
              <p className="mt-1">
                Please enable notifications in your browser settings to receive daily reminders.
              </p>
            </div>
          )}

          {notificationsEnabled && (
            <div className="bg-green-50 border border-green-200 rounded-lg p-3 text-sm text-green-800">
              <p className="font-medium">✓ Daily reminders active</p>
              <p className="mt-1">
                You'll receive a notification at {reminderTime} every day to practice your Tamil AI meditation.
              </p>
            </div>
          )}

          <div className="bg-purple-50 border border-purple-200 rounded-lg p-3 text-sm">
            <p className="font-medium text-purple-900">Current Streak: {streak?.currentStreak || 0} days 🔥</p>
            <p className="mt-1 text-purple-700">
              Practice daily to maintain your streak and unlock achievements!
            </p>
          </div>
        </div>
      </CardContent>
    </Card>
  );
}
