/*
  Warnings:

  - You are about to drop the column `weeklyTaskGroupId` on the `Accomplishment` table. All the data in the column will be lost.
  - You are about to drop the column `weeklyTaskGroupId` on the `FollowUp` table. All the data in the column will be lost.
  - You are about to drop the column `weeklyTaskGroupId` on the `Todo` table. All the data in the column will be lost.
  - You are about to drop the column `weeklyTaskGroupId` on the `UnplannedAsk` table. All the data in the column will be lost.
  - You are about to drop the `WeeklyTaskGroup` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `userId` to the `Accomplishment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `FollowUp` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Todo` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `UnplannedAsk` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Accomplishment" DROP CONSTRAINT "Accomplishment_weeklyTaskGroupId_fkey";

-- DropForeignKey
ALTER TABLE "FollowUp" DROP CONSTRAINT "FollowUp_weeklyTaskGroupId_fkey";

-- DropForeignKey
ALTER TABLE "Todo" DROP CONSTRAINT "Todo_weeklyTaskGroupId_fkey";

-- DropForeignKey
ALTER TABLE "UnplannedAsk" DROP CONSTRAINT "UnplannedAsk_weeklyTaskGroupId_fkey";

-- DropForeignKey
ALTER TABLE "WeeklyTaskGroup" DROP CONSTRAINT "WeeklyTaskGroup_userId_fkey";

-- DropIndex
DROP INDEX "Accomplishment_weeklyTaskGroupId_idx";

-- DropIndex
DROP INDEX "FollowUp_weeklyTaskGroupId_idx";

-- DropIndex
DROP INDEX "Todo_weeklyTaskGroupId_idx";

-- DropIndex
DROP INDEX "UnplannedAsk_weeklyTaskGroupId_idx";

-- AlterTable
ALTER TABLE "Accomplishment" DROP COLUMN "weeklyTaskGroupId",
ADD COLUMN     "userId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "FollowUp" DROP COLUMN "weeklyTaskGroupId",
ADD COLUMN     "userId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Todo" DROP COLUMN "weeklyTaskGroupId",
ADD COLUMN     "userId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "UnplannedAsk" DROP COLUMN "weeklyTaskGroupId",
ADD COLUMN     "userId" INTEGER NOT NULL;

-- DropTable
DROP TABLE "WeeklyTaskGroup";

-- CreateIndex
CREATE INDEX "Accomplishment_userId_idx" ON "Accomplishment"("userId");

-- CreateIndex
CREATE INDEX "FollowUp_userId_idx" ON "FollowUp"("userId");

-- CreateIndex
CREATE INDEX "Todo_userId_idx" ON "Todo"("userId");

-- CreateIndex
CREATE INDEX "UnplannedAsk_userId_idx" ON "UnplannedAsk"("userId");

-- AddForeignKey
ALTER TABLE "Todo" ADD CONSTRAINT "Todo_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FollowUp" ADD CONSTRAINT "FollowUp_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UnplannedAsk" ADD CONSTRAINT "UnplannedAsk_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Accomplishment" ADD CONSTRAINT "Accomplishment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
