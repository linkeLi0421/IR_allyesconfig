; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/spi/gigadevice.c_pt.bc'
source_filename = "../drivers/mtd/nand/spi/gigadevice.c"
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

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GigaDevice\00", [21 x i8] zeroinitializer }, align 32
@gigadevice_spinand_table = internal constant { [8 x %struct.spinand_info], [192 x i8] } { [8 x %struct.spinand_info] [%struct.spinand_info { ptr @.str.1, %struct.spinand_devid { ptr @.compoundliteral, i8 1, i32 1 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @gd5fxgq4xa_ecc_get_status, ptr @gd5fxgq4xa_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.2, %struct.spinand_devid { ptr @.compoundliteral.3, i8 1, i32 1 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @gd5fxgq4xa_ecc_get_status, ptr @gd5fxgq4xa_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.4, %struct.spinand_devid { ptr @.compoundliteral.5, i8 1, i32 1 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 4096, i32 80, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @gd5fxgq4xa_ecc_get_status, ptr @gd5fxgq4xa_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.6, %struct.spinand_devid { ptr @.compoundliteral.7, i8 2, i32 0 }, i32 1, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @gd5fxgq4ufxxg_ecc_get_status, ptr @gd5fxgq4xc_oob_256_ops }, %struct.anon.71 { ptr @read_cache_variants_f, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.8, %struct.spinand_devid { ptr @.compoundliteral.9, i8 2, i32 0 }, i32 1, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @gd5fxgq4ufxxg_ecc_get_status, ptr @gd5fxgq4xc_oob_256_ops }, %struct.anon.71 { ptr @read_cache_variants_f, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.10, %struct.spinand_devid { ptr @.compoundliteral.11, i8 1, i32 1 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @gd5fxgq4uexxg_ecc_get_status, ptr @gd5fxgqx_variant2_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.12, %struct.spinand_devid { ptr @.compoundliteral.13, i8 2, i32 0 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @gd5fxgq4ufxxg_ecc_get_status, ptr @gd5fxgqx_variant2_ooblayout }, %struct.anon.71 { ptr @read_cache_variants_f, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.14, %struct.spinand_devid { ptr @.compoundliteral.15, i8 1, i32 2 }, i32 1, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 4, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @gd5fxgq5xexxg_ecc_get_status, ptr @gd5fxgqx_variant2_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }], [192 x i8] zeroinitializer }, align 32
@gigadevice_spinand_manuf_ops = internal constant { %struct.spinand_manufacturer_ops, [24 x i8] } zeroinitializer, align 32
@gigadevice_spinand_manufacturer = dso_local constant { %struct.spinand_manufacturer, [44 x i8] } { %struct.spinand_manufacturer { i8 -56, ptr @.str, ptr @gigadevice_spinand_table, i32 8, ptr @gigadevice_spinand_manuf_ops }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GD5F1GQ4xA\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\F1", [31 x i8] zeroinitializer }, align 32
@gd5fxgq4xa_ooblayout = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @gd5fxgq4xa_ooblayout_ecc, ptr @gd5fxgq4xa_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@read_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.16, i32 6 }, [24 x i8] zeroinitializer }, align 32
@write_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.17, i32 2 }, [24 x i8] zeroinitializer }, align 32
@update_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.18, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GD5F2GQ4xA\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\F2", [31 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GD5F4GQ4xA\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\F4", [31 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GD5F4GQ4RC\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\A4h", [30 x i8] zeroinitializer }, align 32
@gd5fxgq4xc_oob_256_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @gd5fxgq4xc_ooblayout_256_ecc, ptr @gd5fxgq4xc_ooblayout_256_free }, [24 x i8] zeroinitializer }, align 32
@read_cache_variants_f = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.19, i32 6 }, [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GD5F4GQ4UC\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B4h", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GD5F1GQ4UExxG\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\D1", [31 x i8] zeroinitializer }, align 32
@gd5fxgqx_variant2_ooblayout = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @gd5fxgqx_variant2_ooblayout_ecc, ptr @gd5fxgqx_variant2_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GD5F1GQ4UFxxG\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B1H", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GD5F1GQ5UExxG\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"Q", [31 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [6 x %struct.spi_mem_op], [64 x i8] } { [6 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 235 }, %struct.anon.73 { i8 2, i8 4, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 4, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 107 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 187 }, %struct.anon.73 { i8 2, i8 2, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 2, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 59 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 11 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 3 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }], [64 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 50 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 2 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 52 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 132 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [6 x %struct.spi_mem_op], [64 x i8] } { [6 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 235 }, %struct.anon.73 { i8 2, i8 4, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 4, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 107 }, %struct.anon.73 { i8 3, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 187 }, %struct.anon.73 { i8 2, i8 2, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 2, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 59 }, %struct.anon.73 { i8 3, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 11 }, %struct.anon.73 { i8 3, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 3 }, %struct.anon.73 { i8 3, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 0, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }], [64 x i8] zeroinitializer }, align 32
@switch.table.gd5fxgq4xa_ecc_get_status = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 7, i32 -74, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 112]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 355, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"gigadevice_spinand_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 267, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"gigadevice_spinand_manuf_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 350, i32 46 }
@___asan_gen_.31 = private unnamed_addr constant [32 x i8] c"gigadevice_spinand_manufacturer\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 353, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 268, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"gd5fxgq4xa_ooblayout\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 79, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"read_cache_variants\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 26, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"write_cache_variants\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 42, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"update_cache_variants\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 46, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 278, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 288, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 298, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"gd5fxgq4xc_oob_256_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 163, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"read_cache_variants_f\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 34, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 308, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 318, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"gd5fxgqx_variant2_ooblayout\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 134, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 328, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [37 x i8] c"../drivers/mtd/nand/spi/gigadevice.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 338, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [39 x i8] c"switch.table.gd5fxgq4xa_ecc_get_status\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @.str, ptr @gigadevice_spinand_table, ptr @gigadevice_spinand_manuf_ops, ptr @gigadevice_spinand_manufacturer, ptr @.str.1, ptr @.compoundliteral, ptr @gd5fxgq4xa_ooblayout, ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants, ptr @.str.2, ptr @.compoundliteral.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @gd5fxgq4xc_oob_256_ops, ptr @read_cache_variants_f, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @gd5fxgqx_variant2_ooblayout, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @switch.table.gd5fxgq4xa_ecc_get_status], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gigadevice_spinand_table to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gigadevice_spinand_manuf_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gigadevice_spinand_manufacturer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gd5fxgq4xa_ooblayout to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gd5fxgq4xc_oob_256_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_cache_variants_f to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gd5fxgqx_variant2_ooblayout to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gd5fxgq4xa_ecc_get_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gd5fxgq4xa_ecc_get_status(ptr nocapture noundef readnone %spinand, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i8 %status, 4
  %1 = and i8 %0, 3
  %2 = zext i8 %1 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.gd5fxgq4xa_ecc_get_status, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gd5fxgq4ufxxg_ecc_get_status(ptr nocapture noundef readnone %spinand, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %status, 112
  %and = zext i8 %0 to i32
  %1 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 16, label %sw.bb1
    i32 112, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = lshr exact i32 %and, 4
  %add = add nuw nsw i32 %2, 2
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add, %sw.default ], [ -74, %sw.bb2 ], [ 3, %sw.bb1 ], [ %and, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gd5fxgq4uexxg_ecc_get_status(ptr nocapture noundef readonly %spinand, i8 noundef zeroext %status) #1 align 64 {
entry:
  %status2 = alloca i8, align 1
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status2) #5
  %0 = ptrtoint ptr %status2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status2, align 1, !annotation !47
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #5
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
  store i64 240, ptr %val, align 8
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
  store ptr %status2, ptr %buf, align 8
  %18 = and i8 %status, 48
  %and = zext i8 %18 to i32
  %19 = lshr exact i32 %and, 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %19, label %entry.unreachabledefault [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb19
    i32 3, label %sw.bb25
    i32 2, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %spimem = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %21 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %22, ptr noundef nonnull %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr exact i32 %and, 2
  %23 = ptrtoint ptr %status2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status2, align 1
  %25 = lshr i8 %24, 4
  %26 = and i8 %25, 3
  %shr24 = zext i8 %26 to i32
  %or = or i32 %shr, %shr24
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.unreachabledefault:                         ; preds = %entry
  unreachable

cleanup:                                          ; preds = %sw.bb26, %sw.bb25, %if.end, %sw.bb19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %sw.bb26 ], [ 8, %sw.bb25 ], [ %or, %if.end ], [ %19, %entry.cleanup_crit_edge ], [ %call, %sw.bb19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status2) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gd5fxgq5xexxg_ecc_get_status(ptr nocapture noundef readonly %spinand, i8 noundef zeroext %status) #1 align 64 {
entry:
  %status2 = alloca i8, align 1
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status2) #5
  %0 = ptrtoint ptr %status2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status2, align 1, !annotation !47
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #5
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
  store i64 240, ptr %val, align 8
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
  store ptr %status2, ptr %buf, align 8
  %18 = and i8 %status, 48
  %and = zext i8 %18 to i32
  %19 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and, label %sw.epilog [
    i32 0, label %entry.cleanup_crit_edge
    i32 16, label %sw.bb19
    i32 32, label %sw.bb22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %spimem = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %20 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %21, ptr noundef nonnull %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %status2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status2, align 1
  %24 = lshr i8 %23, 4
  %25 = and i8 %24, 3
  %narrow = add nuw nsw i8 %25, 1
  %add = zext i8 %narrow to i32
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb22, %if.end, %sw.bb19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ -74, %sw.bb22 ], [ %add, %if.end ], [ %and, %entry.cleanup_crit_edge ], [ %call, %sw.bb19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status2) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gd5fxgq4xa_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %section)
  %cmp = icmp sgt i32 %section, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 8
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gd5fxgq4xa_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %section)
  %cmp = icmp sgt i32 %section, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  %mul = shl i32 %section, 4
  %mul.sink = select i1 %tobool.not, i32 1, i32 %mul
  %.sink = select i1 %tobool.not, i32 7, i32 8
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mul.sink, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gd5fxgq4xc_ooblayout_256_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #2 align 64 {
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
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 128, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 128, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gd5fxgq4xc_ooblayout_256_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #2 align 64 {
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
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 127, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_exec_op(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gd5fxgqx_variant2_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #2 align 64 {
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
  store i32 64, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 64, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gd5fxgqx_variant2_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #2 align 64 {
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
  store i32 1, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 63, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 355, i32 10}
!2 = !{ptr @gigadevice_spinand_manufacturer, !3, !"gigadevice_spinand_manufacturer", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 353, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 268, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 278, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 288, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 298, i32 2}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 308, i32 2}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 318, i32 2}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 328, i32 2}
!18 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 338, i32 2}
!20 = !{ptr @gigadevice_spinand_table, !21, !"gigadevice_spinand_table", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 267, i32 34}
!22 = !{ptr @gd5fxgq4xa_ooblayout, !23, !"gd5fxgq4xa_ooblayout", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 79, i32 39}
!24 = !{ptr @read_cache_variants, !25, !"read_cache_variants", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 26, i32 8}
!26 = !{ptr @write_cache_variants, !27, !"write_cache_variants", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 42, i32 8}
!28 = !{ptr @update_cache_variants, !29, !"update_cache_variants", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 46, i32 8}
!30 = !{ptr @gd5fxgq4xc_oob_256_ops, !31, !"gd5fxgq4xc_oob_256_ops", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 163, i32 39}
!32 = !{ptr @read_cache_variants_f, !33, !"read_cache_variants_f", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 34, i32 8}
!34 = !{ptr @gd5fxgqx_variant2_ooblayout, !35, !"gd5fxgqx_variant2_ooblayout", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 134, i32 39}
!36 = !{ptr @gigadevice_spinand_manuf_ops, !37, !"gigadevice_spinand_manuf_ops", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/spi/gigadevice.c", i32 350, i32 46}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
