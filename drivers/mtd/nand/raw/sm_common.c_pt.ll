; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/sm_common.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/sm_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sm_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_sm_register_device\09\09\09\09"
module asm "\09.long\09__crc_sm_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sm_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22sm_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_sm_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.51 = type { i8, i8 }
%struct.anon.52 = type { i16, i16 }
%struct.nand_flash_dev = type { ptr, %union.anon.50, i32, i32, i32, i32, i16, i16, %struct.anon.52 }
%union.anon.50 = type { [8 x i8] }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
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
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.sm_oob = type { i32, i8, i8, [2 x i8], [3 x i8], [2 x i8], [3 x i8] }
%struct.mtd_oob_region = type { i32, i32 }

@sm_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @sm_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_sm_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_sm_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_sm_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sm_register_device to i32), ptr @__kstrtab_sm_register_device, ptr @__kstrtabns_sm_register_device }, section "___ksymtab_gpl+sm_register_device", align 4
@__UNIQUE_ID_file185 = internal constant [46 x i8] c"sm_common.file=drivers/mtd/nand/raw/sm_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [22 x i8] c"sm_common.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author187 = internal constant [58 x i8] c"sm_common.author=Maxim Levitsky <maximlevitsky@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [53 x i8] c"sm_common.description=Common SmartMedia/xD functions\00", section ".modinfo", align 1
@oob_sm_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @oob_sm_ooblayout_ecc, ptr @oob_sm_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@oob_sm_small_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @oob_sm_small_ooblayout_ecc, ptr @oob_sm_small_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@sm_block_markbad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015sm_common: can't mark sector at %i as bad\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sm_block_markbad\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/sm_common.c\00", [63 x i8] zeroinitializer }, align 32
@sm_block_markbad._entry_ptr = internal global ptr @sm_block_markbad._entry, section ".printk_index", align 4
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SmartMedia 2MiB 3,3V ROM\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SmartMedia 4MiB 3,3V\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SmartMedia 4MiB 3,3/5V\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SmartMedia 4MiB 5V\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SmartMedia 4MiB 3,3V ROM\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SmartMedia 8MiB 3,3V\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SmartMedia 8MiB 3,3V ROM\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SmartMedia 16MiB 3,3V\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SmartMedia 16MiB 3,3V ROM\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SmartMedia 32MiB 3,3V\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SmartMedia 32MiB 3,3V ROM\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SmartMedia 64MiB 3,3V\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SmartMedia 64MiB 3,3V ROM\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SmartMedia 128MiB 3,3V\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SmartMedia 128MiB 3,3V ROM\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SmartMedia 256MiB 3, 3V\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SmartMedia 256MiB 3,3V ROM\00", [37 x i8] zeroinitializer }, align 32
@nand_smartmedia_flash_ids = internal global { <{ { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, %struct.nand_flash_dev }>, [184 x i8] } { <{ { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, %struct.nand_flash_dev }> <{ { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.3, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 93 }, [6 x i8] undef }, i32 512, i32 2, i32 8192, i32 2048, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.4, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 -29 }, [6 x i8] undef }, i32 512, i32 4, i32 8192, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.5, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 -27 }, [6 x i8] undef }, i32 512, i32 4, i32 8192, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.6, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 107 }, [6 x i8] undef }, i32 512, i32 4, i32 8192, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.7, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 -43 }, [6 x i8] undef }, i32 512, i32 4, i32 8192, i32 2048, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.8, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 -26 }, [6 x i8] undef }, i32 512, i32 8, i32 8192, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.9, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 -42 }, [6 x i8] undef }, i32 512, i32 8, i32 8192, i32 2048, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.10, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 115 }, [6 x i8] undef }, i32 512, i32 16, i32 16384, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.11, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 87 }, [6 x i8] undef }, i32 512, i32 16, i32 16384, i32 2048, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.12, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 117 }, [6 x i8] undef }, i32 512, i32 32, i32 16384, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.13, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 88 }, [6 x i8] undef }, i32 512, i32 32, i32 16384, i32 2048, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.14, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 118 }, [6 x i8] undef }, i32 512, i32 64, i32 16384, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.15, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 -39 }, [6 x i8] undef }, i32 512, i32 64, i32 16384, i32 2048, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.16, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 121 }, [6 x i8] undef }, i32 512, i32 128, i32 16384, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.17, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 -38 }, [6 x i8] undef }, i32 512, i32 128, i32 16384, i32 2048, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.18, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 113 }, [6 x i8] undef }, i32 512, i32 256, i32 16384, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.19, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 91 }, [6 x i8] undef }, i32 512, i32 256, i32 16384, i32 2048, i16 0, i16 0, %struct.anon.52 zeroinitializer }, %struct.nand_flash_dev zeroinitializer }>, [184 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xD 16MiB 3,3V\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xD 32MiB 3,3V\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xD 64MiB 3,3V\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xD 128MiB 3,3V\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xD 256MiB 3,3V\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xD 512MiB 3,3V\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xD 1GiB 3,3V\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xD 2GiB 3,3V\00", [19 x i8] zeroinitializer }, align 32
@nand_xd_flash_ids = internal global { <{ { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, %struct.nand_flash_dev }>, [92 x i8] } { <{ { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 }, %struct.nand_flash_dev }> <{ { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.21, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 115 }, [6 x i8] undef }, i32 512, i32 16, i32 16384, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.22, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 117 }, [6 x i8] undef }, i32 512, i32 32, i32 16384, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.23, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 118 }, [6 x i8] undef }, i32 512, i32 64, i32 16384, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.24, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 121 }, [6 x i8] undef }, i32 512, i32 128, i32 16384, i32 0, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.25, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 113 }, [6 x i8] undef }, i32 512, i32 256, i32 16384, i32 1024, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.26, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 -36 }, [6 x i8] undef }, i32 512, i32 512, i32 16384, i32 1024, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.27, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 -45 }, [6 x i8] undef }, i32 512, i32 1024, i32 16384, i32 1024, i16 0, i16 0, %struct.anon.52 zeroinitializer }, { ptr, { %struct.anon.51, [6 x i8] }, i32, i32, i32, i32, i16, i16, %struct.anon.52 } { ptr @.str.28, { %struct.anon.51, [6 x i8] } { %struct.anon.51 { i8 0, i8 -43 }, [6 x i8] undef }, i32 512, i32 2048, i32 16384, i32 1024, i16 0, i16 0, %struct.anon.52 zeroinitializer }, %struct.nand_flash_dev zeroinitializer }>, [92 x i8] zeroinitializer }, align 32
@switch.table.oob_sm_ooblayout_free = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 6, i32 11], [20 x i8] zeroinitializer }, align 32
@switch.table.oob_sm_ooblayout_free.30 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 2, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"sm_controller_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 181, i32 41 }
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"oob_sm_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 50, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"oob_sm_small_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 94, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 120, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 129, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 130, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 131, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 132, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 133, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 134, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 135, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 136, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 137, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 138, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 139, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 140, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 141, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 142, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 143, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 144, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 145, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"nand_smartmedia_flash_ids\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 128, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 150, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 151, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 152, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 153, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 154, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 155, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 156, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 157, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"nand_xd_flash_ids\00", align 1
@___asan_gen_.132 = private constant [36 x i8] c"../drivers/mtd/nand/raw/sm_common.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 149, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant [35 x i8] c"switch.table.oob_sm_ooblayout_free\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [38 x i8] c"switch.table.oob_sm_ooblayout_free.30\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__ksymtab_sm_register_device, ptr @sm_block_markbad._entry, ptr @sm_block_markbad._entry_ptr, ptr @sm_controller_ops, ptr @oob_sm_ops, ptr @oob_sm_small_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @nand_smartmedia_flash_ids, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @nand_xd_flash_ids, ptr @switch.table.oob_sm_ooblayout_free, ptr @switch.table.oob_sm_ooblayout_free.30], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oob_sm_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oob_sm_small_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_block_markbad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_smartmedia_flash_ids to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_xd_flash_ids to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.oob_sm_ooblayout_free to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.oob_sm_ooblayout_free.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_register_device(ptr noundef %mtd, i32 noundef %smartmedia) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 6
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 8
  %or = or i32 %1, 65536
  store i32 %or, ptr %options, align 8
  %ops = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 5, i32 16, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sm_controller_ops, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %smartmedia)
  %tobool.not = icmp eq i32 %smartmedia, 0
  %cond = select i1 %tobool.not, ptr @nand_xd_flash_ids, ptr @nand_smartmedia_flash_ids
  %call1 = tail call i32 @nand_scan_with_ids(ptr noundef %mtd, i32 noundef 1, ptr noundef nonnull %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mtd_device_parse_register(ptr noundef %mtd, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nand_cleanup(ptr noundef %mtd) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_attach_chip(ptr nocapture noundef %chip) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %badblockpos = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %badblockpos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %badblockpos, align 4
  %badblockbits = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 12
  %1 = ptrtoint ptr %badblockbits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 7, ptr %badblockbits, align 8
  %block_markbad = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %block_markbad to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sm_block_markbad, ptr %block_markbad, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 512, label %entry.cleanup.sink.split_crit_edge
    i32 256, label %if.then3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %entry.cleanup.sink.split_crit_edge
  %oob_sm_ops.sink = phi ptr [ @oob_sm_small_ops, %if.then3 ], [ @oob_sm_ops, %entry.cleanup.sink.split_crit_edge ]
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %6 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %oob_sm_ops.sink, ptr %ooblayout1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_block_markbad(ptr noundef %chip, i64 noundef %ofs) #0 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  %oob = alloca %struct.sm_oob, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #6
  %0 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %4 = getelementptr inbounds i8, ptr %ops, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #6
  %6 = getelementptr inbounds %struct.sm_oob, ptr %oob, i32 0, i32 2
  %7 = call ptr @memset(ptr %oob, i32 255, i32 16)
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 15, ptr %6, align 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ops, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %1, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %11 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobsize, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %0, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %oob, ptr %3, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %2, align 4
  %call1 = call i32 @mtd_write_oob(ptr noundef %chip, i64 noundef %ofs, ptr noundef nonnull %ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp2.not = icmp eq i32 %18, 16
  br i1 %cmp2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %conv = trunc i64 %ofs to i32
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @oob_sm_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %cmp = icmp sgt i32 %section, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %length, align 4
  %add = shl i32 %section, 3
  %sub = or i32 %add, 5
  %1 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %oobregion, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @oob_sm_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %section)
  %0 = icmp ult i32 %section, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.oob_sm_ooblayout_free, i32 0, i32 %section
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep13 = getelementptr inbounds [3 x i32], ptr @switch.table.oob_sm_ooblayout_free.30, i32 0, i32 %section
  %2 = ptrtoint ptr %switch.gep13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load14 = load i32, ptr %switch.gep13, align 4
  %3 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %switch.load, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.load14, ptr %length, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @oob_sm_small_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %length, align 4
  %1 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %oobregion, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @oob_sm_small_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %section to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %section, label %entry.return_crit_edge [
    i32 0, label %entry.return.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 6, %sw.bb1 ], [ 3, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %length, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__ksymtab_sm_register_device, !1, !"__ksymtab_sm_register_device", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 206, i32 1}
!2 = !{ptr @__UNIQUE_ID_file185, !3, !"__UNIQUE_ID_file185", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 208, i32 1}
!4 = !{ptr @__UNIQUE_ID_license186, !3, !"__UNIQUE_ID_license186", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author187, !6, !"__UNIQUE_ID_author187", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 209, i32 1}
!7 = !{ptr @__UNIQUE_ID_description188, !8, !"__UNIQUE_ID_description188", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 210, i32 1}
!9 = !{ptr @sm_controller_ops, !10, !"sm_controller_ops", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 181, i32 41}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 120, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sm_block_markbad._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @sm_block_markbad._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @oob_sm_ops, !18, !"oob_sm_ops", i1 false, i1 false}
!18 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 50, i32 39}
!19 = !{ptr @oob_sm_small_ops, !20, !"oob_sm_small_ops", i1 false, i1 false}
!20 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 94, i32 39}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 129, i32 2}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 130, i32 2}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 131, i32 2}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 132, i32 2}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 133, i32 2}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 134, i32 2}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 135, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 136, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 137, i32 2}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 138, i32 2}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 139, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 140, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 141, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 142, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 143, i32 2}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 144, i32 2}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 145, i32 2}
!55 = !{ptr @nand_smartmedia_flash_ids, !56, !"nand_smartmedia_flash_ids", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 128, i32 30}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 150, i32 2}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 151, i32 2}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 152, i32 2}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 153, i32 2}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 154, i32 2}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 155, i32 2}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 156, i32 2}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 157, i32 2}
!73 = !{ptr @nand_xd_flash_ids, !74, !"nand_xd_flash_ids", i1 false, i1 false}
!74 = !{!"../drivers/mtd/nand/raw/sm_common.c", i32 149, i32 30}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
