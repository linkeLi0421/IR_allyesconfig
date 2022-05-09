; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/micron-st.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/micron-st.c"
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

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"micron\00", [25 x i8] zeroinitializer }, align 32
@micron_parts = internal constant { [2 x %struct.flash_info], [48 x i8] } { [2 x %struct.flash_info] [%struct.flash_info { ptr @.str.2, [6 x i8] c",[\1A\00\00\00", i8 3, i32 131072, i16 512, i16 256, i16 0, i8 0, i16 1024, i8 -30, i8 3, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @mt35xu512aba_fixups }, %struct.flash_info { ptr @.str.3, [6 x i8] c",[\1C\00\00\00", i8 3, i32 131072, i16 2048, i16 256, i16 0, i8 0, i16 1024, i8 34, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }], [48 x i8] zeroinitializer }, align 32
@micron_st_fixups = internal constant { %struct.spi_nor_fixups, [16 x i8] } { %struct.spi_nor_fixups { ptr @micron_st_default_init, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@spi_nor_micron = dso_local constant { %struct.spi_nor_manufacturer, [16 x i8] } { %struct.spi_nor_manufacturer { ptr @.str, ptr @micron_parts, i32 2, ptr @micron_st_fixups }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"st\00", [29 x i8] zeroinitializer }, align 32
@st_parts = internal constant { [49 x %struct.flash_info], [888 x i8] } { [49 x %struct.flash_info] [%struct.flash_info { ptr @.str.4, [6 x i8] c" \BB\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.5, [6 x i8] c" \BA\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 16, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.6, [6 x i8] c" \BB\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 16, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.7, [6 x i8] c" \BA\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.8, [6 x i8] c" \BB\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.9, [6 x i8] c" \BB\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 1051, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.10, [6 x i8] c" \BA\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 1051, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.11, [6 x i8] c" \BA\19\10D\00", i8 6, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 1024, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.12, [6 x i8] c" \BA\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 1024, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.13, [6 x i8] c" \BB\19\10D\00", i8 6, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 1024, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.14, [6 x i8] c" \BB\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 1024, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.15, [6 x i8] c" \BA \10D\00", i8 6, i32 65536, i16 1024, i16 256, i16 0, i8 0, i16 1024, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.16, [6 x i8] c" \BA \00\00\00", i8 3, i32 65536, i16 1024, i16 256, i16 0, i8 0, i16 1051, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.17, [6 x i8] c" \BB \10D\00", i8 6, i32 65536, i16 1024, i16 256, i16 0, i8 0, i16 1024, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.18, [6 x i8] c" \BB \00\00\00", i8 3, i32 65536, i16 1024, i16 256, i16 0, i8 0, i16 1051, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.19, [6 x i8] c" \BA!\00\00\00", i8 3, i32 65536, i16 2048, i16 256, i16 0, i8 0, i16 1179, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.20, [6 x i8] c" \BB!\00\00\00", i8 3, i32 65536, i16 2048, i16 256, i16 0, i8 0, i16 1152, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.21, [6 x i8] c" \BA\22\00\00\00", i8 3, i32 65536, i16 4096, i16 256, i16 0, i8 0, i16 1152, i8 18, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.22, [6 x i8] c" \BB\22\00\00\00", i8 3, i32 65536, i16 4096, i16 256, i16 0, i8 0, i16 1152, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.23, [6 x i8] c"  \10\00\00\00", i8 3, i32 32768, i16 2, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.24, [6 x i8] c"  \11\00\00\00", i8 3, i32 32768, i16 4, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.25, [6 x i8] c"  \12\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.26, [6 x i8] c"  \13\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.27, [6 x i8] c"  \14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.28, [6 x i8] c"  \15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.29, [6 x i8] c"  \16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.30, [6 x i8] c"  \17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.31, [6 x i8] c"  \18\00\00\00", i8 3, i32 262144, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.32, [6 x i8] zeroinitializer, i8 0, i32 32768, i16 2, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.33, [6 x i8] zeroinitializer, i8 0, i32 32768, i16 4, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.34, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.35, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.36, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.37, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.38, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.39, [6 x i8] zeroinitializer, i8 0, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.40, [6 x i8] zeroinitializer, i8 0, i32 262144, i16 64, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.41, [6 x i8] c" @\11\00\00\00", i8 3, i32 65536, i16 2, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.42, [6 x i8] c" @\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.43, [6 x i8] c" @\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.44, [6 x i8] c" \80\12\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.45, [6 x i8] c" \80\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.46, [6 x i8] c" \80\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.47, [6 x i8] c" q\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.48, [6 x i8] c" q\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.49, [6 x i8] c" s\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.50, [6 x i8] c" c\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.51, [6 x i8] c" q\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.52, [6 x i8] c" q\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }], [888 x i8] zeroinitializer }, align 32
@spi_nor_st = dso_local constant { %struct.spi_nor_manufacturer, [16 x i8] } { %struct.spi_nor_manufacturer { ptr @.str.1, ptr @st_parts, i32 49, ptr @micron_st_fixups }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt35xu512aba\00", [19 x i8] zeroinitializer }, align 32
@mt35xu512aba_fixups = internal constant { %struct.spi_nor_fixups, [16 x i8] } { %struct.spi_nor_fixups { ptr @mt35xu512aba_default_init, ptr null, ptr @mt35xu512aba_post_sfdp_fixup, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mt35xu02g\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"n25q016a\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"n25q032\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"n25q032a\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"n25q064\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"n25q064a\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"n25q128a11\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"n25q128a13\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt25ql256a\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"n25q256a\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt25qu256a\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"n25q256ax1\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt25ql512a\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"n25q512ax3\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt25qu512a\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"n25q512a\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"n25q00\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"n25q00a\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mt25ql02g\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mt25qu02g\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p05\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p10\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p20\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p40\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p80\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p16\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p32\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p64\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25p128\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m25p05-nonjedec\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m25p10-nonjedec\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m25p20-nonjedec\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m25p40-nonjedec\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m25p80-nonjedec\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m25p16-nonjedec\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m25p32-nonjedec\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m25p64-nonjedec\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m25p128-nonjedec\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m45pe10\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m45pe80\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m45pe16\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25pe20\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25pe80\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25pe16\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25px16\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25px32\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m25px32-s0\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m25px32-s1\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25px64\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25px80\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 289, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"micron_parts\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 133, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"micron_st_fixups\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 284, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"spi_nor_micron\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 288, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 296, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"st_parts\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 146, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"spi_nor_st\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 295, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 134, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"mt35xu512aba_fixups\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 128, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 140, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 147, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 149, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 151, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 153, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 155, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 157, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 161, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 165, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 169, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 173, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 177, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 180, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 184, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 188, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 192, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 196, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 200, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 203, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 206, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 211, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 212, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 213, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 214, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 215, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 216, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 217, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 218, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 219, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 221, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 222, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 223, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 224, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 225, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 226, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 227, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 228, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 229, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 231, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 232, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 233, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 235, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 236, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 237, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 240, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 242, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 244, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 246, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 248, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [35 x i8] c"../drivers/mtd/spi-nor/micron-st.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 249, i32 4 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @.str, ptr @micron_parts, ptr @micron_st_fixups, ptr @spi_nor_micron, ptr @.str.1, ptr @st_parts, ptr @spi_nor_st, ptr @.str.2, ptr @mt35xu512aba_fixups, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_parts to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_st_fixups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_micron to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_parts to i32), i32 3528, i32 4416, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_st to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt35xu512aba_fixups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt35xu512aba_default_init(ptr nocapture noundef readonly %nor) #0 align 64 {
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
  store ptr @spi_nor_micron_octal_dtr_enable, ptr %octal_dtr_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt35xu512aba_post_sfdp_fixup(ptr nocapture noundef %nor) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %hwcaps = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hwcaps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwcaps, align 4
  %or = or i32 %3, 32768
  store i32 %or, ptr %hwcaps, align 4
  %4 = load ptr, ptr %params, align 4
  %arrayidx = getelementptr %struct.spi_nor_flash_parameter, ptr %4, i32 0, i32 6, i32 15
  tail call void @spi_nor_set_read_settings(ptr noundef %arrayidx, i8 noundef zeroext 0, i8 noundef zeroext 20, i8 noundef zeroext -3, i32 noundef 17303560) #5
  %cmd_ext_type = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %5 = ptrtoint ptr %cmd_ext_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %cmd_ext_type, align 8
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params, align 4
  %rdsr_dummy = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %rdsr_dummy to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %rdsr_dummy, align 8
  %9 = load ptr, ptr %params, align 4
  %rdsr_addr_nbytes = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %rdsr_addr_nbytes to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %rdsr_addr_nbytes, align 1
  %11 = load ptr, ptr %params, align 4
  %quad_enable = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %quad_enable to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %quad_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_micron_octal_dtr_enable(ptr noundef %nor, i1 noundef zeroext %enable) #1 align 64 {
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
  store i8 20, ptr %2, align 1
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
  %.compoundliteral.sroa.5151.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 4
  %7 = ptrtoint ptr %.compoundliteral.sroa.5151.0.op.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 129, ptr %.compoundliteral.sroa.5151.0.op.sroa_idx, align 4
  %.compoundliteral.sroa.6152.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 8
  %8 = ptrtoint ptr %.compoundliteral.sroa.6152.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %.compoundliteral.sroa.6152.0.op.sroa_idx, align 8
  %.compoundliteral.sroa.7.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 9
  %9 = ptrtoint ptr %.compoundliteral.sroa.7.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %.compoundliteral.sroa.7.0.op.sroa_idx, align 1
  %.compoundliteral.sroa.8.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 10
  %10 = ptrtoint ptr %.compoundliteral.sroa.8.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %.compoundliteral.sroa.8.0.op.sroa_idx, align 2
  %.compoundliteral.sroa.10153.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 16
  %11 = ptrtoint ptr %.compoundliteral.sroa.10153.0.op.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1, ptr %.compoundliteral.sroa.10153.0.op.sroa_idx, align 8
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
  %.compoundliteral.sroa.15154.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 28
  %15 = ptrtoint ptr %.compoundliteral.sroa.15154.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %.compoundliteral.sroa.15154.0.op.sroa_idx, align 4
  %.compoundliteral.sroa.16.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 29
  %16 = ptrtoint ptr %.compoundliteral.sroa.16.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %.compoundliteral.sroa.16.0.op.sroa_idx, align 1
  %.compoundliteral.sroa.18155.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 32
  %17 = ptrtoint ptr %.compoundliteral.sroa.18155.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %.compoundliteral.sroa.18155.0.op.sroa_idx, align 8
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
  %call31 = call i32 @spi_nor_write_enable(ptr noundef %nor) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then36.critedge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30.thread:                                  ; preds = %entry
  br i1 %tobool1.not, label %if.else, label %if.end30.thread.cleanup_crit_edge

if.end30.thread.cleanup_crit_edge:                ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36.critedge:                               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -25, ptr %2, align 1
  br label %if.end39

if.else:                                          ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %2, align 1
  %arrayidx38 = getelementptr i8, ptr %2, i32 1
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 31, ptr %arrayidx38, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then36.critedge
  %cond75 = phi i32 [ 2, %if.else ], [ 1, %if.then36.critedge ]
  %cond = phi i8 [ 4, %if.else ], [ 3, %if.then36.critedge ]
  %25 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %op, align 8
  %.compoundliteral40.sroa.2.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 1
  %26 = ptrtoint ptr %.compoundliteral40.sroa.2.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %.compoundliteral40.sroa.2.0.op.sroa_idx, align 1
  %.compoundliteral40.sroa.3.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 2
  %27 = ptrtoint ptr %.compoundliteral40.sroa.3.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %.compoundliteral40.sroa.3.0.op.sroa_idx, align 2
  %.compoundliteral40.sroa.5146.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 4
  %28 = ptrtoint ptr %.compoundliteral40.sroa.5146.0.op.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 129, ptr %.compoundliteral40.sroa.5146.0.op.sroa_idx, align 4
  %.compoundliteral40.sroa.6147.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 8
  %29 = ptrtoint ptr %.compoundliteral40.sroa.6147.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %cond, ptr %.compoundliteral40.sroa.6147.0.op.sroa_idx, align 8
  %.compoundliteral40.sroa.7.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 9
  %30 = ptrtoint ptr %.compoundliteral40.sroa.7.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %.compoundliteral40.sroa.7.0.op.sroa_idx, align 1
  %.compoundliteral40.sroa.8.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 10
  %31 = ptrtoint ptr %.compoundliteral40.sroa.8.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %.compoundliteral40.sroa.8.0.op.sroa_idx, align 2
  %.compoundliteral40.sroa.10148.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 16
  %.compoundliteral40.sroa.11.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 24
  %.compoundliteral40.sroa.12.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 25
  %.compoundliteral40.sroa.13.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 26
  %.compoundliteral40.sroa.15149.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 28
  %32 = call ptr @memset(ptr %.compoundliteral40.sroa.10148.0.op.sroa_idx, i32 0, i32 11)
  %33 = ptrtoint ptr %.compoundliteral40.sroa.15149.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %.compoundliteral40.sroa.15149.0.op.sroa_idx, align 4
  %.compoundliteral40.sroa.16.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 29
  %34 = ptrtoint ptr %.compoundliteral40.sroa.16.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %.compoundliteral40.sroa.16.0.op.sroa_idx, align 1
  %.compoundliteral40.sroa.18150.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 32
  %35 = ptrtoint ptr %.compoundliteral40.sroa.18150.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %.compoundliteral40.sroa.18150.0.op.sroa_idx, align 8
  %.compoundliteral40.sroa.19.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 36
  %36 = ptrtoint ptr %.compoundliteral40.sroa.19.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond75, ptr %.compoundliteral40.sroa.19.0.op.sroa_idx, align 4
  %.compoundliteral40.sroa.20.0.op.sroa_idx = getelementptr inbounds i8, ptr %op, i32 40
  %37 = ptrtoint ptr %.compoundliteral40.sroa.20.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
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
  %38 = ptrtoint ptr %spimem80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spimem80, align 8
  %call81 = call i32 @spi_mem_exec_op(ptr noundef %39, ptr noundef nonnull %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end84:                                         ; preds = %if.end79
  %conv107 = select i1 %enable, i8 8, i8 0
  %info = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 4
  %id_len = getelementptr inbounds %struct.flash_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %id_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %id_len, align 2
  %conv121 = zext i8 %43 to i32
  %sub = add nsw i32 %conv121, -1
  %or = or i32 %sub, 1
  %add = add nsw i32 %or, 1
  %44 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %op, align 8
  %45 = ptrtoint ptr %.compoundliteral40.sroa.2.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %.compoundliteral40.sroa.2.0.op.sroa_idx, align 1
  %46 = ptrtoint ptr %.compoundliteral40.sroa.3.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %.compoundliteral40.sroa.3.0.op.sroa_idx, align 2
  %47 = ptrtoint ptr %.compoundliteral40.sroa.5146.0.op.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 159, ptr %.compoundliteral40.sroa.5146.0.op.sroa_idx, align 4
  %48 = ptrtoint ptr %.compoundliteral40.sroa.6147.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %.compoundliteral40.sroa.6147.0.op.sroa_idx, align 8
  %49 = ptrtoint ptr %.compoundliteral40.sroa.7.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %.compoundliteral40.sroa.7.0.op.sroa_idx, align 1
  %50 = ptrtoint ptr %.compoundliteral40.sroa.8.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %.compoundliteral40.sroa.8.0.op.sroa_idx, align 2
  %51 = ptrtoint ptr %.compoundliteral40.sroa.10148.0.op.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %.compoundliteral40.sroa.10148.0.op.sroa_idx, align 8
  %52 = ptrtoint ptr %.compoundliteral40.sroa.11.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv107, ptr %.compoundliteral40.sroa.11.0.op.sroa_idx, align 8
  %53 = ptrtoint ptr %.compoundliteral40.sroa.12.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %.compoundliteral40.sroa.12.0.op.sroa_idx, align 1
  %54 = ptrtoint ptr %.compoundliteral40.sroa.13.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %.compoundliteral40.sroa.13.0.op.sroa_idx, align 2
  %55 = ptrtoint ptr %.compoundliteral40.sroa.15149.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %.compoundliteral40.sroa.15149.0.op.sroa_idx, align 4
  %56 = ptrtoint ptr %.compoundliteral40.sroa.16.0.op.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %.compoundliteral40.sroa.16.0.op.sroa_idx, align 1
  %57 = ptrtoint ptr %.compoundliteral40.sroa.18150.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %.compoundliteral40.sroa.18150.0.op.sroa_idx, align 8
  %58 = ptrtoint ptr %.compoundliteral40.sroa.19.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add, ptr %.compoundliteral40.sroa.19.0.op.sroa_idx, align 4
  %59 = ptrtoint ptr %.compoundliteral40.sroa.20.0.op.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %2, ptr %.compoundliteral40.sroa.20.0.op.sroa_idx, align 8
  br i1 %enable, label %if.then124, label %if.end84.if.end125_crit_edge

if.end84.if.end125_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

if.then124:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  call void @spi_nor_spimem_setup_op(ptr noundef %nor, ptr noundef nonnull %op, i32 noundef 17303560) #5
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end84.if.end125_crit_edge
  %60 = ptrtoint ptr %spimem80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %spimem80, align 8
  %call127 = call i32 @spi_mem_exec_op(ptr noundef %61, ptr noundef nonnull %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end130:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %info, align 4
  %id = getelementptr inbounds %struct.flash_info, ptr %63, i32 0, i32 1
  %id_len133 = getelementptr inbounds %struct.flash_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %id_len133 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %id_len133, align 2
  %conv134 = zext i8 %65 to i32
  %bcmp = call i32 @bcmp(ptr %2, ptr %id, i32 %conv134) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool136.not = icmp eq i32 %bcmp, 0
  %. = select i1 %tobool136.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.end125.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end30.thread.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call22, %if.end.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call81, %if.end79.cleanup_crit_edge ], [ %call127, %if.end125.cleanup_crit_edge ], [ %., %if.end130 ], [ %call, %if.end30.thread.cleanup_crit_edge ]
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
declare dso_local void @spi_nor_set_read_settings(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @micron_st_default_init(ptr nocapture noundef %nor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = and i32 %1, -769
  %and = or i32 %or, 256
  store i32 %and, ptr %flags, align 4
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %quad_enable = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %quad_enable to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %quad_enable, align 4
  %5 = load ptr, ptr %params, align 4
  %set_4byte_addr_mode = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %set_4byte_addr_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @st_micron_set_4byte_addr_mode, ptr %set_4byte_addr_mode, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_micron_set_4byte_addr_mode(ptr noundef %nor, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spi_nor_write_enable(ptr noundef %nor) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @spi_nor_set_4byte_addr_mode(ptr noundef %nor, i1 noundef zeroext %enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @spi_nor_write_disable(ptr noundef %nor) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_set_4byte_addr_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 289, i32 10}
!2 = !{ptr @spi_nor_micron, !3, !"spi_nor_micron", i1 false, i1 false}
!3 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 288, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 296, i32 10}
!6 = !{ptr @spi_nor_st, !7, !"spi_nor_st", i1 false, i1 false}
!7 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 295, i32 35}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 134, i32 4}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 140, i32 4}
!12 = !{ptr @micron_parts, !13, !"micron_parts", i1 false, i1 false}
!13 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 133, i32 32}
!14 = !{ptr @mt35xu512aba_fixups, !15, !"mt35xu512aba_fixups", i1 false, i1 false}
!15 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 128, i32 36}
!16 = !{ptr @micron_st_fixups, !17, !"micron_st_fixups", i1 false, i1 false}
!17 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 284, i32 36}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 147, i32 4}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 149, i32 4}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 151, i32 4}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 153, i32 4}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 155, i32 4}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 157, i32 4}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 161, i32 4}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 165, i32 4}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 169, i32 4}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 173, i32 4}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 177, i32 4}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 180, i32 4}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 184, i32 4}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 188, i32 4}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 192, i32 4}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 196, i32 4}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 200, i32 4}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 203, i32 4}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 206, i32 4}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 211, i32 4}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 212, i32 4}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 213, i32 4}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 214, i32 4}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 215, i32 4}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 216, i32 4}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 217, i32 4}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 218, i32 4}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 219, i32 4}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 221, i32 4}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 222, i32 4}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 223, i32 4}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 224, i32 4}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 225, i32 4}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 226, i32 4}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 227, i32 4}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 228, i32 4}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 229, i32 4}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 231, i32 4}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 232, i32 4}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 233, i32 4}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 235, i32 4}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 236, i32 4}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 237, i32 4}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 240, i32 4}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 242, i32 4}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 244, i32 4}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 246, i32 4}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 248, i32 4}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 249, i32 4}
!116 = !{ptr @st_parts, !117, !"st_parts", i1 false, i1 false}
!117 = !{!"../drivers/mtd/spi-nor/micron-st.c", i32 146, i32 32}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
