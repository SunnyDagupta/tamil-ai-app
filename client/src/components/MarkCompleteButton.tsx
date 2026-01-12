import { Button } from "@/components/ui/button";
import { CheckCircle2, Circle } from "lucide-react";
import { trpc } from "@/lib/trpc";

interface MarkCompleteButtonProps {
  moduleName: string;
  lessonId: string;
  onComplete?: () => void;
}

export function MarkCompleteButton({ moduleName, lessonId, onComplete }: MarkCompleteButtonProps) {
  const utils = trpc.useUtils();
  
  const { data: completionStatus, isLoading: checkingStatus } = trpc.lessons.isLessonComplete.useQuery({
    moduleName,
    lessonId,
  });
  
  const markComplete = trpc.lessons.markComplete.useMutation({
    onSuccess: () => {
      utils.lessons.isLessonComplete.invalidate({ moduleName, lessonId });
      utils.lessons.getCompletedLessons.invalidate();
      utils.progress.streak.invalidate();
      onComplete?.();
    },
  });

  const isCompleted = completionStatus?.completed || false;

  const handleClick = () => {
    if (!isCompleted) {
      markComplete.mutate({ moduleName, lessonId });
    }
  };

  if (checkingStatus) {
    return (
      <Button disabled variant="outline" className="gap-2">
        <Circle className="w-5 h-5" />
        Loading...
      </Button>
    );
  }

  return (
    <Button
      onClick={handleClick}
      disabled={isCompleted || markComplete.isPending}
      variant={isCompleted ? "default" : "outline"}
      className={`gap-2 ${
        isCompleted
          ? "bg-green-600 hover:bg-green-700 text-white"
          : "hover:bg-orange-50"
      }`}
    >
      {isCompleted ? (
        <>
          <CheckCircle2 className="w-5 h-5" />
          Completed
        </>
      ) : (
        <>
          <Circle className="w-5 h-5" />
          {markComplete.isPending ? "Marking..." : "Mark as Complete"}
        </>
      )}
    </Button>
  );
}
