/*
  Warnings:

  - The primary key for the `YearHistory` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `day` on the `YearHistory` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_YearHistory" (
    "userId" TEXT NOT NULL,
    "month" INTEGER NOT NULL,
    "year" INTEGER NOT NULL,
    "income" REAL NOT NULL,
    "expense" REAL NOT NULL,

    PRIMARY KEY ("month", "year", "userId")
);
INSERT INTO "new_YearHistory" ("expense", "income", "month", "userId", "year") SELECT "expense", "income", "month", "userId", "year" FROM "YearHistory";
DROP TABLE "YearHistory";
ALTER TABLE "new_YearHistory" RENAME TO "YearHistory";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
