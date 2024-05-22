-- CreateTable
CREATE TABLE `Manga` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `artist_id` INTEGER NOT NULL,
    `group_id` INTEGER NOT NULL,
    `parodies_id` INTEGER NOT NULL,
    `file_location` VARCHAR(191) NOT NULL,
    `tumbnail_location` VARCHAR(191) NOT NULL,
    `category_id` INTEGER NOT NULL,
    `source` VARCHAR(191) NULL,
    `remarks` VARCHAR(191) NULL,
    `filename` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
