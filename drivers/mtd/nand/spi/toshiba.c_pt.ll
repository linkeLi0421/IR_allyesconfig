; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/spi/toshiba.c_pt.bc'
source_filename = "../drivers/mtd/nand/spi/toshiba.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinand_info = type { ptr, %struct.spinand_devid, i32, %struct.nand_memory_organization, %struct.nand_ecc_props, %struct.spinand_ecc_info, %struct.anon.71, ptr }
%struct.spinand_devid = type { ptr, i8, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.spinand_ecc_info = type { ptr, ptr }
%struct.anon.71 = type { ptr, ptr, ptr }
%struct.spinand_manufacturer_ops = type { ptr, ptr }
%struct.spinand_manufacturer = type { i8, ptr, ptr, i32, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.spinand_op_variants = type { ptr, i32 }
%struct.spi_mem_op = type { %struct.anon.72, %struct.anon.73, %struct.anon.74, %struct.anon.75 }
%struct.anon.72 = type { i8, i8, i8, i16 }
%struct.anon.73 = type { i8, i8, i8, i64 }
%struct.anon.74 = type { i8, i8, i8 }
%struct.anon.75 = type { i8, i8, i32, i32, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.spinand_device = type { %struct.nand_device, ptr, %struct.mutex, %struct.spinand_id, i32, %struct.anon.79, ptr, ptr, i32, %struct.spinand_ecc_info, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
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
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinand_id = type { [4 x i8], i32 }
%struct.anon.79 = type { ptr, ptr, ptr }
%struct.mtd_oob_region = type { i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Toshiba\00", [24 x i8] zeroinitializer }, align 32
@toshiba_spinand_table = internal constant { [14 x %struct.spinand_info], [368 x i8] } { [14 x %struct.spinand_info] [%struct.spinand_info { ptr @.str.1, %struct.spinand_devid { ptr @.compoundliteral, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.2, %struct.spinand_devid { ptr @.compoundliteral.3, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.4, %struct.spinand_devid { ptr @.compoundliteral.5, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.6, %struct.spinand_devid { ptr @.compoundliteral.7, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.8, %struct.spinand_devid { ptr @.compoundliteral.9, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.10, %struct.spinand_devid { ptr @.compoundliteral.11, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.12, %struct.spinand_devid { ptr @.compoundliteral.13, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_x4_variants, ptr @update_cache_x4_variants }, ptr null }, %struct.spinand_info { ptr @.str.14, %struct.spinand_devid { ptr @.compoundliteral.15, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_x4_variants, ptr @update_cache_x4_variants }, ptr null }, %struct.spinand_info { ptr @.str.16, %struct.spinand_devid { ptr @.compoundliteral.17, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_x4_variants, ptr @update_cache_x4_variants }, ptr null }, %struct.spinand_info { ptr @.str.18, %struct.spinand_devid { ptr @.compoundliteral.19, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 4096, i32 80, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_x4_variants, ptr @update_cache_x4_variants }, ptr null }, %struct.spinand_info { ptr @.str.20, %struct.spinand_devid { ptr @.compoundliteral.21, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_x4_variants, ptr @update_cache_x4_variants }, ptr null }, %struct.spinand_info { ptr @.str.22, %struct.spinand_devid { ptr @.compoundliteral.23, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_x4_variants, ptr @update_cache_x4_variants }, ptr null }, %struct.spinand_info { ptr @.str.24, %struct.spinand_devid { ptr @.compoundliteral.25, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_x4_variants, ptr @update_cache_x4_variants }, ptr null }, %struct.spinand_info { ptr @.str.26, %struct.spinand_devid { ptr @.compoundliteral.27, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 4096, i32 80, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @tx58cxgxsxraix_ecc_get_status, ptr @tx58cxgxsxraix_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_x4_variants, ptr @update_cache_x4_variants }, ptr null }], [368 x i8] zeroinitializer }, align 32
@toshiba_spinand_manuf_ops = internal constant { %struct.spinand_manufacturer_ops, [24 x i8] } zeroinitializer, align 32
@toshiba_spinand_manufacturer = dso_local constant { %struct.spinand_manufacturer, [44 x i8] } { %struct.spinand_manufacturer { i8 -104, ptr @.str, ptr @toshiba_spinand_table, i32 14, ptr @toshiba_spinand_manuf_ops }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CVG0S3HRAIG\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\C2", [31 x i8] zeroinitializer }, align 32
@tx58cxgxsxraix_ooblayout = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @tx58cxgxsxraix_ooblayout_ecc, ptr @tx58cxgxsxraix_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@read_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.29, i32 4 }, [24 x i8] zeroinitializer }, align 32
@write_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.30, i32 1 }, [24 x i8] zeroinitializer }, align 32
@update_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.31, i32 1 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CVG1S3HRAIG\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\CB", [31 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CVG2S0HRAIG\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\CD", [31 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CYG0S3HRAIG\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\B2", [31 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CYG1S3HRAIG\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\BB", [31 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CYG2S0HRAIG\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\BD", [31 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CVG0S3HRAIJ\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\E2", [31 x i8] zeroinitializer }, align 32
@write_cache_x4_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.32, i32 2 }, [24 x i8] zeroinitializer }, align 32
@update_cache_x4_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.33, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CVG1S3HRAIJ\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\EB", [31 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CVG2S0HRAIJ\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\ED", [31 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TH58CVG3S0HRAIJ\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\E4", [31 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CYG0S3HRAIJ\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\D2", [31 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CYG1S3HRAIJ\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\DB", [31 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58CYG2S0HRAIJ\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\DD", [31 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TH58CYG3S0HRAIJ\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\D4", [31 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mtd/nand/spi/toshiba.c\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [4 x %struct.spi_mem_op], [32 x i8] } { [4 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 107 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 59 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 11 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 3 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [1 x %struct.spi_mem_op], [48 x i8] } { [1 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 2 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [1 x %struct.spi_mem_op], [48 x i8] } { [1 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 132 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 50 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 2 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 52 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 132 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 276, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"toshiba_spinand_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 109, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"toshiba_spinand_manuf_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 271, i32 46 }
@___asan_gen_.43 = private unnamed_addr constant [29 x i8] c"toshiba_spinand_manufacturer\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 274, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 111, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [25 x i8] c"tx58cxgxsxraix_ooblayout\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 66, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"read_cache_variants\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 17, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"write_cache_variants\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 35, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"update_cache_variants\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 38, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 122, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 133, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 144, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 155, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 166, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 182, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"write_cache_x4_variants\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 23, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [25 x i8] c"update_cache_x4_variants\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 27, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 193, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 204, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 215, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 226, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 237, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 248, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 259, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [34 x i8] c"../drivers/mtd/nand/spi/toshiba.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 97, i32 7 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @.str, ptr @toshiba_spinand_table, ptr @toshiba_spinand_manuf_ops, ptr @toshiba_spinand_manufacturer, ptr @.str.1, ptr @.compoundliteral, ptr @tx58cxgxsxraix_ooblayout, ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants, ptr @.str.2, ptr @.compoundliteral.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @write_cache_x4_variants, ptr @update_cache_x4_variants, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32, ptr @.compoundliteral.33], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshiba_spinand_table to i32), i32 1456, i32 1824, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshiba_spinand_manuf_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshiba_spinand_manufacturer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx58cxgxsxraix_ooblayout to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_cache_x4_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_cache_x4_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx58cxgxsxraix_ecc_get_status(ptr nocapture noundef readonly %spinand, i8 noundef zeroext %status) #0 align 64 {
entry:
  %mbf = alloca i8, align 1
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mbf) #4
  %0 = ptrtoint ptr %mbf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mbf, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #4
  %1 = call ptr @memset(ptr %op, i32 255, i32 48)
  %2 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 1
  %3 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %buswidth, align 1
  %dtr = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 2
  %4 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 3
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 15, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 48, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dummy, align 8
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buswidth8, align 1
  %dtr9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %dtr9, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %data, align 4
  %dtr14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 127, ptr %dtr14, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mbf, ptr %buf, align 8
  %18 = lshr i8 %status, 4
  %19 = and i8 %18, 3
  %20 = zext i8 %19 to i32
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %entry.unreachabledefault [
    i32 0, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb19
    i32 1, label %entry.sw.bb20_crit_edge
    i32 3, label %entry.sw.bb20_crit_edge66
  ]

entry.sw.bb20_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb20

entry.sw.bb20_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb20:                                          ; preds = %entry.sw.bb20_crit_edge, %entry.sw.bb20_crit_edge66
  %spimem = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %22 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spimem, align 8
  %call21 = call i32 @spi_mem_exec_op(ptr noundef %23, ptr noundef nonnull %op) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  %strength = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 2, i32 3, i32 0, i32 3
  %24 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %strength, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb20
  %26 = ptrtoint ptr %mbf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mbf, align 1
  %28 = lshr i8 %27, 4
  store i8 %28, ptr %mbf, align 1
  %conv25 = zext i8 %28 to i32
  %strength27 = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 2, i32 3, i32 0, i32 3
  %29 = ptrtoint ptr %strength27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %strength27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv25)
  %cmp = icmp ult i32 %30, %conv25
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %27)
  %tobool29.not = icmp ult i8 %27, 16
  %or.cond = or i1 %tobool29.not, %cmp
  br i1 %or.cond, label %do.end, label %if.end.cleanup_crit_edge, !prof !59

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 97, i32 noundef 9, ptr noundef null) #4
  %31 = ptrtoint ptr %strength27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %strength27, align 4
  br label %cleanup

entry.unreachabledefault:                         ; preds = %entry
  unreachable

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then, %sw.bb19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %if.then ], [ %32, %do.end ], [ -74, %sw.bb19 ], [ %20, %entry.cleanup_crit_edge ], [ %conv25, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mbf) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_exec_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tx58cxgxsxraix_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %cmp = icmp sgt i32 %section, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  %div5 = lshr i32 %1, 1
  %2 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div5, ptr %region, align 4
  %3 = load i32, ptr %oobsize, align 4
  %div26 = lshr i32 %3, 1
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div26, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tx58cxgxsxraix_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %cmp = icmp sgt i32 %section, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %region, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %1 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %oobsize, align 4
  %div2 = lshr i32 %2, 1
  %sub = add nsw i32 %div2, -2
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 276, i32 10}
!2 = !{ptr @toshiba_spinand_manufacturer, !3, !"toshiba_spinand_manufacturer", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 274, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 111, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 122, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 133, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 144, i32 2}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 155, i32 2}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 166, i32 2}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 182, i32 2}
!18 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 193, i32 2}
!20 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 204, i32 2}
!22 = !{ptr @.str.18, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 215, i32 2}
!24 = !{ptr @.str.20, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 226, i32 2}
!26 = !{ptr @.str.22, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 237, i32 2}
!28 = !{ptr @.str.24, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 248, i32 2}
!30 = !{ptr @.str.26, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 259, i32 2}
!32 = !{ptr @toshiba_spinand_table, !33, !"toshiba_spinand_table", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 109, i32 34}
!34 = !{ptr @.str.28, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 97, i32 7}
!36 = !{ptr @tx58cxgxsxraix_ooblayout, !37, !"tx58cxgxsxraix_ooblayout", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 66, i32 39}
!38 = !{ptr @read_cache_variants, !39, !"read_cache_variants", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 17, i32 8}
!40 = !{ptr @write_cache_variants, !41, !"write_cache_variants", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 35, i32 8}
!42 = !{ptr @update_cache_variants, !43, !"update_cache_variants", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 38, i32 8}
!44 = !{ptr @write_cache_x4_variants, !45, !"write_cache_x4_variants", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 23, i32 8}
!46 = !{ptr @update_cache_x4_variants, !47, !"update_cache_x4_variants", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 27, i32 8}
!48 = !{ptr @toshiba_spinand_manuf_ops, !49, !"toshiba_spinand_manuf_ops", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/spi/toshiba.c", i32 271, i32 46}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 2002, i32 2000}
