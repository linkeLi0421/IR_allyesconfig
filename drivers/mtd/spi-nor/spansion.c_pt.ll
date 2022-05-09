; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/spansion.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/spansion.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.76, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.70 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.76 = type { ptr, ptr }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spansion\00", [23 x i8] zeroinitializer }, align 32
@spansion_parts = internal constant { [34 x %struct.flash_info], [624 x i8] } { [34 x %struct.flash_info] [%struct.flash_info { ptr @.str.1, [6 x i8] c"\01\02\15M\00\00", i8 5, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.2, [6 x i8] c"\01\02\16M\00\00", i8 5, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.3, [6 x i8] c"\01 \18M\00\80", i8 6, i32 262144, i16 64, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.4, [6 x i8] c"\01 \18M\01\80", i8 6, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.5, [6 x i8] c"\01\02\19M\00\80", i8 6, i32 262144, i16 128, i16 256, i16 0, i8 0, i16 512, i8 25, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.6, [6 x i8] c"\01\02\19M\01\80", i8 6, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.7, [6 x i8] c"\01\02 M\00\80", i8 6, i32 262144, i16 256, i16 256, i16 0, i8 0, i16 513, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.8, [6 x i8] c"\01 \18M\01\81", i8 6, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @s25fs_s_fixups }, %struct.flash_info { ptr @.str.9, [6 x i8] c"\01\02\19M\00\81", i8 6, i32 262144, i16 128, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.10, [6 x i8] c"\01\02\19M\01\81", i8 6, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.11, [6 x i8] c"\01\02 M\00\81", i8 6, i32 262144, i16 256, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @s25fs_s_fixups }, %struct.flash_info { ptr @.str.12, [6 x i8] c"\01 \18\03\00\00", i8 5, i32 262144, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.13, [6 x i8] c"\01 \18\03\01\00", i8 5, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.14, [6 x i8] c"\01 \18M\00\00", i8 5, i32 262144, i16 64, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.15, [6 x i8] c"\01 \18M\01\00", i8 5, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 512, i8 24, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.16, [6 x i8] c"\01\02\12\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.17, [6 x i8] c"\01\02\13\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.18, [6 x i8] c"\01\02\14\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.19, [6 x i8] c"\01\02\15\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.20, [6 x i8] c"\01\02\16\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.21, [6 x i8] c"\EF@\13\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.22, [6 x i8] c"\EF@\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.23, [6 x i8] c"\EF@\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.24, [6 x i8] c"\EF@\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.25, [6 x i8] c"\01@\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.26, [6 x i8] c"\01@\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.27, [6 x i8] c"\01@\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.28, [6 x i8] c"\01@\13\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 10, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.29, [6 x i8] c"\01@\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 10, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.30, [6 x i8] c"\01`\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.31, [6 x i8] c"\01`\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 0, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.32, [6 x i8] c"\01`\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 0, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.33, [6 x i8] c"\04,\C2\7F\7F\7F", i8 6, i32 524288, i16 1, i16 256, i16 0, i8 0, i16 64, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.34, [6 x i8] c"4[\1A\00\00\00", i8 3, i32 262144, i16 256, i16 256, i16 0, i8 0, i16 0, i8 -62, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @s28hs512t_fixups }], [624 x i8] zeroinitializer }, align 32
@spansion_fixups = internal constant { %struct.spi_nor_fixups, [16 x i8] } { %struct.spi_nor_fixups { ptr null, ptr null, ptr null, ptr @spansion_late_init }, [16 x i8] zeroinitializer }, align 32
@spi_nor_spansion = dso_local constant { %struct.spi_nor_manufacturer, [16 x i8] } { %struct.spi_nor_manufacturer { ptr @.str, ptr @spansion_parts, i32 34, ptr @spansion_fixups }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25sl032p\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25sl064p\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl128s0\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl128s1\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl256s0\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl256s1\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl512s\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fs128s1\00", [21 x i8] zeroinitializer }, align 32
@s25fs_s_fixups = internal constant { %struct.spi_nor_fixups, [16 x i8] } { %struct.spi_nor_fixups { ptr null, ptr @s25fs_s_post_bfpt_fixups, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fs256s0\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fs256s1\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fs512s\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25sl12800\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25sl12801\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl129p0\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl129p1\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25sl004a\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25sl008a\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25sl016a\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25sl032a\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25sl064a\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl004k\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl008k\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl016k\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl064k\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl116k\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl132k\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl164k\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl204k\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl208k\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl064l\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl128l\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl256l\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cy15x104q\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s28hs512t\00", [22 x i8] zeroinitializer }, align 32
@s28hs512t_fixups = internal constant { %struct.spi_nor_fixups, [16 x i8] } { %struct.spi_nor_fixups { ptr @s28hs512t_default_init, ptr @s28hs512t_post_bfpt_fixup, ptr @s28hs512t_post_sfdp_fixup, ptr null }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 313, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"spansion_parts\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 205, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"spansion_fixups\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 308, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"spi_nor_spansion\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 312, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 209, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 211, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 213, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 216, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 219, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 223, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 226, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 229, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"s25fs_s_fixups\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 201, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 233, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 236, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 239, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 243, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 244, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 245, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 248, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 251, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 252, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 253, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 254, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 255, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 256, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 259, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 262, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 265, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 268, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 271, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 273, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 275, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 277, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 279, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 282, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 285, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 288, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 290, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"s28hs512t_fixups\00", align 1
@___asan_gen_.153 = private constant [34 x i8] c"../drivers/mtd/spi-nor/spansion.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 179, i32 36 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @.str, ptr @spansion_parts, ptr @spansion_fixups, ptr @spi_nor_spansion, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @s25fs_s_fixups, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @s28hs512t_fixups], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spansion_parts to i32), i32 2448, i32 3072, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spansion_fixups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_spansion to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s25fs_s_fixups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s28hs512t_fixups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s25fs_s_post_bfpt_fixups(ptr nocapture noundef readonly %nor, ptr nocapture noundef readnone %bfpt_header, ptr nocapture noundef readnone %bfpt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %page_size = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %page_size, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @s28hs512t_default_init(ptr nocapture noundef readonly %nor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %octal_dtr_enable = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %octal_dtr_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @spi_nor_cypress_octal_dtr_enable, ptr %octal_dtr_enable, align 8
  %3 = load ptr, ptr %params, align 4
  %writesize = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %writesize, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s28hs512t_post_bfpt_fixup(ptr nocapture noundef readonly %nor, ptr nocapture noundef readnone %bfpt_header, ptr nocapture noundef readnone %bfpt) #1 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #5
  %0 = call ptr @memset(ptr %op, i32 255, i32 48)
  %1 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %buswidth, align 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %3 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 101, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 8388612, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %9 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dummy, align 8
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %buswidth8, align 1
  %dtr9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 127, ptr %dtr9, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %data, align 4
  %dtr14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 127, ptr %dtr14, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %16 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bouncebuf, align 4
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %buf, align 8
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %19 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %20, ptr noundef nonnull %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bouncebuf, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %25 = and i8 %24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not = icmp eq i8 %25, 0
  %params22 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %26 = ptrtoint ptr %params22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %params22, align 4
  %page_size23 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %27, i32 0, i32 2
  %. = select i1 %tobool20.not, i32 256, i32 512
  %28 = ptrtoint ptr %page_size23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %., ptr %page_size23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s28hs512t_post_sfdp_fixup(ptr nocapture noundef readonly %nor) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %opcode = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 15, i32 2
  %2 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opcode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -18, ptr %opcode, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %params, align 4
  %page_programs = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %6, i32 0, i32 7
  tail call void @spi_nor_set_pp_settings(ptr noundef %page_programs, i8 noundef zeroext 18, i32 noundef 65793) #5
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %params, align 4
  %arrayidx10 = getelementptr %struct.spi_nor_flash_parameter, ptr %8, i32 0, i32 7, i32 7
  tail call void @spi_nor_set_pp_settings(ptr noundef %arrayidx10, i8 noundef zeroext 18, i32 noundef 17303560) #5
  %9 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %params, align 4
  %rdsr_addr_nbytes = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %rdsr_addr_nbytes to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %rdsr_addr_nbytes, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_cypress_octal_dtr_enable(ptr noundef %nor, i1 noundef zeroext %enable) #1 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #5
  %0 = call ptr @memset(ptr %op, i32 255, i32 48)
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %1 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bouncebuf, align 4
  %call = tail call i32 @spi_nor_write_enable(ptr noundef %nor) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %enable, label %if.then, label %if.end30.thread

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 11, ptr %2, align 1
  %4 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %op, align 8
  %.compoundliteral.sroa.2.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 1
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %.compoundliteral.sroa.2.0.op.sroa_idx, align 1
  %.compoundliteral.sroa.3.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 2
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %.compoundliteral.sroa.3.0.op.sroa_idx, align 2
  %.compoundliteral.sroa.5155.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 4
  %7 = ptrtoint ptr %.compoundliteral.sroa.5155.0.op.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 113, ptr %.compoundliteral.sroa.5155.0.op.sroa_idx, align 4
  %.compoundliteral.sroa.6156.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 8
  %8 = ptrtoint ptr %.compoundliteral.sroa.6156.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %.compoundliteral.sroa.6156.0.op.sroa_idx, align 8
  %.compoundliteral.sroa.7.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 9
  %9 = ptrtoint ptr %.compoundliteral.sroa.7.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %.compoundliteral.sroa.7.0.op.sroa_idx, align 1
  %.compoundliteral.sroa.8.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 10
  %10 = ptrtoint ptr %.compoundliteral.sroa.8.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %.compoundliteral.sroa.8.0.op.sroa_idx, align 2
  %.compoundliteral.sroa.10157.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 16
  %11 = ptrtoint ptr %.compoundliteral.sroa.10157.0.op.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 8388611, ptr %.compoundliteral.sroa.10157.0.op.sroa_idx, align 8
  %.compoundliteral.sroa.11.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 24
  %12 = ptrtoint ptr %.compoundliteral.sroa.11.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %.compoundliteral.sroa.11.0.op.sroa_idx, align 8
  %.compoundliteral.sroa.12.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 25
  %13 = ptrtoint ptr %.compoundliteral.sroa.12.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %.compoundliteral.sroa.12.0.op.sroa_idx, align 1
  %.compoundliteral.sroa.13.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 26
  %14 = ptrtoint ptr %.compoundliteral.sroa.13.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %.compoundliteral.sroa.13.0.op.sroa_idx, align 2
  %.compoundliteral.sroa.15158.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 28
  %15 = ptrtoint ptr %.compoundliteral.sroa.15158.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %.compoundliteral.sroa.15158.0.op.sroa_idx, align 4
  %.compoundliteral.sroa.16.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 29
  %16 = ptrtoint ptr %.compoundliteral.sroa.16.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %.compoundliteral.sroa.16.0.op.sroa_idx, align 1
  %.compoundliteral.sroa.18159.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 32
  %17 = ptrtoint ptr %.compoundliteral.sroa.18159.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %.compoundliteral.sroa.18159.0.op.sroa_idx, align 8
  %.compoundliteral.sroa.19.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 36
  %18 = ptrtoint ptr %.compoundliteral.sroa.19.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %.compoundliteral.sroa.19.0.op.sroa_idx, align 4
  %.compoundliteral.sroa.20.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 40
  %19 = ptrtoint ptr %.compoundliteral.sroa.20.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %2, ptr %.compoundliteral.sroa.20.0.op.sroa_idx, align 8
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %20 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spimem, align 8
  %call22 = call i32 @spi_mem_exec_op(ptr noundef %21, ptr noundef nonnull %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %call26 = call i32 @spi_nor_wait_till_ready(ptr noundef %nor) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %read_dummy = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %22 = ptrtoint ptr %read_dummy to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 24, ptr %read_dummy, align 1
  %call31 = call i32 @spi_nor_write_enable(ptr noundef %nor) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30.thread:                                  ; preds = %entry
  br i1 %tobool1.not, label %if.else, label %if.end30.thread.cleanup_crit_edge

if.end30.thread.cleanup_crit_edge:                ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %2, align 1
  br label %if.end39

if.else:                                          ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %2, align 1
  %arrayidx38 = getelementptr i8, ptr %2, i32 1
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx38, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then36
  %cond75 = phi i32 [ 2, %if.else ], [ 1, %if.then36 ]
  %cond = phi i8 [ 4, %if.else ], [ 3, %if.then36 ]
  %26 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %op, align 8
  %.compoundliteral40.sroa.2.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 1
  %27 = ptrtoint ptr %.compoundliteral40.sroa.2.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %.compoundliteral40.sroa.2.0.op.sroa_idx, align 1
  %.compoundliteral40.sroa.3.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 2
  %28 = ptrtoint ptr %.compoundliteral40.sroa.3.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %.compoundliteral40.sroa.3.0.op.sroa_idx, align 2
  %.compoundliteral40.sroa.5150.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 4
  %29 = ptrtoint ptr %.compoundliteral40.sroa.5150.0.op.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 113, ptr %.compoundliteral40.sroa.5150.0.op.sroa_idx, align 4
  %.compoundliteral40.sroa.6151.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 8
  %30 = ptrtoint ptr %.compoundliteral40.sroa.6151.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %cond, ptr %.compoundliteral40.sroa.6151.0.op.sroa_idx, align 8
  %.compoundliteral40.sroa.7.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 9
  %31 = ptrtoint ptr %.compoundliteral40.sroa.7.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %.compoundliteral40.sroa.7.0.op.sroa_idx, align 1
  %.compoundliteral40.sroa.8.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 10
  %32 = ptrtoint ptr %.compoundliteral40.sroa.8.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %.compoundliteral40.sroa.8.0.op.sroa_idx, align 2
  %.compoundliteral40.sroa.10152.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 16
  %33 = ptrtoint ptr %.compoundliteral40.sroa.10152.0.op.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 8388614, ptr %.compoundliteral40.sroa.10152.0.op.sroa_idx, align 8
  %.compoundliteral40.sroa.11.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 24
  %34 = ptrtoint ptr %.compoundliteral40.sroa.11.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %.compoundliteral40.sroa.11.0.op.sroa_idx, align 8
  %.compoundliteral40.sroa.12.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 25
  %35 = ptrtoint ptr %.compoundliteral40.sroa.12.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %.compoundliteral40.sroa.12.0.op.sroa_idx, align 1
  %.compoundliteral40.sroa.13.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 26
  %36 = ptrtoint ptr %.compoundliteral40.sroa.13.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %.compoundliteral40.sroa.13.0.op.sroa_idx, align 2
  %.compoundliteral40.sroa.15153.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 28
  %37 = ptrtoint ptr %.compoundliteral40.sroa.15153.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %.compoundliteral40.sroa.15153.0.op.sroa_idx, align 4
  %.compoundliteral40.sroa.16.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 29
  %38 = ptrtoint ptr %.compoundliteral40.sroa.16.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %.compoundliteral40.sroa.16.0.op.sroa_idx, align 1
  %.compoundliteral40.sroa.18154.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 32
  %39 = ptrtoint ptr %.compoundliteral40.sroa.18154.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %.compoundliteral40.sroa.18154.0.op.sroa_idx, align 8
  %.compoundliteral40.sroa.19.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 36
  %40 = ptrtoint ptr %.compoundliteral40.sroa.19.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond75, ptr %.compoundliteral40.sroa.19.0.op.sroa_idx, align 4
  %.compoundliteral40.sroa.20.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 40
  %41 = ptrtoint ptr %.compoundliteral40.sroa.20.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %2, ptr %.compoundliteral40.sroa.20.0.op.sroa_idx, align 8
  br i1 %enable, label %if.end39.if.end79_crit_edge, label %if.then78

if.end39.if.end79_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then78:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  call void @spi_nor_spimem_setup_op(ptr noundef %nor, ptr noundef nonnull %op, i32 noundef 17303560) #5
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end39.if.end79_crit_edge
  %spimem80 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %42 = ptrtoint ptr %spimem80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spimem80, align 8
  %call81 = call i32 @spi_mem_exec_op(ptr noundef %43, ptr noundef nonnull %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end84:                                         ; preds = %if.end79
  %conv99 = select i1 %enable, i8 4, i8 0
  %conv111 = select i1 %enable, i8 3, i8 0
  %info = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %44 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info, align 4
  %id_len = getelementptr inbounds %struct.flash_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %id_len to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %id_len, align 2
  %conv125 = zext i8 %47 to i32
  %sub = add nsw i32 %conv125, -1
  %or = or i32 %sub, 1
  %add = add nsw i32 %or, 1
  %48 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %op, align 8
  %49 = ptrtoint ptr %.compoundliteral40.sroa.2.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %.compoundliteral40.sroa.2.0.op.sroa_idx, align 1
  %50 = ptrtoint ptr %.compoundliteral40.sroa.3.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %.compoundliteral40.sroa.3.0.op.sroa_idx, align 2
  %51 = ptrtoint ptr %.compoundliteral40.sroa.5150.0.op.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 159, ptr %.compoundliteral40.sroa.5150.0.op.sroa_idx, align 4
  %52 = ptrtoint ptr %.compoundliteral40.sroa.6151.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv99, ptr %.compoundliteral40.sroa.6151.0.op.sroa_idx, align 8
  %53 = ptrtoint ptr %.compoundliteral40.sroa.7.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %.compoundliteral40.sroa.7.0.op.sroa_idx, align 1
  %54 = ptrtoint ptr %.compoundliteral40.sroa.8.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %.compoundliteral40.sroa.8.0.op.sroa_idx, align 2
  %55 = ptrtoint ptr %.compoundliteral40.sroa.10152.0.op.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %.compoundliteral40.sroa.10152.0.op.sroa_idx, align 8
  %56 = ptrtoint ptr %.compoundliteral40.sroa.11.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv111, ptr %.compoundliteral40.sroa.11.0.op.sroa_idx, align 8
  %57 = ptrtoint ptr %.compoundliteral40.sroa.12.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %.compoundliteral40.sroa.12.0.op.sroa_idx, align 1
  %58 = ptrtoint ptr %.compoundliteral40.sroa.13.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %.compoundliteral40.sroa.13.0.op.sroa_idx, align 2
  %59 = ptrtoint ptr %.compoundliteral40.sroa.15153.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %.compoundliteral40.sroa.15153.0.op.sroa_idx, align 4
  %60 = ptrtoint ptr %.compoundliteral40.sroa.16.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %.compoundliteral40.sroa.16.0.op.sroa_idx, align 1
  %61 = ptrtoint ptr %.compoundliteral40.sroa.18154.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %.compoundliteral40.sroa.18154.0.op.sroa_idx, align 8
  %62 = ptrtoint ptr %.compoundliteral40.sroa.19.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add, ptr %.compoundliteral40.sroa.19.0.op.sroa_idx, align 4
  %63 = ptrtoint ptr %.compoundliteral40.sroa.20.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %2, ptr %.compoundliteral40.sroa.20.0.op.sroa_idx, align 8
  br i1 %enable, label %if.then128, label %if.end84.if.end129_crit_edge

if.end84.if.end129_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

if.then128:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  call void @spi_nor_spimem_setup_op(ptr noundef %nor, ptr noundef nonnull %op, i32 noundef 17303560) #5
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end84.if.end129_crit_edge
  %64 = ptrtoint ptr %spimem80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %spimem80, align 8
  %call131 = call i32 @spi_mem_exec_op(ptr noundef %65, ptr noundef nonnull %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end129.cleanup_crit_edge

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end134:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info, align 4
  %id = getelementptr inbounds %struct.flash_info, ptr %67, i32 0, i32 1
  %id_len137 = getelementptr inbounds %struct.flash_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %id_len137 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %id_len137, align 2
  %conv138 = zext i8 %69 to i32
  %bcmp = call i32 @bcmp(ptr %2, ptr %id, i32 %conv138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool140.not = icmp eq i32 %bcmp, 0
  %. = select i1 %tobool140.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %if.end129.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end30.thread.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call22, %if.end.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call81, %if.end79.cleanup_crit_edge ], [ %call131, %if.end129.cleanup_crit_edge ], [ %., %if.end134 ], [ %call, %if.end30.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_exec_op(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_wait_till_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_spimem_setup_op(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_pp_settings(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @spansion_late_init(ptr nocapture noundef %nor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777217, i64 %3)
  %cmp = icmp ult i64 %3, 16777217
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 64
  store i32 %or, ptr %flags, align 4
  %erase_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 9
  %6 = ptrtoint ptr %erase_opcode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -40, ptr %erase_opcode, align 1
  %info = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %sector_size = getelementptr inbounds %struct.flash_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sector_size, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 3
  %11 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %erasesize, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 313, i32 10}
!2 = !{ptr @spi_nor_spansion, !3, !"spi_nor_spansion", i1 false, i1 false}
!3 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 312, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 209, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 211, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 213, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 216, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 219, i32 4}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 223, i32 4}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 226, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 229, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 233, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 236, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 239, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 243, i32 4}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 244, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 245, i32 4}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 248, i32 4}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 251, i32 4}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 252, i32 4}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 253, i32 4}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 254, i32 4}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 255, i32 4}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 256, i32 4}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 259, i32 4}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 262, i32 4}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 265, i32 4}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 268, i32 4}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 271, i32 4}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 273, i32 4}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 275, i32 4}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 277, i32 4}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 279, i32 4}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 282, i32 4}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 285, i32 4}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 288, i32 4}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 290, i32 4}
!72 = !{ptr @spansion_parts, !73, !"spansion_parts", i1 false, i1 false}
!73 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 205, i32 32}
!74 = !{ptr @s25fs_s_fixups, !75, !"s25fs_s_fixups", i1 false, i1 false}
!75 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 201, i32 36}
!76 = !{ptr @s28hs512t_fixups, !77, !"s28hs512t_fixups", i1 false, i1 false}
!77 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 179, i32 36}
!78 = !{ptr @spansion_fixups, !79, !"spansion_fixups", i1 false, i1 false}
!79 = !{!"../drivers/mtd/spi-nor/spansion.c", i32 308, i32 36}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
