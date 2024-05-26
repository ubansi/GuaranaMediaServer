/*
  Warnings:

  - You are about to drop the column `artist_id` on the `Manga` table. All the data in the column will be lost.
  - You are about to drop the column `category_id` on the `Manga` table. All the data in the column will be lost.
  - You are about to drop the column `file_location` on the `Manga` table. All the data in the column will be lost.
  - You are about to drop the column `group_id` on the `Manga` table. All the data in the column will be lost.
  - You are about to drop the column `parodies_id` on the `Manga` table. All the data in the column will be lost.
  - You are about to drop the column `tumbnail_location` on the `Manga` table. All the data in the column will be lost.
  - Added the required column `artistId` to the `Manga` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bookmark` to the `Manga` table without a default value. This is not possible if the table is not empty.
  - Added the required column `categoryId` to the `Manga` table without a default value. This is not possible if the table is not empty.
  - Added the required column `fileLocation` to the `Manga` table without a default value. This is not possible if the table is not empty.
  - Added the required column `maxPage` to the `Manga` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tumbnailLocation` to the `Manga` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Manga` DROP COLUMN `artist_id`,
    DROP COLUMN `category_id`,
    DROP COLUMN `file_location`,
    DROP COLUMN `group_id`,
    DROP COLUMN `parodies_id`,
    DROP COLUMN `tumbnail_location`,
    ADD COLUMN `artistId` INTEGER NOT NULL,
    ADD COLUMN `bookmark` INTEGER NOT NULL,
    ADD COLUMN `categoryId` INTEGER NOT NULL,
    ADD COLUMN `fileLocation` VARCHAR(191) NOT NULL,
    ADD COLUMN `groupId` INTEGER NULL,
    ADD COLUMN `maxPage` INTEGER NOT NULL,
    ADD COLUMN `parodyId` INTEGER NULL,
    ADD COLUMN `tumbnailLocation` VARCHAR(191) NOT NULL;

-- CreateTable
CREATE TABLE `Tag` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `mangaId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Artist` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Group` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Parody` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Favorite` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `mangaId` INTEGER NOT NULL,
    `page` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Manga` ADD CONSTRAINT `Manga_artistId_fkey` FOREIGN KEY (`artistId`) REFERENCES `Artist`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Manga` ADD CONSTRAINT `Manga_groupId_fkey` FOREIGN KEY (`groupId`) REFERENCES `Group`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Manga` ADD CONSTRAINT `Manga_parodyId_fkey` FOREIGN KEY (`parodyId`) REFERENCES `Parody`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Manga` ADD CONSTRAINT `Manga_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `Category`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Tag` ADD CONSTRAINT `Tag_mangaId_fkey` FOREIGN KEY (`mangaId`) REFERENCES `Manga`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Favorite` ADD CONSTRAINT `Favorite_mangaId_fkey` FOREIGN KEY (`mangaId`) REFERENCES `Manga`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
