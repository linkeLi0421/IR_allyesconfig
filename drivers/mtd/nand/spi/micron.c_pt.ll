; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/spi/micron.c_pt.bc'
source_filename = "../drivers/mtd/nand/spi/micron.c"
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

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Micron\00", [25 x i8] zeroinitializer }, align 32
@micron_spinand_table = internal constant { [10 x %struct.spinand_info], [272 x i8] } { [10 x %struct.spinand_info] [%struct.spinand_info { ptr @.str.1, %struct.spinand_devid { ptr @.compoundliteral, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 40, i32 2, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @micron_8_ecc_get_status, ptr @micron_8_ooblayout }, %struct.anon.71 { ptr @quadio_read_cache_variants, ptr @x4_write_cache_variants, ptr @x4_update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.2, %struct.spinand_devid { ptr @.compoundliteral.3, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 40, i32 2, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @micron_8_ecc_get_status, ptr @micron_8_ooblayout }, %struct.anon.71 { ptr @quadio_read_cache_variants, ptr @x4_write_cache_variants, ptr @x4_update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.4, %struct.spinand_devid { ptr @.compoundliteral.5, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @micron_8_ecc_get_status, ptr @micron_8_ooblayout }, %struct.anon.71 { ptr @quadio_read_cache_variants, ptr @x4_write_cache_variants, ptr @x4_update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.4, %struct.spinand_devid { ptr @.compoundliteral.6, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @micron_8_ecc_get_status, ptr @micron_8_ooblayout }, %struct.anon.71 { ptr @quadio_read_cache_variants, ptr @x4_write_cache_variants, ptr @x4_update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.7, %struct.spinand_devid { ptr @.compoundliteral.8, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 80, i32 2, i32 1, i32 2 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @micron_8_ecc_get_status, ptr @micron_8_ooblayout }, %struct.anon.71 { ptr @quadio_read_cache_variants, ptr @x4_write_cache_variants, ptr @x4_update_cache_variants }, ptr @micron_select_target }, %struct.spinand_info { ptr @.str.9, %struct.spinand_devid { ptr @.compoundliteral.10, i8 1, i32 2 }, i32 2, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @micron_8_ecc_get_status, ptr @micron_8_ooblayout }, %struct.anon.71 { ptr @quadio_read_cache_variants, ptr @x4_write_cache_variants, ptr @x4_update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.11, %struct.spinand_devid { ptr @.compoundliteral.12, i8 1, i32 2 }, i32 2, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @micron_8_ecc_get_status, ptr @micron_8_ooblayout }, %struct.anon.71 { ptr @quadio_read_cache_variants, ptr @x4_write_cache_variants, ptr @x4_update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.13, %struct.spinand_devid { ptr @.compoundliteral.14, i8 1, i32 2 }, i32 2, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 2 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @micron_8_ecc_get_status, ptr @micron_8_ooblayout }, %struct.anon.71 { ptr @quadio_read_cache_variants, ptr @x4_write_cache_variants, ptr @x4_update_cache_variants }, ptr @micron_select_target }, %struct.spinand_info { ptr @.str.15, %struct.spinand_devid { ptr @.compoundliteral.16, i8 1, i32 2 }, i32 2, %struct.nand_memory_organization { i32 1, i32 4096, i32 256, i32 64, i32 2048, i32 40, i32 1, i32 1, i32 2 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @micron_8_ecc_get_status, ptr @micron_8_ooblayout }, %struct.anon.71 { ptr @quadio_read_cache_variants, ptr @x4_write_cache_variants, ptr @x4_update_cache_variants }, ptr @micron_select_target }, %struct.spinand_info { ptr @.str.17, %struct.spinand_devid { ptr @.compoundliteral.18, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 2048, i32 80, i32 2, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 4, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr null, ptr @micron_4_ooblayout }, %struct.anon.71 { ptr @x4_read_cache_variants, ptr @x1_write_cache_variants, ptr @x1_update_cache_variants }, ptr null }], [272 x i8] zeroinitializer }, align 32
@micron_spinand_manuf_ops = internal constant { %struct.spinand_manufacturer_ops, [24 x i8] } { %struct.spinand_manufacturer_ops { ptr @micron_spinand_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@micron_spinand_manufacturer = dso_local constant { %struct.spinand_manufacturer, [44 x i8] } { %struct.spinand_manufacturer { i8 44, ptr @.str, ptr @micron_spinand_table, i32 10, ptr @micron_spinand_manuf_ops }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MT29F2G01ABAGD\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"$", [31 x i8] zeroinitializer }, align 32
@micron_8_ooblayout = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @micron_8_ooblayout_ecc, ptr @micron_8_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@quadio_read_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.19, i32 6 }, [24 x i8] zeroinitializer }, align 32
@x4_write_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.20, i32 2 }, [24 x i8] zeroinitializer }, align 32
@x4_update_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.21, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MT29F2G01ABBGD\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"%", [31 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MT29F1G01ABAFD\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\14", [31 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\15", [31 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MT29F4G01ADAGD\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"6", [31 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MT29F4G01ABAFD\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"4", [31 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MT29F4G01ABBFD\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"5", [31 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MT29F8G01ADAFD\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"F", [31 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MT29F8G01ADBFD\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"G", [31 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MT29F2G01AAAED\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\9F", [31 x i8] zeroinitializer }, align 32
@micron_4_ooblayout = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @micron_4_ooblayout_ecc, ptr @micron_4_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@x4_read_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.22, i32 4 }, [24 x i8] zeroinitializer }, align 32
@x1_write_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.23, i32 1 }, [24 x i8] zeroinitializer }, align 32
@x1_update_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.24, i32 1 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [6 x %struct.spi_mem_op], [64 x i8] } { [6 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 235 }, %struct.anon.73 { i8 2, i8 4, i8 0, i64 0 }, %struct.anon.74 { i8 2, i8 4, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 107 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 187 }, %struct.anon.73 { i8 2, i8 2, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 2, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 59 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 11 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 3 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }], [64 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 50 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 2 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 52 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 132 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [4 x %struct.spi_mem_op], [32 x i8] } { [4 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 107 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 59 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 11 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 3 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [1 x %struct.spi_mem_op], [48 x i8] } { [1 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 2 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [1 x %struct.spi_mem_op], [48 x i8] } { [1 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 132 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [48 x i8] zeroinitializer }, align 32
@switch.table.micron_8_ecc_get_status = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 3, i32 -74, i32 6, i32 -22, i32 8], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 305, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"micron_spinand_table\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 171, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [25 x i8] c"micron_spinand_manuf_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 299, i32 46 }
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"micron_spinand_manufacturer\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 303, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 173, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"micron_8_ooblayout\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 85, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"quadio_read_cache_variants\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 31, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [24 x i8] c"x4_write_cache_variants\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 39, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant [25 x i8] c"x4_update_cache_variants\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 43, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 184, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 195, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 217, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 229, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 240, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 251, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 263, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 275, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"micron_4_ooblayout\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 126, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"x4_read_cache_variants\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 48, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant [24 x i8] c"x1_write_cache_variants\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 54, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"x1_update_cache_variants\00", align 1
@___asan_gen_.96 = private constant [33 x i8] c"../drivers/mtd/nand/spi/micron.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 57, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [37 x i8] c"switch.table.micron_8_ecc_get_status\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @micron_spinand_table, ptr @micron_spinand_manuf_ops, ptr @micron_spinand_manufacturer, ptr @.str.1, ptr @.compoundliteral, ptr @micron_8_ooblayout, ptr @quadio_read_cache_variants, ptr @x4_write_cache_variants, ptr @x4_update_cache_variants, ptr @.str.2, ptr @.compoundliteral.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @micron_4_ooblayout, ptr @x4_read_cache_variants, ptr @x1_write_cache_variants, ptr @x1_update_cache_variants, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @switch.table.micron_8_ecc_get_status], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_spinand_table to i32), i32 1040, i32 1312, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_spinand_manuf_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_spinand_manufacturer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_8_ooblayout to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quadio_read_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x4_write_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x4_update_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_4_ooblayout to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x4_read_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1_write_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1_update_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.micron_8_ecc_get_status to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @micron_8_ecc_get_status(ptr nocapture noundef readnone %spinand, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %status)
  %0 = icmp ult i8 %status, 96
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = lshr i8 %status, 4
  %2 = zext i8 %1 to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.micron_8_ecc_get_status, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @micron_select_target(ptr nocapture noundef readonly %spinand, i32 noundef %target) #1 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #5
  %0 = call ptr @memset(ptr %op, i32 255, i32 48)
  %1 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %buswidth, align 1
  %dtr = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 2
  %3 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 3
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 31, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr, align 8
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
  store i64 208, ptr %val, align 8
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
  store i32 2, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %scratchbuf = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 13
  %16 = ptrtoint ptr %scratchbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scratchbuf, align 8
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %buf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %target)
  %cmp = icmp ugt i32 %target, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %target.tr = trunc i32 %target to i8
  %conv = shl nuw nsw i8 %target.tr, 6
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %17, align 1
  %spimem = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %20 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %21, ptr noundef nonnull %op) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @micron_8_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #2 align 64 {
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
define internal i32 @micron_8_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #2 align 64 {
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_exec_op(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @micron_4_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pagesize = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %pagesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pagesize, align 4
  %ecc_step_size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 17
  %2 = ptrtoint ptr %ecc_step_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc_step_size, align 8
  %div = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %section)
  %cmp.not = icmp ugt i32 %div, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 8
  %4 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @micron_4_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pagesize = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %pagesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pagesize, align 4
  %ecc_step_size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 17
  %2 = ptrtoint ptr %ecc_step_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc_step_size, align 8
  %div = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %section)
  %cmp.not = icmp ugt i32 %div, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  %mul = shl i32 %section, 4
  %mul.sink = select i1 %tobool.not, i32 2, i32 %mul
  %.sink = select i1 %tobool.not, i32 6, i32 8
  %4 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul.sink, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @micron_spinand_init(ptr noundef %spinand) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @spinand_upd_cfg(ptr noundef %spinand, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spinand_upd_cfg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/spi/micron.c", i32 305, i32 10}
!2 = !{ptr @micron_spinand_manufacturer, !3, !"micron_spinand_manufacturer", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/spi/micron.c", i32 303, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/spi/micron.c", i32 173, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/spi/micron.c", i32 184, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/spi/micron.c", i32 195, i32 2}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/spi/micron.c", i32 217, i32 2}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/spi/micron.c", i32 229, i32 2}
!14 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/spi/micron.c", i32 240, i32 2}
!16 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/spi/micron.c", i32 251, i32 2}
!18 = !{ptr @.str.15, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/spi/micron.c", i32 263, i32 2}
!20 = !{ptr @.str.17, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/spi/micron.c", i32 275, i32 2}
!22 = !{ptr @micron_spinand_table, !23, !"micron_spinand_table", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/spi/micron.c", i32 171, i32 34}
!24 = !{ptr @micron_8_ooblayout, !25, !"micron_8_ooblayout", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/spi/micron.c", i32 85, i32 39}
!26 = !{ptr @quadio_read_cache_variants, !27, !"quadio_read_cache_variants", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/spi/micron.c", i32 31, i32 8}
!28 = !{ptr @x4_write_cache_variants, !29, !"x4_write_cache_variants", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/spi/micron.c", i32 39, i32 8}
!30 = !{ptr @x4_update_cache_variants, !31, !"x4_update_cache_variants", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/spi/micron.c", i32 43, i32 8}
!32 = !{ptr @micron_4_ooblayout, !33, !"micron_4_ooblayout", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/spi/micron.c", i32 126, i32 39}
!34 = !{ptr @x4_read_cache_variants, !35, !"x4_read_cache_variants", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/spi/micron.c", i32 48, i32 8}
!36 = !{ptr @x1_write_cache_variants, !37, !"x1_write_cache_variants", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/spi/micron.c", i32 54, i32 8}
!38 = !{ptr @x1_update_cache_variants, !39, !"x1_update_cache_variants", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/spi/micron.c", i32 57, i32 8}
!40 = !{ptr @micron_spinand_manuf_ops, !41, !"micron_spinand_manuf_ops", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/spi/micron.c", i32 299, i32 46}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
