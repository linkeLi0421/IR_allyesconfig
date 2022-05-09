; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_ids.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_ids.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i8, i8 }
%struct.anon.0 = type { i16, i16 }
%struct.nand_flash_dev = type { ptr, %union.anon, i32, i32, i32, i32, i16, i16, %struct.anon.0 }
%union.anon = type { [8 x i8] }
%struct.nand_manufacturer_desc = type { i32, ptr, ptr }
%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TC58NVG0S3E 1G 3.3V 8-bit\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TC58NVG2S0F 4G 3.3V 8-bit\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TC58NVG2S0H 4G 3.3V 8-bit\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TC58NVG3S0F 8G 3.3V 8-bit\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TC58NVG5D2 32G 3.3V 8-bit\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TC58NVG6D2 64G 3.3V 8-bit\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDTNRGAMA 64G 3.3V 8-bit\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"H27UCG8T2ATR-BC 64G 3.3V 8-bit\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"H27UCG8T2ETR-BC 64G 3.3V 8-bit\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TH58NVG2S3HBAI4 4G 3.3V 8-bit\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NAND 4MiB 5V 8-bit\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NAND 4MiB 3,3V 8-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NAND 8MiB 3,3V 8-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 16MiB 1,8V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 16MiB 3,3V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 16MiB 1,8V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 16MiB 3,3V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 32MiB 1,8V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 32MiB 3,3V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 32MiB 1,8V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 32MiB 3,3V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 64MiB 1,8V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 64MiB 3,3V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 64MiB 1,8V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 64MiB 3,3V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 128MiB 1,8V 8-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 128MiB 3,3V 8-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NAND 128MiB 1,8V 16-bit\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NAND 128MiB 3,3V 16-bit\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 256MiB 3,3V 8-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 256MiB 1,8V 8-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NAND 256MiB 1,8V 16-bit\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NAND 256MiB 3,3V 16-bit\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 512MiB 1,8V 8-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 512MiB 3,3V 8-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NAND 512MiB 1,8V 16-bit\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NAND 512MiB 3,3V 16-bit\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NAND 1GiB 1,8V 8-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NAND 1GiB 3,3V 8-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 1GiB 1,8V 16-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 1GiB 3,3V 16-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NAND 2GiB 1,8V 8-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NAND 2GiB 3,3V 8-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 2GiB 1,8V 16-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 2GiB 3,3V 16-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NAND 4GiB 1,8V 8-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NAND 4GiB 3,3V 8-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 4GiB 1,8V 16-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 4GiB 3,3V 16-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NAND 8GiB 1,8V 8-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NAND 8GiB 3,3V 8-bit\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 8GiB 1,8V 16-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 8GiB 3,3V 16-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 16GiB 1,8V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 16GiB 3,3V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 16GiB 1,8V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 16GiB 3,3V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 32GiB 1,8V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 32GiB 3,3V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 32GiB 1,8V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 32GiB 3,3V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 64GiB 1,8V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND 64GiB 3,3V 8-bit\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 64GiB 1,8V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND 64GiB 3,3V 16-bit\00", [41 x i8] zeroinitializer }, align 32
@nand_flash_ids = dso_local global { <{ %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, %struct.nand_flash_dev }>, [772 x i8] } { <{ %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, %struct.nand_flash_dev, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 }, %struct.nand_flash_dev }> <{ %struct.nand_flash_dev { ptr @.str, %union.anon { [8 x i8] c"\98\D1\90\15v\14\01\00" }, i32 2048, i32 128, i32 131072, i32 0, i16 8, i16 64, %struct.anon.0 { i16 1, i16 512 } }, %struct.nand_flash_dev { ptr @.str.1, %union.anon { [8 x i8] c"\98\DC\90&v\15\01\08" }, i32 4096, i32 512, i32 262144, i32 0, i16 8, i16 224, %struct.anon.0 { i16 4, i16 512 } }, %struct.nand_flash_dev { ptr @.str.2, %union.anon { [8 x i8] c"\98\DC\90&v\16\08\00" }, i32 4096, i32 512, i32 262144, i32 0, i16 8, i16 256, %struct.anon.0 { i16 8, i16 512 } }, %struct.nand_flash_dev { ptr @.str.3, %union.anon { [8 x i8] c"\98\D3\90&v\15\02\08" }, i32 4096, i32 1024, i32 262144, i32 0, i16 8, i16 232, %struct.anon.0 { i16 4, i16 512 } }, %struct.nand_flash_dev { ptr @.str.4, %union.anon { [8 x i8] c"\98\D7\942vV\09\00" }, i32 8192, i32 4096, i32 1048576, i32 0, i16 8, i16 640, %struct.anon.0 { i16 40, i16 1024 } }, %struct.nand_flash_dev { ptr @.str.5, %union.anon { [8 x i8] c"\98\DE\94\82vV\04 " }, i32 8192, i32 8192, i32 2097152, i32 0, i16 8, i16 640, %struct.anon.0 { i16 40, i16 1024 } }, %struct.nand_flash_dev { ptr @.str.6, %union.anon { [8 x i8] c"E\DE\94\93vP\00\00" }, i32 16384, i32 8192, i32 4194304, i32 0, i16 6, i16 1280, %struct.anon.0 { i16 40, i16 1024 } }, %struct.nand_flash_dev { ptr @.str.7, %union.anon { [8 x i8] c"\AD\DE\94\DAt\C4\00\00" }, i32 8192, i32 8192, i32 2097152, i32 8192, i16 6, i16 640, %struct.anon.0 { i16 40, i16 1024 } }, %struct.nand_flash_dev { ptr @.str.8, %union.anon { [8 x i8] c"\AD\DE\14\A7BJ\00\00" }, i32 16384, i32 8192, i32 4194304, i32 8192, i16 6, i16 1664, %struct.anon.0 { i16 40, i16 1024 } }, %struct.nand_flash_dev { ptr @.str.9, %union.anon { [8 x i8] c"\98\DC\91\15v\00\00\00" }, i32 2048, i32 512, i32 131072, i32 0, i16 5, i16 128, %struct.anon.0 { i16 8, i16 512 } }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.10, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 107 }, [6 x i8] undef }, i32 512, i32 4, i32 8192, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.11, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -29 }, [6 x i8] undef }, i32 512, i32 4, i32 8192, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.11, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -27 }, [6 x i8] undef }, i32 512, i32 4, i32 8192, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.12, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -42 }, [6 x i8] undef }, i32 512, i32 8, i32 8192, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.12, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -26 }, [6 x i8] undef }, i32 512, i32 8, i32 8192, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.13, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 51 }, [6 x i8] undef }, i32 512, i32 16, i32 16384, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.14, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 115 }, [6 x i8] undef }, i32 512, i32 16, i32 16384, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.15, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 67 }, [6 x i8] undef }, i32 512, i32 16, i32 16384, i32 258, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.16, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 83 }, [6 x i8] undef }, i32 512, i32 16, i32 16384, i32 258, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.17, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 53 }, [6 x i8] undef }, i32 512, i32 32, i32 16384, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.18, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 117 }, [6 x i8] undef }, i32 512, i32 32, i32 16384, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.19, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 69 }, [6 x i8] undef }, i32 512, i32 32, i32 16384, i32 258, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.20, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 85 }, [6 x i8] undef }, i32 512, i32 32, i32 16384, i32 258, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.21, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 54 }, [6 x i8] undef }, i32 512, i32 64, i32 16384, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.22, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 118 }, [6 x i8] undef }, i32 512, i32 64, i32 16384, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.23, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 70 }, [6 x i8] undef }, i32 512, i32 64, i32 16384, i32 258, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.24, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 86 }, [6 x i8] undef }, i32 512, i32 64, i32 16384, i32 258, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.25, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 120 }, [6 x i8] undef }, i32 512, i32 128, i32 16384, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.25, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 57 }, [6 x i8] undef }, i32 512, i32 128, i32 16384, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.26, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 121 }, [6 x i8] undef }, i32 512, i32 128, i32 16384, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.27, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 114 }, [6 x i8] undef }, i32 512, i32 128, i32 16384, i32 258, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.27, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 73 }, [6 x i8] undef }, i32 512, i32 128, i32 16384, i32 258, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.28, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 116 }, [6 x i8] undef }, i32 512, i32 128, i32 16384, i32 258, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.28, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 89 }, [6 x i8] undef }, i32 512, i32 128, i32 16384, i32 258, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.29, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 113 }, [6 x i8] undef }, i32 512, i32 256, i32 16384, i32 256, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.21, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -94 }, [6 x i8] undef }, i32 0, i32 64, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.21, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -96 }, [6 x i8] undef }, i32 0, i32 64, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.22, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -14 }, [6 x i8] undef }, i32 0, i32 64, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.22, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -48 }, [6 x i8] undef }, i32 0, i32 64, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.22, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -16 }, [6 x i8] undef }, i32 0, i32 64, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.23, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -78 }, [6 x i8] undef }, i32 0, i32 64, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.23, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -80 }, [6 x i8] undef }, i32 0, i32 64, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.24, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -62 }, [6 x i8] undef }, i32 0, i32 64, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.24, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -64 }, [6 x i8] undef }, i32 0, i32 64, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.25, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -95 }, [6 x i8] undef }, i32 0, i32 128, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.26, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -15 }, [6 x i8] undef }, i32 0, i32 128, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.26, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -47 }, [6 x i8] undef }, i32 0, i32 128, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.27, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -79 }, [6 x i8] undef }, i32 0, i32 128, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.28, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -63 }, [6 x i8] undef }, i32 0, i32 128, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.27, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -83 }, [6 x i8] undef }, i32 0, i32 128, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.30, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -86 }, [6 x i8] undef }, i32 0, i32 256, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.29, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -38 }, [6 x i8] undef }, i32 0, i32 256, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.31, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -70 }, [6 x i8] undef }, i32 0, i32 256, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.32, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -54 }, [6 x i8] undef }, i32 0, i32 256, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.33, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -84 }, [6 x i8] undef }, i32 0, i32 512, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.34, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -36 }, [6 x i8] undef }, i32 0, i32 512, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.35, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -68 }, [6 x i8] undef }, i32 0, i32 512, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.36, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -52 }, [6 x i8] undef }, i32 0, i32 512, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.37, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -93 }, [6 x i8] undef }, i32 0, i32 1024, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.38, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -45 }, [6 x i8] undef }, i32 0, i32 1024, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.39, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -77 }, [6 x i8] undef }, i32 0, i32 1024, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.40, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -61 }, [6 x i8] undef }, i32 0, i32 1024, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.41, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -91 }, [6 x i8] undef }, i32 0, i32 2048, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.42, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -43 }, [6 x i8] undef }, i32 0, i32 2048, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.43, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -75 }, [6 x i8] undef }, i32 0, i32 2048, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.44, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -59 }, [6 x i8] undef }, i32 0, i32 2048, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.45, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -89 }, [6 x i8] undef }, i32 0, i32 4096, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.46, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -41 }, [6 x i8] undef }, i32 0, i32 4096, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.47, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -73 }, [6 x i8] undef }, i32 0, i32 4096, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.48, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -57 }, [6 x i8] undef }, i32 0, i32 4096, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.49, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -82 }, [6 x i8] undef }, i32 0, i32 8192, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.50, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -34 }, [6 x i8] undef }, i32 0, i32 8192, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.51, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -66 }, [6 x i8] undef }, i32 0, i32 8192, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.52, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 -50 }, [6 x i8] undef }, i32 0, i32 8192, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.53, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 26 }, [6 x i8] undef }, i32 0, i32 16384, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.54, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 58 }, [6 x i8] undef }, i32 0, i32 16384, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.55, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 42 }, [6 x i8] undef }, i32 0, i32 16384, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.56, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 74 }, [6 x i8] undef }, i32 0, i32 16384, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.57, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 28 }, [6 x i8] undef }, i32 0, i32 32768, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.58, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 60 }, [6 x i8] undef }, i32 0, i32 32768, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.59, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 44 }, [6 x i8] undef }, i32 0, i32 32768, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.60, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 76 }, [6 x i8] undef }, i32 0, i32 32768, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.61, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 30 }, [6 x i8] undef }, i32 0, i32 65536, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.62, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 62 }, [6 x i8] undef }, i32 0, i32 65536, i32 0, i32 0, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.63, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 46 }, [6 x i8] undef }, i32 0, i32 65536, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, { ptr, { %struct.anon, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.0 } { ptr @.str.64, { %struct.anon, [6 x i8] } { %struct.anon { i8 0, i8 78 }, [6 x i8] undef }, i32 0, i32 65536, i32 0, i32 2, i16 0, i16 0, %struct.anon.0 zeroinitializer }, %struct.nand_flash_dev zeroinitializer }>, [772 x i8] zeroinitializer }, align 32
@nand_manufacturer_descs = internal constant { [16 x %struct.nand_manufacturer_desc], [32 x i8] } { [16 x %struct.nand_manufacturer_desc] [%struct.nand_manufacturer_desc { i32 1, ptr @.str.65, ptr @amd_nand_manuf_ops }, %struct.nand_manufacturer_desc { i32 155, ptr @.str.66, ptr null }, %struct.nand_manufacturer_desc { i32 146, ptr @.str.67, ptr null }, %struct.nand_manufacturer_desc { i32 200, ptr @.str.68, ptr @esmt_nand_manuf_ops }, %struct.nand_manufacturer_desc { i32 4, ptr @.str.69, ptr null }, %struct.nand_manufacturer_desc { i32 173, ptr @.str.70, ptr @hynix_nand_manuf_ops }, %struct.nand_manufacturer_desc { i32 137, ptr @.str.71, ptr null }, %struct.nand_manufacturer_desc { i32 194, ptr @.str.72, ptr @macronix_nand_manuf_ops }, %struct.nand_manufacturer_desc { i32 44, ptr @.str.73, ptr @micron_nand_manuf_ops }, %struct.nand_manufacturer_desc { i32 143, ptr @.str.74, ptr null }, %struct.nand_manufacturer_desc { i32 7, ptr @.str.75, ptr null }, %struct.nand_manufacturer_desc { i32 236, ptr @.str.76, ptr @samsung_nand_manuf_ops }, %struct.nand_manufacturer_desc { i32 69, ptr @.str.77, ptr null }, %struct.nand_manufacturer_desc { i32 32, ptr @.str.78, ptr null }, %struct.nand_manufacturer_desc { i32 152, ptr @.str.79, ptr @toshiba_nand_manuf_ops }, %struct.nand_manufacturer_desc { i32 239, ptr @.str.80, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AMD/Spansion\00", [19 x i8] zeroinitializer }, align 32
@amd_nand_manuf_ops = external dso_local constant %struct.nand_manufacturer_ops, align 4
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ATO\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Eon\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ESMT\00", [27 x i8] zeroinitializer }, align 32
@esmt_nand_manuf_ops = external dso_local constant %struct.nand_manufacturer_ops, align 4
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Fujitsu\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Hynix\00", [26 x i8] zeroinitializer }, align 32
@hynix_nand_manuf_ops = external dso_local constant %struct.nand_manufacturer_ops, align 4
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Intel\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Macronix\00", [23 x i8] zeroinitializer }, align 32
@macronix_nand_manuf_ops = external dso_local constant %struct.nand_manufacturer_ops, align 4
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Micron\00", [25 x i8] zeroinitializer }, align 32
@micron_nand_manuf_ops = external dso_local constant %struct.nand_manufacturer_ops, align 4
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"National\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Renesas\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Samsung\00", [24 x i8] zeroinitializer }, align 32
@samsung_nand_manuf_ops = external dso_local constant %struct.nand_manufacturer_ops, align 4
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SanDisk\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST Micro\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Toshiba\00", [24 x i8] zeroinitializer }, align 32
@toshiba_nand_manuf_ops = external dso_local constant %struct.nand_manufacturer_ops, align 4
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Winbond\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 8, i64 1, i64 4, i64 7, i64 32, i64 44, i64 69, i64 137, i64 143, i64 146, i64 152, i64 155, i64 173, i64 194, i64 200, i64 236, i64 239]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 29, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 32, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 35, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 38, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 41, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 44, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 47, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 50, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 54, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 58, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 62, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 63, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 65, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 68, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 69, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 70, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 71, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 73, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 74, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 75, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 76, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 78, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 79, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 80, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 81, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 83, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 85, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 86, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 88, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 91, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 118, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 120, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 121, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 124, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 125, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 126, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 127, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 130, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 131, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 132, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 133, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 136, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 137, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 138, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 139, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 142, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 143, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 144, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 145, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 148, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 149, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 150, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 151, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 154, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 155, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 156, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 157, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 160, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 161, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 162, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 163, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 166, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 167, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 168, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 169, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [15 x i8] c"nand_flash_ids\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 23, i32 23 }
@___asan_gen_.279 = private unnamed_addr constant [24 x i8] c"nand_manufacturer_descs\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 175, i32 44 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 176, i32 17 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 177, i32 17 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 178, i32 17 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 179, i32 18 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 180, i32 21 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 181, i32 19 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 182, i32 19 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 183, i32 22 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 184, i32 20 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 185, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 186, i32 21 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 187, i32 21 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 188, i32 21 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 189, i32 21 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 190, i32 21 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private constant [35 x i8] c"../drivers/mtd/nand/raw/nand_ids.c\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 191, i32 21 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @nand_flash_ids, ptr @nand_manufacturer_descs, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_flash_ids to i32), i32 3132, i32 3904, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_manufacturer_descs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nand_get_manufacturer_desc(i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %id, label %for.cond.15 [
    i8 1, label %entry.cleanup_crit_edge
    i8 -101, label %cleanup.fold.split
    i8 -110, label %cleanup.fold.split9
    i8 -56, label %cleanup.fold.split10
    i8 4, label %cleanup.fold.split11
    i8 -83, label %cleanup.fold.split12
    i8 -119, label %cleanup.fold.split13
    i8 -62, label %cleanup.fold.split14
    i8 44, label %cleanup.fold.split15
    i8 -113, label %cleanup.fold.split16
    i8 7, label %cleanup.fold.split17
    i8 -20, label %cleanup.fold.split18
    i8 69, label %cleanup.fold.split19
    i8 32, label %cleanup.fold.split20
    i8 -104, label %cleanup.fold.split21
    i8 -17, label %cleanup.fold.split22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.cond.15:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split, %for.cond.15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @nand_manufacturer_descs, %entry.cleanup_crit_edge ], [ null, %for.cond.15 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 1), %cleanup.fold.split ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 2), %cleanup.fold.split9 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 3), %cleanup.fold.split10 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 4), %cleanup.fold.split11 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 5), %cleanup.fold.split12 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 6), %cleanup.fold.split13 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 7), %cleanup.fold.split14 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 8), %cleanup.fold.split15 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 9), %cleanup.fold.split16 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 10), %cleanup.fold.split17 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 11), %cleanup.fold.split18 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 12), %cleanup.fold.split19 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 13), %cleanup.fold.split20 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 14), %cleanup.fold.split21 ], [ getelementptr inbounds ([16 x %struct.nand_manufacturer_desc], ptr @nand_manufacturer_descs, i32 0, i32 15), %cleanup.fold.split22 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 29, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 32, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 35, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 38, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 41, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 44, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 47, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 50, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 54, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 58, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 62, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 63, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 65, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 68, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 69, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 70, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 71, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 73, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 74, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 75, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 76, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 78, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 79, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 80, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 81, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 83, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 85, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 86, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 88, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 91, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 118, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 120, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 121, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 124, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 125, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 126, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 127, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 130, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 131, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 132, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 133, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 136, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 137, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 138, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 139, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 142, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 143, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 144, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 145, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 148, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 149, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 150, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 151, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 154, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 155, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 156, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 157, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 160, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 161, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 162, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 163, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 166, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 167, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 168, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 169, i32 2}
!130 = !{ptr @nand_flash_ids, !131, !"nand_flash_ids", i1 false, i1 false}
!131 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 23, i32 23}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 176, i32 17}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 177, i32 17}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 178, i32 17}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 179, i32 18}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 180, i32 21}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 181, i32 19}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 182, i32 19}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 183, i32 22}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 184, i32 20}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 185, i32 22}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 186, i32 21}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 187, i32 21}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 188, i32 21}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 189, i32 21}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 190, i32 21}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 191, i32 21}
!164 = !{ptr @nand_manufacturer_descs, !165, !"nand_manufacturer_descs", i1 false, i1 false}
!165 = !{!"../drivers/mtd/nand/raw/nand_ids.c", i32 175, i32 44}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
