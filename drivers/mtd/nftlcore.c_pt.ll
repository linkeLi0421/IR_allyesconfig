; ModuleID = '/llk/IR_all_yes/drivers/mtd/nftlcore.c_pt.bc'
source_filename = "../drivers/mtd/nftlcore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.71 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.71 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nftl_bci = type { [6 x i8], i8, i8 }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.NFTLrecord = type { %struct.mtd_blktrans_dev, i16, i16, i32, %struct.NFTLMediaHeader, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, i32, i32, %struct.erase_info }
%struct.NFTLMediaHeader = type <{ [6 x i8], i16, i16, i32, i8 }>
%struct.erase_info = type { i64, i64, i64 }
%struct.nftl_oob = type { %struct.nftl_bci, %union.nftl_uci }
%union.nftl_uci = type { %struct.nftl_uci1 }
%struct.nftl_uci1 = type { i32, i16, i16 }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.nftl_uci0 = type { i16, i16, i16, i16 }
%struct.nftl_uci2 = type { i16, i16, i32 }

@__initcall__kmod_nftl__291_799_nftl_tr_init6 = internal global ptr @nftl_tr_init, section ".initcall6.init", align 4
@nftl_tr = internal global { %struct.mtd_blktrans_ops, [48 x i8] } { %struct.mtd_blktrans_ops { ptr @.str, i32 93, i32 4, i32 512, i32 0, ptr @nftl_readblock, ptr @nftl_writeblock, ptr null, ptr null, ptr @nftl_getgeo, ptr null, ptr null, ptr null, ptr @nftl_add_mtd, ptr @nftl_remove_dev, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, [48 x i8] zeroinitializer }, align 32
@__exitcall_nftl_tr_exit = internal global ptr @nftl_tr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file292 = internal constant [27 x i8] c"nftl.file=drivers/mtd/nftl\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [17 x i8] c"nftl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [103 x i8] c"nftl.author=David Woodhouse <dwmw2@infradead.org>, Fabrice Bellard <fabrice.bellard@netgem.com> et al.\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [113 x i8] c"nftl.description=Support code for NAND Flash Translation Layer, used on M-Systems DiskOnChip 2000 and Millennium\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [28 x i8] c"nftl.alias=block-major-93-*\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nftl\00", [27 x i8] zeroinitializer }, align 32
@nftl_readblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unknown status for block %ld in EUN %d: %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nftl_readblock\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mtd/nftlcore.c\00", [41 x i8] zeroinitializer }, align 32
@nftl_readblock._entry_ptr = internal global ptr @nftl_readblock._entry, section ".printk_index", align 4
@nftl_readblock._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014Infinite loop in Virtual Unit Chain 0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@nftl_readblock._entry_ptr.6 = internal global ptr @nftl_readblock._entry.4, section ".printk_index", align 4
@nftl_writeblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014NFTL_writeblock(): Cannot find block to write to\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nftl_writeblock\00", [16 x i8] zeroinitializer }, align 32
@nftl_writeblock._entry_ptr = internal global ptr @nftl_writeblock._entry, section ".printk_index", align 4
@NFTL_findwriteunit.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NFTL_findwriteunit\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Status of block %d in EUN %d is %x\0A\00", [60 x i8] zeroinitializer }, align 32
@NFTL_findwriteunit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014Infinite loop in Virtual Unit Chain 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@NFTL_findwriteunit._entry_ptr = internal global ptr @NFTL_findwriteunit._entry, section ".printk_index", align 4
@NFTL_findwriteunit.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.12, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Using desperate==1 to find free EUN to accommodate write to VUC %d\0A\00", [60 x i8] zeroinitializer }, align 32
@NFTL_findwriteunit._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014Cannot make free space.\0A\00", [37 x i8] zeroinitializer }, align 32
@NFTL_findwriteunit._entry_ptr.15 = internal global ptr @NFTL_findwriteunit._entry.13, section ".printk_index", align 4
@NFTL_findwriteunit._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.3, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014Error folding to make room for Virtual Unit Chain 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@NFTL_findwriteunit._entry_ptr.18 = internal global ptr @NFTL_findwriteunit._entry.16, section ".printk_index", align 4
@NFTL_findfreeblock.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NFTL_findfreeblock\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"NFTL_findfreeblock: there are too few free EUNs\0A\00", [47 x i8] zeroinitializer }, align 32
@NFTL_findfreeblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Argh! No free blocks found! LastFreeEUN = %d, FirstEUN = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@NFTL_findfreeblock._entry_ptr = internal global ptr @NFTL_findfreeblock._entry, section ".printk_index", align 4
@NFTL_makefreeblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Endless loop in Virtual Chain %d: Unit %x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NFTL_makefreeblock\00", [45 x i8] zeroinitializer }, align 32
@NFTL_makefreeblock._entry_ptr = internal global ptr @NFTL_makefreeblock._entry, section ".printk_index", align 4
@NFTL_makefreeblock._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014No Virtual Unit Chains available for folding. Failing request\0A\00", [63 x i8] zeroinitializer }, align 32
@NFTL_makefreeblock._entry_ptr.26 = internal global ptr @NFTL_makefreeblock._entry.24, section ".printk_index", align 4
@NFTL_foldchain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014Trying to fold non-existent Virtual Unit Chain %d!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NFTL_foldchain\00", [17 x i8] zeroinitializer }, align 32
@NFTL_foldchain._entry_ptr = internal global ptr @NFTL_foldchain._entry, section ".printk_index", align 4
@NFTL_foldchain.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Write Inhibited on EUN %d\0A\00", [37 x i8] zeroinitializer }, align 32
@NFTL_foldchain._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.3, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014SECTOR_USED found after SECTOR_FREE in Virtual Unit Chain %d for block %d\0A\00", [51 x i8] zeroinitializer }, align 32
@NFTL_foldchain._entry_ptr.32 = internal global ptr @NFTL_foldchain._entry.30, section ".printk_index", align 4
@NFTL_foldchain._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.3, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014SECTOR_DELETED found after SECTOR_FREE in Virtual Unit Chain %d for block %d\0A\00", [48 x i8] zeroinitializer }, align 32
@NFTL_foldchain._entry_ptr.35 = internal global ptr @NFTL_foldchain._entry.33, section ".printk_index", align 4
@NFTL_foldchain._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.3, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unknown status for block %d in EUN %d: %x\0A\00", [53 x i8] zeroinitializer }, align 32
@NFTL_foldchain._entry_ptr.38 = internal global ptr @NFTL_foldchain._entry.36, section ".printk_index", align 4
@NFTL_foldchain._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.28, ptr @.str.3, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@NFTL_foldchain._entry_ptr.40 = internal global ptr @NFTL_foldchain._entry.39, section ".printk_index", align 4
@NFTL_foldchain.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.41, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Setting inplace to 0. VUC %d, block %d was %x lastEUN, and is in EUN %d (%s) %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"!=\00", [29 x i8] zeroinitializer }, align 32
@NFTL_foldchain.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.44, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Pending write not free in EUN %d. Folding out of place.\0A\00", [39 x i8] zeroinitializer }, align 32
@NFTL_foldchain.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.45, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Cannot fold Virtual Unit Chain %d in place. Trying out-of-place\0A\00", [63 x i8] zeroinitializer }, align 32
@NFTL_foldchain._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.28, ptr @.str.3, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014NFTL_findfreeblock(desperate) returns 0xffff.\0A\00", [47 x i8] zeroinitializer }, align 32
@NFTL_foldchain._entry_ptr.48 = internal global ptr @NFTL_foldchain._entry.46, section ".printk_index", align 4
@NFTL_foldchain.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.49, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Folding chain %d into unit %d\0A\00", [33 x i8] zeroinitializer }, align 32
@NFTL_foldchain._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.28, ptr @.str.3, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error went away on retry.\0A\00", [37 x i8] zeroinitializer }, align 32
@NFTL_foldchain._entry_ptr.52 = internal global ptr @NFTL_foldchain._entry.50, section ".printk_index", align 4
@NFTL_foldchain.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.53, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Want to erase\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DiskOnChip\00", [21 x i8] zeroinitializer }, align 32
@nftl_add_mtd.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nftl_add_mtd\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFTL: add_mtd for %s\0A\00", [42 x i8] zeroinitializer }, align 32
@nftl_add_mtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014NFTL: could not mount device\0A\00", [32 x i8] zeroinitializer }, align 32
@nftl_add_mtd._entry_ptr = internal global ptr @nftl_add_mtd._entry, section ".printk_index", align 4
@nftl_add_mtd._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.3, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014NFTL: cannot calculate a geometry to match size of 0x%lx.\0A\00", [35 x i8] zeroinitializer }, align 32
@nftl_add_mtd._entry_ptr.60 = internal global ptr @nftl_add_mtd._entry.58, section ".printk_index", align 4
@nftl_add_mtd._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.3, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014NFTL: using C:%d H:%d S:%d (== 0x%lx sects)\0A\00", [49 x i8] zeroinitializer }, align 32
@nftl_add_mtd._entry_ptr.63 = internal global ptr @nftl_add_mtd._entry.61, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nftl_remove_dev.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nftl_remove_dev\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NFTL: remove_dev (i=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 17, i64 85, i64 255]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 17, i64 85, i64 255]
@___asan_gen_.68 = private unnamed_addr constant [8 x i8] c"nftl_tr\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 784, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 785, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 737, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 743, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 685, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 555, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 573, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 608, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 618, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 668, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 201, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 221, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 492, i32 5 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 511, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 251, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 272, i32 6 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 293, i32 6 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 302, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 311, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 317, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 337, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 353, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 360, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 371, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 390, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 418, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 442, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 43, i32 24 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 46, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 59, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 89, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 91, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [26 x i8] c"../drivers/mtd/nftlcore.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 113, i32 2 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @NFTL_findfreeblock._entry, ptr @NFTL_findfreeblock._entry_ptr, ptr @NFTL_findwriteunit._entry, ptr @NFTL_findwriteunit._entry.13, ptr @NFTL_findwriteunit._entry.16, ptr @NFTL_findwriteunit._entry_ptr, ptr @NFTL_findwriteunit._entry_ptr.15, ptr @NFTL_findwriteunit._entry_ptr.18, ptr @NFTL_foldchain._entry, ptr @NFTL_foldchain._entry.30, ptr @NFTL_foldchain._entry.33, ptr @NFTL_foldchain._entry.36, ptr @NFTL_foldchain._entry.39, ptr @NFTL_foldchain._entry.46, ptr @NFTL_foldchain._entry.50, ptr @NFTL_foldchain._entry_ptr, ptr @NFTL_foldchain._entry_ptr.32, ptr @NFTL_foldchain._entry_ptr.35, ptr @NFTL_foldchain._entry_ptr.38, ptr @NFTL_foldchain._entry_ptr.40, ptr @NFTL_foldchain._entry_ptr.48, ptr @NFTL_foldchain._entry_ptr.52, ptr @NFTL_makefreeblock._entry, ptr @NFTL_makefreeblock._entry.24, ptr @NFTL_makefreeblock._entry_ptr, ptr @NFTL_makefreeblock._entry_ptr.26, ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_nftl_tr_exit, ptr @__initcall__kmod_nftl__291_799_nftl_tr_init6, ptr @nftl_add_mtd._entry, ptr @nftl_add_mtd._entry.58, ptr @nftl_add_mtd._entry.61, ptr @nftl_add_mtd._entry_ptr, ptr @nftl_add_mtd._entry_ptr.60, ptr @nftl_add_mtd._entry_ptr.63, ptr @nftl_readblock._entry, ptr @nftl_readblock._entry.4, ptr @nftl_readblock._entry_ptr, ptr @nftl_readblock._entry_ptr.6, ptr @nftl_tr_exit, ptr @nftl_writeblock._entry, ptr @nftl_writeblock._entry_ptr, ptr @nftl_tr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_tr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_readblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_readblock._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_writeblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_findwriteunit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_findwriteunit._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_findwriteunit._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_findfreeblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_makefreeblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_makefreeblock._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_foldchain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_foldchain._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_foldchain._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_foldchain._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_foldchain._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_foldchain._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NFTL_foldchain._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_add_mtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_add_mtd._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nftl_add_mtd._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nftl_read_oob(ptr noundef %mtd, i64 noundef %offs, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %sub = add i32 %1, -1
  %conv = zext i32 %sub to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %7 = getelementptr inbounds i8, ptr %ops, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ops, align 4
  %10 = trunc i64 %offs to i32
  %conv1 = and i32 %sub, %10
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv1, ptr %4, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %2, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %6, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %neg = xor i64 %conv, -1
  %and2 = and i64 %neg, %offs
  %call = call i32 @mtd_read_oob(ptr noundef %mtd, i64 noundef %and2, ptr noundef nonnull %ops) #10
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %17 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nftl_write_oob(ptr noundef %mtd, i64 noundef %offs, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %sub = add i32 %1, -1
  %conv = zext i32 %sub to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %7 = getelementptr inbounds i8, ptr %ops, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ops, align 4
  %10 = trunc i64 %offs to i32
  %conv1 = and i32 %sub, %10
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv1, ptr %4, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %2, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %6, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %neg = xor i64 %conv, -1
  %and2 = and i64 %neg, %offs
  %call = call i32 @mtd_write_oob(ptr noundef %mtd, i64 noundef %and2, ptr noundef nonnull %ops) #10
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %17 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nftl_tr_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_mtd_blktrans(ptr noundef nonnull @nftl_tr) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nftl_tr_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @deregister_mtd_blktrans(ptr noundef nonnull @nftl_tr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @deregister_mtd_blktrans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_mtd_blktrans(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nftl_readblock(ptr nocapture noundef readonly %mbd, i32 noundef %block, ptr noundef %buffer) #0 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %bci = alloca %struct.nftl_bci, align 8
  %retlen44 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd2 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %mbd, i32 0, i32 2
  %0 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd2, align 4
  %EUNtable = getelementptr inbounds %struct.NFTLrecord, ptr %mbd, i32 0, i32 16
  %2 = ptrtoint ptr %EUNtable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %EUNtable, align 4
  %EraseSize = getelementptr inbounds %struct.NFTLrecord, ptr %mbd, i32 0, i32 3
  %4 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %EraseSize, align 4
  %div86 = lshr i32 %5, 9
  %div3 = udiv i32 %block, %div86
  %arrayidx = getelementptr i16, ptr %3, i32 %div3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %mul = shl i32 %block, 9
  %sub = add i32 %5, -1
  %and = and i32 %sub, %mul
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bci) #10
  %8 = getelementptr inbounds %struct.nftl_bci, ptr %bci, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nftl_bci, ptr %bci, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.not = icmp eq i16 %7, -1
  %10 = ptrtoint ptr %bci to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %bci, align 8
  br i1 %cmp.not, label %entry.if.then37_crit_edge, label %while.cond.preheader

entry.if.then37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

while.cond.preheader:                             ; preds = %entry
  %nb_blocks = getelementptr inbounds %struct.NFTLrecord, ptr %mbd, i32 0, i32 18
  %conv695 = zext i16 %7 to i32
  %11 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv695)
  %cmp796 = icmp ugt i32 %12, %conv695
  br i1 %cmp796, label %while.body.lr.ph, label %while.cond.preheader.if.then37_crit_edge

while.cond.preheader.if.then37_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %17 = getelementptr inbounds i8, ptr %ops.i, i32 4
  %ReplUnitTable = getelementptr inbounds %struct.NFTLrecord, ptr %mbd, i32 0, i32 17
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.body.lr.ph
  %conv6100 = phi i32 [ %conv695, %while.body.lr.ph ], [ %conv6, %if.end31.while.body_crit_edge ]
  %silly.099 = phi i32 [ 10000, %while.body.lr.ph ], [ %dec, %if.end31.while.body_crit_edge ]
  %thisEUN.098 = phi i16 [ %7, %while.body.lr.ph ], [ %38, %if.end31.while.body_crit_edge ]
  %lastgoodEUN.097 = phi i16 [ -1, %while.body.lr.ph ], [ %lastgoodEUN.1, %if.end31.while.body_crit_edge ]
  %18 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %EraseSize, align 4
  %mul11 = mul i32 %19, %conv6100
  %add = add i32 %mul11, %and
  %conv12 = zext i32 %add to i64
  %20 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %writesize.i, align 4
  %sub.i = add i32 %21, -1
  %conv.i = zext i32 %sub.i to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %22 = call ptr @memset(ptr %17, i32 255, i32 16)
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ops.i, align 4
  %conv1.i = and i32 %sub.i, %add
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv1.i, ptr %14, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %13, align 4
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %bci, ptr %16, align 4
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %15, align 4
  %neg.i = xor i64 %conv.i, -1
  %and2.i = and i64 %neg.i, %conv12
  %call.i = call i32 @mtd_read_oob(ptr noundef %1, i64 noundef %and2.i, ptr noundef nonnull %ops.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13 = icmp slt i32 %call.i, 0
  br i1 %cmp13, label %while.body.sw.epilog_crit_edge, label %if.end

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end:                                           ; preds = %while.body
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 2
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %9, align 1
  %or87 = or i8 %31, %29
  %32 = zext i8 %or87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %or87, label %do.end [
    i8 -1, label %if.end.the_end_crit_edge
    i8 0, label %sw.bb18
    i8 85, label %sw.bb19
    i8 17, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.the_end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %the_end

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or = zext i8 %or87 to i32
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %block, i32 noundef %conv6100, i32 noundef %or) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb19, %sw.bb18, %if.end.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge
  %lastgoodEUN.1 = phi i16 [ %lastgoodEUN.097, %do.end ], [ %lastgoodEUN.097, %if.end.sw.epilog_crit_edge ], [ %thisEUN.098, %sw.bb19 ], [ -1, %sw.bb18 ], [ %lastgoodEUN.097, %while.body.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.099)
  %tobool.not = icmp eq i32 %silly.099, 0
  br i1 %tobool.not, label %do.end25, label %if.end31

do.end25:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %EraseSize, align 4
  %div2888 = lshr i32 %34, 9
  %div29 = udiv i32 %block, %div2888
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %div29) #13
  br label %cleanup55

if.end31:                                         ; preds = %sw.epilog
  %dec = add nsw i32 %silly.099, -1
  %35 = ptrtoint ptr %ReplUnitTable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ReplUnitTable, align 8
  %arrayidx32 = getelementptr i16, ptr %36, i32 %conv6100
  %37 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx32, align 2
  %conv6 = zext i16 %38 to i32
  %39 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nb_blocks, align 4
  %cmp7 = icmp ugt i32 %40, %conv6
  br i1 %cmp7, label %if.end31.while.body_crit_edge, label %if.end31.the_end_crit_edge

if.end31.the_end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %the_end

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

the_end:                                          ; preds = %if.end31.the_end_crit_edge, %if.end.the_end_crit_edge
  %lastgoodEUN.0.lcssa = phi i16 [ %lastgoodEUN.097, %if.end.the_end_crit_edge ], [ %lastgoodEUN.1, %if.end31.the_end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %lastgoodEUN.0.lcssa)
  %cmp35 = icmp eq i16 %lastgoodEUN.0.lcssa, -1
  br i1 %cmp35, label %the_end.if.then37_crit_edge, label %if.else38

the_end.if.then37_crit_edge:                      ; preds = %the_end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

if.then37:                                        ; preds = %the_end.if.then37_crit_edge, %while.cond.preheader.if.then37_crit_edge, %entry.if.then37_crit_edge
  %41 = call ptr @memset(ptr %buffer, i32 0, i32 512)
  br label %cleanup55

if.else38:                                        ; preds = %the_end
  call void @__sanitizer_cov_trace_pc() #12
  %conv34 = zext i16 %lastgoodEUN.0.lcssa to i32
  %42 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %EraseSize, align 4
  %mul41 = mul i32 %43, %conv34
  %add42 = add i32 %mul41, %and
  %conv43 = zext i32 %add42 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen44) #10
  %44 = ptrtoint ptr %retlen44 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %retlen44, align 4, !annotation !146
  %call45 = call i32 @mtd_read(ptr noundef %1, i64 noundef %conv43, i32 noundef 512, ptr noundef nonnull %retlen44, ptr noundef %buffer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call45)
  %cmp46 = icmp sgt i32 %call45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call45)
  %cmp.i.not = icmp eq i32 %call45, -117
  %or.cond = or i1 %cmp46, %cmp.i.not
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen44) #10
  %. = select i1 %or.cond, i32 0, i32 -5
  br label %cleanup55

cleanup55:                                        ; preds = %if.else38, %if.then37, %do.end25
  %retval.1 = phi i32 [ 1, %do.end25 ], [ 0, %if.then37 ], [ %., %if.else38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bci) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nftl_writeblock(ptr noundef %mbd, i32 noundef %block, ptr noundef %buffer) #0 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %oob = alloca %struct.nftl_oob, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %EraseSize = getelementptr inbounds %struct.NFTLrecord, ptr %mbd, i32 0, i32 3
  %0 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %EraseSize, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #10
  %call = tail call fastcc zeroext i16 @NFTL_findwriteunit(ptr noundef %mbd, i32 noundef %block)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call)
  %cmp = icmp eq i16 %call, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.nftl_bci, ptr %oob, i32 0, i32 2
  %3 = getelementptr inbounds %struct.nftl_bci, ptr %oob, i32 0, i32 1
  %conv = zext i16 %call to i32
  %mul = shl i32 %block, 9
  %sub = add i32 %1, -1
  %and = and i32 %sub, %mul
  %4 = call ptr @memset(ptr %oob, i32 255, i32 16)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 85, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 85, ptr %3, align 1
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %mbd, i32 0, i32 2
  %7 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mtd, align 4
  %9 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %EraseSize, align 4
  %mul7 = mul i32 %10, %conv
  %add = add i32 %mul7, %and
  %conv8 = zext i32 %add to i64
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writesize.i, align 4
  %sub.i = add i32 %12, -1
  %conv.i = zext i32 %sub.i to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %17 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %18 = getelementptr inbounds i8, ptr %ops.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 255, i32 12)
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ops.i, align 4
  %conv1.i = and i32 %sub.i, %add
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv1.i, ptr %15, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 6
  %22 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oobsize.i, align 4
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %14, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %oob, ptr %17, align 4
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buffer, ptr %16, align 4
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 512, ptr %13, align 4
  %neg.i = xor i64 %conv.i, -1
  %and3.i = and i64 %neg.i, %conv8
  %call.i = call i32 @mtd_write_oob(ptr noundef %8, i64 noundef %and3.i, ptr noundef nonnull %ops.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nftl_getgeo(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %geo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %heads = getelementptr inbounds %struct.NFTLrecord, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %heads, align 4
  %2 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %geo, align 4
  %sectors = getelementptr inbounds %struct.NFTLrecord, ptr %dev, i32 0, i32 7
  %3 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sectors, align 1
  %sectors2 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %5 = ptrtoint ptr %sectors2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %sectors2, align 1
  %cylinders = getelementptr inbounds %struct.NFTLrecord, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cylinders, align 2
  %cylinders3 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %8 = ptrtoint ptr %cylinders3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %cylinders3, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nftl_add_mtd(ptr noundef %tr, ptr noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mtd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mtd, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 8, label %entry.lor.lhs.false_crit_edge
    i8 4, label %entry.lor.lhs.false_crit_edge163
  ]

entry.lor.lhs.false_crit_edge163:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge163
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %4)
  %cmp = icmp ugt i64 %4, 4294967295
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(10) %6, ptr noundef nonnull dereferenceable(10) @.str.54, i32 10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nftl_add_mtd.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nftl_add_mtd, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !147

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nftl_add_mtd.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.56, ptr noundef %8) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 304) #15
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %do.end.cleanup_crit_edge, label %if.end15

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %mtd16 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %mtd16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mtd, ptr %mtd16, align 4
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %devnum to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %devnum, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tr, ptr %call7.i.i, align 8
  %call20 = tail call i32 @NFTL_mount(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #13
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.end15
  %cylinders = getelementptr inbounds %struct.NFTLrecord, ptr %call7.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1024, ptr %cylinders, align 2
  %heads = getelementptr inbounds %struct.NFTLrecord, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %heads to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %heads, align 4
  %size33 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %size33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size33, align 4
  %div161 = lshr i32 %16, 14
  %conv34 = trunc i32 %div161 to i8
  %sectors = getelementptr inbounds %struct.NFTLrecord, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv34, ptr %sectors, align 1
  %rem = and i32 %16, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool37.not = icmp eq i32 %rem, 0
  br i1 %tobool37.not, label %if.end28.if.end68_crit_edge, label %if.then38

if.end28.if.end68_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then38:                                        ; preds = %if.end28
  %inc = add i8 %conv34, 1
  %18 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %inc, ptr %sectors, align 1
  %conv43 = zext i8 %inc to i32
  %mul44 = shl nuw nsw i32 %conv43, 10
  %.frozen = freeze i32 %16
  %mul44.frozen = freeze i32 %mul44
  %div47 = udiv i32 %.frozen, %mul44.frozen
  %conv48 = trunc i32 %div47 to i8
  %19 = ptrtoint ptr %heads to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv48, ptr %heads, align 4
  %20 = mul i32 %div47, %mul44.frozen
  %rem52.decomposed = sub i32 %.frozen, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem52.decomposed)
  %tobool53.not = icmp eq i32 %rem52.decomposed, 0
  br i1 %tobool53.not, label %if.then38.if.end68_crit_edge, label %if.then54

if.then38.if.end68_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then54:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %inc56 = add i8 %conv48, 1
  %21 = ptrtoint ptr %heads to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %inc56, ptr %heads, align 4
  %conv58 = zext i8 %inc56 to i32
  %mul61 = mul nuw nsw i32 %conv58, %conv43
  %div64 = udiv i32 %16, %mul61
  %conv65 = trunc i32 %div64 to i16
  %22 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv65, ptr %cylinders, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then54, %if.then38.if.end68_crit_edge, %if.end28.if.end68_crit_edge
  %23 = ptrtoint ptr %size33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size33, align 4
  %25 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %heads, align 4
  %conv72 = zext i8 %26 to i32
  %27 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cylinders, align 2
  %conv74 = zext i16 %28 to i32
  %mul75 = mul nuw nsw i32 %conv74, %conv72
  %29 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sectors, align 1
  %conv77 = zext i8 %30 to i32
  %mul78 = mul nuw i32 %mul75, %conv77
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %mul78)
  %cmp79.not = icmp eq i32 %24, %mul78
  br i1 %cmp79.not, label %if.end68.if.end108_crit_edge, label %do.end84

if.end68.if.end108_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

do.end84:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %24) #13
  %31 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cylinders, align 2
  %conv94 = zext i16 %32 to i32
  %33 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %heads, align 4
  %conv96 = zext i8 %34 to i32
  %35 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sectors, align 1
  %conv98 = zext i8 %36 to i32
  %mul103 = mul nuw nsw i32 %conv96, %conv94
  %mul106 = mul nuw i32 %mul103, %conv98
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv94, i32 noundef %conv96, i32 noundef %conv98, i32 noundef %mul106) #13
  br label %if.end108

if.end108:                                        ; preds = %do.end84, %if.end68.if.end108_crit_edge
  %call110 = tail call i32 @add_mtd_blktrans_dev(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end108.cleanup_crit_edge, label %if.then112

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %ReplUnitTable = getelementptr inbounds %struct.NFTLrecord, ptr %call7.i.i, i32 0, i32 17
  %37 = ptrtoint ptr %ReplUnitTable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ReplUnitTable, align 8
  tail call void @kfree(ptr noundef %38) #10
  %EUNtable = getelementptr inbounds %struct.NFTLrecord, ptr %call7.i.i, i32 0, i32 16
  %39 = ptrtoint ptr %EUNtable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %EUNtable, align 4
  tail call void @kfree(ptr noundef %40) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then112, %do.end25
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end108.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nftl_remove_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nftl_remove_dev.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nftl_remove_dev, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %devnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devnum, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nftl_remove_dev.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.65, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @del_mtd_blktrans_dev(ptr noundef %dev) #10
  %ReplUnitTable = getelementptr inbounds %struct.NFTLrecord, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %ReplUnitTable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ReplUnitTable, align 8
  tail call void @kfree(ptr noundef %3) #10
  %EUNtable = getelementptr inbounds %struct.NFTLrecord, ptr %dev, i32 0, i32 16
  %4 = ptrtoint ptr %EUNtable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %EUNtable, align 4
  tail call void @kfree(ptr noundef %5) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @NFTL_findwriteunit(ptr noundef %nftl, i32 noundef %block) unnamed_addr #6 align 64 {
entry:
  %ops.i251 = alloca %struct.mtd_oob_ops, align 4
  %ops.i243 = alloca %struct.mtd_oob_ops, align 4
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %retlen = alloca i32, align 4
  %oob = alloca %struct.nftl_oob, align 1
  %bci = alloca %struct.nftl_bci, align 8
  call void @__sanitizer_cov_trace_pc() #12
  %EraseSize = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 3
  %0 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %EraseSize, align 4
  %div198 = lshr i32 %1, 9
  %div1 = udiv i32 %block, %div198
  %mtd2 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %nftl, i32 0, i32 2
  %2 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd2, align 4
  %mul = shl i32 %block, 9
  %sub = add i32 %1, -1
  %and = and i32 %sub, %mul
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #10
  %4 = getelementptr inbounds %struct.nftl_oob, ptr %oob, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nftl_oob, ptr %oob, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nftl_oob, ptr %oob, i32 0, i32 1, i32 0, i32 2
  %EUNtable = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 16
  %idxprom = and i32 %div1, 65535
  %lastEUN5 = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 10
  %7 = getelementptr inbounds %struct.nftl_bci, ptr %bci, i32 0, i32 1
  %8 = getelementptr inbounds %struct.nftl_bci, ptr %bci, i32 0, i32 2
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 4
  %9 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %11 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %12 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %13 = getelementptr inbounds i8, ptr %ops.i, i32 4
  %ReplUnitTable = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 17
  %LastFreeEUN.i = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 12
  %nb_blocks.i = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 18
  %numfreeEUNs.i = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 11
  %FirstPhysicalEUN.i = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 4, i32 2
  %FormattedSize.i = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 4, i32 3
  %14 = call ptr @memset(ptr %oob, i32 255, i32 16)
  br label %do.body

do.body:                                          ; preds = %do.cond131.do.body_crit_edge, %entry
  %silly2.0 = phi i32 [ 3, %entry ], [ %dec132, %do.cond131.do.body_crit_edge ]
  %15 = ptrtoint ptr %EUNtable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %EUNtable, align 4
  %arrayidx = getelementptr i16, ptr %16, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %19 = ptrtoint ptr %lastEUN5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %lastEUN5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp.not314 = icmp ugt i16 %18, %20
  br i1 %cmp.not314, label %do.body.while.end_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %do.body.while.body_crit_edge
  %writeEUN.0.in316 = phi i16 [ %42, %cleanup.while.body_crit_edge ], [ %18, %do.body.while.body_crit_edge ]
  %silly.0315 = phi i32 [ %dec, %cleanup.while.body_crit_edge ], [ 10000, %do.body.while.body_crit_edge ]
  %writeEUN.0317 = zext i16 %writeEUN.0.in316 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bci) #10
  %21 = ptrtoint ptr %bci to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %bci, align 8
  %22 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %EraseSize, align 4
  %mul11 = mul i32 %23, %writeEUN.0317
  %add = add i32 %mul11, %and
  %conv12 = zext i32 %add to i64
  %24 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %writesize.i, align 4
  %sub.i = add i32 %25, -1
  %conv.i = zext i32 %sub.i to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %26 = call ptr @memset(ptr %13, i32 255, i32 16)
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ops.i, align 4
  %conv1.i = and i32 %sub.i, %add
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv1.i, ptr %10, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %9, align 4
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %bci, ptr %12, align 4
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %11, align 4
  %neg.i = xor i64 %conv.i, -1
  %and2.i = and i64 %neg.i, %conv12
  %call.i = call i32 @mtd_read_oob(ptr noundef %3, i64 noundef %and2.i, ptr noundef nonnull %ops.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @NFTL_findwriteunit.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@NFTL_findwriteunit, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %7, align 2
  %conv17 = zext i8 %33 to i32
  %34 = shl nuw nsw i32 %conv17, 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @NFTL_findwriteunit.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.10, i32 noundef %block, i32 noundef %writeEUN.0317, i32 noundef %34) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %7, align 2
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %8, align 1
  %or199 = or i8 %38, %36
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or199)
  %cond150 = icmp eq i8 %or199, -1
  br i1 %cond150, label %do.end.cleanup.thread_crit_edge, label %sw.epilog

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

sw.epilog:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.0315)
  %tobool24.not = icmp eq i32 %silly.0315, 0
  br i1 %tobool24.not, label %do.end28, label %cleanup

do.end28:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %idxprom) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end28, %do.end.cleanup.thread_crit_edge
  %retval.2.ph = phi i16 [ -1, %do.end28 ], [ %writeEUN.0.in316, %do.end.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bci) #10
  br label %cleanup141

cleanup:                                          ; preds = %sw.epilog
  %dec = add nsw i32 %silly.0315, -1
  %39 = ptrtoint ptr %ReplUnitTable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ReplUnitTable, align 8
  %arrayidx33 = getelementptr i16, ptr %40, i32 %writeEUN.0317
  %41 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx33, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bci) #10
  %43 = ptrtoint ptr %lastEUN5 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %lastEUN5, align 2
  %cmp.not = icmp ugt i16 %42, %44
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.body.while.end_crit_edge
  %lastEUN.0.lcssa = phi i32 [ 65535, %do.body.while.end_crit_edge ], [ %writeEUN.0317, %cleanup.while.end_crit_edge ]
  %.lcssa = phi i16 [ %20, %do.body.while.end_crit_edge ], [ %44, %cleanup.while.end_crit_edge ]
  %45 = ptrtoint ptr %LastFreeEUN.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %LastFreeEUN.i, align 2
  %47 = ptrtoint ptr %numfreeEUNs.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %numfreeEUNs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %48)
  %cmp.i = icmp ult i16 %48, 2
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @NFTL_findfreeblock.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@NFTL_findwriteunit, %if.then5.i)) #10
          to label %NFTL_findfreeblock.exit [label %if.then5.i], !srcloc !147

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @NFTL_findfreeblock.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.20) #10
  br label %if.then41

if.end6.i:                                        ; preds = %while.end
  %49 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nb_blocks.i, align 4
  %51 = ptrtoint ptr %ReplUnitTable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ReplUnitTable, align 8
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.cond35.i.do.body7.i_crit_edge, %if.end6.i
  %silly.0.i = phi i32 [ %50, %if.end6.i ], [ %dec21.i, %do.cond35.i.do.body7.i_crit_edge ]
  %pot.0.i = phi i16 [ %46, %if.end6.i ], [ %pot.1.i, %do.cond35.i.do.body7.i_crit_edge ]
  %idxprom.i = zext i16 %pot.0.i to i32
  %arrayidx.i = getelementptr i16, ptr %52, i32 %idxprom.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %54)
  %cmp9.i = icmp eq i16 %54, -2
  br i1 %cmp9.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %LastFreeEUN.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %pot.0.i, ptr %LastFreeEUN.i, align 2
  %dec.i = add i16 %48, -1
  %56 = ptrtoint ptr %numfreeEUNs.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %dec.i, ptr %numfreeEUNs.i, align 4
  br label %NFTL_findfreeblock.exit

if.end14.i:                                       ; preds = %do.body7.i
  %inc.i = add i16 %pot.0.i, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %.lcssa)
  %cmp17.i = icmp ugt i16 %inc.i, %.lcssa
  br i1 %cmp17.i, label %if.then19.i, label %if.end14.i.if.end20.i_crit_edge

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %FirstPhysicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %FirstPhysicalEUN.i, align 8
  %59 = call i16 @llvm.bswap.i16(i16 %58) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end14.i.if.end20.i_crit_edge
  %pot.1.i = phi i16 [ %59, %if.then19.i ], [ %inc.i, %if.end14.i.if.end20.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.0.i)
  %tobool22.not.i = icmp eq i32 %silly.0.i, 0
  br i1 %tobool22.not.i, label %do.end26.i, label %do.cond35.i

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv29.i = zext i16 %46 to i32
  %60 = ptrtoint ptr %FirstPhysicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %FirstPhysicalEUN.i, align 8
  %62 = call i16 @llvm.bswap.i16(i16 %61) #10
  %conv32.i = zext i16 %62 to i32
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv29.i, i32 noundef %conv32.i) #13
  br label %if.then41

do.cond35.i:                                      ; preds = %if.end20.i
  %dec21.i = add i32 %silly.0.i, -1
  %cmp39.not.i = icmp eq i16 %pot.1.i, %46
  br i1 %cmp39.not.i, label %do.cond35.i.if.then41_crit_edge, label %do.cond35.i.do.body7.i_crit_edge

do.cond35.i.do.body7.i_crit_edge:                 ; preds = %do.cond35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i

do.cond35.i.if.then41_crit_edge:                  ; preds = %do.cond35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

NFTL_findfreeblock.exit:                          ; preds = %if.then11.i, %do.body.i
  %retval.0.i203 = phi i16 [ %pot.0.i, %if.then11.i ], [ -1, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %retval.0.i203)
  %cmp39 = icmp eq i16 %retval.0.i203, -1
  br i1 %cmp39, label %NFTL_findfreeblock.exit.if.then41_crit_edge, label %if.end76

NFTL_findfreeblock.exit.if.then41_crit_edge:      ; preds = %NFTL_findfreeblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.then41:                                        ; preds = %NFTL_findfreeblock.exit.if.then41_crit_edge, %do.cond35.i.if.then41_crit_edge, %do.end26.i, %if.then5.i
  %63 = ptrtoint ptr %FormattedSize.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %FormattedSize.i, align 2
  %65 = call i32 @llvm.bswap.i32(i32 %64) #10
  %66 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %EraseSize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %65)
  %cmp3.not.i = icmp ugt i32 %67, %65
  br i1 %cmp3.not.i, label %if.then41.NFTL_makefreeblock.exit.thread_crit_edge, label %if.then41.for.body.i_crit_edge

if.then41.for.body.i_crit_edge:                   ; preds = %if.then41
  br label %for.body.i

if.then41.NFTL_makefreeblock.exit.thread_crit_edge: ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %NFTL_makefreeblock.exit.thread

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %if.then41.for.body.i_crit_edge
  %conv7.i = phi i32 [ %conv.i209, %while.end.i.for.body.i_crit_edge ], [ 0, %if.then41.for.body.i_crit_edge ]
  %LongestChain.06.i = phi i16 [ %spec.select1.i, %while.end.i.for.body.i_crit_edge ], [ 0, %if.then41.for.body.i_crit_edge ]
  %chain.05.i = phi i16 [ %inc26.i, %while.end.i.for.body.i_crit_edge ], [ 0, %if.then41.for.body.i_crit_edge ]
  %ChainLength.04.i = phi i16 [ %79, %while.end.i.for.body.i_crit_edge ], [ 0, %if.then41.for.body.i_crit_edge ]
  %68 = ptrtoint ptr %EUNtable to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %EUNtable, align 4
  %arrayidx.i206 = getelementptr i16, ptr %69, i32 %conv7.i
  %70 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.i206, align 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %for.body.i
  %thislen.0.i = phi i16 [ 0, %for.body.i ], [ %inc.i207, %if.end.i.while.cond.i_crit_edge ]
  %EUN.0.i = phi i16 [ %71, %for.body.i ], [ %78, %if.end.i.while.cond.i_crit_edge ]
  %72 = ptrtoint ptr %lastEUN5 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %lastEUN5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %EUN.0.i, i16 %73)
  %cmp4.not.i = icmp ugt i16 %EUN.0.i, %73
  br i1 %cmp4.not.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %conv2.i = zext i16 %EUN.0.i to i32
  %inc.i207 = add nuw i16 %thislen.0.i, 1
  %74 = ptrtoint ptr %ReplUnitTable to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ReplUnitTable, align 8
  %arrayidx7.i = getelementptr i16, ptr %75, i32 %conv2.i
  %76 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx7.i, align 2
  %78 = and i16 %77, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %thislen.0.i)
  %cmp11.i = icmp ugt i16 %thislen.0.i, -257
  br i1 %cmp11.i, label %do.end.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv14.i = zext i16 %78 to i32
  %call.i208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv7.i, i32 noundef %conv14.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.body.i.if.end.i_crit_edge
  %cmp16.i = icmp ugt i16 %thislen.0.i, -241
  br i1 %cmp16.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %thislen.1.i = phi i16 [ %thislen.0.i, %while.cond.i.while.end.i_crit_edge ], [ 0, %if.end.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %thislen.1.i, i16 %ChainLength.04.i)
  %cmp22.i = icmp ugt i16 %thislen.1.i, %ChainLength.04.i
  %79 = call i16 @llvm.umax.i16(i16 %thislen.1.i, i16 %ChainLength.04.i) #10
  %spec.select1.i = select i1 %cmp22.i, i16 %chain.05.i, i16 %LongestChain.06.i
  %inc26.i = add i16 %chain.05.i, 1
  %conv.i209 = zext i16 %inc26.i to i32
  %80 = ptrtoint ptr %FormattedSize.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %FormattedSize.i, align 2
  %82 = call i32 @llvm.bswap.i32(i32 %81) #10
  %83 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %EraseSize, align 4
  %div.i = udiv i32 %82, %84
  %cmp.i210 = icmp ugt i32 %div.i, %conv.i209
  br i1 %cmp.i210, label %while.end.i.for.body.i_crit_edge, label %for.end.i

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %79)
  %phi.cmp.i = icmp ult i16 %79, 2
  br i1 %phi.cmp.i, label %for.end.i.NFTL_makefreeblock.exit.thread_crit_edge, label %NFTL_makefreeblock.exit

for.end.i.NFTL_makefreeblock.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %NFTL_makefreeblock.exit.thread

NFTL_makefreeblock.exit.thread:                   ; preds = %for.end.i.NFTL_makefreeblock.exit.thread_crit_edge, %if.then41.NFTL_makefreeblock.exit.thread_crit_edge
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %do.body47

NFTL_makefreeblock.exit:                          ; preds = %for.end.i
  %phi.cast.i = zext i16 %spec.select1.i to i32
  %call38.i = call fastcc zeroext i16 @NFTL_foldchain(ptr noundef %nftl, i32 noundef %phi.cast.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call38.i)
  %cmp44 = icmp eq i16 %call38.i, -1
  br i1 %cmp44, label %NFTL_makefreeblock.exit.do.body47_crit_edge, label %NFTL_makefreeblock.exit.do.cond131_crit_edge

NFTL_makefreeblock.exit.do.cond131_crit_edge:     ; preds = %NFTL_makefreeblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond131

NFTL_makefreeblock.exit.do.body47_crit_edge:      ; preds = %NFTL_makefreeblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body47

do.body47:                                        ; preds = %NFTL_makefreeblock.exit.do.body47_crit_edge, %NFTL_makefreeblock.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @NFTL_findwriteunit.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@NFTL_findwriteunit, %if.then59)) #10
          to label %do.end63 [label %if.then59], !srcloc !147

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @NFTL_findwriteunit.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.12, i32 noundef %idxprom) #10
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body47
  %85 = ptrtoint ptr %LastFreeEUN.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %LastFreeEUN.i, align 2
  %87 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nb_blocks.i, align 4
  %89 = ptrtoint ptr %ReplUnitTable to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ReplUnitTable, align 8
  br label %do.body7.i223

do.body7.i223:                                    ; preds = %do.cond35.i240.do.body7.i223_crit_edge, %do.end63
  %silly.0.i218 = phi i32 [ %88, %do.end63 ], [ %dec21.i238, %do.cond35.i240.do.body7.i223_crit_edge ]
  %pot.0.i219 = phi i16 [ %86, %do.end63 ], [ %pot.1.i231, %do.cond35.i240.do.body7.i223_crit_edge ]
  %idxprom.i220 = zext i16 %pot.0.i219 to i32
  %arrayidx.i221 = getelementptr i16, ptr %90, i32 %idxprom.i220
  %91 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx.i221, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %92)
  %cmp9.i222 = icmp eq i16 %92, -2
  br i1 %cmp9.i222, label %if.end66, label %if.end14.i229

if.end14.i229:                                    ; preds = %do.body7.i223
  %inc.i227 = add i16 %pot.0.i219, 1
  %93 = ptrtoint ptr %lastEUN5 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %lastEUN5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i227, i16 %94)
  %cmp17.i228 = icmp ugt i16 %inc.i227, %94
  br i1 %cmp17.i228, label %if.then19.i230, label %if.end14.i229.if.end20.i233_crit_edge

if.end14.i229.if.end20.i233_crit_edge:            ; preds = %if.end14.i229
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i233

if.then19.i230:                                   ; preds = %if.end14.i229
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %FirstPhysicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %FirstPhysicalEUN.i, align 8
  %97 = call i16 @llvm.bswap.i16(i16 %96) #10
  br label %if.end20.i233

if.end20.i233:                                    ; preds = %if.then19.i230, %if.end14.i229.if.end20.i233_crit_edge
  %pot.1.i231 = phi i16 [ %97, %if.then19.i230 ], [ %inc.i227, %if.end14.i229.if.end20.i233_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.0.i218)
  %tobool22.not.i232 = icmp eq i32 %silly.0.i218, 0
  br i1 %tobool22.not.i232, label %do.end26.i237, label %do.cond35.i240

do.end26.i237:                                    ; preds = %if.end20.i233
  call void @__sanitizer_cov_trace_pc() #12
  %conv29.i234 = zext i16 %86 to i32
  %98 = ptrtoint ptr %FirstPhysicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %FirstPhysicalEUN.i, align 8
  %100 = call i16 @llvm.bswap.i16(i16 %99) #10
  %conv32.i235 = zext i16 %100 to i32
  %call33.i236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv29.i234, i32 noundef %conv32.i235) #13
  br label %do.end72

do.cond35.i240:                                   ; preds = %if.end20.i233
  %dec21.i238 = add i32 %silly.0.i218, -1
  %cmp39.not.i239 = icmp eq i16 %pot.1.i231, %86
  br i1 %cmp39.not.i239, label %do.cond35.i240.do.end72_crit_edge, label %do.cond35.i240.do.body7.i223_crit_edge

do.cond35.i240.do.body7.i223_crit_edge:           ; preds = %do.cond35.i240
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i223

do.cond35.i240.do.end72_crit_edge:                ; preds = %do.cond35.i240
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

if.end66:                                         ; preds = %do.body7.i223
  %101 = ptrtoint ptr %LastFreeEUN.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %pot.0.i219, ptr %LastFreeEUN.i, align 2
  %102 = ptrtoint ptr %numfreeEUNs.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %numfreeEUNs.i, align 4
  %dec.i225 = add i16 %103, -1
  store i16 %dec.i225, ptr %numfreeEUNs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %pot.0.i219)
  %cmp67 = icmp eq i16 %pot.0.i219, -1
  br i1 %cmp67, label %if.end66.do.end72_crit_edge, label %if.end66.do.cond131_crit_edge

if.end66.do.cond131_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond131

if.end66.do.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

do.end72:                                         ; preds = %if.end66.do.end72_crit_edge, %do.cond35.i240.do.end72_crit_edge, %do.end26.i237
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup141

if.end76:                                         ; preds = %NFTL_findfreeblock.exit
  %conv38.le = zext i16 %retval.0.i203 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %lastEUN.0.lcssa)
  %cmp78.not = icmp eq i32 %lastEUN.0.lcssa, 65535
  br i1 %cmp78.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %or82 = or i32 %idxprom, 32768
  br label %if.end88

if.else:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %EUNtable to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %EUNtable, align 4
  %arrayidx87 = getelementptr i16, ptr %105, i32 %idxprom
  %106 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %retval.0.i203, ptr %arrayidx87, align 2
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.then80
  %thisVUC.0.in = phi i32 [ %or82, %if.then80 ], [ %div1, %if.else ]
  %thisVUC.0 = trunc i32 %thisVUC.0.in to i16
  %107 = ptrtoint ptr %ReplUnitTable to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ReplUnitTable, align 8
  %arrayidx90 = getelementptr i16, ptr %108, i32 %conv38.le
  %109 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 -1, ptr %arrayidx90, align 2
  %110 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %EraseSize, align 4
  %mul92 = mul i32 %111, %conv38.le
  %add93 = add i32 %mul92, 8
  %conv94 = zext i32 %add93 to i64
  %112 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %writesize.i, align 4
  %sub.i245 = add i32 %113, -1
  %conv.i246 = zext i32 %sub.i245 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i243) #10
  %114 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i243, i32 0, i32 3
  %115 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i243, i32 0, i32 4
  %116 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i243, i32 0, i32 5
  %117 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i243, i32 0, i32 6
  %118 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i243, i32 0, i32 7
  %119 = getelementptr inbounds i8, ptr %ops.i243, i32 4
  %120 = call ptr @memset(ptr %119, i32 255, i32 16)
  %121 = ptrtoint ptr %ops.i243 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %ops.i243, align 4
  %conv1.i247 = and i32 %sub.i245, %add93
  %122 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv1.i247, ptr %116, align 4
  %123 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 8, ptr %114, align 4
  %124 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %4, ptr %118, align 4
  %125 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %117, align 4
  %neg.i248 = xor i64 %conv.i246, -1
  %and2.i249 = and i64 %neg.i248, %conv94
  %call.i250 = call i32 @mtd_read_oob(ptr noundef %3, i64 noundef %and2.i249, ptr noundef nonnull %ops.i243) #10
  %126 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %115, align 4
  %128 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i243) #10
  %129 = call i16 @llvm.bswap.i16(i16 %thisVUC.0)
  %130 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %129, ptr %5, align 1
  %131 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 %129, ptr %4, align 1
  %132 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %EraseSize, align 4
  %mul99 = mul i32 %133, %conv38.le
  %add100 = add i32 %mul99, 8
  %conv101 = zext i32 %add100 to i64
  %134 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %writesize.i, align 4
  %sub.i253 = add i32 %135, -1
  %conv.i254 = zext i32 %sub.i253 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i251) #10
  %136 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i251, i32 0, i32 3
  %137 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i251, i32 0, i32 5
  %138 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i251, i32 0, i32 6
  %139 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i251, i32 0, i32 7
  %140 = getelementptr inbounds i8, ptr %ops.i251, i32 4
  %141 = call ptr @memset(ptr %140, i32 255, i32 16)
  %142 = ptrtoint ptr %ops.i251 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %ops.i251, align 4
  %conv1.i255 = and i32 %sub.i253, %add100
  %143 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv1.i255, ptr %137, align 4
  %144 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 8, ptr %136, align 4
  %145 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %4, ptr %139, align 4
  %146 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %138, align 4
  %neg.i256 = xor i64 %conv.i254, -1
  %and2.i257 = and i64 %neg.i256, %conv101
  %call.i258 = call i32 @mtd_write_oob(ptr noundef %3, i64 noundef %and2.i257, ptr noundef nonnull %ops.i251) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i251) #10
  br i1 %cmp78.not, label %if.end88.cleanup141_crit_edge, label %if.then107

if.end88.cleanup141_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup141

if.then107:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %ReplUnitTable to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ReplUnitTable, align 8
  %arrayidx111 = getelementptr i16, ptr %148, i32 %lastEUN.0.lcssa
  %149 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %retval.0.i203, ptr %arrayidx111, align 2
  %150 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %EraseSize, align 4
  %mul114 = mul i32 %151, %lastEUN.0.lcssa
  %add115 = add i32 %mul114, 8
  %conv116 = zext i32 %add115 to i64
  %call118 = call i32 @nftl_read_oob(ptr noundef %3, i64 noundef %conv116, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef %4)
  %152 = call i16 @llvm.bswap.i16(i16 %retval.0.i203)
  %153 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 %152, ptr %6, align 1
  %ReplUnitNum = getelementptr inbounds %struct.nftl_uci0, ptr %4, i32 0, i32 1
  %154 = ptrtoint ptr %ReplUnitNum to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %152, ptr %ReplUnitNum, align 1
  %155 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %EraseSize, align 4
  %mul124 = mul i32 %156, %lastEUN.0.lcssa
  %add125 = add i32 %mul124, 8
  %conv126 = zext i32 %add125 to i64
  %call128 = call i32 @nftl_write_oob(ptr noundef %3, i64 noundef %conv126, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef %4)
  br label %cleanup141

do.cond131:                                       ; preds = %if.end66.do.cond131_crit_edge, %NFTL_makefreeblock.exit.do.cond131_crit_edge
  %dec132 = add nsw i32 %silly2.0, -1
  %tobool133.not = icmp eq i32 %silly2.0, 0
  br i1 %tobool133.not, label %do.end137, label %do.cond131.do.body_crit_edge

do.cond131.do.body_crit_edge:                     ; preds = %do.cond131
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end137:                                        ; preds = %do.cond131
  call void @__sanitizer_cov_trace_pc() #12
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %idxprom) #13
  br label %cleanup141

cleanup141:                                       ; preds = %do.end137, %if.then107, %if.end88.cleanup141_crit_edge, %do.end72, %cleanup.thread
  %retval.3 = phi i16 [ -1, %do.end72 ], [ -1, %do.end137 ], [ %retval.0.i203, %if.then107 ], [ %retval.0.i203, %if.end88.cleanup141_crit_edge ], [ %retval.2.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  ret i16 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @NFTL_foldchain(ptr noundef %nftl, i32 noundef %thisVUC) unnamed_addr #0 align 64 {
entry:
  %ops.i42 = alloca %struct.mtd_oob_ops, align 4
  %ops.i35 = alloca %struct.mtd_oob_ops, align 4
  %ops.i26 = alloca %struct.mtd_oob_ops, align 4
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %BlockMap = alloca [64 x i16], align 2
  %BlockLastState = alloca [64 x i8], align 1
  %BlockFreeFound = alloca [64 x i8], align 1
  %oob = alloca %struct.nftl_oob, align 1
  %retlen = alloca i32, align 4
  %movebuf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %nftl, i32 0, i32 2
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %BlockMap) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %BlockLastState) #10
  %2 = call ptr @memset(ptr %BlockLastState, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %BlockFreeFound) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #10
  %3 = getelementptr inbounds %struct.nftl_bci, ptr %oob, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nftl_bci, ptr %oob, i32 0, i32 2
  %5 = getelementptr inbounds %struct.nftl_oob, ptr %oob, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nftl_oob, ptr %oob, i32 0, i32 1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nftl_oob, ptr %oob, i32 0, i32 1, i32 0, i32 2
  %8 = call ptr @memset(ptr %oob, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %9 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %retlen, align 4, !annotation !146
  %10 = call ptr @memset(ptr %BlockMap, i32 255, i32 128)
  %11 = call ptr @memset(ptr %BlockFreeFound, i32 0, i32 64)
  %EUNtable = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 16
  %12 = ptrtoint ptr %EUNtable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %EUNtable, align 4
  %arrayidx = getelementptr i16, ptr %13, i32 %thisVUC
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp = icmp eq i16 %15, -1
  br i1 %cmp, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %lastEUN = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 10
  %16 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %lastEUN, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp5.not80 = icmp ugt i16 %15, %17
  br i1 %cmp5.not80, label %while.cond.preheader.for.cond83.preheader_crit_edge, label %for.cond.preheader.lr.ph

while.cond.preheader.for.cond83.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond83.preheader

for.cond.preheader.lr.ph:                         ; preds = %while.cond.preheader
  %EraseSize = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 3
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %18 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %19 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 4
  %20 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %21 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %22 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %23 = getelementptr inbounds i8, ptr %ops.i, i32 4
  %FoldMark1 = getelementptr inbounds %struct.nftl_uci2, ptr %5, i32 0, i32 1
  %ReplUnitTable = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 17
  br label %for.cond.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %thisVUC) #13
  br label %cleanup366

for.cond.preheader:                               ; preds = %cleanup.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %thisEUN.0.in83 = phi i16 [ %15, %for.cond.preheader.lr.ph ], [ %60, %cleanup.for.cond.preheader_crit_edge ]
  %silly.082 = phi i32 [ 10000, %for.cond.preheader.lr.ph ], [ %dec, %cleanup.for.cond.preheader_crit_edge ]
  %inplace.081 = phi i32 [ 1, %for.cond.preheader.lr.ph ], [ %inplace.1.lcssa, %cleanup.for.cond.preheader_crit_edge ]
  %thisEUN.084 = zext i16 %thisEUN.0.in83 to i32
  %24 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %EraseSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %25)
  %cmp775.not = icmp ult i32 %25, 512
  br i1 %cmp775.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %26 = phi i32 [ %56, %for.inc.for.body_crit_edge ], [ %25, %for.cond.preheader.for.body_crit_edge ]
  %block.077 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %inplace.176 = phi i32 [ %inplace.2, %for.inc.for.body_crit_edge ], [ %inplace.081, %for.cond.preheader.for.body_crit_edge ]
  %mul = mul i32 %26, %thisEUN.084
  %mul10 = shl i32 %block.077, 9
  %add = add i32 %mul, %mul10
  %conv11 = zext i32 %add to i64
  %27 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %writesize.i, align 4
  %sub.i = add i32 %28, -1
  %conv.i = zext i32 %sub.i to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %29 = call ptr @memset(ptr %23, i32 255, i32 16)
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ops.i, align 4
  %conv1.i = and i32 %sub.i, %add
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv1.i, ptr %20, align 4
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %18, align 4
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %oob, ptr %22, align 4
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %21, align 4
  %neg.i = xor i64 %conv.i, -1
  %and2.i = and i64 %neg.i, %conv11
  %call.i = call i32 @mtd_read_oob(ptr noundef %1, i64 noundef %and2.i, ptr noundef nonnull %ops.i) #10
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %19, align 4
  %37 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %block.077)
  %cmp13 = icmp eq i32 %block.077, 2
  br i1 %cmp13, label %if.then15, label %for.body.if.end32_crit_edge

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then15:                                        ; preds = %for.body
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %5, align 1
  %40 = ptrtoint ptr %FoldMark1 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %FoldMark1, align 1
  %or7 = or i16 %41, %39
  call void @__sanitizer_cov_trace_const_cmp2(i16 21845, i16 %or7)
  %cmp19 = icmp eq i16 %or7, 21845
  br i1 %cmp19, label %do.body22, label %if.then15.if.end32_crit_edge

if.then15.if.end32_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.body22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @NFTL_foldchain.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@NFTL_foldchain, %if.then27)) #10
          to label %if.end32 [label %if.then27], !srcloc !147

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @NFTL_foldchain.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.29, i32 noundef %thisEUN.084) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %do.body22, %if.then15.if.end32_crit_edge, %for.body.if.end32_crit_edge
  %inplace.2 = phi i32 [ %inplace.176, %for.body.if.end32_crit_edge ], [ 0, %if.then27 ], [ 1, %if.then15.if.end32_crit_edge ], [ 0, %do.body22 ]
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %3, align 1
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %4, align 1
  %or366 = or i8 %45, %43
  %arrayidx38 = getelementptr [64 x i8], ptr %BlockLastState, i32 0, i32 %block.077
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %or366, ptr %arrayidx38, align 1
  %47 = zext i8 %or366 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %or366, label %do.end67 [
    i8 -1, label %sw.bb
    i8 85, label %sw.bb40
    i8 0, label %sw.bb53
    i8 17, label %if.end32.for.inc_crit_edge
  ]

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx39 = getelementptr [64 x i8], ptr %BlockFreeFound, i32 0, i32 %block.077
  %48 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %arrayidx39, align 1
  br label %for.inc

sw.bb40:                                          ; preds = %if.end32
  %arrayidx41 = getelementptr [64 x i8], ptr %BlockFreeFound, i32 0, i32 %block.077
  %49 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool42.not = icmp eq i8 %50, 0
  br i1 %tobool42.not, label %if.then43, label %do.end49

if.then43:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx45 = getelementptr [64 x i16], ptr %BlockMap, i32 0, i32 %block.077
  %51 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %thisEUN.0.in83, ptr %arrayidx45, align 2
  br label %for.inc

do.end49:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %thisVUC, i32 noundef %block.077) #13
  br label %for.inc

sw.bb53:                                          ; preds = %if.end32
  %arrayidx54 = getelementptr [64 x i8], ptr %BlockFreeFound, i32 0, i32 %block.077
  %52 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool55.not = icmp eq i8 %53, 0
  br i1 %tobool55.not, label %if.then56, label %do.end61

if.then56:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx57 = getelementptr [64 x i16], ptr %BlockMap, i32 0, i32 %block.077
  %54 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %arrayidx57, align 2
  br label %for.inc

do.end61:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %thisVUC, i32 noundef %block.077) #13
  br label %for.inc

do.end67:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %or36 = zext i8 %or366 to i32
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %block.077, i32 noundef %thisEUN.084, i32 noundef %or36) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end67, %do.end61, %if.then56, %do.end49, %if.then43, %sw.bb, %if.end32.for.inc_crit_edge
  %inc = add nuw nsw i32 %block.077, 1
  %55 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %EraseSize, align 4
  %div5 = lshr i32 %56, 9
  %cmp7 = icmp ult i32 %inc, %div5
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %inplace.1.lcssa = phi i32 [ %inplace.081, %for.cond.preheader.for.end_crit_edge ], [ %inplace.2, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.082)
  %tobool70.not = icmp eq i32 %silly.082, 0
  br i1 %tobool70.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %thisVUC) #13
  br label %cleanup366

cleanup:                                          ; preds = %for.end
  %dec = add nsw i32 %silly.082, -1
  %57 = ptrtoint ptr %ReplUnitTable to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ReplUnitTable, align 8
  %arrayidx78 = getelementptr i16, ptr %58, i32 %thisEUN.084
  %59 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx78, align 2
  %61 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %lastEUN, align 2
  %cmp5.not = icmp ugt i16 %60, %62
  br i1 %cmp5.not, label %while.end, label %cleanup.for.cond.preheader_crit_edge

cleanup.for.cond.preheader_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inplace.1.lcssa)
  %tobool81.not = icmp eq i32 %inplace.1.lcssa, 0
  br i1 %tobool81.not, label %while.end.do.body172_crit_edge, label %while.end.for.cond83.preheader_crit_edge

while.end.for.cond83.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond83.preheader

while.end.do.body172_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body172

for.cond83.preheader:                             ; preds = %while.end.for.cond83.preheader_crit_edge, %while.cond.preheader.for.cond83.preheader_crit_edge
  %targetEUN.0.lcssa115 = phi i32 [ %thisEUN.084, %while.end.for.cond83.preheader_crit_edge ], [ 65535, %while.cond.preheader.for.cond83.preheader_crit_edge ]
  %EraseSize84 = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 3
  %63 = ptrtoint ptr %EraseSize84 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %EraseSize84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %64)
  %cmp8689.not = icmp ult i32 %64, 512
  br i1 %cmp8689.not, label %for.cond83.preheader.for.end130_crit_edge, label %for.body88.preheader

for.cond83.preheader.for.end130_crit_edge:        ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end130

for.body88.preheader:                             ; preds = %for.cond83.preheader
  %div853 = lshr i32 %64, 9
  br label %for.body88

for.body88:                                       ; preds = %for.inc128.for.body88_crit_edge, %for.body88.preheader
  %block.190 = phi i32 [ %inc129, %for.inc128.for.body88_crit_edge ], [ 0, %for.body88.preheader ]
  %arrayidx89 = getelementptr [64 x i8], ptr %BlockLastState, i32 0, i32 %block.190
  %65 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %cmp91.not = icmp eq i8 %66, -1
  br i1 %cmp91.not, label %for.body88.for.inc128_crit_edge, label %land.lhs.true

for.body88.for.inc128_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc128

land.lhs.true:                                    ; preds = %for.body88
  %arrayidx93 = getelementptr [64 x i16], ptr %BlockMap, i32 0, i32 %block.190
  %67 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx93, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %68)
  %cmp95.not = icmp eq i16 %68, -1
  %conv94 = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %targetEUN.0.lcssa115, i32 %conv94)
  %cmp100.not = icmp eq i32 %targetEUN.0.lcssa115, %conv94
  %or.cond = select i1 %cmp95.not, i1 true, i1 %cmp100.not
  br i1 %or.cond, label %land.lhs.true.for.inc128_crit_edge, label %do.body103

land.lhs.true.for.inc128_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc128

do.body103:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @NFTL_foldchain.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@NFTL_foldchain, %if.then115)) #10
          to label %for.end130 [label %if.then115], !srcloc !147

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  %conv94.le = zext i16 %68 to i32
  %conv117 = zext i8 %66 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @NFTL_foldchain.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.41, i32 noundef %thisVUC, i32 noundef %block.190, i32 noundef %conv117, i32 noundef %conv94.le, ptr noundef nonnull @.str.43, i32 noundef %targetEUN.0.lcssa115) #10
  br label %for.end130

for.inc128:                                       ; preds = %land.lhs.true.for.inc128_crit_edge, %for.body88.for.inc128_crit_edge
  %inc129 = add nuw nsw i32 %block.190, 1
  %exitcond.not = icmp eq i32 %inc129, %div853
  br i1 %exitcond.not, label %for.inc128.for.end130_crit_edge, label %for.inc128.for.body88_crit_edge

for.inc128.for.body88_crit_edge:                  ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body88

for.inc128.for.end130_crit_edge:                  ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end130

for.end130:                                       ; preds = %for.inc128.for.end130_crit_edge, %if.then115, %do.body103, %for.cond83.preheader.for.end130_crit_edge
  %inplace.3 = phi i32 [ 0, %if.then115 ], [ 0, %do.body103 ], [ 1, %for.cond83.preheader.for.end130_crit_edge ], [ 1, %for.inc128.for.end130_crit_edge ]
  %69 = ptrtoint ptr %EraseSize84 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %EraseSize84, align 4
  %div1324 = lshr i32 %70, 9
  %mul133 = mul i32 %div1324, %thisVUC
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %mul133)
  %cmp134 = icmp ult i32 %mul133, 65536
  br i1 %cmp134, label %land.lhs.true136, label %for.end130.if.end169_crit_edge

for.end130.if.end169_crit_edge:                   ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

land.lhs.true136:                                 ; preds = %for.end130
  %add137 = add i32 %thisVUC, 1
  %mul140 = mul i32 %div1324, %add137
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %mul140)
  %cmp141 = icmp ugt i32 %mul140, 65535
  br i1 %cmp141, label %land.lhs.true143, label %land.lhs.true136.if.end169_crit_edge

land.lhs.true136.if.end169_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

land.lhs.true143:                                 ; preds = %land.lhs.true136
  %sub = sub nuw nsw i32 65535, %mul133
  %arrayidx147 = getelementptr [64 x i8], ptr %BlockLastState, i32 0, i32 %sub
  %71 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx147, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp149.not = icmp eq i8 %72, -1
  br i1 %cmp149.not, label %land.lhs.true143.if.end169_crit_edge, label %do.body152

land.lhs.true143.if.end169_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

do.body152:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @NFTL_foldchain.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@NFTL_foldchain, %if.then164)) #10
          to label %if.end169 [label %if.then164], !srcloc !147

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @NFTL_foldchain.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.44, i32 noundef %targetEUN.0.lcssa115) #10
  br label %do.body172

if.end169:                                        ; preds = %do.body152, %land.lhs.true143.if.end169_crit_edge, %land.lhs.true136.if.end169_crit_edge, %for.end130.if.end169_crit_edge
  %inplace.4 = phi i32 [ %inplace.3, %land.lhs.true143.if.end169_crit_edge ], [ %inplace.3, %land.lhs.true136.if.end169_crit_edge ], [ %inplace.3, %for.end130.if.end169_crit_edge ], [ 0, %do.body152 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inplace.4)
  %tobool170.not = icmp eq i32 %inplace.4, 0
  br i1 %tobool170.not, label %if.end169.do.body172_crit_edge, label %if.else199

if.end169.do.body172_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body172

do.body172:                                       ; preds = %if.end169.do.body172_crit_edge, %if.then164, %while.end.do.body172_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @NFTL_foldchain.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@NFTL_foldchain, %if.then184)) #10
          to label %do.end187 [label %if.then184], !srcloc !147

if.then184:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @NFTL_foldchain.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.45, i32 noundef %thisVUC) #10
  br label %do.end187

do.end187:                                        ; preds = %if.then184, %do.body172
  %LastFreeEUN.i = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 12
  %73 = ptrtoint ptr %LastFreeEUN.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %LastFreeEUN.i, align 2
  %nb_blocks.i = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 18
  %75 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nb_blocks.i, align 4
  %ReplUnitTable.i = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 17
  %77 = ptrtoint ptr %ReplUnitTable.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ReplUnitTable.i, align 8
  %FirstPhysicalEUN.i = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 4, i32 2
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.cond35.i.do.body7.i_crit_edge, %do.end187
  %silly.0.i = phi i32 [ %76, %do.end187 ], [ %dec21.i, %do.cond35.i.do.body7.i_crit_edge ]
  %pot.0.i = phi i16 [ %74, %do.end187 ], [ %pot.1.i, %do.cond35.i.do.body7.i_crit_edge ]
  %idxprom.i = zext i16 %pot.0.i to i32
  %arrayidx.i = getelementptr i16, ptr %78, i32 %idxprom.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %80)
  %cmp9.i = icmp eq i16 %80, -2
  br i1 %cmp9.i, label %NFTL_findfreeblock.exit, label %if.end14.i

if.end14.i:                                       ; preds = %do.body7.i
  %inc.i = add i16 %pot.0.i, 1
  %81 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %lastEUN, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %82)
  %cmp17.i = icmp ugt i16 %inc.i, %82
  br i1 %cmp17.i, label %if.then19.i, label %if.end14.i.if.end20.i_crit_edge

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %FirstPhysicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %FirstPhysicalEUN.i, align 8
  %85 = call i16 @llvm.bswap.i16(i16 %84) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end14.i.if.end20.i_crit_edge
  %pot.1.i = phi i16 [ %85, %if.then19.i ], [ %inc.i, %if.end14.i.if.end20.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.0.i)
  %tobool22.not.i = icmp eq i32 %silly.0.i, 0
  br i1 %tobool22.not.i, label %do.end26.i, label %do.cond35.i

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv29.i = zext i16 %74 to i32
  %86 = ptrtoint ptr %FirstPhysicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %FirstPhysicalEUN.i, align 8
  %88 = call i16 @llvm.bswap.i16(i16 %87) #10
  %conv32.i = zext i16 %88 to i32
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv29.i, i32 noundef %conv32.i) #13
  br label %do.end195

do.cond35.i:                                      ; preds = %if.end20.i
  %dec21.i = add i32 %silly.0.i, -1
  %cmp39.not.i = icmp eq i16 %pot.1.i, %74
  br i1 %cmp39.not.i, label %do.cond35.i.do.end195_crit_edge, label %do.cond35.i.do.body7.i_crit_edge

do.cond35.i.do.body7.i_crit_edge:                 ; preds = %do.cond35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i

do.cond35.i.do.end195_crit_edge:                  ; preds = %do.cond35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end195

NFTL_findfreeblock.exit:                          ; preds = %do.body7.i
  %89 = ptrtoint ptr %LastFreeEUN.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %pot.0.i, ptr %LastFreeEUN.i, align 2
  %numfreeEUNs13.i = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 11
  %90 = ptrtoint ptr %numfreeEUNs13.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %numfreeEUNs13.i, align 4
  %dec.i = add i16 %91, -1
  store i16 %dec.i, ptr %numfreeEUNs13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %pot.0.i)
  %cmp190 = icmp eq i16 %pot.0.i, -1
  br i1 %cmp190, label %NFTL_findfreeblock.exit.do.end195_crit_edge, label %NFTL_findfreeblock.exit.do.body213_crit_edge

NFTL_findfreeblock.exit.do.body213_crit_edge:     ; preds = %NFTL_findfreeblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body213

NFTL_findfreeblock.exit.do.end195_crit_edge:      ; preds = %NFTL_findfreeblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end195

do.end195:                                        ; preds = %NFTL_findfreeblock.exit.do.end195_crit_edge, %do.cond35.i.do.end195_crit_edge, %do.end26.i
  %call197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #13
  br label %cleanup366

if.else199:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  %FoldMark1201 = getelementptr inbounds %struct.nftl_uci2, ptr %5, i32 0, i32 1
  %92 = ptrtoint ptr %FoldMark1201 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 21845, ptr %FoldMark1201, align 1
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 21845, ptr %5, align 1
  %94 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 -1, ptr %6, align 1
  %95 = ptrtoint ptr %EraseSize84 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %EraseSize84, align 4
  %mul206 = mul i32 %96, %targetEUN.0.lcssa115
  %add208 = add i32 %mul206, 1032
  %conv209 = zext i32 %add208 to i64
  %writesize.i27 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %97 = ptrtoint ptr %writesize.i27 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %writesize.i27, align 4
  %sub.i28 = add i32 %98, -1
  %conv.i29 = zext i32 %sub.i28 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i26) #10
  %99 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i26, i32 0, i32 3
  %100 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i26, i32 0, i32 4
  %101 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i26, i32 0, i32 5
  %102 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i26, i32 0, i32 6
  %103 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i26, i32 0, i32 7
  %104 = getelementptr inbounds i8, ptr %ops.i26, i32 4
  %105 = call ptr @memset(ptr %104, i32 255, i32 16)
  %106 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %ops.i26, align 4
  %conv1.i30 = and i32 %sub.i28, %add208
  %107 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv1.i30, ptr %101, align 4
  %108 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 8, ptr %99, align 4
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %5, ptr %103, align 4
  %110 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %102, align 4
  %neg.i31 = xor i64 %conv.i29, -1
  %and2.i32 = and i64 %neg.i31, %conv209
  %call.i33 = call i32 @mtd_write_oob(ptr noundef %1, i64 noundef %and2.i32, ptr noundef nonnull %ops.i26) #10
  %111 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %100, align 4
  %113 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i26) #10
  br label %do.body213

do.body213:                                       ; preds = %if.else199, %NFTL_findfreeblock.exit.do.body213_crit_edge
  %targetEUN.1 = phi i32 [ %targetEUN.0.lcssa115, %if.else199 ], [ %idxprom.i, %NFTL_findfreeblock.exit.do.body213_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @NFTL_foldchain.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@NFTL_foldchain, %if.then225)) #10
          to label %do.end228 [label %if.then225], !srcloc !147

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @NFTL_foldchain.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.49, i32 noundef %thisVUC, i32 noundef %targetEUN.1) #10
  br label %do.end228

do.end228:                                        ; preds = %if.then225, %do.body213
  %EraseSize230 = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 3
  %114 = ptrtoint ptr %EraseSize230 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %EraseSize230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %115)
  %cmp23293.not = icmp ult i32 %115, 512
  br i1 %cmp23293.not, label %do.end228.for.end306_crit_edge, label %for.body234.lr.ph

do.end228.for.end306_crit_edge:                   ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end306

for.body234.lr.ph:                                ; preds = %do.end228
  %div231192 = lshr i32 %115, 9
  %116 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i35, i32 0, i32 1
  %117 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i35, i32 0, i32 2
  %118 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i35, i32 0, i32 3
  %119 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i35, i32 0, i32 5
  %120 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i35, i32 0, i32 6
  %121 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i35, i32 0, i32 7
  br label %for.body234

for.body234:                                      ; preds = %cleanup300.for.body234_crit_edge, %for.body234.lr.ph
  %div231196 = phi i32 [ %div231192, %for.body234.lr.ph ], [ %div2311, %cleanup300.for.body234_crit_edge ]
  %122 = phi i32 [ %115, %for.body234.lr.ph ], [ %150, %cleanup300.for.body234_crit_edge ]
  %block.294 = phi i32 [ 0, %for.body234.lr.ph ], [ %inc305, %cleanup300.for.body234_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %movebuf) #10
  %123 = call ptr @memset(ptr %movebuf, i32 255, i32 512)
  %arrayidx235 = getelementptr [64 x i16], ptr %BlockMap, i32 0, i32 %block.294
  %124 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx235, align 2
  %conv236 = zext i16 %125 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %targetEUN.1, i32 %conv236)
  %cmp237 = icmp eq i32 %targetEUN.1, %conv236
  br i1 %cmp237, label %for.body234.cleanup300_crit_edge, label %lor.lhs.false

for.body234.cleanup300_crit_edge:                 ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup300

lor.lhs.false:                                    ; preds = %for.body234
  %mul241 = mul i32 %div231196, %thisVUC
  %add242 = add i32 %mul241, %block.294
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add242)
  %cmp243 = icmp eq i32 %add242, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %125)
  %cmp249 = icmp eq i16 %125, -1
  %or.cond9 = select i1 %cmp243, i1 true, i1 %cmp249
  br i1 %or.cond9, label %lor.lhs.false.cleanup300_crit_edge, label %if.end252

lor.lhs.false.cleanup300_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup300

if.end252:                                        ; preds = %lor.lhs.false
  %mul256 = mul i32 %122, %conv236
  %mul257 = shl i32 %block.294, 9
  %add258 = add i32 %mul256, %mul257
  %conv259 = zext i32 %add258 to i64
  %call261 = call i32 @mtd_read(ptr noundef %1, i64 noundef %conv259, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef nonnull %movebuf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call261)
  %cmp262 = icmp sgt i32 %call261, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call261)
  %cmp.i.not = icmp eq i32 %call261, -117
  %or.cond62 = or i1 %cmp262, %cmp.i.not
  br i1 %or.cond62, label %if.end252.if.end286_crit_edge, label %if.then267

if.end252.if.end286_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end286

if.then267:                                       ; preds = %if.end252
  %126 = ptrtoint ptr %EraseSize230 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %EraseSize230, align 4
  %mul271 = mul i32 %127, %conv236
  %add273 = add i32 %mul271, %mul257
  %conv274 = zext i32 %add273 to i64
  %call276 = call i32 @mtd_read(ptr noundef %1, i64 noundef %conv274, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef nonnull %movebuf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call276)
  %cmp277.not = icmp eq i32 %call276, -5
  br i1 %cmp277.not, label %if.then267.if.end286_crit_edge, label %do.end282

if.then267.if.end286_crit_edge:                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end286

do.end282:                                        ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #12
  %call284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #13
  br label %if.end286

if.end286:                                        ; preds = %do.end282, %if.then267.if.end286_crit_edge, %if.end252.if.end286_crit_edge
  %128 = call ptr @memset(ptr %oob, i32 255, i32 16)
  %129 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 85, ptr %4, align 1
  %130 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 85, ptr %3, align 1
  %131 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mtd1, align 4
  %133 = ptrtoint ptr %EraseSize230 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %EraseSize230, align 4
  %mul294 = mul i32 %134, %targetEUN.1
  %add296 = add i32 %mul294, %mul257
  %conv297 = zext i32 %add296 to i64
  %writesize.i36 = getelementptr inbounds %struct.mtd_info, ptr %132, i32 0, i32 4
  %135 = ptrtoint ptr %writesize.i36 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %writesize.i36, align 4
  %sub.i37 = add i32 %136, -1
  %conv.i38 = zext i32 %sub.i37 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i35) #10
  %137 = call ptr @memset(ptr %117, i32 255, i32 12)
  %138 = ptrtoint ptr %ops.i35 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %ops.i35, align 4
  %conv1.i39 = and i32 %sub.i37, %add296
  %139 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv1.i39, ptr %119, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %132, i32 0, i32 6
  %140 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %oobsize.i, align 4
  %142 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %118, align 4
  %143 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %oob, ptr %121, align 4
  %144 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %movebuf, ptr %120, align 4
  %145 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 512, ptr %116, align 4
  %neg.i40 = xor i64 %conv.i38, -1
  %and3.i = and i64 %neg.i40, %conv297
  %call.i41 = call i32 @mtd_write_oob(ptr noundef %132, i64 noundef %and3.i, ptr noundef nonnull %ops.i35) #10
  %146 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %117, align 4
  %148 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i35) #10
  br label %cleanup300

cleanup300:                                       ; preds = %if.end286, %lor.lhs.false.cleanup300_crit_edge, %for.body234.cleanup300_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %movebuf) #10
  %inc305 = add nuw nsw i32 %block.294, 1
  %149 = ptrtoint ptr %EraseSize230 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %EraseSize230, align 4
  %div2311 = lshr i32 %150, 9
  %cmp232 = icmp ult i32 %inc305, %div2311
  br i1 %cmp232, label %cleanup300.for.body234_crit_edge, label %cleanup300.for.end306_crit_edge

cleanup300.for.end306_crit_edge:                  ; preds = %cleanup300
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end306

cleanup300.for.body234_crit_edge:                 ; preds = %cleanup300
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body234

for.end306:                                       ; preds = %cleanup300.for.end306_crit_edge, %do.end228.for.end306_crit_edge
  %.lcssa = phi i32 [ %115, %do.end228.for.end306_crit_edge ], [ %150, %cleanup300.for.end306_crit_edge ]
  %conv307 = trunc i32 %thisVUC to i16
  %151 = call i16 @llvm.bswap.i16(i16 %conv307)
  %152 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 2)
  store i16 %151, ptr %6, align 1
  %153 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 %151, ptr %5, align 1
  %154 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 -1, ptr %7, align 1
  %ReplUnitNum = getelementptr inbounds %struct.nftl_uci0, ptr %5, i32 0, i32 1
  %155 = ptrtoint ptr %ReplUnitNum to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 -1, ptr %ReplUnitNum, align 1
  %mul313 = mul i32 %.lcssa, %targetEUN.1
  %add314 = add i32 %mul313, 8
  %conv315 = zext i32 %add314 to i64
  %writesize.i43 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %156 = ptrtoint ptr %writesize.i43 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %writesize.i43, align 4
  %sub.i44 = add i32 %157, -1
  %conv.i45 = zext i32 %sub.i44 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i42) #10
  %158 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i42, i32 0, i32 3
  %159 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i42, i32 0, i32 4
  %160 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i42, i32 0, i32 5
  %161 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i42, i32 0, i32 6
  %162 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i42, i32 0, i32 7
  %163 = getelementptr inbounds i8, ptr %ops.i42, i32 4
  %164 = call ptr @memset(ptr %163, i32 255, i32 16)
  %165 = ptrtoint ptr %ops.i42 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %ops.i42, align 4
  %conv1.i46 = and i32 %sub.i44, %add314
  %166 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %conv1.i46, ptr %160, align 4
  %167 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 8, ptr %158, align 4
  %168 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %5, ptr %162, align 4
  %169 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %161, align 4
  %neg.i47 = xor i64 %conv.i45, -1
  %and2.i48 = and i64 %neg.i47, %conv315
  %call.i49 = call i32 @mtd_write_oob(ptr noundef %1, i64 noundef %and2.i48, ptr noundef nonnull %ops.i42) #10
  %170 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %159, align 4
  %172 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i42) #10
  %173 = ptrtoint ptr %EUNtable to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %EUNtable, align 4
  %arrayidx319 = getelementptr i16, ptr %174, i32 %thisVUC
  %175 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %arrayidx319, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @NFTL_foldchain.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@NFTL_foldchain, %if.then333)) #10
          to label %do.end336 [label %if.then333], !srcloc !147

if.then333:                                       ; preds = %for.end306
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @NFTL_foldchain.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.53) #10
  br label %do.end336

do.end336:                                        ; preds = %if.then333, %for.end306
  %thisEUN.298 = zext i16 %176 to i32
  %177 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %lastEUN, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %176, i16 %178)
  %cmp340.not99 = icmp ugt i16 %176, %178
  call void @__sanitizer_cov_trace_cmp4(i32 %targetEUN.1, i32 %thisEUN.298)
  %cmp342.not100 = icmp eq i32 %targetEUN.1, %thisEUN.298
  %or.cond8101 = select i1 %cmp340.not99, i1 true, i1 %cmp342.not100
  br i1 %or.cond8101, label %do.end336.while.end359_crit_edge, label %while.body344.lr.ph

do.end336.while.end359_crit_edge:                 ; preds = %do.end336
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end359

while.body344.lr.ph:                              ; preds = %do.end336
  %ReplUnitTable345 = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 17
  %numfreeEUNs = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 11
  br label %while.body344

while.body344:                                    ; preds = %if.end358.while.body344_crit_edge, %while.body344.lr.ph
  %thisEUN.2102 = phi i32 [ %thisEUN.298, %while.body344.lr.ph ], [ %thisEUN.2, %if.end358.while.body344_crit_edge ]
  %179 = ptrtoint ptr %ReplUnitTable345 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ReplUnitTable345, align 8
  %arrayidx346 = getelementptr i16, ptr %180, i32 %thisEUN.2102
  %181 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %arrayidx346, align 2
  %call348 = call i32 @NFTL_formatblock(ptr noundef %nftl, i32 noundef %thisEUN.2102) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call348)
  %cmp349 = icmp slt i32 %call348, 0
  %183 = ptrtoint ptr %ReplUnitTable345 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ReplUnitTable345, align 8
  %arrayidx353 = getelementptr i16, ptr %184, i32 %thisEUN.2102
  br i1 %cmp349, label %if.then351, label %if.else354

if.then351:                                       ; preds = %while.body344
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 -4, ptr %arrayidx353, align 2
  br label %if.end358

if.else354:                                       ; preds = %while.body344
  call void @__sanitizer_cov_trace_pc() #12
  %186 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 -2, ptr %arrayidx353, align 2
  %187 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %numfreeEUNs, align 4
  %inc357 = add i16 %188, 1
  store i16 %inc357, ptr %numfreeEUNs, align 4
  br label %if.end358

if.end358:                                        ; preds = %if.else354, %if.then351
  %thisEUN.2 = zext i16 %182 to i32
  %189 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %lastEUN, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %182, i16 %190)
  %cmp340.not = icmp ugt i16 %182, %190
  call void @__sanitizer_cov_trace_cmp4(i32 %targetEUN.1, i32 %thisEUN.2)
  %cmp342.not = icmp eq i32 %targetEUN.1, %thisEUN.2
  %or.cond8 = select i1 %cmp340.not, i1 true, i1 %cmp342.not
  br i1 %or.cond8, label %if.end358.while.end359_crit_edge, label %if.end358.while.body344_crit_edge

if.end358.while.body344_crit_edge:                ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body344

if.end358.while.end359_crit_edge:                 ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end359

while.end359:                                     ; preds = %if.end358.while.end359_crit_edge, %do.end336.while.end359_crit_edge
  %ReplUnitTable360 = getelementptr inbounds %struct.NFTLrecord, ptr %nftl, i32 0, i32 17
  %191 = ptrtoint ptr %ReplUnitTable360 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ReplUnitTable360, align 8
  %arrayidx361 = getelementptr i16, ptr %192, i32 %targetEUN.1
  %193 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 -1, ptr %arrayidx361, align 2
  %conv362 = trunc i32 %targetEUN.1 to i16
  %194 = ptrtoint ptr %EUNtable to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %EUNtable, align 4
  %arrayidx364 = getelementptr i16, ptr %195, i32 %thisVUC
  %196 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv362, ptr %arrayidx364, align 2
  br label %cleanup366

cleanup366:                                       ; preds = %while.end359, %do.end195, %cleanup.thread, %do.end
  %retval.2 = phi i16 [ -1, %do.end ], [ %conv362, %while.end359 ], [ -1, %do.end195 ], [ -1, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %BlockFreeFound) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %BlockLastState) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %BlockMap) #10
  ret i16 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @NFTL_formatblock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @NFTL_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_nftl__291_799_nftl_tr_init6, !1, !"__initcall__kmod_nftl__291_799_nftl_tr_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nftlcore.c", i32 799, i32 1}
!2 = !{ptr @__exitcall_nftl_tr_exit, !1, !"__exitcall_nftl_tr_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file292, !4, !"__UNIQUE_ID_file292", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nftlcore.c", i32 801, i32 1}
!5 = !{ptr @__UNIQUE_ID_license293, !4, !"__UNIQUE_ID_license293", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author294, !7, !"__UNIQUE_ID_author294", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nftlcore.c", i32 802, i32 1}
!8 = !{ptr @__UNIQUE_ID_description295, !9, !"__UNIQUE_ID_description295", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nftlcore.c", i32 803, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias296, !11, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nftlcore.c", i32 804, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nftlcore.c", i32 785, i32 11}
!14 = !{ptr @nftl_tr, !15, !"nftl_tr", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nftlcore.c", i32 784, i32 32}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nftlcore.c", i32 737, i32 5}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nftl_readblock._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @nftl_readblock._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nftlcore.c", i32 743, i32 5}
!24 = !{ptr @nftl_readblock._entry.4, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nftl_readblock._entry_ptr.6, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nftlcore.c", i32 685, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nftl_writeblock._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nftl_writeblock._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nftlcore.c", i32 555, i32 4}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @NFTL_findwriteunit.__UNIQUE_ID_ddebug289, !32, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nftlcore.c", i32 573, i32 5}
!37 = !{ptr @NFTL_findwriteunit._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @NFTL_findwriteunit._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nftlcore.c", i32 608, i32 5}
!41 = !{ptr @NFTL_findwriteunit.__UNIQUE_ID_ddebug290, !40, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nftlcore.c", i32 618, i32 5}
!44 = !{ptr @NFTL_findwriteunit._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @NFTL_findwriteunit._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nftlcore.c", i32 668, i32 2}
!48 = !{ptr @NFTL_findwriteunit._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @NFTL_findwriteunit._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nftlcore.c", i32 201, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @NFTL_findfreeblock.__UNIQUE_ID_ddebug282, !51, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nftlcore.c", i32 221, i32 4}
!56 = !{ptr @NFTL_findfreeblock._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @NFTL_findfreeblock._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/nftlcore.c", i32 492, i32 5}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @NFTL_makefreeblock._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @NFTL_makefreeblock._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nftlcore.c", i32 511, i32 3}
!65 = !{ptr @NFTL_makefreeblock._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @NFTL_makefreeblock._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nftlcore.c", i32 251, i32 3}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @NFTL_foldchain._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @NFTL_foldchain._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/nftlcore.c", i32 272, i32 6}
!74 = !{ptr @NFTL_foldchain.__UNIQUE_ID_ddebug283, !73, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nftlcore.c", i32 293, i32 6}
!77 = !{ptr @NFTL_foldchain._entry.30, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @NFTL_foldchain._entry_ptr.32, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nftlcore.c", i32 302, i32 6}
!81 = !{ptr @NFTL_foldchain._entry.33, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @NFTL_foldchain._entry_ptr.35, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/nftlcore.c", i32 311, i32 5}
!85 = !{ptr @NFTL_foldchain._entry.36, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @NFTL_foldchain._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @NFTL_foldchain._entry.39, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nftlcore.c", i32 317, i32 4}
!89 = !{ptr @NFTL_foldchain._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nftlcore.c", i32 337, i32 5}
!92 = !{ptr @NFTL_foldchain.__UNIQUE_ID_ddebug284, !91, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!93 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/nftlcore.c", i32 353, i32 4}
!97 = !{ptr @NFTL_foldchain.__UNIQUE_ID_ddebug285, !96, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nftlcore.c", i32 360, i32 3}
!100 = !{ptr @NFTL_foldchain.__UNIQUE_ID_ddebug286, !99, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/nftlcore.c", i32 371, i32 4}
!103 = !{ptr @NFTL_foldchain._entry.46, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @NFTL_foldchain._entry_ptr.48, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/nftlcore.c", i32 390, i32 2}
!107 = !{ptr @NFTL_foldchain.__UNIQUE_ID_ddebug287, !106, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nftlcore.c", i32 418, i32 5}
!110 = !{ptr @NFTL_foldchain._entry.50, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @NFTL_foldchain._entry_ptr.52, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/nftlcore.c", i32 442, i32 2}
!114 = !{ptr @NFTL_foldchain.__UNIQUE_ID_ddebug288, !113, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/nftlcore.c", i32 43, i32 24}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/nftlcore.c", i32 46, i32 2}
!119 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @nftl_add_mtd.__UNIQUE_ID_ddebug280, !118, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/nftlcore.c", i32 59, i32 3}
!123 = !{ptr @nftl_add_mtd._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @nftl_add_mtd._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/nftlcore.c", i32 89, i32 3}
!127 = !{ptr @nftl_add_mtd._entry.58, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @nftl_add_mtd._entry_ptr.60, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/nftlcore.c", i32 91, i32 3}
!131 = !{ptr @nftl_add_mtd._entry.61, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @nftl_add_mtd._entry_ptr.63, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/nftlcore.c", i32 113, i32 2}
!135 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @nftl_remove_dev.__UNIQUE_ID_ddebug281, !134, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{i64 2148712238, i64 2148712243, i64 2148712256, i64 2148712300, i64 2148712334, i64 2148712355}
