; ModuleID = '/llk/IR_all_yes/drivers/mtd/nftlmount.c_pt.bc'
source_filename = "../drivers/mtd/nftlmount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nftl_uci1 = type { i32, i16, i16 }
%struct.NFTLrecord = type { %struct.mtd_blktrans_dev, i16, i16, i32, %struct.NFTLMediaHeader, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, i32, i32, %struct.erase_info }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.NFTLMediaHeader = type <{ [6 x i8], i16, i16, i32, i8 }>
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nftl_bci = type { [6 x i8], i8, i8 }
%struct.nftl_uci2 = type { i16, i16, i32 }
%struct.nftl_uci0 = type { i16, i16, i16, i16 }

@NFTL_formatblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error while formatting block %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NFTL_formatblock\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mtd/nftlmount.c\00", [40 x i8] zeroinitializer }, align 32
@NFTL_formatblock._entry_ptr = internal global ptr @NFTL_formatblock._entry, section ".printk_index", align 4
@NFTL_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not find valid boot record\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NFTL_mount\00", [21 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr = internal global ptr @NFTL_mount._entry, section ".printk_index", align 4
@NFTL_mount._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Formatting block %d\0A\00", [43 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.7 = internal global ptr @NFTL_mount._entry.5, section ".printk_index", align 4
@NFTL_mount._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Block %d: free but referenced in chain %d\0A\00", [53 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.10 = internal global ptr @NFTL_mount._entry.8, section ".printk_index", align 4
@NFTL_mount._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Block %d: incorrect logical block: %d expected: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.13 = internal global ptr @NFTL_mount._entry.11, section ".printk_index", align 4
@NFTL_mount._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Block %d: incorrectly marked as first block in chain\0A\00", [42 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.16 = internal global ptr @NFTL_mount._entry.14, section ".printk_index", align 4
@NFTL_mount._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Block %d: folding in progress - ignoring first block flag\0A\00", [37 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.19 = internal global ptr @NFTL_mount._entry.17, section ".printk_index", align 4
@NFTL_mount._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Block %d: referencing invalid block %d\0A\00", [56 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.22 = internal global ptr @NFTL_mount._entry.20, section ".printk_index", align 4
@NFTL_mount._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.24 = internal global ptr @NFTL_mount._entry.23, section ".printk_index", align 4
@NFTL_mount._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Block %d: referencing block %d already in another chain\0A\00", [39 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.27 = internal global ptr @NFTL_mount._entry.25, section ".printk_index", align 4
@NFTL_mount._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could read foldmark at block %d\0A\00", [63 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.30 = internal global ptr @NFTL_mount._entry.28, section ".printk_index", align 4
@NFTL_mount._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Two chains at blocks %d (len=%d) and %d (len=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.33 = internal global ptr @NFTL_mount._entry.31, section ".printk_index", align 4
@NFTL_mount._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unreferenced block %d, formatting it\0A\00", [58 x i8] zeroinitializer }, align 32
@NFTL_mount._entry_ptr.36 = internal global ptr @NFTL_mount._entry.34, section ".printk_index", align 4
@find_boot_record.warncount = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@find_boot_record._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Block read at 0x%x of mtd%d failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"find_boot_record\00", [47 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr = internal global ptr @find_boot_record._entry, section ".printk_index", align 4
@find_boot_record._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014Further failures for this block will not be printed\0A\00", [41 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.41 = internal global ptr @find_boot_record._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ANAND\00", [26 x i8] zeroinitializer }, align 32
@find_boot_record._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.38, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014ANAND header found at 0x%x in mtd%d, but OOB data read failed (err %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.45 = internal global ptr @find_boot_record._entry.43, section ".printk_index", align 4
@find_boot_record._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.38, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015NFTL Media Headers at 0x%x and 0x%x disagree.\0A\00", [47 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.48 = internal global ptr @find_boot_record._entry.46, section ".printk_index", align 4
@find_boot_record._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.38, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015NFTL Media Header sanity check failed:\0A\00", [54 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.51 = internal global ptr @find_boot_record._entry.49, section ".printk_index", align 4
@find_boot_record._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.38, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015nb_boot_blocks (%d) + 2 > nb_blocks (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.54 = internal global ptr @find_boot_record._entry.52, section ".printk_index", align 4
@find_boot_record._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.38, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.56 = internal global ptr @find_boot_record._entry.55, section ".printk_index", align 4
@find_boot_record._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.38, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015numvunits (%d) > nb_blocks (%d) - nb_boot_blocks(%d) - 2\0A\00", [36 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.59 = internal global ptr @find_boot_record._entry.57, section ".printk_index", align 4
@format_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Formatting chain at block %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"format_chain\00", [19 x i8] zeroinitializer }, align 32
@format_chain._entry_ptr = internal global ptr @format_chain._entry, section ".printk_index", align 4
@format_chain._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.61, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@format_chain._entry_ptr.63 = internal global ptr @format_chain._entry.62, section ".printk_index", align 4
@format_chain._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.61, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"incorrect ReplUnitTable[] : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@format_chain._entry_ptr.66 = internal global ptr @format_chain._entry.64, section ".printk_index", align 4
@check_sectors_in_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Incorrect free sector %d in block %d: marking it as ignored\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"check_sectors_in_chain\00", [41 x i8] zeroinitializer }, align 32
@check_sectors_in_chain._entry_ptr = internal global ptr @check_sectors_in_chain._entry, section ".printk_index", align 4
@check_sectors_in_chain._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.68, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_sectors_in_chain._entry_ptr.70 = internal global ptr @check_sectors_in_chain._entry.69, section ".printk_index", align 4
@calc_chain_length._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nftl: length too long %d !\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"calc_chain_length\00", [46 x i8] zeroinitializer }, align 32
@calc_chain_length._entry_ptr = internal global ptr @calc_chain_length._entry, section ".printk_index", align 4
@calc_chain_length._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.72, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@calc_chain_length._entry_ptr.74 = internal global ptr @calc_chain_length._entry.73, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 65533, i64 65535]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 21845]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 329, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 575, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 620, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 636, i32 7 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 654, i32 7 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 666, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 672, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 683, i32 6 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 698, i32 7 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 703, i32 7 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 730, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 744, i32 7 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 769, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant [10 x i8] c"warncount\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 58, i32 15 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 61, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 64, i32 6 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 69, i32 33 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 83, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 122, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 165, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 166, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 173, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 174, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 459, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 464, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 476, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 395, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 416, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 432, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private constant [27 x i8] c"../drivers/mtd/nftlmount.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 438, i32 4 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @NFTL_formatblock._entry, ptr @NFTL_formatblock._entry_ptr, ptr @NFTL_mount._entry, ptr @NFTL_mount._entry.11, ptr @NFTL_mount._entry.14, ptr @NFTL_mount._entry.17, ptr @NFTL_mount._entry.20, ptr @NFTL_mount._entry.23, ptr @NFTL_mount._entry.25, ptr @NFTL_mount._entry.28, ptr @NFTL_mount._entry.31, ptr @NFTL_mount._entry.34, ptr @NFTL_mount._entry.5, ptr @NFTL_mount._entry.8, ptr @NFTL_mount._entry_ptr, ptr @NFTL_mount._entry_ptr.10, ptr @NFTL_mount._entry_ptr.13, ptr @NFTL_mount._entry_ptr.16, ptr @NFTL_mount._entry_ptr.19, ptr @NFTL_mount._entry_ptr.22, ptr @NFTL_mount._entry_ptr.24, ptr @NFTL_mount._entry_ptr.27, ptr @NFTL_mount._entry_ptr.30, ptr @NFTL_mount._entry_ptr.33, ptr @NFTL_mount._entry_ptr.36, ptr @NFTL_mount._entry_ptr.7, ptr @calc_chain_length._entry, ptr @calc_chain_length._entry.73, ptr @calc_chain_length._entry_ptr, ptr @calc_chain_length._entry_ptr.74, ptr @check_sectors_in_chain._entry, ptr @check_sectors_in_chain._entry.69, ptr @check_sectors_in_chain._entry_ptr, ptr @check_sectors_in_chain._entry_ptr.70, ptr @find_boot_record._entry, ptr @find_boot_record._entry.39, ptr @find_boot_record._entry.43, ptr @find_boot_record._entry.46, ptr @find_boot_record._entry.49, ptr @find_boot_record._entry.52, ptr @find_boot_record._entry.55, ptr @find_boot_record._entry.57, ptr @find_boot_record._entry_ptr, ptr @find_boot_record._entry_ptr.41, ptr @find_boot_record._entry_ptr.45, ptr @find_boot_record._entry_ptr.48, ptr @find_boot_record._entry_ptr.51, ptr @find_boot_record._entry_ptr.54, ptr @find_boot_record._entry_ptr.56, ptr @find_boot_record._entry_ptr.59, ptr @format_chain._entry, ptr @format_chain._entry.62, ptr @format_chain._entry.64, ptr @format_chain._entry_ptr, ptr @format_chain._entry_ptr.63, ptr @format_chain._entry_ptr.66, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @find_boot_record.warncount, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_formatblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_mount._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record.warncount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_chain._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_chain._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_sectors_in_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_sectors_in_chain._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_chain_length._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_chain_length._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @NFTL_formatblock(ptr noundef %nftl, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  %uci = alloca %struct.nftl_uci1, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #7
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uci) #7
  %1 = getelementptr inbounds %struct.nftl_uci1, ptr %uci, i32 0, i32 1
  %2 = getelementptr inbounds %struct.nftl_uci1, ptr %uci, i32 0, i32 2
  %instr1 = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 20
  %mtd2 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %nftl, i32 0, i32 2
  %3 = ptrtoint ptr %uci to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %uci, align 8
  %4 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtd2, align 4
  %EraseSize = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 3
  %6 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %EraseSize, align 4
  %mul = mul i32 %7, %block
  %add3 = add i32 %mul, 520
  %conv = zext i32 %add3 to i64
  %call = call i32 @nftl_read_oob(ptr noundef %5, i64 noundef %conv, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef nonnull %uci) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.default_uci1_crit_edge, label %if.end

entry.default_uci1_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %default_uci1

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %2, align 2
  %or77 = or i16 %11, %9
  call void @__sanitizer_cov_trace_const_cmp2(i16 26940, i16 %or77)
  %cmp9.not = icmp eq i16 %or77, 26940
  br i1 %cmp9.not, label %if.end.if.end14_crit_edge, label %if.end.default_uci1_crit_edge

if.end.default_uci1_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %default_uci1

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

default_uci1:                                     ; preds = %if.end.default_uci1_crit_edge, %entry.default_uci1_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 26940, ptr %1, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 26940, ptr %2, align 2
  %14 = ptrtoint ptr %uci to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %uci, align 8
  br label %if.end14

if.end14:                                         ; preds = %default_uci1, %if.end.if.end14_crit_edge
  %15 = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %15, align 8
  %17 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %EraseSize, align 4
  %mul16 = mul i32 %18, %block
  %conv17 = zext i32 %mul16 to i64
  %19 = ptrtoint ptr %instr1 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv17, ptr %instr1, align 8
  %conv19 = zext i32 %18 to i64
  %len = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv19, ptr %len, align 8
  %call20 = call i32 @mtd_erase(ptr noundef %5, ptr noundef %instr1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end23, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %block) #10
  br label %fail

if.end23:                                         ; preds = %if.end14
  %21 = ptrtoint ptr %uci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %uci, align 8
  %23 = ptrtoint ptr %instr1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %instr1, align 8
  %conv30 = trunc i64 %24 to i32
  %25 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %EraseSize, align 4
  %call32 = call fastcc i32 @check_free_sectors(ptr noundef %nftl, i32 noundef %conv30, i32 noundef %26, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end36, label %if.end23.fail_crit_edge

if.end23.fail_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end36:                                         ; preds = %if.end23
  %27 = call i32 @llvm.bswap.i32(i32 %22)
  %inc = add i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp25 = icmp eq i32 %inc, 0
  %spec.store.select = select i1 %cmp25, i32 1, i32 %inc
  %28 = call i32 @llvm.bswap.i32(i32 %spec.store.select)
  %29 = ptrtoint ptr %uci to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %uci, align 8
  %30 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %EraseSize, align 4
  %mul39 = mul i32 %31, %block
  %add41 = add i32 %mul39, 520
  %conv42 = zext i32 %add41 to i64
  %call43 = call i32 @nftl_write_oob(ptr noundef %5, i64 noundef %conv42, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef nonnull %uci) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end36.fail_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36.fail_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

fail:                                             ; preds = %if.end36.fail_crit_edge, %if.end23.fail_crit_edge, %do.end
  %32 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mtd2, align 4
  %34 = ptrtoint ptr %instr1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %instr1, align 8
  %call51 = call i32 @mtd_block_markbad(ptr noundef %33, i64 noundef %35) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uci) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nftl_read_oob(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_free_sectors(ptr nocapture noundef readonly %nftl, i32 noundef %address, i32 noundef %len, i32 noundef %check_oob) unnamed_addr #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %nftl, i32 0, i32 2
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #7
  %2 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retlen, align 4, !annotation !127
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oobsize, align 4
  %add = add i32 %4, 512
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp60 = icmp sgt i32 %len, 0
  br i1 %cmp60, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_oob)
  %tobool11.not = icmp eq i32 %check_oob, 0
  %arrayidx = getelementptr i8, ptr %call9.i, i32 512
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %add28, %if.end26.for.body_crit_edge ]
  %address.addr.061 = phi i32 [ %address, %for.body.lr.ph ], [ %add27, %if.end26.for.body_crit_edge ]
  %conv = zext i32 %address.addr.061 to i64
  %call2 = call i32 @mtd_read(ptr noundef %1, i64 noundef %conv, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef nonnull %call9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.body.for.body.i_crit_edge, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %if.end10, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call9.i, i32 %i.02.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp1.not.i = icmp eq i8 %6, -1
  br i1 %cmp1.not.i, label %for.cond.i, label %for.body.i.out_crit_edge

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %for.cond.i
  br i1 %tobool11.not, label %if.end10.if.end26_crit_edge, label %if.then12

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then12:                                        ; preds = %if.end10
  %7 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobsize, align 4
  %call15 = call i32 @nftl_read_oob(ptr noundef %1, i64 noundef %conv, i32 noundef %8, ptr noundef nonnull %retlen, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then12.out_crit_edge, label %if.end19

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end19:                                         ; preds = %if.then12
  %9 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.i = icmp sgt i32 %10, 0
  br i1 %cmp1.i, label %if.end19.for.body.i51_crit_edge, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end19.for.body.i51_crit_edge:                  ; preds = %if.end19
  br label %for.body.i51

for.cond.i47:                                     ; preds = %for.body.i51
  %inc.i45 = add nuw nsw i32 %i.02.i48, 1
  %exitcond.not.i46 = icmp eq i32 %inc.i45, %10
  br i1 %exitcond.not.i46, label %for.cond.i47.if.end26_crit_edge, label %for.cond.i47.for.body.i51_crit_edge

for.cond.i47.for.body.i51_crit_edge:              ; preds = %for.cond.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i51

for.cond.i47.if.end26_crit_edge:                  ; preds = %for.cond.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

for.body.i51:                                     ; preds = %for.cond.i47.for.body.i51_crit_edge, %if.end19.for.body.i51_crit_edge
  %i.02.i48 = phi i32 [ %inc.i45, %for.cond.i47.for.body.i51_crit_edge ], [ 0, %if.end19.for.body.i51_crit_edge ]
  %arrayidx.i49 = getelementptr i8, ptr %arrayidx, i32 %i.02.i48
  %11 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp1.not.i50 = icmp eq i8 %12, -1
  br i1 %cmp1.not.i50, label %for.cond.i47, label %for.body.i51.out_crit_edge

for.body.i51.out_crit_edge:                       ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end26:                                         ; preds = %for.cond.i47.if.end26_crit_edge, %if.end19.if.end26_crit_edge, %if.end10.if.end26_crit_edge
  %add27 = add i32 %address.addr.061, 512
  %add28 = add i32 %i.062, 512
  %cmp = icmp slt i32 %add28, %len
  br i1 %cmp, label %if.end26.for.body_crit_edge, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

out:                                              ; preds = %if.end26.out_crit_edge, %for.body.i51.out_crit_edge, %if.then12.out_crit_edge, %for.body.i.out_crit_edge, %for.body.out_crit_edge, %for.cond.preheader.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.cond.preheader.out_crit_edge ], [ -1, %for.body.i51.out_crit_edge ], [ -1, %for.body.i.out_crit_edge ], [ -1, %for.body.out_crit_edge ], [ -1, %if.then12.out_crit_edge ], [ 0, %if.end26.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nftl_write_oob(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @NFTL_mount(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  %retlen.i.i = alloca i32, align 4
  %bci.i = alloca %struct.nftl_bci, align 8
  %retlen.i494 = alloca i32, align 4
  %uci.i460 = alloca %struct.nftl_uci2, align 8
  %retlen.i461 = alloca i32, align 4
  %uci.i439 = alloca %struct.nftl_uci2, align 8
  %retlen.i440 = alloca i32, align 4
  %uci.i = alloca %struct.nftl_uci2, align 8
  %retlen.i429 = alloca i32, align 4
  %h1.i421 = alloca %struct.nftl_uci1, align 8
  %retlen.i422 = alloca i32, align 4
  %h1.i = alloca %struct.nftl_uci1, align 8
  %retlen.i = alloca i32, align 4
  %buf.i = alloca [512 x i8], align 1
  %h0 = alloca %struct.nftl_uci0, align 8
  %h1 = alloca %struct.nftl_uci1, align 8
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h0) #7
  %0 = getelementptr inbounds %struct.nftl_uci0, ptr %h0, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nftl_uci0, ptr %h0, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nftl_uci0, ptr %h0, i32 0, i32 3
  %3 = ptrtoint ptr %h0 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %h0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h1) #7
  %4 = getelementptr inbounds %struct.nftl_uci1, ptr %h1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nftl_uci1, ptr %h1, i32 0, i32 2
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %s, i32 0, i32 2
  %6 = ptrtoint ptr %h1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %h1, align 8
  %7 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #7
  %9 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %retlen, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h1.i) #7
  %10 = ptrtoint ptr %h1.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %h1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #7
  %11 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %retlen.i, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf.i) #7
  %12 = call ptr @memset(ptr %buf.i, i32 255, i32 512)
  %MediaHdr.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize.i, align 8
  %EraseSize.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 3
  %15 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %EraseSize.i, align 4
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 2
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size.i, align 8
  %conv.i = trunc i64 %17 to i32
  %div.i = udiv i32 %conv.i, %14
  %nb_blocks.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 18
  %18 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i, ptr %nb_blocks.i, align 4
  %MediaUnit.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 1
  %19 = ptrtoint ptr %MediaUnit.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %MediaUnit.i, align 8
  %SpareMediaUnit.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 2
  %20 = ptrtoint ptr %SpareMediaUnit.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %SpareMediaUnit.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv.i)
  %cmp371.not.i = icmp ugt i32 %14, %conv.i
  br i1 %cmp371.not.i, label %find_boot_record.exit.thread571, label %for.body.lr.ph.i

find_boot_record.exit.thread571:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h1.i) #7
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ReplUnitTable.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 17
  %FirstPhysicalEUN.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 4, i32 2
  %nb_boot_blocks.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 19
  %FormattedSize.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 4, i32 3
  %numvunits.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 9
  %size136.i = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %s, i32 0, i32 6
  %NumEraseUnits.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 4, i32 1
  %lastEUN.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 10
  %EUNtable341.i = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.lr.ph.i
  %block.0373.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %block.0373.i.be, %for.body.i.backedge ]
  %boot_record_count.0372.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %boot_record_count.0372.i.be, %for.body.i.backedge ]
  %21 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %EraseSize.i, align 4
  %mul.i = mul i32 %22, %block.0373.i
  %conv10.i = zext i32 %mul.i to i64
  %call.i = call i32 @mtd_read(ptr noundef %8, i64 noundef %conv10.i, i32 noundef 512, ptr noundef nonnull %retlen.i, ptr noundef nonnull %buf.i) #7
  %23 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %24)
  %cmp11.not.i = icmp eq i32 %24, 512
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %25 = load i32, ptr @find_boot_record.warncount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.then.i.for.inc201.i_crit_edge, label %do.end.i

if.then.i.for.inc201.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc201.i

do.end.i:                                         ; preds = %if.then.i
  %26 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %EraseSize.i, align 4
  %mul15.i = mul i32 %27, %block.0373.i
  %28 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mtd1, align 4
  %index.i = getelementptr inbounds %struct.mtd_info, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i, align 4
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %mul15.i, i32 noundef %31, i32 noundef %call.i) #10
  %32 = load i32, ptr @find_boot_record.warncount, align 4
  %dec.i = add i32 %32, -1
  store i32 %dec.i, ptr @find_boot_record.warncount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool19.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool19.not.i, label %do.end23.i, label %do.end.i.for.inc201.i_crit_edge

do.end.i.for.inc201.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc201.i

do.end23.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  br label %for.inc201.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buf.i, ptr noundef nonnull dereferenceable(6) @.str.42, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool32.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %lor.lhs.false.i.for.inc201.i_crit_edge

lor.lhs.false.i.for.inc201.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc201.i

if.end34.i:                                       ; preds = %lor.lhs.false.i
  %33 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %EraseSize.i, align 4
  %mul36.i = mul i32 %34, %block.0373.i
  %add37.i = add i32 %mul36.i, 520
  %conv38.i = zext i32 %add37.i to i64
  %call39.i = call i32 @nftl_read_oob(ptr noundef %8, i64 noundef %conv38.i, i32 noundef 8, ptr noundef nonnull %retlen.i, ptr noundef nonnull %h1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %do.end45.i, label %if.end53.i

do.end45.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %EraseSize.i, align 4
  %mul48.i = mul i32 %36, %block.0373.i
  %37 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mtd1, align 4
  %index51.i = getelementptr inbounds %struct.mtd_info, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %index51.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index51.i, align 4
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %mul48.i, i32 noundef %40, i32 noundef %call39.i) #10
  br label %for.inc201.i

if.end53.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boot_record_count.0372.i)
  %tobool54.not.i = icmp eq i32 %boot_record_count.0372.i, 0
  br i1 %tobool54.not.i, label %if.end82.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end53.i
  %bcmp302.i = call i32 @bcmp(ptr noundef dereferenceable(15) %MediaHdr.i, ptr noundef nonnull dereferenceable(15) %buf.i, i32 15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp302.i)
  %tobool58.not.i = icmp eq i32 %bcmp302.i, 0
  br i1 %tobool58.not.i, label %if.end75.i, label %do.end62.i

do.end62.i:                                       ; preds = %if.then55.i
  %41 = ptrtoint ptr %MediaUnit.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %MediaUnit.i, align 8
  %conv65.i = zext i16 %42 to i32
  %43 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %EraseSize.i, align 4
  %mul67.i = mul i32 %44, %conv65.i
  %mul69.i = mul i32 %44, %block.0373.i
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %mul67.i, i32 noundef %mul69.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %boot_record_count.0372.i)
  %cmp71.i = icmp ult i32 %boot_record_count.0372.i, 2
  br i1 %cmp71.i, label %do.end62.i.find_boot_record.exit.thread_crit_edge, label %do.end62.i.for.inc201.i_crit_edge

do.end62.i.for.inc201.i_crit_edge:                ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc201.i

do.end62.i.find_boot_record.exit.thread_crit_edge: ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_boot_record.exit.thread

if.end75.i:                                       ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boot_record_count.0372.i)
  %cmp76.i = icmp eq i32 %boot_record_count.0372.i, 1
  br i1 %cmp76.i, label %if.then78.i, label %if.end75.i.if.end81.i_crit_edge

if.end75.i.if.end81.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

if.then78.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv79.i = trunc i32 %block.0373.i to i16
  %45 = ptrtoint ptr %SpareMediaUnit.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv79.i, ptr %SpareMediaUnit.i, align 2
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then78.i, %if.end75.i.if.end81.i_crit_edge
  %46 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx.i = getelementptr i16, ptr %47, i32 %block.0373.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -4, ptr %arrayidx.i, align 2
  %inc.i = add i32 %boot_record_count.0372.i, 1
  br label %for.inc201.i

if.end82.i:                                       ; preds = %if.end53.i
  %49 = call ptr @memcpy(ptr %MediaHdr.i, ptr %buf.i, i32 15)
  %50 = ptrtoint ptr %FirstPhysicalEUN.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %FirstPhysicalEUN.i, align 1
  %52 = call i16 @llvm.bswap.i16(i16 %51) #7
  %conv84.i = zext i16 %52 to i32
  %53 = ptrtoint ptr %nb_boot_blocks.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv84.i, ptr %nb_boot_blocks.i, align 8
  %add86.i = add nuw nsw i32 %conv84.i, 2
  %54 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add86.i, i32 %55)
  %cmp88.not.i = icmp ult i32 %add86.i, %55
  br i1 %cmp88.not.i, label %if.end103.i, label %do.end93.i

do.end93.i:                                       ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #10
  %56 = ptrtoint ptr %nb_boot_blocks.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nb_boot_blocks.i, align 8
  %58 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nb_blocks.i, align 4
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %57, i32 noundef %59) #10
  br label %find_boot_record.exit.thread

if.end103.i:                                      ; preds = %if.end82.i
  %60 = ptrtoint ptr %FormattedSize.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %FormattedSize.i, align 1
  %62 = call i32 @llvm.bswap.i32(i32 %61) #7
  %63 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %EraseSize.i, align 4
  %div105.i = udiv i32 %62, %64
  %conv106.i = trunc i32 %div105.i to i16
  %65 = ptrtoint ptr %numvunits.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv106.i, ptr %numvunits.i, align 8
  %conv108.i = and i32 %div105.i, 65535
  %sub.i = sub nuw nsw i32 -2, %conv84.i
  %sub111.i = add i32 %sub.i, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %conv108.i, i32 %sub111.i)
  %cmp112.i = icmp ugt i32 %conv108.i, %sub111.i
  br i1 %cmp112.i, label %do.end117.i, label %if.end129.i

do.end117.i:                                      ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  %call119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #10
  %66 = ptrtoint ptr %numvunits.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %numvunits.i, align 8
  %conv125.i = zext i16 %67 to i32
  %68 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nb_blocks.i, align 4
  %70 = ptrtoint ptr %nb_boot_blocks.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nb_boot_blocks.i, align 8
  %call128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv125.i, i32 noundef %69, i32 noundef %71) #10
  br label %find_boot_record.exit.thread

if.end129.i:                                      ; preds = %if.end103.i
  %div133301.i = lshr i32 %64, 9
  %mul134.i = mul i32 %conv108.i, %div133301.i
  %72 = ptrtoint ptr %size136.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul134.i, ptr %size136.i, align 4
  %73 = ptrtoint ptr %NumEraseUnits.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %NumEraseUnits.i, align 1
  %75 = call i16 @llvm.bswap.i16(i16 %74) #7
  %conv137.i = zext i16 %75 to i32
  %add140.i = add nuw nsw i32 %conv137.i, %conv84.i
  %76 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add140.i, ptr %nb_blocks.i, align 4
  %77 = trunc i32 %add140.i to i16
  %conv144.i = add i16 %77, -1
  %78 = ptrtoint ptr %lastEUN.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv144.i, ptr %lastEUN.i, align 2
  %79 = shl nuw nsw i32 %add140.i, 1
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %79, i32 noundef 3264) #11
  %80 = ptrtoint ptr %EUNtable341.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call8.i.i, ptr %EUNtable341.i, align 4
  %tobool148.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool148.not.i, label %if.end129.i.find_boot_record.exit.thread_crit_edge, label %if.end150.i

if.end129.i.find_boot_record.exit.thread_crit_edge: ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_boot_record.exit.thread

if.end150.i:                                      ; preds = %if.end129.i
  %81 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nb_blocks.i, align 4
  %83 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %82, i32 2) #7
  %84 = extractvalue { i32, i1 } %83, 1
  br i1 %84, label %kmalloc_array.exit335.thread.i, label %if.end7.i333.i, !prof !128

kmalloc_array.exit335.thread.i:                   ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %ReplUnitTable.i, align 8
  br label %if.then156.i

if.end7.i333.i:                                   ; preds = %if.end150.i
  %86 = extractvalue { i32, i1 } %83, 0
  %call8.i332.i = call noalias align 128 ptr @__kmalloc(i32 noundef %86, i32 noundef 3264) #11
  %87 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call8.i332.i, ptr %ReplUnitTable.i, align 8
  %tobool155.not.i = icmp eq ptr %call8.i332.i, null
  br i1 %tobool155.not.i, label %if.end7.i333.i.if.then156.i_crit_edge, label %for.cond159.preheader.i

if.end7.i333.i.if.then156.i_crit_edge:            ; preds = %if.end7.i333.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156.i

for.cond159.preheader.i:                          ; preds = %if.end7.i333.i
  %88 = ptrtoint ptr %nb_boot_blocks.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nb_boot_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp161364.not.i = icmp eq i32 %89, 0
  br i1 %cmp161364.not.i, label %for.cond159.preheader.i.for.cond167.preheader.i_crit_edge, label %for.cond159.preheader.i.for.body163.i_crit_edge

for.cond159.preheader.i.for.body163.i_crit_edge:  ; preds = %for.cond159.preheader.i
  br label %for.body163.i

for.cond159.preheader.i.for.cond167.preheader.i_crit_edge: ; preds = %for.cond159.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond167.preheader.i

if.then156.i:                                     ; preds = %if.end7.i333.i.if.then156.i_crit_edge, %kmalloc_array.exit335.thread.i
  %90 = ptrtoint ptr %EUNtable341.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %EUNtable341.i, align 4
  call void @kfree(ptr noundef %91) #7
  br label %find_boot_record.exit.thread

for.cond167.preheader.i:                          ; preds = %for.body163.i.for.cond167.preheader.i_crit_edge, %for.cond159.preheader.i.for.cond167.preheader.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond159.preheader.i.for.cond167.preheader.i_crit_edge ], [ %inc166.i, %for.body163.i.for.cond167.preheader.i_crit_edge ]
  %92 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %93)
  %cmp169366.i = icmp ult i32 %i.0.lcssa.i, %93
  br i1 %cmp169366.i, label %for.cond167.preheader.i.for.body171.i_crit_edge, label %for.cond167.preheader.i.for.end176.i_crit_edge

for.cond167.preheader.i.for.end176.i_crit_edge:   ; preds = %for.cond167.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end176.i

for.cond167.preheader.i.for.body171.i_crit_edge:  ; preds = %for.cond167.preheader.i
  br label %for.body171.i

for.body163.i:                                    ; preds = %for.body163.i.for.body163.i_crit_edge, %for.cond159.preheader.i.for.body163.i_crit_edge
  %i.0365.i = phi i32 [ %inc166.i, %for.body163.i.for.body163.i_crit_edge ], [ 0, %for.cond159.preheader.i.for.body163.i_crit_edge ]
  %94 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx165.i = getelementptr i16, ptr %95, i32 %i.0365.i
  %96 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -4, ptr %arrayidx165.i, align 2
  %inc166.i = add nuw i32 %i.0365.i, 1
  %97 = ptrtoint ptr %nb_boot_blocks.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nb_boot_blocks.i, align 8
  %cmp161.i = icmp ult i32 %inc166.i, %98
  br i1 %cmp161.i, label %for.body163.i.for.body163.i_crit_edge, label %for.body163.i.for.cond167.preheader.i_crit_edge

for.body163.i.for.cond167.preheader.i_crit_edge:  ; preds = %for.body163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond167.preheader.i

for.body163.i.for.body163.i_crit_edge:            ; preds = %for.body163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body163.i

for.body171.i:                                    ; preds = %for.body171.i.for.body171.i_crit_edge, %for.cond167.preheader.i.for.body171.i_crit_edge
  %i.1367.i = phi i32 [ %inc175.i, %for.body171.i.for.body171.i_crit_edge ], [ %i.0.lcssa.i, %for.cond167.preheader.i.for.body171.i_crit_edge ]
  %99 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx173.i = getelementptr i16, ptr %100, i32 %i.1367.i
  %101 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -3, ptr %arrayidx173.i, align 2
  %inc175.i = add nuw i32 %i.1367.i, 1
  %102 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nb_blocks.i, align 4
  %cmp169.i = icmp ult i32 %inc175.i, %103
  br i1 %cmp169.i, label %for.body171.i.for.body171.i_crit_edge, label %for.body171.i.for.end176.i_crit_edge

for.body171.i.for.end176.i_crit_edge:             ; preds = %for.body171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end176.i

for.body171.i.for.body171.i_crit_edge:            ; preds = %for.body171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body171.i

for.end176.i:                                     ; preds = %for.body171.i.for.end176.i_crit_edge, %for.cond167.preheader.i.for.end176.i_crit_edge
  %104 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx178.i = getelementptr i16, ptr %105, i32 %block.0373.i
  %106 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 -4, ptr %arrayidx178.i, align 2
  %107 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp181368.not.i = icmp eq i32 %108, 0
  br i1 %cmp181368.not.i, label %for.end176.i.for.inc201.i.thread_crit_edge, label %for.end176.i.for.body183.i_crit_edge

for.end176.i.for.body183.i_crit_edge:             ; preds = %for.end176.i
  br label %for.body183.i

for.end176.i.for.inc201.i.thread_crit_edge:       ; preds = %for.end176.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc201.i.thread

for.body183.i:                                    ; preds = %for.inc195.i.for.body183.i_crit_edge, %for.end176.i.for.body183.i_crit_edge
  %i.2369.i = phi i32 [ %inc196.i, %for.inc195.i.for.body183.i_crit_edge ], [ 0, %for.end176.i.for.body183.i_crit_edge ]
  %109 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mtd1, align 4
  %111 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %EraseSize.i, align 4
  %mul187.i = mul i32 %112, %i.2369.i
  %conv188.i = zext i32 %mul187.i to i64
  %call189.i = call i32 @mtd_block_isbad(ptr noundef %110, i64 noundef %conv188.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i)
  %tobool190.not.i = icmp eq i32 %call189.i, 0
  br i1 %tobool190.not.i, label %for.body183.i.for.inc195.i_crit_edge, label %if.then191.i

for.body183.i.for.inc195.i_crit_edge:             ; preds = %for.body183.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc195.i

if.then191.i:                                     ; preds = %for.body183.i
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx193.i = getelementptr i16, ptr %114, i32 %i.2369.i
  %115 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -4, ptr %arrayidx193.i, align 2
  br label %for.inc195.i

for.inc195.i:                                     ; preds = %if.then191.i, %for.body183.i.for.inc195.i_crit_edge
  %inc196.i = add nuw i32 %i.2369.i, 1
  %116 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nb_blocks.i, align 4
  %cmp181.i = icmp ult i32 %inc196.i, %117
  br i1 %cmp181.i, label %for.inc195.i.for.body183.i_crit_edge, label %for.inc195.i.for.inc201.i.thread_crit_edge

for.inc195.i.for.inc201.i.thread_crit_edge:       ; preds = %for.inc195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc201.i.thread

for.inc195.i.for.body183.i_crit_edge:             ; preds = %for.inc195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body183.i

for.inc201.i:                                     ; preds = %if.end81.i, %do.end62.i.for.inc201.i_crit_edge, %do.end45.i, %lor.lhs.false.i.for.inc201.i_crit_edge, %do.end23.i, %do.end.i.for.inc201.i_crit_edge, %if.then.i.for.inc201.i_crit_edge
  %boot_record_count.1.ph.i = phi i32 [ %boot_record_count.0372.i, %do.end62.i.for.inc201.i_crit_edge ], [ %boot_record_count.0372.i, %lor.lhs.false.i.for.inc201.i_crit_edge ], [ %boot_record_count.0372.i, %if.then.i.for.inc201.i_crit_edge ], [ %boot_record_count.0372.i, %do.end23.i ], [ %boot_record_count.0372.i, %do.end.i.for.inc201.i_crit_edge ], [ %inc.i, %if.end81.i ], [ %boot_record_count.0372.i, %do.end45.i ]
  %inc202.i = add nuw i32 %block.0373.i, 1
  %118 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc202.i, i32 %119)
  %cmp.i = icmp ult i32 %inc202.i, %119
  br i1 %cmp.i, label %for.inc201.i.for.body.i.backedge_crit_edge, label %find_boot_record.exit

for.inc201.i.for.body.i.backedge_crit_edge:       ; preds = %for.inc201.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc201.i.thread.for.body.i.backedge_crit_edge, %for.inc201.i.for.body.i.backedge_crit_edge
  %block.0373.i.be = phi i32 [ %inc202.i, %for.inc201.i.for.body.i.backedge_crit_edge ], [ %inc202.i747, %for.inc201.i.thread.for.body.i.backedge_crit_edge ]
  %boot_record_count.0372.i.be = phi i32 [ %boot_record_count.1.ph.i, %for.inc201.i.for.body.i.backedge_crit_edge ], [ 1, %for.inc201.i.thread.for.body.i.backedge_crit_edge ]
  br label %for.body.i

for.inc201.i.thread:                              ; preds = %for.inc195.i.for.inc201.i.thread_crit_edge, %for.end176.i.for.inc201.i.thread_crit_edge
  %conv198.i = trunc i32 %block.0373.i to i16
  %120 = ptrtoint ptr %MediaUnit.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv198.i, ptr %MediaUnit.i, align 8
  %inc202.i747 = add nuw i32 %block.0373.i, 1
  %121 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc202.i747, i32 %122)
  %cmp.i748 = icmp ult i32 %inc202.i747, %122
  br i1 %cmp.i748, label %for.inc201.i.thread.for.body.i.backedge_crit_edge, label %find_boot_record.exit.thread750

for.inc201.i.thread.for.body.i.backedge_crit_edge: ; preds = %for.inc201.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

find_boot_record.exit.thread750:                  ; preds = %for.inc201.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h1.i) #7
  br label %for.cond.preheader

find_boot_record.exit.thread:                     ; preds = %if.then156.i, %if.end129.i.find_boot_record.exit.thread_crit_edge, %do.end117.i, %do.end93.i, %do.end62.i.find_boot_record.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h1.i) #7
  br label %do.end

find_boot_record.exit:                            ; preds = %for.inc201.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boot_record_count.1.ph.i)
  %tobool204.not.i = icmp eq i32 %boot_record_count.1.ph.i, 0
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h1.i) #7
  br i1 %tobool204.not.i, label %find_boot_record.exit.do.end_crit_edge, label %find_boot_record.exit.for.cond.preheader_crit_edge

find_boot_record.exit.for.cond.preheader_crit_edge: ; preds = %find_boot_record.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

find_boot_record.exit.do.end_crit_edge:           ; preds = %find_boot_record.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.preheader:                               ; preds = %find_boot_record.exit.for.cond.preheader_crit_edge, %find_boot_record.exit.thread750
  %123 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp3658.not = icmp eq i32 %124, 0
  br i1 %cmp3658.not, label %for.end237.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.end237.thread:                                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %numfreeEUNs754 = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 11
  %125 = ptrtoint ptr %numfreeEUNs754 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %numfreeEUNs754, align 4
  %126 = ptrtoint ptr %FirstPhysicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %FirstPhysicalEUN.i, align 8
  %128 = call i16 @llvm.bswap.i16(i16 %127)
  %LastFreeEUN755 = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 12
  %129 = ptrtoint ptr %LastFreeEUN755 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %LastFreeEUN755, align 2
  br label %cleanup

do.end:                                           ; preds = %find_boot_record.exit.do.end_crit_edge, %find_boot_record.exit.thread, %find_boot_record.exit.thread571
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %cleanup

for.cond4.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp6675.not = icmp eq i32 %146, 0
  br i1 %cmp6675.not, label %for.cond4.preheader.for.end237_crit_edge, label %for.body7.lr.ph

for.cond4.preheader.for.end237_crit_edge:         ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end237

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %130 = getelementptr inbounds %struct.nftl_uci2, ptr %uci.i, i32 0, i32 1
  %131 = getelementptr inbounds %struct.nftl_uci1, ptr %h1.i421, i32 0, i32 1
  %132 = getelementptr inbounds %struct.nftl_uci1, ptr %h1.i421, i32 0, i32 2
  %133 = getelementptr inbounds %struct.nftl_uci2, ptr %uci.i439, i32 0, i32 1
  %134 = getelementptr inbounds %struct.nftl_uci2, ptr %uci.i460, i32 0, i32 1
  %135 = getelementptr inbounds [6 x i8], ptr %bci.i, i32 0, i32 1
  %136 = getelementptr inbounds [6 x i8], ptr %bci.i, i32 0, i32 2
  %137 = getelementptr inbounds [6 x i8], ptr %bci.i, i32 0, i32 3
  %138 = getelementptr inbounds [6 x i8], ptr %bci.i, i32 0, i32 4
  %139 = getelementptr inbounds [6 x i8], ptr %bci.i, i32 0, i32 5
  %140 = getelementptr inbounds %struct.nftl_bci, ptr %bci.i, i32 0, i32 1
  %141 = getelementptr inbounds %struct.nftl_bci, ptr %bci.i, i32 0, i32 2
  br label %for.body7

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0659 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %142 = ptrtoint ptr %EUNtable341.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %EUNtable341.i, align 4
  %arrayidx = getelementptr i16, ptr %143, i32 %i.0659
  %144 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -1, ptr %arrayidx, align 2
  %inc = add nuw i32 %i.0659, 1
  %145 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %nb_blocks.i, align 4
  %cmp3 = icmp ult i32 %inc, %146
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.cond4.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body7:                                        ; preds = %for.inc235.for.body7_crit_edge, %for.body7.lr.ph
  %first_logical_block.0685 = phi i32 [ 0, %for.body7.lr.ph ], [ %first_logical_block.4, %for.inc235.for.body7_crit_edge ]
  %first_block.0676 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc236, %for.inc235.for.body7_crit_edge ]
  %147 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx8 = getelementptr i16, ptr %148, i32 %first_block.0676
  %149 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %arrayidx8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %150)
  %cmp9 = icmp eq i16 %150, -3
  br i1 %cmp9, label %for.cond12.preheader, label %for.body7.for.inc235_crit_edge

for.body7.for.inc235_crit_edge:                   ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc235

for.cond12.preheader:                             ; preds = %for.body7
  %151 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %EraseSize.i, align 4
  %mul660 = mul i32 %152, %first_block.0676
  %add661 = add i32 %mul660, 8
  %conv13662 = zext i32 %add661 to i64
  %call14663 = call i32 @nftl_read_oob(ptr noundef %8, i64 noundef %conv13662, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef nonnull %h0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14663)
  %cmp15664 = icmp slt i32 %call14663, 0
  br i1 %cmp15664, label %for.cond12.preheader.if.then191.sink.split_crit_edge, label %for.cond12.preheader.lor.lhs.false_crit_edge

for.cond12.preheader.lor.lhs.false_crit_edge:     ; preds = %for.cond12.preheader
  br label %lor.lhs.false

for.cond12.preheader.if.then191.sink.split_crit_edge: ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then191.sink.split

lor.lhs.false:                                    ; preds = %if.else182.lor.lhs.false_crit_edge, %for.cond12.preheader.lor.lhs.false_crit_edge
  %first_logical_block.1670 = phi i32 [ %first_logical_block.2, %if.else182.lor.lhs.false_crit_edge ], [ %first_logical_block.0685, %for.cond12.preheader.lor.lhs.false_crit_edge ]
  %block.0669 = phi i32 [ %conv37, %if.else182.lor.lhs.false_crit_edge ], [ %first_block.0676, %for.cond12.preheader.lor.lhs.false_crit_edge ]
  %chain_length.0666 = phi i32 [ %inc123, %if.else182.lor.lhs.false_crit_edge ], [ 0, %for.cond12.preheader.lor.lhs.false_crit_edge ]
  %do_format_chain.0665 = phi i32 [ %do_format_chain.2, %if.else182.lor.lhs.false_crit_edge ], [ 0, %for.cond12.preheader.lor.lhs.false_crit_edge ]
  %153 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %EraseSize.i, align 4
  %mul18 = mul i32 %154, %block.0669
  %add20 = add i32 %mul18, 520
  %conv21 = zext i32 %add20 to i64
  %call22 = call i32 @nftl_read_oob(ptr noundef %8, i64 noundef %conv21, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef nonnull %h1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %lor.lhs.false.if.then191.sink.split_crit_edge, label %if.end28

lor.lhs.false.if.then191.sink.split_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then191.sink.split

if.end28:                                         ; preds = %lor.lhs.false
  %155 = ptrtoint ptr %h0 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %h0, align 8
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %1, align 4
  %or418 = or i16 %158, %156
  %159 = call i16 @llvm.bswap.i16(i16 %or418)
  %160 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %0, align 2
  %162 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %2, align 2
  %or35419 = or i16 %163, %161
  %164 = call i16 @llvm.bswap.i16(i16 %or35419)
  %conv37 = zext i16 %164 to i32
  %165 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %4, align 4
  %167 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %5, align 2
  %or40420 = or i16 %168, %166
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %159)
  %tobool.not = icmp sgt i16 %159, -1
  %169 = and i16 %159, 32767
  %and = zext i16 %169 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 26940, i16 %or40420)
  %cmp43.not = icmp eq i16 %or40420, 26940
  br i1 %cmp43.not, label %lor.lhs.false45, label %if.end28.if.then49_crit_edge

if.end28.if.then49_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49

lor.lhs.false45:                                  ; preds = %if.end28
  %170 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %and)
  %cmp47.not = icmp ugt i32 %171, %and
  br i1 %cmp47.not, label %if.end83, label %lor.lhs.false45.if.then49_crit_edge

lor.lhs.false45.if.then49_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49

if.then49:                                        ; preds = %lor.lhs.false45.if.then49_crit_edge, %if.end28.if.then49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain_length.0666)
  %cmp50 = icmp eq i32 %chain_length.0666, 0
  br i1 %cmp50, label %if.then52, label %do.end78

if.then52:                                        ; preds = %if.then49
  %172 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h1.i421) #7
  %174 = ptrtoint ptr %h1.i421 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 -1, ptr %h1.i421, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i422) #7
  %175 = ptrtoint ptr %retlen.i422 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -1, ptr %retlen.i422, align 4, !annotation !127
  %176 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %EraseSize.i, align 4
  %mul.i425 = mul i32 %177, %block.0669
  %add2.i = add i32 %mul.i425, 520
  %conv.i426 = zext i32 %add2.i to i64
  %call.i427 = call i32 @nftl_read_oob(ptr noundef %173, i64 noundef %conv.i426, i32 noundef 8, ptr noundef nonnull %retlen.i422, ptr noundef nonnull %h1.i421) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i427)
  %cmp.i428 = icmp slt i32 %call.i427, 0
  br i1 %cmp.i428, label %if.then52.do.end59_crit_edge, label %if.end.i

if.then52.do.end59_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

if.end.i:                                         ; preds = %if.then52
  %178 = ptrtoint ptr %131 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %131, align 4
  %180 = ptrtoint ptr %132 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %132, align 2
  %or43.i = or i16 %181, %179
  call void @__sanitizer_cov_trace_const_cmp2(i16 26940, i16 %or43.i)
  %cmp8.not.i = icmp eq i16 %or43.i, 26940
  br i1 %cmp8.not.i, label %if.end.i.if.else71_crit_edge, label %if.then10.i

if.end.i.if.else71_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else71

if.then10.i:                                      ; preds = %if.end.i
  %182 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %EraseSize.i, align 4
  %mul12.i = mul i32 %183, %block.0669
  %call14.i = call fastcc i32 @check_free_sectors(ptr noundef %s, i32 noundef %mul12.i, i32 noundef %183, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.not.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.not.i, label %if.end18.i, label %if.then10.i.do.end59_crit_edge

if.then10.i.do.end59_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

if.end18.i:                                       ; preds = %if.then10.i
  %184 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 26940, ptr %131, align 4
  %185 = ptrtoint ptr %132 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 26940, ptr %132, align 2
  %186 = ptrtoint ptr %h1.i421 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %h1.i421, align 8
  %187 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %EraseSize.i, align 4
  %mul22.i = mul i32 %188, %block.0669
  %add24.i = add i32 %mul22.i, 520
  %conv25.i = zext i32 %add24.i to i64
  %call26.i = call i32 @nftl_write_oob(ptr noundef %173, i64 noundef %conv25.i, i32 noundef 8, ptr noundef nonnull %retlen.i422, ptr noundef nonnull %h1.i421) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.end18.i.do.end59_crit_edge, label %if.end18.i.if.else71_crit_edge

if.end18.i.if.else71_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else71

if.end18.i.do.end59_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end59:                                         ; preds = %if.end18.i.do.end59_crit_edge, %if.then10.i.do.end59_crit_edge, %if.then52.do.end59_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i422) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h1.i421) #7
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %block.0669) #10
  %call62 = call i32 @NFTL_formatblock(ptr noundef %s, i32 noundef %block.0669)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  %189 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx67 = getelementptr i16, ptr %190, i32 %block.0669
  br i1 %cmp63, label %if.then65, label %if.else

if.then65:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 -4, ptr %arrayidx67, align 2
  br label %for.inc235

if.else:                                          ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  %192 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 -2, ptr %arrayidx67, align 2
  br label %for.inc235

if.else71:                                        ; preds = %if.end18.i.if.else71_crit_edge, %if.end.i.if.else71_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i422) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h1.i421) #7
  %193 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx73 = getelementptr i16, ptr %194, i32 %block.0669
  %195 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 -2, ptr %arrayidx73, align 2
  br label %for.inc235

do.end78:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %block.0669, i32 noundef %first_block.0676) #10
  br label %if.then191.sink.split

if.end83:                                         ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain_length.0666)
  %cmp84 = icmp eq i32 %chain_length.0666, 0
  br i1 %cmp84, label %if.then86, label %if.else90

if.then86:                                        ; preds = %if.end83
  br i1 %tobool.not, label %if.then86.if.end122_crit_edge, label %if.then86.for.inc235_crit_edge

if.then86.for.inc235_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc235

if.then86.if.end122_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.else90:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_cmp4(i32 %first_logical_block.1670, i32 %and)
  %cmp91.not = icmp eq i32 %first_logical_block.1670, %and
  br i1 %cmp91.not, label %if.else90.if.end99_crit_edge, label %do.end96

if.else90.if.end99_crit_edge:                     ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

do.end96:                                         ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %block.0669, i32 noundef %and, i32 noundef %first_logical_block.1670) #10
  br label %if.end99

if.end99:                                         ; preds = %do.end96, %if.else90.if.end99_crit_edge
  %do_format_chain.1 = phi i32 [ 1, %do.end96 ], [ %do_format_chain.0665, %if.else90.if.end99_crit_edge ]
  br i1 %tobool.not, label %if.then101, label %if.end99.if.end122_crit_edge

if.end99.if.end122_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then101:                                       ; preds = %if.end99
  %196 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uci.i) #7
  %198 = ptrtoint ptr %uci.i to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 -1, ptr %uci.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i429) #7
  %199 = ptrtoint ptr %retlen.i429 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -1, ptr %retlen.i429, align 4, !annotation !127
  %200 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %EraseSize.i, align 4
  %mul.i432 = mul i32 %201, %block.0669
  %add2.i433 = add i32 %mul.i432, 1032
  %conv.i434 = zext i32 %add2.i433 to i64
  %call.i435 = call i32 @nftl_read_oob(ptr noundef %197, i64 noundef %conv.i434, i32 noundef 8, ptr noundef nonnull %retlen.i429, ptr noundef nonnull %uci.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i435)
  %cmp.i436 = icmp slt i32 %call.i435, 0
  br i1 %cmp.i436, label %get_fold_mark.exit.thread, label %get_fold_mark.exit

get_fold_mark.exit.thread:                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i429) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uci.i) #7
  br label %do.end111

get_fold_mark.exit:                               ; preds = %if.then101
  %202 = ptrtoint ptr %uci.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %uci.i, align 8
  %204 = ptrtoint ptr %130 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %130, align 2
  %or11.i = or i16 %205, %203
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i429) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uci.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 21845, i16 %or11.i)
  %cmp103.not = icmp eq i16 %or11.i, 21845
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %or35419)
  %cmp106.not = icmp eq i16 %or35419, -1
  %or.cond = select i1 %cmp103.not, i1 %cmp106.not, i1 false
  br i1 %or.cond, label %if.end122.thread, label %get_fold_mark.exit.do.end111_crit_edge

get_fold_mark.exit.do.end111_crit_edge:           ; preds = %get_fold_mark.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end111

do.end111:                                        ; preds = %get_fold_mark.exit.do.end111_crit_edge, %get_fold_mark.exit.thread
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %block.0669) #10
  br label %if.end122

if.end122.thread:                                 ; preds = %get_fold_mark.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %block.0669) #10
  %inc123584 = add i32 %chain_length.0666, 1
  br label %if.then126

if.end122:                                        ; preds = %do.end111, %if.end99.if.end122_crit_edge, %if.then86.if.end122_crit_edge
  %do_format_chain.2 = phi i32 [ 1, %do.end111 ], [ %do_format_chain.1, %if.end99.if.end122_crit_edge ], [ %do_format_chain.0665, %if.then86.if.end122_crit_edge ]
  %first_logical_block.2 = phi i32 [ %first_logical_block.1670, %do.end111 ], [ %first_logical_block.1670, %if.end99.if.end122_crit_edge ], [ %and, %if.then86.if.end122_crit_edge ]
  %inc123 = add i32 %chain_length.0666, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %or35419)
  %cmp124 = icmp eq i16 %or35419, -1
  br i1 %cmp124, label %if.end122.if.then126_crit_edge, label %if.else129

if.end122.if.then126_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then126

if.then126:                                       ; preds = %if.end122.if.then126_crit_edge, %if.end122.thread
  %inc123589 = phi i32 [ %inc123584, %if.end122.thread ], [ %inc123, %if.end122.if.then126_crit_edge ]
  %first_logical_block.2587 = phi i32 [ %first_logical_block.1670, %if.end122.thread ], [ %first_logical_block.2, %if.end122.if.then126_crit_edge ]
  %do_format_chain.2586 = phi i32 [ %do_format_chain.1, %if.end122.thread ], [ %do_format_chain.2, %if.end122.if.then126_crit_edge ]
  %206 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx128 = getelementptr i16, ptr %207, i32 %block.0669
  br label %for.end189

if.else129:                                       ; preds = %if.end122
  %208 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %conv37)
  %cmp131.not = icmp ugt i32 %209, %conv37
  br i1 %cmp131.not, label %if.else141, label %do.end136

do.end136:                                        ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #9
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %block.0669, i32 noundef %conv37) #10
  br label %if.then191.sink.split

if.else141:                                       ; preds = %if.else129
  %210 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx143 = getelementptr i16, ptr %211, i32 %conv37
  %212 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %arrayidx143, align 2
  %214 = zext i16 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values)
  switch i16 %213, label %if.else141.do.end176_crit_edge [
    i16 -3, label %if.else182
    i16 -1, label %land.lhs.true
  ]

if.else141.do.end176_crit_edge:                   ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end176

land.lhs.true:                                    ; preds = %if.else141
  %215 = ptrtoint ptr %EUNtable341.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %EUNtable341.i, align 4
  %arrayidx154 = getelementptr i16, ptr %216, i32 %first_logical_block.2
  %217 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %arrayidx154, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %218, i16 %164)
  %cmp156 = icmp eq i16 %218, %164
  br i1 %cmp156, label %land.lhs.true158, label %land.lhs.true.do.end176_crit_edge

land.lhs.true.do.end176_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end176

land.lhs.true158:                                 ; preds = %land.lhs.true
  %219 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uci.i439) #7
  %221 = ptrtoint ptr %uci.i439 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 -1, ptr %uci.i439, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i440) #7
  %222 = ptrtoint ptr %retlen.i440 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 -1, ptr %retlen.i440, align 4, !annotation !127
  %223 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %EraseSize.i, align 4
  %mul.i443 = mul i32 %224, %first_block.0676
  %add2.i444 = add i32 %mul.i443, 1032
  %conv.i445 = zext i32 %add2.i444 to i64
  %call.i446 = call i32 @nftl_read_oob(ptr noundef %220, i64 noundef %conv.i445, i32 noundef 8, ptr noundef nonnull %retlen.i440, ptr noundef nonnull %uci.i439) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i446)
  %cmp.i447 = icmp slt i32 %call.i446, 0
  br i1 %cmp.i447, label %get_fold_mark.exit452.thread, label %get_fold_mark.exit452

get_fold_mark.exit452.thread:                     ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i440) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uci.i439) #7
  br label %do.end176

get_fold_mark.exit452:                            ; preds = %land.lhs.true158
  %225 = ptrtoint ptr %uci.i439 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %uci.i439, align 8
  %227 = ptrtoint ptr %133 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %133, align 2
  %or11.i448 = or i16 %228, %226
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i440) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uci.i439) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 21845, i16 %or11.i448)
  %cmp160 = icmp eq i16 %or11.i448, 21845
  br i1 %cmp160, label %do.end165, label %get_fold_mark.exit452.do.end176_crit_edge

get_fold_mark.exit452.do.end176_crit_edge:        ; preds = %get_fold_mark.exit452
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end176

do.end165:                                        ; preds = %get_fold_mark.exit452
  call void @__sanitizer_cov_trace_pc() #9
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv37) #10
  %229 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx170 = getelementptr i16, ptr %230, i32 %block.0669
  %231 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %164, ptr %arrayidx170, align 2
  %232 = ptrtoint ptr %EUNtable341.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %EUNtable341.i, align 4
  %arrayidx172 = getelementptr i16, ptr %233, i32 %first_logical_block.2
  br label %for.end189

do.end176:                                        ; preds = %get_fold_mark.exit452.do.end176_crit_edge, %get_fold_mark.exit452.thread, %land.lhs.true.do.end176_crit_edge, %if.else141.do.end176_crit_edge
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %block.0669, i32 noundef %conv37) #10
  br label %if.then191.sink.split

if.else182:                                       ; preds = %if.else141
  %arrayidx185 = getelementptr i16, ptr %211, i32 %block.0669
  %234 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %164, ptr %arrayidx185, align 2
  %235 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %EraseSize.i, align 4
  %mul = mul i32 %236, %conv37
  %add = add i32 %mul, 8
  %conv13 = zext i32 %add to i64
  %call14 = call i32 @nftl_read_oob(ptr noundef %8, i64 noundef %conv13, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef nonnull %h0) #7
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.else182.if.then191.sink.split_crit_edge, label %if.else182.lor.lhs.false_crit_edge

if.else182.lor.lhs.false_crit_edge:               ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.else182.if.then191.sink.split_crit_edge:       ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then191.sink.split

for.end189:                                       ; preds = %do.end165, %if.then126
  %arrayidx172.sink = phi ptr [ %arrayidx172, %do.end165 ], [ %arrayidx128, %if.then126 ]
  %do_format_chain.3 = phi i32 [ %do_format_chain.2, %do.end165 ], [ %do_format_chain.2586, %if.then126 ]
  %chain_length.1 = phi i32 [ %inc123, %do.end165 ], [ %inc123589, %if.then126 ]
  %first_logical_block.3 = phi i32 [ %first_logical_block.2, %do.end165 ], [ %first_logical_block.2587, %if.then126 ]
  %237 = ptrtoint ptr %arrayidx172.sink to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 -1, ptr %arrayidx172.sink, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_format_chain.3)
  %tobool190.not = icmp eq i32 %do_format_chain.3, 0
  br i1 %tobool190.not, label %if.else192, label %for.end189.if.then191_crit_edge

for.end189.if.then191_crit_edge:                  ; preds = %for.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then191

if.then191.sink.split:                            ; preds = %if.else182.if.then191.sink.split_crit_edge, %do.end176, %do.end136, %do.end78, %lor.lhs.false.if.then191.sink.split_crit_edge, %for.cond12.preheader.if.then191.sink.split_crit_edge
  %block.0669798.sink = phi i32 [ %block.0669, %do.end176 ], [ %block.0669, %do.end136 ], [ %block.0669, %do.end78 ], [ %first_block.0676, %for.cond12.preheader.if.then191.sink.split_crit_edge ], [ %block.0669, %lor.lhs.false.if.then191.sink.split_crit_edge ], [ %conv37, %if.else182.if.then191.sink.split_crit_edge ]
  %first_logical_block.3597.ph = phi i32 [ %first_logical_block.2, %do.end176 ], [ %first_logical_block.2, %do.end136 ], [ %first_logical_block.1670, %do.end78 ], [ %first_logical_block.0685, %for.cond12.preheader.if.then191.sink.split_crit_edge ], [ %first_logical_block.1670, %lor.lhs.false.if.then191.sink.split_crit_edge ], [ %first_logical_block.2, %if.else182.if.then191.sink.split_crit_edge ]
  %238 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx180 = getelementptr i16, ptr %239, i32 %block.0669798.sink
  %240 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 -1, ptr %arrayidx180, align 2
  br label %if.then191

if.then191:                                       ; preds = %if.then191.sink.split, %for.end189.if.then191_crit_edge
  %first_logical_block.3597 = phi i32 [ %first_logical_block.3, %for.end189.if.then191_crit_edge ], [ %first_logical_block.3597.ph, %if.then191.sink.split ]
  %call.i453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %first_block.0676) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false25.i.for.cond.i_crit_edge, %if.then191
  %block.0.i = phi i32 [ %first_block.0676, %if.then191 ], [ %conv.i457, %lor.lhs.false25.i.for.cond.i_crit_edge ]
  %241 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx.i456 = getelementptr i16, ptr %242, i32 %block.0.i
  %243 = ptrtoint ptr %arrayidx.i456 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %arrayidx.i456, align 2
  %conv.i457 = zext i16 %244 to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %block.0.i) #10
  %call6.i = call i32 @NFTL_formatblock(ptr noundef %s, i32 noundef %block.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i458 = icmp slt i32 %call6.i, 0
  %245 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx9.i = getelementptr i16, ptr %246, i32 %block.0.i
  %..i = select i1 %cmp.i458, i16 -4, i16 -2
  %247 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %..i, ptr %arrayidx9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %244)
  %cmp12.i = icmp eq i16 %244, -1
  br i1 %cmp12.i, label %for.cond.i.for.inc235_crit_edge, label %lor.lhs.false.i459

for.cond.i.for.inc235_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc235

lor.lhs.false.i459:                               ; preds = %for.cond.i
  %248 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %249, i32 %conv.i457)
  %cmp14.i = icmp ugt i32 %249, %conv.i457
  br i1 %cmp14.i, label %lor.lhs.false.i459.lor.lhs.false25.i_crit_edge, label %do.end19.i

lor.lhs.false.i459.lor.lhs.false25.i_crit_edge:   ; preds = %lor.lhs.false.i459
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false25.i

do.end19.i:                                       ; preds = %lor.lhs.false.i459
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv.i457) #10
  br label %lor.lhs.false25.i

lor.lhs.false25.i:                                ; preds = %do.end19.i, %lor.lhs.false.i459.lor.lhs.false25.i_crit_edge
  %250 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %nb_blocks.i, align 4
  %cmp27.not.i = icmp ugt i32 %251, %conv.i457
  br i1 %cmp27.not.i, label %lor.lhs.false25.i.for.cond.i_crit_edge, label %lor.lhs.false25.i.for.inc235_crit_edge

lor.lhs.false25.i.for.inc235_crit_edge:           ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc235

lor.lhs.false25.i.for.cond.i_crit_edge:           ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.else192:                                       ; preds = %for.end189
  %252 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uci.i460) #7
  %254 = ptrtoint ptr %uci.i460 to i32
  call void @__asan_store8_noabort(i32 %254)
  store i64 -1, ptr %uci.i460, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i461) #7
  %255 = ptrtoint ptr %retlen.i461 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 -1, ptr %retlen.i461, align 4, !annotation !127
  %256 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %EraseSize.i, align 4
  %mul.i464 = mul i32 %257, %first_block.0676
  %add2.i465 = add i32 %mul.i464, 1032
  %conv.i466 = zext i32 %add2.i465 to i64
  %call.i467 = call i32 @nftl_read_oob(ptr noundef %253, i64 noundef %conv.i466, i32 noundef 8, ptr noundef nonnull %retlen.i461, ptr noundef nonnull %uci.i460) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i467)
  %cmp.i468 = icmp slt i32 %call.i467, 0
  br i1 %cmp.i468, label %get_fold_mark.exit473.thread, label %get_fold_mark.exit473

get_fold_mark.exit473.thread:                     ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i461) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uci.i460) #7
  br label %do.end199

get_fold_mark.exit473:                            ; preds = %if.else192
  %258 = ptrtoint ptr %uci.i460 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %uci.i460, align 8
  %260 = ptrtoint ptr %134 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %134, align 2
  %or11.i469 = or i16 %261, %259
  %262 = call i16 @llvm.bswap.i16(i16 %or11.i469) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i461) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uci.i460) #7
  %263 = zext i16 %262 to i64
  call void @__sanitizer_cov_trace_switch(i64 %263, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %262, label %get_fold_mark.exit473.if.end206_crit_edge [
    i16 0, label %get_fold_mark.exit473.do.end199_crit_edge
    i16 21845, label %if.then205
  ]

get_fold_mark.exit473.do.end199_crit_edge:        ; preds = %get_fold_mark.exit473
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end199

get_fold_mark.exit473.if.end206_crit_edge:        ; preds = %get_fold_mark.exit473
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206

do.end199:                                        ; preds = %get_fold_mark.exit473.do.end199_crit_edge, %get_fold_mark.exit473.thread
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %first_block.0676) #10
  %call.i474 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %first_block.0676) #10
  br label %for.cond.i486

for.cond.i486:                                    ; preds = %lor.lhs.false25.i492.for.cond.i486_crit_edge, %do.end199
  %block.0.i477 = phi i32 [ %first_block.0676, %do.end199 ], [ %conv.i479, %lor.lhs.false25.i492.for.cond.i486_crit_edge ]
  %264 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx.i478 = getelementptr i16, ptr %265, i32 %block.0.i477
  %266 = ptrtoint ptr %arrayidx.i478 to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %arrayidx.i478, align 2
  %conv.i479 = zext i16 %267 to i32
  %call5.i480 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %block.0.i477) #10
  %call6.i481 = call i32 @NFTL_formatblock(ptr noundef %s, i32 noundef %block.0.i477) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i481)
  %cmp.i482 = icmp slt i32 %call6.i481, 0
  %268 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx9.i483 = getelementptr i16, ptr %269, i32 %block.0.i477
  %..i484 = select i1 %cmp.i482, i16 -4, i16 -2
  %270 = ptrtoint ptr %arrayidx9.i483 to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %..i484, ptr %arrayidx9.i483, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %267)
  %cmp12.i485 = icmp eq i16 %267, -1
  br i1 %cmp12.i485, label %for.cond.i486.for.inc235_crit_edge, label %lor.lhs.false.i488

for.cond.i486.for.inc235_crit_edge:               ; preds = %for.cond.i486
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc235

lor.lhs.false.i488:                               ; preds = %for.cond.i486
  %271 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %272, i32 %conv.i479)
  %cmp14.i487 = icmp ugt i32 %272, %conv.i479
  br i1 %cmp14.i487, label %lor.lhs.false.i488.lor.lhs.false25.i492_crit_edge, label %do.end19.i490

lor.lhs.false.i488.lor.lhs.false25.i492_crit_edge: ; preds = %lor.lhs.false.i488
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false25.i492

do.end19.i490:                                    ; preds = %lor.lhs.false.i488
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i489 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv.i479) #10
  br label %lor.lhs.false25.i492

lor.lhs.false25.i492:                             ; preds = %do.end19.i490, %lor.lhs.false.i488.lor.lhs.false25.i492_crit_edge
  %273 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %nb_blocks.i, align 4
  %cmp27.not.i491 = icmp ugt i32 %274, %conv.i479
  br i1 %cmp27.not.i491, label %lor.lhs.false25.i492.for.cond.i486_crit_edge, label %lor.lhs.false25.i492.for.inc235_crit_edge

lor.lhs.false25.i492.for.inc235_crit_edge:        ; preds = %lor.lhs.false25.i492
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc235

lor.lhs.false25.i492.for.cond.i486_crit_edge:     ; preds = %lor.lhs.false25.i492
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i486

if.then205:                                       ; preds = %get_fold_mark.exit473
  %275 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bci.i) #7
  %277 = ptrtoint ptr %bci.i to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 -1, ptr %bci.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i494) #7
  %278 = ptrtoint ptr %retlen.i494 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 -1, ptr %retlen.i494, align 4, !annotation !127
  %279 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %EraseSize.i, align 4
  %div75.i = lshr i32 %280, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %280)
  %cmp91.not.i = icmp ult i32 %280, 512
  %umax.i = call i32 @llvm.umax.i32(i32 %div75.i, i32 1) #7
  br label %for.cond.i500

for.cond.i500:                                    ; preds = %lor.lhs.false45.i.for.cond.i500_crit_edge, %if.then205
  %block.0.i499 = phi i32 [ %first_block.0676, %if.then205 ], [ %conv30.i, %lor.lhs.false45.i.for.cond.i500_crit_edge ]
  br i1 %cmp91.not.i, label %for.cond.i500.for.end.i_crit_edge, label %for.cond.i500.for.body.i504_crit_edge

for.cond.i500.for.body.i504_crit_edge:            ; preds = %for.cond.i500
  br label %for.body.i504

for.cond.i500.for.end.i_crit_edge:                ; preds = %for.cond.i500
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i504:                                    ; preds = %for.inc.i.for.body.i504_crit_edge, %for.cond.i500.for.body.i504_crit_edge
  %i.092.i = phi i32 [ %inc.i535, %for.inc.i.for.body.i504_crit_edge ], [ 0, %for.cond.i500.for.body.i504_crit_edge ]
  %281 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %EraseSize.i, align 4
  %mul.i501 = mul i32 %282, %block.0.i499
  %mul4.i = shl i32 %i.092.i, 9
  %add.i = add i32 %mul.i501, %mul4.i
  %conv.i502 = zext i32 %add.i to i64
  %call.i503 = call i32 @nftl_read_oob(ptr noundef %276, i64 noundef %conv.i502, i32 noundef 8, ptr noundef nonnull %retlen.i494, ptr noundef nonnull %bci.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i503)
  %cmp5.i = icmp slt i32 %call.i503, 0
  br i1 %cmp5.i, label %for.body.i504.for.inc.i_crit_edge, label %if.end.i506

for.body.i504.for.inc.i_crit_edge:                ; preds = %for.body.i504
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i506:                                      ; preds = %for.body.i504
  %283 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %140, align 2
  %285 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %141, align 1
  %or76.i = or i8 %286, %284
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or76.i)
  %cond.i505 = icmp eq i8 %or76.i, -1
  br i1 %cond.i505, label %for.body.i.preheader.i, label %if.end.i506.for.inc.i_crit_edge

if.end.i506.for.inc.i_crit_edge:                  ; preds = %if.end.i506
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.body.i.preheader.i:                           ; preds = %if.end.i506
  %287 = ptrtoint ptr %bci.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %bci.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %288)
  %cmp1.not.i.i = icmp eq i8 %288, -1
  br i1 %cmp1.not.i.i, label %for.cond.i.i, label %for.body.i.preheader.i.do.end.i534_crit_edge

for.body.i.preheader.i.do.end.i534_crit_edge:     ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i534

for.cond.i.i:                                     ; preds = %for.body.i.preheader.i
  %289 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %290)
  %cmp1.not.i.1.i = icmp eq i8 %290, -1
  br i1 %cmp1.not.i.1.i, label %for.cond.i.1.i, label %for.cond.i.i.do.end.i534_crit_edge

for.cond.i.i.do.end.i534_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i534

for.cond.i.1.i:                                   ; preds = %for.cond.i.i
  %291 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %136, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %292)
  %cmp1.not.i.2.i = icmp eq i8 %292, -1
  br i1 %cmp1.not.i.2.i, label %for.cond.i.2.i, label %for.cond.i.1.i.do.end.i534_crit_edge

for.cond.i.1.i.do.end.i534_crit_edge:             ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i534

for.cond.i.2.i:                                   ; preds = %for.cond.i.1.i
  %293 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %294)
  %cmp1.not.i.3.i = icmp eq i8 %294, -1
  br i1 %cmp1.not.i.3.i, label %for.cond.i.3.i, label %for.cond.i.2.i.do.end.i534_crit_edge

for.cond.i.2.i.do.end.i534_crit_edge:             ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i534

for.cond.i.3.i:                                   ; preds = %for.cond.i.2.i
  %295 = ptrtoint ptr %138 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %138, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %296)
  %cmp1.not.i.4.i = icmp eq i8 %296, -1
  br i1 %cmp1.not.i.4.i, label %for.cond.i.4.i, label %for.cond.i.3.i.do.end.i534_crit_edge

for.cond.i.3.i.do.end.i534_crit_edge:             ; preds = %for.cond.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i534

for.cond.i.4.i:                                   ; preds = %for.cond.i.3.i
  %297 = ptrtoint ptr %139 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %139, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %298)
  %cmp1.not.i.5.i = icmp eq i8 %298, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %284)
  %cmp1.not.i.6.i = icmp eq i8 %284, -1
  %or.cond600 = select i1 %cmp1.not.i.5.i, i1 %cmp1.not.i.6.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %286)
  %cmp1.not.i.7.i = icmp eq i8 %286, -1
  %or.cond601 = select i1 %or.cond600, i1 %cmp1.not.i.7.i, i1 false
  br i1 %or.cond601, label %for.cond.i.7.i, label %for.cond.i.4.i.do.end.i534_crit_edge

for.cond.i.4.i.do.end.i534_crit_edge:             ; preds = %for.cond.i.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i534

for.cond.i.7.i:                                   ; preds = %for.cond.i.4.i
  %299 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %EraseSize.i, align 4
  %301 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i.i) #7
  %303 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 -1, ptr %retlen.i.i, align 4, !annotation !127
  %oobsize.i.i = getelementptr inbounds %struct.mtd_info, ptr %302, i32 0, i32 6
  %304 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %oobsize.i.i, align 4
  %add.i.i = add i32 %305, 512
  %call9.i.i.i532 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #11
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i532, null
  br i1 %tobool.not.i.i, label %check_free_sectors.exit.thread.i, label %for.cond.preheader.i.i

check_free_sectors.exit.thread.i:                 ; preds = %for.cond.i.7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #7
  br label %do.end.i534

for.cond.preheader.i.i:                           ; preds = %for.cond.i.7.i
  %mul13.i = mul i32 %300, %block.0.i499
  %add15.i = add i32 %mul13.i, %mul4.i
  %conv.i.i = zext i32 %add15.i to i64
  %call2.i.i = call i32 @mtd_read(ptr noundef %302, i64 noundef %conv.i.i, i32 noundef 512, ptr noundef nonnull %retlen.i.i, ptr noundef nonnull %call9.i.i.i532) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %for.cond.preheader.i.i.for.body.i.i.i_crit_edge, label %for.cond.preheader.i.i.check_free_sectors.exit.thread87.i_crit_edge

for.cond.preheader.i.i.check_free_sectors.exit.thread87.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_free_sectors.exit.thread87.i

for.cond.preheader.i.i.for.body.i.i.i_crit_edge:  ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 512
  br i1 %exitcond.not.i.i.i, label %if.end10.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i.i_crit_edge
  %i.02.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %call9.i.i.i532, i32 %i.02.i.i.i
  %306 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %307)
  %cmp1.not.i.i.i = icmp eq i8 %307, -1
  br i1 %cmp1.not.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.check_free_sectors.exit.thread87.i_crit_edge

for.body.i.i.i.check_free_sectors.exit.thread87.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_free_sectors.exit.thread87.i

if.end10.i.i:                                     ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call9.i.i.i532) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #7
  br label %for.inc.i

check_free_sectors.exit.thread87.i:               ; preds = %for.body.i.i.i.check_free_sectors.exit.thread87.i_crit_edge, %for.cond.preheader.i.i.check_free_sectors.exit.thread87.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i532) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #7
  br label %do.end.i534

do.end.i534:                                      ; preds = %check_free_sectors.exit.thread87.i, %check_free_sectors.exit.thread.i, %for.cond.i.4.i.do.end.i534_crit_edge, %for.cond.i.3.i.do.end.i534_crit_edge, %for.cond.i.2.i.do.end.i534_crit_edge, %for.cond.i.1.i.do.end.i534_crit_edge, %for.cond.i.i.do.end.i534_crit_edge, %for.body.i.preheader.i.do.end.i534_crit_edge
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %i.092.i, i32 noundef %block.0.i499) #10
  %308 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 17, ptr %140, align 2
  %309 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 17, ptr %141, align 1
  %310 = ptrtoint ptr %EraseSize.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %EraseSize.i, align 4
  %mul24.i = mul i32 %311, %block.0.i499
  %add26.i = add i32 %mul24.i, %mul4.i
  %conv27.i = zext i32 %add26.i to i64
  %call28.i = call i32 @nftl_write_oob(ptr noundef %276, i64 noundef %conv27.i, i32 noundef 8, ptr noundef nonnull %retlen.i494, ptr noundef nonnull %bci.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i534, %if.end10.i.i, %if.end.i506.for.inc.i_crit_edge, %for.body.i504.for.inc.i_crit_edge
  %inc.i535 = add nuw nsw i32 %i.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i535, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i504_crit_edge

for.inc.i.for.body.i504_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i504

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.i500.for.end.i_crit_edge
  %312 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx.i536 = getelementptr i16, ptr %313, i32 %block.0.i499
  %314 = ptrtoint ptr %arrayidx.i536 to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %arrayidx.i536, align 2
  %conv30.i = zext i16 %315 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %315)
  %cmp31.i = icmp eq i16 %315, -1
  br i1 %cmp31.i, label %for.end.i.check_sectors_in_chain.exit_crit_edge, label %lor.lhs.false33.i

for.end.i.check_sectors_in_chain.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_sectors_in_chain.exit

lor.lhs.false33.i:                                ; preds = %for.end.i
  %316 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %317, i32 %conv30.i)
  %cmp34.i = icmp ugt i32 %317, %conv30.i
  br i1 %cmp34.i, label %lor.lhs.false33.i.lor.lhs.false45.i_crit_edge, label %do.end39.i

lor.lhs.false33.i.lor.lhs.false45.i_crit_edge:    ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false45.i

do.end39.i:                                       ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #9
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv30.i) #10
  br label %lor.lhs.false45.i

lor.lhs.false45.i:                                ; preds = %do.end39.i, %lor.lhs.false33.i.lor.lhs.false45.i_crit_edge
  %318 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %nb_blocks.i, align 4
  %cmp47.not.i = icmp ugt i32 %319, %conv30.i
  br i1 %cmp47.not.i, label %lor.lhs.false45.i.for.cond.i500_crit_edge, label %lor.lhs.false45.i.check_sectors_in_chain.exit_crit_edge

lor.lhs.false45.i.check_sectors_in_chain.exit_crit_edge: ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_sectors_in_chain.exit

lor.lhs.false45.i.for.cond.i500_crit_edge:        ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i500

check_sectors_in_chain.exit:                      ; preds = %lor.lhs.false45.i.check_sectors_in_chain.exit_crit_edge, %for.end.i.check_sectors_in_chain.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i494) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bci.i) #7
  br label %if.end206

if.end206:                                        ; preds = %check_sectors_in_chain.exit, %get_fold_mark.exit473.if.end206_crit_edge
  %320 = ptrtoint ptr %EUNtable341.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %EUNtable341.i, align 4
  %arrayidx208 = getelementptr i16, ptr %321, i32 %first_logical_block.3
  %322 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %arrayidx208, align 2
  %conv209 = zext i16 %323 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %323)
  %cmp210.not = icmp eq i16 %323, -1
  br i1 %cmp210.not, label %if.else227, label %if.end206.for.cond.i541_crit_edge

if.end206.for.cond.i541_crit_edge:                ; preds = %if.end206
  br label %for.cond.i541

for.cond.i541:                                    ; preds = %lor.lhs.false15.i.for.cond.i541_crit_edge, %if.end206.for.cond.i541_crit_edge
  %block.0.i539 = phi i32 [ %conv.i545, %lor.lhs.false15.i.for.cond.i541_crit_edge ], [ %conv209, %if.end206.for.cond.i541_crit_edge ]
  %length.0.i = phi i32 [ %inc.i540, %lor.lhs.false15.i.for.cond.i541_crit_edge ], [ 0, %if.end206.for.cond.i541_crit_edge ]
  %inc.i540 = add nuw i32 %length.0.i, 1
  %324 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i540, i32 %325)
  %cmp.not.i = icmp ult i32 %inc.i540, %325
  br i1 %cmp.not.i, label %if.end.i546, label %do.end.i543

do.end.i543:                                      ; preds = %for.cond.i541
  call void @__sanitizer_cov_trace_pc() #9
  %call.i542 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %inc.i540) #10
  br label %calc_chain_length.exit

if.end.i546:                                      ; preds = %for.cond.i541
  %326 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx.i544 = getelementptr i16, ptr %327, i32 %block.0.i539
  %328 = ptrtoint ptr %arrayidx.i544 to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %arrayidx.i544, align 2
  %conv.i545 = zext i16 %329 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %329)
  %cmp1.i = icmp eq i16 %329, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %325, i32 %conv.i545)
  %cmp4.i = icmp ugt i32 %325, %conv.i545
  %or.cond.i = select i1 %cmp1.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %if.end.i546.if.end12.i_crit_edge, label %do.end9.i

if.end.i546.if.end12.i_crit_edge:                 ; preds = %if.end.i546
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

do.end9.i:                                        ; preds = %if.end.i546
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv.i545) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end9.i, %if.end.i546.if.end12.i_crit_edge
  br i1 %cmp1.i, label %if.end12.i.calc_chain_length.exit_crit_edge, label %lor.lhs.false15.i

if.end12.i.calc_chain_length.exit_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_chain_length.exit

lor.lhs.false15.i:                                ; preds = %if.end12.i
  %330 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %nb_blocks.i, align 4
  %cmp17.not.i = icmp ugt i32 %331, %conv.i545
  br i1 %cmp17.not.i, label %lor.lhs.false15.i.for.cond.i541_crit_edge, label %lor.lhs.false15.i.calc_chain_length.exit_crit_edge

lor.lhs.false15.i.calc_chain_length.exit_crit_edge: ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_chain_length.exit

lor.lhs.false15.i.for.cond.i541_crit_edge:        ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i541

calc_chain_length.exit:                           ; preds = %lor.lhs.false15.i.calc_chain_length.exit_crit_edge, %if.end12.i.calc_chain_length.exit_crit_edge, %do.end.i543
  %call218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv209, i32 noundef %inc.i540, i32 noundef %first_block.0676, i32 noundef %chain_length.1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %chain_length.1, i32 %length.0.i)
  %cmp219.not.not = icmp ugt i32 %chain_length.1, %length.0.i
  br i1 %cmp219.not.not, label %if.then221, label %calc_chain_length.exit.if.end226_crit_edge

calc_chain_length.exit.if.end226_crit_edge:       ; preds = %calc_chain_length.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end226

if.then221:                                       ; preds = %calc_chain_length.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv222 = trunc i32 %first_block.0676 to i16
  %332 = ptrtoint ptr %EUNtable341.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %EUNtable341.i, align 4
  %arrayidx224 = getelementptr i16, ptr %333, i32 %first_logical_block.3
  %334 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 %conv222, ptr %arrayidx224, align 2
  br label %if.end226

if.end226:                                        ; preds = %if.then221, %calc_chain_length.exit.if.end226_crit_edge
  %chain_to_format.0 = phi i32 [ %conv209, %if.then221 ], [ %first_block.0676, %calc_chain_length.exit.if.end226_crit_edge ]
  %call.i548 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %chain_to_format.0) #10
  br label %for.cond.i560

for.cond.i560:                                    ; preds = %lor.lhs.false25.i566.for.cond.i560_crit_edge, %if.end226
  %block.0.i551 = phi i32 [ %chain_to_format.0, %if.end226 ], [ %conv.i553, %lor.lhs.false25.i566.for.cond.i560_crit_edge ]
  %335 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx.i552 = getelementptr i16, ptr %336, i32 %block.0.i551
  %337 = ptrtoint ptr %arrayidx.i552 to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %arrayidx.i552, align 2
  %conv.i553 = zext i16 %338 to i32
  %call5.i554 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %block.0.i551) #10
  %call6.i555 = call i32 @NFTL_formatblock(ptr noundef %s, i32 noundef %block.0.i551) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i555)
  %cmp.i556 = icmp slt i32 %call6.i555, 0
  %339 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx9.i557 = getelementptr i16, ptr %340, i32 %block.0.i551
  %..i558 = select i1 %cmp.i556, i16 -4, i16 -2
  %341 = ptrtoint ptr %arrayidx9.i557 to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 %..i558, ptr %arrayidx9.i557, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %338)
  %cmp12.i559 = icmp eq i16 %338, -1
  br i1 %cmp12.i559, label %for.cond.i560.for.inc235_crit_edge, label %lor.lhs.false.i562

for.cond.i560.for.inc235_crit_edge:               ; preds = %for.cond.i560
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc235

lor.lhs.false.i562:                               ; preds = %for.cond.i560
  %342 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %nb_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %343, i32 %conv.i553)
  %cmp14.i561 = icmp ugt i32 %343, %conv.i553
  br i1 %cmp14.i561, label %lor.lhs.false.i562.lor.lhs.false25.i566_crit_edge, label %do.end19.i564

lor.lhs.false.i562.lor.lhs.false25.i566_crit_edge: ; preds = %lor.lhs.false.i562
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false25.i566

do.end19.i564:                                    ; preds = %lor.lhs.false.i562
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i563 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv.i553) #10
  br label %lor.lhs.false25.i566

lor.lhs.false25.i566:                             ; preds = %do.end19.i564, %lor.lhs.false.i562.lor.lhs.false25.i566_crit_edge
  %344 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %nb_blocks.i, align 4
  %cmp27.not.i565 = icmp ugt i32 %345, %conv.i553
  br i1 %cmp27.not.i565, label %lor.lhs.false25.i566.for.cond.i560_crit_edge, label %lor.lhs.false25.i566.for.inc235_crit_edge

lor.lhs.false25.i566.for.inc235_crit_edge:        ; preds = %lor.lhs.false25.i566
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc235

lor.lhs.false25.i566.for.cond.i560_crit_edge:     ; preds = %lor.lhs.false25.i566
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i560

if.else227:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  %conv228 = trunc i32 %first_block.0676 to i16
  %346 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 %conv228, ptr %arrayidx208, align 2
  br label %for.inc235

for.inc235:                                       ; preds = %if.else227, %lor.lhs.false25.i566.for.inc235_crit_edge, %for.cond.i560.for.inc235_crit_edge, %lor.lhs.false25.i492.for.inc235_crit_edge, %for.cond.i486.for.inc235_crit_edge, %lor.lhs.false25.i.for.inc235_crit_edge, %for.cond.i.for.inc235_crit_edge, %if.then86.for.inc235_crit_edge, %if.else71, %if.else, %if.then65, %for.body7.for.inc235_crit_edge
  %first_logical_block.4 = phi i32 [ %first_logical_block.1670, %if.then65 ], [ %first_logical_block.1670, %if.else ], [ %first_logical_block.1670, %if.else71 ], [ %first_logical_block.0685, %for.body7.for.inc235_crit_edge ], [ %first_logical_block.3, %if.else227 ], [ %first_logical_block.3597, %for.cond.i.for.inc235_crit_edge ], [ %first_logical_block.3597, %lor.lhs.false25.i.for.inc235_crit_edge ], [ %first_logical_block.3, %for.cond.i486.for.inc235_crit_edge ], [ %first_logical_block.3, %lor.lhs.false25.i492.for.inc235_crit_edge ], [ %first_logical_block.3, %for.cond.i560.for.inc235_crit_edge ], [ %first_logical_block.3, %lor.lhs.false25.i566.for.inc235_crit_edge ], [ %first_logical_block.1670, %if.then86.for.inc235_crit_edge ]
  %inc236 = add nuw i32 %first_block.0676, 1
  %347 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %nb_blocks.i, align 4
  %cmp6 = icmp ult i32 %inc236, %348
  br i1 %cmp6, label %for.inc235.for.body7_crit_edge, label %for.end237.loopexit

for.inc235.for.body7_crit_edge:                   ; preds = %for.inc235
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.end237.loopexit:                              ; preds = %for.inc235
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %phi.cmp = icmp eq i32 %348, 0
  br label %for.end237

for.end237:                                       ; preds = %for.end237.loopexit, %for.cond4.preheader.for.end237_crit_edge
  %349 = phi i1 [ true, %for.cond4.preheader.for.end237_crit_edge ], [ %phi.cmp, %for.end237.loopexit ]
  %numfreeEUNs = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 11
  %350 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 0, ptr %numfreeEUNs, align 4
  %351 = ptrtoint ptr %FirstPhysicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %FirstPhysicalEUN.i, align 8
  %353 = call i16 @llvm.bswap.i16(i16 %352)
  %LastFreeEUN = getelementptr inbounds %struct.NFTLrecord, ptr %s, i32 0, i32 12
  %354 = ptrtoint ptr %LastFreeEUN to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 %353, ptr %LastFreeEUN, align 2
  br i1 %349, label %for.end237.cleanup_crit_edge, label %for.end237.for.body242_crit_edge

for.end237.for.body242_crit_edge:                 ; preds = %for.end237
  br label %for.body242

for.end237.cleanup_crit_edge:                     ; preds = %for.end237
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body242:                                      ; preds = %for.inc276.for.body242_crit_edge, %for.end237.for.body242_crit_edge
  %block.1687 = phi i32 [ %inc277, %for.inc276.for.body242_crit_edge ], [ 0, %for.end237.for.body242_crit_edge ]
  %355 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx244 = getelementptr i16, ptr %356, i32 %block.1687
  %357 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %arrayidx244, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %358)
  %cmp246 = icmp eq i16 %358, -3
  br i1 %cmp246, label %do.end251, label %for.body242.if.end264_crit_edge

for.body242.if.end264_crit_edge:                  ; preds = %for.body242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end264

do.end251:                                        ; preds = %for.body242
  call void @__sanitizer_cov_trace_pc() #9
  %call253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %block.1687) #10
  %call254 = call i32 @NFTL_formatblock(ptr noundef %s, i32 noundef %block.1687)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %cmp255 = icmp slt i32 %call254, 0
  %359 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx259 = getelementptr i16, ptr %360, i32 %block.1687
  %. = select i1 %cmp255, i16 -4, i16 -2
  %361 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %., ptr %arrayidx259, align 2
  br label %if.end264

if.end264:                                        ; preds = %do.end251, %for.body242.if.end264_crit_edge
  %362 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %ReplUnitTable.i, align 8
  %arrayidx266 = getelementptr i16, ptr %363, i32 %block.1687
  %364 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %arrayidx266, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %365)
  %cmp268 = icmp eq i16 %365, -2
  br i1 %cmp268, label %if.then270, label %if.end264.for.inc276_crit_edge

if.end264.for.inc276_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc276

if.then270:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #9
  %366 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %numfreeEUNs, align 4
  %inc272 = add i16 %367, 1
  store i16 %inc272, ptr %numfreeEUNs, align 4
  %conv273 = trunc i32 %block.1687 to i16
  %368 = ptrtoint ptr %LastFreeEUN to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 %conv273, ptr %LastFreeEUN, align 2
  br label %for.inc276

for.inc276:                                       ; preds = %if.then270, %if.end264.for.inc276_crit_edge
  %inc277 = add nuw i32 %block.1687, 1
  %369 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %nb_blocks.i, align 4
  %cmp240 = icmp ult i32 %inc277, %370
  br i1 %cmp240, label %for.inc276.for.body242_crit_edge, label %for.inc276.cleanup_crit_edge

for.inc276.cleanup_crit_edge:                     ; preds = %for.inc276
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc276.for.body242_crit_edge:                 ; preds = %for.inc276
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body242

cleanup:                                          ; preds = %for.inc276.cleanup_crit_edge, %for.end237.cleanup_crit_edge, %do.end, %for.end237.thread
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %for.end237.cleanup_crit_edge ], [ 0, %for.end237.thread ], [ 0, %for.inc276.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !112, !113, !114, !115, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nftlmount.c", i32 329, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @NFTL_formatblock._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @NFTL_formatblock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nftlmount.c", i32 575, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @NFTL_mount._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @NFTL_mount._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/nftlmount.c", i32 620, i32 8}
!13 = !{ptr @NFTL_mount._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @NFTL_mount._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/nftlmount.c", i32 636, i32 7}
!17 = !{ptr @NFTL_mount._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @NFTL_mount._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/nftlmount.c", i32 654, i32 7}
!21 = !{ptr @NFTL_mount._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @NFTL_mount._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nftlmount.c", i32 666, i32 8}
!25 = !{ptr @NFTL_mount._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @NFTL_mount._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nftlmount.c", i32 672, i32 8}
!29 = !{ptr @NFTL_mount._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @NFTL_mount._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nftlmount.c", i32 683, i32 6}
!33 = !{ptr @NFTL_mount._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @NFTL_mount._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @NFTL_mount._entry.23, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nftlmount.c", i32 698, i32 7}
!37 = !{ptr @NFTL_mount._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nftlmount.c", i32 703, i32 7}
!40 = !{ptr @NFTL_mount._entry.25, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @NFTL_mount._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nftlmount.c", i32 730, i32 6}
!44 = !{ptr @NFTL_mount._entry.28, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @NFTL_mount._entry_ptr.30, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.32, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nftlmount.c", i32 744, i32 7}
!48 = !{ptr @NFTL_mount._entry.31, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @NFTL_mount._entry_ptr.33, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.35, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nftlmount.c", i32 769, i32 4}
!52 = !{ptr @NFTL_mount._entry.34, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @NFTL_mount._entry_ptr.36, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @find_boot_record.warncount, !55, !"warncount", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nftlmount.c", i32 58, i32 15}
!56 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nftlmount.c", i32 61, i32 5}
!58 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @find_boot_record._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @find_boot_record._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nftlmount.c", i32 64, i32 6}
!63 = !{ptr @find_boot_record._entry.39, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @find_boot_record._entry_ptr.41, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.42, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nftlmount.c", i32 69, i32 33}
!67 = !{ptr @.str.44, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nftlmount.c", i32 83, i32 4}
!69 = !{ptr @find_boot_record._entry.43, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @find_boot_record._entry_ptr.45, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.47, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nftlmount.c", i32 122, i32 5}
!73 = !{ptr @find_boot_record._entry.46, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @find_boot_record._entry_ptr.48, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.50, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nftlmount.c", i32 165, i32 4}
!77 = !{ptr @find_boot_record._entry.49, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @find_boot_record._entry_ptr.51, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.53, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nftlmount.c", i32 166, i32 4}
!81 = !{ptr @find_boot_record._entry.52, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @find_boot_record._entry_ptr.54, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @find_boot_record._entry.55, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/mtd/nftlmount.c", i32 173, i32 4}
!85 = !{ptr @find_boot_record._entry_ptr.56, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.58, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/nftlmount.c", i32 174, i32 4}
!88 = !{ptr @find_boot_record._entry.57, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @find_boot_record._entry_ptr.59, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.60, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nftlmount.c", i32 459, i32 2}
!92 = !{ptr @.str.61, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @format_chain._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @format_chain._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @format_chain._entry.62, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/mtd/nftlmount.c", i32 464, i32 3}
!97 = !{ptr @format_chain._entry_ptr.63, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.65, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nftlmount.c", i32 476, i32 4}
!100 = !{ptr @format_chain._entry.64, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @format_chain._entry_ptr.66, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.67, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nftlmount.c", i32 395, i32 6}
!104 = !{ptr @.str.68, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @check_sectors_in_chain._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @check_sectors_in_chain._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @check_sectors_in_chain._entry.69, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nftlmount.c", i32 416, i32 4}
!109 = !{ptr @check_sectors_in_chain._entry_ptr.70, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.71, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nftlmount.c", i32 432, i32 4}
!112 = !{ptr @.str.72, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @calc_chain_length._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @calc_chain_length._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @calc_chain_length._entry.73, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/mtd/nftlmount.c", i32 438, i32 4}
!117 = !{ptr @calc_chain_length._entry_ptr.74, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
!128 = !{!"branch_weights", i32 1, i32 2000}
