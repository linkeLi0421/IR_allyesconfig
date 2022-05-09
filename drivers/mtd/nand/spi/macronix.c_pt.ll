; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/spi/macronix.c_pt.bc'
source_filename = "../drivers/mtd/nand/spi/macronix.c"
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

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Macronix\00", [23 x i8] zeroinitializer }, align 32
@macronix_spinand_table = internal constant { [20 x %struct.spinand_info], [512 x i8] } { [20 x %struct.spinand_info] [%struct.spinand_info { ptr @.str.1, %struct.spinand_devid { ptr @.compoundliteral, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 4, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.2, %struct.spinand_devid { ptr @.compoundliteral.3, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 2048, i32 40, i32 2, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 4, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr null, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.4, %struct.spinand_devid { ptr @.compoundliteral.5, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.6, %struct.spinand_devid { ptr @.compoundliteral.7, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 4096, i32 128, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.8, %struct.spinand_devid { ptr @.compoundliteral.9, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr null, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.10, %struct.spinand_devid { ptr @.compoundliteral.11, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 40, i32 2, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr null, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.12, %struct.spinand_devid { ptr @.compoundliteral.13, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 2, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr null, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.14, %struct.spinand_devid { ptr @.compoundliteral.15, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.16, %struct.spinand_devid { ptr @.compoundliteral.17, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.18, %struct.spinand_devid { ptr @.compoundliteral.19, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 2048, i32 40, i32 2, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 4, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.20, %struct.spinand_devid { ptr @.compoundliteral.21, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 2, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.22, %struct.spinand_devid { ptr @.compoundliteral.23, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.24, %struct.spinand_devid { ptr @.compoundliteral.25, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 2048, i32 40, i32 2, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 4, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.26, %struct.spinand_devid { ptr @.compoundliteral.27, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 40, i32 2, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.28, %struct.spinand_devid { ptr @.compoundliteral.29, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.30, %struct.spinand_devid { ptr @.compoundliteral.31, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 4, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.32, %struct.spinand_devid { ptr @.compoundliteral.33, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 4, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.34, %struct.spinand_devid { ptr @.compoundliteral.35, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.36, %struct.spinand_devid { ptr @.compoundliteral.37, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.38, %struct.spinand_devid { ptr @.compoundliteral.39, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 4, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @mx35lf1ge4ab_ecc_get_status, ptr @mx35lfxge4ab_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }], [512 x i8] zeroinitializer }, align 32
@macronix_spinand_manuf_ops = internal constant { %struct.spinand_manufacturer_ops, [24 x i8] } zeroinitializer, align 32
@macronix_spinand_manufacturer = dso_local constant { %struct.spinand_manufacturer, [44 x i8] } { %struct.spinand_manufacturer { i8 -62, ptr @.str, ptr @macronix_spinand_table, i32 20, ptr @macronix_spinand_manuf_ops }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35LF1GE4AB\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\12", [31 x i8] zeroinitializer }, align 32
@mx35lfxge4ab_ooblayout = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @mx35lfxge4ab_ooblayout_ecc, ptr @mx35lfxge4ab_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@read_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.41, i32 4 }, [24 x i8] zeroinitializer }, align 32
@write_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.42, i32 2 }, [24 x i8] zeroinitializer }, align 32
@update_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.43, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35LF2GE4AB\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\22", [31 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35LF2GE4AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"&", [31 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35LF4GE4AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"7", [31 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35LF1G24AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\14", [31 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35LF2G24AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"$", [31 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35LF4G24AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"5", [31 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX31LF1GE4BC\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\1E", [31 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX31UF1GE4BC\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\9E", [31 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35LF2G14AC\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c" ", [31 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35UF4G24AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\B5", [31 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35UF4GE4AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\B7", [31 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35UF2G14AC\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\A0", [31 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35UF2G24AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\A4", [31 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35UF2GE4AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\A6", [31 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35UF2GE4AC\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\A2", [31 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35UF1G14AC\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\90", [31 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35UF1G24AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\94", [31 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35UF1GE4AD\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\96", [31 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MX35UF1GE4AC\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\92", [31 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/nand/spi/macronix.c\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { [4 x %struct.spi_mem_op], [32 x i8] } { [4 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 107 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 59 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 11 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 3 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 50 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 2 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 52 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 132 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 308, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"macronix_spinand_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 102, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"macronix_spinand_manuf_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 303, i32 46 }
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"macronix_spinand_manufacturer\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 306, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 103, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"mx35lfxge4ab_ooblayout\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 47, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"read_cache_variants\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 15, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"write_cache_variants\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 21, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"update_cache_variants\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 25, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 113, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 122, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 132, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 142, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 151, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 160, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 169, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 179, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 190, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 200, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 210, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 220, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 230, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 240, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 250, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 260, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 270, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 280, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 290, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [35 x i8] c"../drivers/mtd/nand/spi/macronix.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 89, i32 7 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @.str, ptr @macronix_spinand_table, ptr @macronix_spinand_manuf_ops, ptr @macronix_spinand_manufacturer, ptr @.str.1, ptr @.compoundliteral, ptr @mx35lfxge4ab_ooblayout, ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants, ptr @.str.2, ptr @.compoundliteral.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.compoundliteral.42, ptr @.compoundliteral.43], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macronix_spinand_table to i32), i32 2080, i32 2592, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macronix_spinand_manuf_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macronix_spinand_manufacturer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx35lfxge4ab_ooblayout to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx35lf1ge4ab_ecc_get_status(ptr nocapture noundef readonly %spinand, i8 noundef zeroext %status) #0 align 64 {
entry:
  %op.i = alloca %struct.spi_mem_op, align 8
  %eccsr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eccsr) #5
  %0 = ptrtoint ptr %eccsr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %eccsr, align 1, !annotation !67
  %1 = and i8 %status, 48
  %and = zext i8 %1 to i32
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.epilog [
    i32 0, label %entry.cleanup_crit_edge
    i32 32, label %sw.bb1
    i32 16, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #5
  %3 = call ptr @memset(ptr %op.i, i32 255, i32 48)
  %4 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %op.i, align 8
  %buswidth.i = getelementptr inbounds %struct.anon.72, ptr %op.i, i32 0, i32 1
  %5 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %buswidth.i, align 1
  %dtr.i = getelementptr inbounds %struct.anon.72, ptr %op.i, i32 0, i32 2
  %6 = ptrtoint ptr %dtr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 127, ptr %dtr.i, align 2
  %opcode.i = getelementptr inbounds %struct.anon.72, ptr %op.i, i32 0, i32 3
  %7 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 124, ptr %opcode.i, align 4
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %addr.i, align 8
  %buswidth2.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %buswidth2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %buswidth2.i, align 1
  %dtr3.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %dtr3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 127, ptr %dtr3.i, align 2
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %val.i, align 8
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2
  %12 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dummy.i, align 8
  %buswidth8.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %buswidth8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %buswidth8.i, align 1
  %dtr9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %dtr9.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 127, ptr %dtr9.i, align 2
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %data.i, align 4
  %dtr14.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %dtr14.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 127, ptr %dtr14.i, align 1
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %dir.i, align 8
  %nbytes18.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %nbytes18.i, align 4
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %eccsr, ptr %buf.i, align 8
  %spimem.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %20 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spimem.i, align 8
  %call.i = call i32 @spi_mem_exec_op(ptr noundef %21, ptr noundef nonnull %op.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #5
  %strength = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 2, i32 3, i32 0, i32 3
  %22 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %strength, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %24 = ptrtoint ptr %eccsr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %eccsr, align 1
  %26 = and i8 %25, 15
  store i8 %26, ptr %eccsr, align 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #5
  %conv5 = zext i8 %26 to i32
  %strength7 = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 2, i32 3, i32 0, i32 3
  %27 = ptrtoint ptr %strength7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %strength7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv5)
  %cmp = icmp ult i32 %28, %conv5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not = icmp eq i8 %26, 0
  %or.cond = or i1 %tobool9.not, %cmp
  br i1 %or.cond, label %do.end, label %if.end.cleanup_crit_edge, !prof !68

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 90, i32 noundef 9, ptr noundef null) #5
  %29 = ptrtoint ptr %strength7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %strength7, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %if.end.cleanup_crit_edge, %if.then, %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ %23, %if.then ], [ %30, %do.end ], [ -74, %sw.bb1 ], [ %and, %entry.cleanup_crit_edge ], [ %conv5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eccsr) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_exec_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mx35lfxge4ab_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef readnone %region) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -34
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mx35lfxge4ab_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %region, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %1 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %oobsize, align 4
  %sub = add i32 %2, -2
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
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 308, i32 10}
!2 = !{ptr @macronix_spinand_manufacturer, !3, !"macronix_spinand_manufacturer", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 306, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 103, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 113, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 122, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 132, i32 2}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 142, i32 2}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 151, i32 2}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 160, i32 2}
!18 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 169, i32 2}
!20 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 179, i32 2}
!22 = !{ptr @.str.18, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 190, i32 2}
!24 = !{ptr @.str.20, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 200, i32 2}
!26 = !{ptr @.str.22, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 210, i32 2}
!28 = !{ptr @.str.24, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 220, i32 2}
!30 = !{ptr @.str.26, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 230, i32 2}
!32 = !{ptr @.str.28, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 240, i32 2}
!34 = !{ptr @.str.30, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 250, i32 2}
!36 = !{ptr @.str.32, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 260, i32 2}
!38 = !{ptr @.str.34, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 270, i32 2}
!40 = !{ptr @.str.36, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 280, i32 2}
!42 = !{ptr @.str.38, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 290, i32 2}
!44 = !{ptr @macronix_spinand_table, !45, !"macronix_spinand_table", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 102, i32 34}
!46 = !{ptr @.str.40, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 89, i32 7}
!48 = !{ptr @mx35lfxge4ab_ooblayout, !49, !"mx35lfxge4ab_ooblayout", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 47, i32 39}
!50 = !{ptr @read_cache_variants, !51, !"read_cache_variants", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 15, i32 8}
!52 = !{ptr @write_cache_variants, !53, !"write_cache_variants", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 21, i32 8}
!54 = !{ptr @update_cache_variants, !55, !"update_cache_variants", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 25, i32 8}
!56 = !{ptr @macronix_spinand_manuf_ops, !57, !"macronix_spinand_manuf_ops", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/spi/macronix.c", i32 303, i32 46}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{!"branch_weights", i32 2002, i32 2000}
