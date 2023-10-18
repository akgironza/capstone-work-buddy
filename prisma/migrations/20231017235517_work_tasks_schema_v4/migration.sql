/*
  Warnings:

  - The primary key for the `Accomplishment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `Accomplishment` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `FollowUp` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `FollowUp` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Todo` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `Todo` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `UnplannedAsk` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `UnplannedAsk` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `User` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `WeeklyTaskGroup` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `WeeklyTaskGroup` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Changed the type of `weeklyTaskGroupId` on the `Accomplishment` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `weeklyTaskGroupId` on the `FollowUp` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `weeklyTaskGroupId` on the `Todo` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `weeklyTaskGroupId` on the `UnplannedAsk` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `userId` on the `WeeklyTaskGroup` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

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

-- AlterTable
ALTER TABLE "Accomplishment" DROP CONSTRAINT "Accomplishment_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "weeklyTaskGroupId",
ADD COLUMN     "weeklyTaskGroupId" INTEGER NOT NULL,
ADD CONSTRAINT "Accomplishment_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "FollowUp" DROP CONSTRAINT "FollowUp_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "weeklyTaskGroupId",
ADD COLUMN     "weeklyTaskGroupId" INTEGER NOT NULL,
ADD CONSTRAINT "FollowUp_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Todo" DROP CONSTRAINT "Todo_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "weeklyTaskGroupId",
ADD COLUMN     "weeklyTaskGroupId" INTEGER NOT NULL,
ADD CONSTRAINT "Todo_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "UnplannedAsk" DROP CONSTRAINT "UnplannedAsk_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "weeklyTaskGroupId",
ADD COLUMN     "weeklyTaskGroupId" INTEGER NOT NULL,
ADD CONSTRAINT "UnplannedAsk_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "WeeklyTaskGroup" DROP CONSTRAINT "WeeklyTaskGroup_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "userId",
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "WeeklyTaskGroup_pkey" PRIMARY KEY ("id");

-- CreateIndex
CREATE INDEX "Accomplishment_weeklyTaskGroupId_idx" ON "Accomplishment"("weeklyTaskGroupId");

-- CreateIndex
CREATE INDEX "FollowUp_weeklyTaskGroupId_idx" ON "FollowUp"("weeklyTaskGroupId");

-- CreateIndex
CREATE INDEX "Todo_weeklyTaskGroupId_idx" ON "Todo"("weeklyTaskGroupId");

-- CreateIndex
CREATE INDEX "UnplannedAsk_weeklyTaskGroupId_idx" ON "UnplannedAsk"("weeklyTaskGroupId");

-- CreateIndex
CREATE INDEX "WeeklyTaskGroup_userId_idx" ON "WeeklyTaskGroup"("userId");

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
