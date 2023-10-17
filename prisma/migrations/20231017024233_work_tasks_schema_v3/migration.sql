-- CreateTable
CREATE TABLE "Todo" (
    "id" TEXT NOT NULL,
    "weeklyTaskGroupId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "task" TEXT NOT NULL,
    "priority" INTEGER NOT NULL,
    "progressStatus" TEXT NOT NULL,
    "valueAdd" TEXT NOT NULL,

    CONSTRAINT "Todo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FollowUp" (
    "id" TEXT NOT NULL,
    "weeklyTaskGroupId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "task" TEXT NOT NULL,
    "priority" INTEGER NOT NULL,
    "progressStatus" TEXT NOT NULL,
    "stakeholder" TEXT NOT NULL,

    CONSTRAINT "FollowUp_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UnplannedAsk" (
    "id" TEXT NOT NULL,
    "weeklyTaskGroupId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "task" TEXT NOT NULL,
    "priority" INTEGER NOT NULL,
    "progressStatus" TEXT NOT NULL,
    "valueAdd" TEXT NOT NULL,

    CONSTRAINT "UnplannedAsk_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Accomplishment" (
    "id" TEXT NOT NULL,
    "weeklyTaskGroupId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "task" TEXT NOT NULL,

    CONSTRAINT "Accomplishment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "WeeklyTaskGroup" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "week" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "WeeklyTaskGroup_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "Todo_weeklyTaskGroupId_idx" ON "Todo"("weeklyTaskGroupId");

-- CreateIndex
CREATE INDEX "FollowUp_weeklyTaskGroupId_idx" ON "FollowUp"("weeklyTaskGroupId");

-- CreateIndex
CREATE INDEX "UnplannedAsk_weeklyTaskGroupId_idx" ON "UnplannedAsk"("weeklyTaskGroupId");

-- CreateIndex
CREATE INDEX "Accomplishment_weeklyTaskGroupId_idx" ON "Accomplishment"("weeklyTaskGroupId");

-- CreateIndex
CREATE INDEX "WeeklyTaskGroup_userId_idx" ON "WeeklyTaskGroup"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "User_name_key" ON "User"("name");

-- AddForeignKey
ALTER TABLE "Todo" ADD CONSTRAINT "Todo_weeklyTaskGroupId_fkey" FOREIGN KEY ("weeklyTaskGroupId") REFERENCES "WeeklyTaskGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FollowUp" ADD CONSTRAINT "FollowUp_weeklyTaskGroupId_fkey" FOREIGN KEY ("weeklyTaskGroupId") REFERENCES "WeeklyTaskGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UnplannedAsk" ADD CONSTRAINT "UnplannedAsk_weeklyTaskGroupId_fkey" FOREIGN KEY ("weeklyTaskGroupId") REFERENCES "WeeklyTaskGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Accomplishment" ADD CONSTRAINT "Accomplishment_weeklyTaskGroupId_fkey" FOREIGN KEY ("weeklyTaskGroupId") REFERENCES "WeeklyTaskGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "WeeklyTaskGroup" ADD CONSTRAINT "WeeklyTaskGroup_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
