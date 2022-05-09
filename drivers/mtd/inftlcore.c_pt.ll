; ModuleID = '/llk/IR_all_yes/drivers/mtd/inftlcore.c_pt.bc'
source_filename = "../drivers/mtd/inftlcore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
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
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.inftl_bci = type { [6 x i8], i8, i8 }
%struct.INFTLrecord = type { %struct.mtd_blktrans_dev, i16, i32, %struct.INFTLMediaHeader, i32, i8, i8, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, i32, i32, %struct.erase_info }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.INFTLMediaHeader = type { [8 x i8], i32, i32, i32, i32, i32, i32, i32, [4 x %struct.INFTLPartition] }
%struct.INFTLPartition = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.erase_info = type { i64, i64, i64 }
%struct.inftl_oob = type { %struct.inftl_bci, %union.inftl_uci }
%union.inftl_uci = type { %struct.inftl_unithead1 }
%struct.inftl_unithead1 = type { i16, i16, i8, i8, i8, i8 }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.inftl_unithead2 = type { i8, i8, i16, i16, i8, i8 }

@__initcall__kmod_inftl__221_940_inftl_tr_init6 = internal global ptr @inftl_tr_init, section ".initcall6.init", align 4
@inftl_tr = internal global { %struct.mtd_blktrans_ops, [48 x i8] } { %struct.mtd_blktrans_ops { ptr @.str, i32 96, i32 4, i32 512, i32 0, ptr @inftl_readblock, ptr @inftl_writeblock, ptr null, ptr null, ptr @inftl_getgeo, ptr null, ptr null, ptr null, ptr @inftl_add_mtd, ptr @inftl_remove_dev, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, [48 x i8] zeroinitializer }, align 32
@__exitcall_inftl_tr_exit = internal global ptr @inftl_tr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file222 = internal constant [29 x i8] c"inftl.file=drivers/mtd/inftl\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [18 x i8] c"inftl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author224 = internal constant [138 x i8] c"inftl.author=Greg Ungerer <gerg@snapgear.com>, David Woodhouse <dwmw2@infradead.org>, Fabrice Bellard <fabrice.bellard@netgem.com> et al.\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [134 x i8] c"inftl.description=Support code for Inverse Flash Translation Layer, used on M-Systems DiskOnChip 2000, Millennium and Millennium Plus\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inftl\00", [26 x i8] zeroinitializer }, align 32
@inftl_readblock.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inftl_readblock\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mtd/inftlcore.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"INFTL: inftl_readblock(inftl=%p,block=%ld,buffer=%p)\0A\00", [42 x i8] zeroinitializer }, align 32
@inftl_readblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014INFTL: unknown status for block %ld in EUN %d: 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@inftl_readblock._entry_ptr = internal global ptr @inftl_readblock._entry, section ".printk_index", align 4
@inftl_readblock._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014INFTL: infinite loop in Virtual Unit Chain 0x%lx\0A\00", [44 x i8] zeroinitializer }, align 32
@inftl_readblock._entry_ptr.7 = internal global ptr @inftl_readblock._entry.5, section ".printk_index", align 4
@inftl_writeblock.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inftl_writeblock\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"INFTL: inftl_writeblock(inftl=%p,block=%ld,buffer=%p)\0A\00", [41 x i8] zeroinitializer }, align 32
@inftl_writeblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014inftl_writeblock(): cannot find block to write to\0A\00", [43 x i8] zeroinitializer }, align 32
@inftl_writeblock._entry_ptr = internal global ptr @inftl_writeblock._entry, section ".printk_index", align 4
@INFTL_findwriteunit.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INFTL_findwriteunit\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"INFTL: INFTL_findwriteunit(inftl=%p,block=%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@INFTL_findwriteunit.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"INFTL: status of block %d in EUN %d is %x\0A\00", [53 x i8] zeroinitializer }, align 32
@INFTL_findwriteunit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014INFTL: infinite loop in Virtual Unit Chain 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@INFTL_findwriteunit._entry_ptr = internal global ptr @INFTL_findwriteunit._entry, section ".printk_index", align 4
@INFTL_findwriteunit.__UNIQUE_ID_ddebug213 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"INFTL: using desperate==1 to find free EUN to accommodate write to VUC %d\0A\00", [53 x i8] zeroinitializer }, align 32
@INFTL_findwriteunit._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014INFTL: cannot make free space.\0A\00", [62 x i8] zeroinitializer }, align 32
@INFTL_findwriteunit._entry_ptr.18 = internal global ptr @INFTL_findwriteunit._entry.16, section ".printk_index", align 4
@INFTL_findwriteunit._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014INFTL: error folding to make room for Virtual Unit Chain 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@INFTL_findwriteunit._entry_ptr.21 = internal global ptr @INFTL_findwriteunit._entry.19, section ".printk_index", align 4
@INFTL_findfreeblock.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INFTL_findfreeblock\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"INFTL: INFTL_findfreeblock(inftl=%p,desperate=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@INFTL_findfreeblock.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"INFTL: there are too few free EUNs (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@INFTL_findfreeblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014INFTL: no free blocks found!  EUN range = %d - %d\0A\00", [43 x i8] zeroinitializer }, align 32
@INFTL_findfreeblock._entry_ptr = internal global ptr @INFTL_findfreeblock._entry, section ".printk_index", align 4
@INFTL_makefreeblock.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INFTL_makefreeblock\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"INFTL: INFTL_makefreeblock(inftl=%p,pending=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@INFTL_makefreeblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014INFTL: endless loop in Virtual Chain %d: Unit %x\0A\00", [44 x i8] zeroinitializer }, align 32
@INFTL_makefreeblock._entry_ptr = internal global ptr @INFTL_makefreeblock._entry, section ".printk_index", align 4
@INFTL_makefreeblock._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014INFTL: no Virtual Unit Chains available for folding. Failing request\0A\00", [56 x i8] zeroinitializer }, align 32
@INFTL_makefreeblock._entry_ptr.31 = internal global ptr @INFTL_makefreeblock._entry.29, section ".printk_index", align 4
@INFTL_foldchain.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INFTL_foldchain\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"INFTL: INFTL_foldchain(inftl=%p,thisVUC=%d,pending=%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@INFTL_foldchain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014INFTL: trying to fold non-existent Virtual Unit Chain %d!\0A\00", [35 x i8] zeroinitializer }, align 32
@INFTL_foldchain._entry_ptr = internal global ptr @INFTL_foldchain._entry, section ".printk_index", align 4
@INFTL_foldchain._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.32, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014INFTL: unknown status for block %d in EUN %d: %x\0A\00", [44 x i8] zeroinitializer }, align 32
@INFTL_foldchain._entry_ptr.37 = internal global ptr @INFTL_foldchain._entry.35, section ".printk_index", align 4
@INFTL_foldchain._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.32, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@INFTL_foldchain._entry_ptr.39 = internal global ptr @INFTL_foldchain._entry.38, section ".printk_index", align 4
@INFTL_foldchain.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.40, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"INFTL: folding chain %d into unit %d\0A\00", [58 x i8] zeroinitializer }, align 32
@INFTL_foldchain.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.41, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"INFTL: error went away on retry?\0A\00", [62 x i8] zeroinitializer }, align 32
@INFTL_foldchain.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.42, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"INFTL: want to erase virtual chain %d\0A\00", [57 x i8] zeroinitializer }, align 32
@INFTL_deleteblock.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INFTL_deleteblock\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"INFTL: INFTL_deleteblock(inftl=%p,block=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@INFTL_deleteblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014INFTL: unknown status for block %d in EUN %d: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@INFTL_deleteblock._entry_ptr = internal global ptr @INFTL_deleteblock._entry, section ".printk_index", align 4
@INFTL_deleteblock._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.43, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@INFTL_deleteblock._entry_ptr.47 = internal global ptr @INFTL_deleteblock._entry.46, section ".printk_index", align 4
@INFTL_trydeletechain.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INFTL_trydeletechain\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"INFTL: INFTL_trydeletechain(inftl=%p,thisVUC=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@INFTL_trydeletechain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014INFTL: trying to delete non-existent Virtual Unit Chain %d!\0A\00", [33 x i8] zeroinitializer }, align 32
@INFTL_trydeletechain._entry_ptr = internal global ptr @INFTL_trydeletechain._entry, section ".printk_index", align 4
@INFTL_trydeletechain._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.48, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@INFTL_trydeletechain._entry_ptr.52 = internal global ptr @INFTL_trydeletechain._entry.51, section ".printk_index", align 4
@INFTL_trydeletechain._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.48, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@INFTL_trydeletechain._entry_ptr.54 = internal global ptr @INFTL_trydeletechain._entry.53, section ".printk_index", align 4
@INFTL_trydeletechain.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.55, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"INFTL: deleting empty VUC %d\0A\00", [34 x i8] zeroinitializer }, align 32
@INFTL_trydeletechain.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.56, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"INFTL: Empty VUC %d for deletion was already absent\0A\00", [43 x i8] zeroinitializer }, align 32
@INFTL_trydeletechain.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.57, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Deleting EUN %d from VUC %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DiskOnChip\00", [21 x i8] zeroinitializer }, align 32
@inftl_add_mtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"\013INFTL no longer supports the old DiskOnChip drivers loaded via docprobe.\0APlease use the new diskonchip driver under the NAND subsystem.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inftl_add_mtd\00", [18 x i8] zeroinitializer }, align 32
@inftl_add_mtd._entry_ptr = internal global ptr @inftl_add_mtd._entry, section ".printk_index", align 4
@inftl_add_mtd.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INFTL: add_mtd for %s\0A\00", [41 x i8] zeroinitializer }, align 32
@inftl_add_mtd._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.60, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014INFTL: could not mount device\0A\00", [63 x i8] zeroinitializer }, align 32
@inftl_add_mtd._entry_ptr.64 = internal global ptr @inftl_add_mtd._entry.62, section ".printk_index", align 4
@inftl_add_mtd._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.60, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014INFTL: cannot calculate a geometry to match size of 0x%lx.\0A\00", [34 x i8] zeroinitializer }, align 32
@inftl_add_mtd._entry_ptr.67 = internal global ptr @inftl_add_mtd._entry.65, section ".printk_index", align 4
@inftl_add_mtd._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.60, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014INFTL: using C:%d H:%d S:%d (== 0x%lx sects)\0A\00", [48 x i8] zeroinitializer }, align 32
@inftl_add_mtd._entry_ptr.70 = internal global ptr @inftl_add_mtd._entry.68, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@inftl_remove_dev.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inftl_remove_dev\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"INFTL: remove_dev (i=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 17, i64 85, i64 255]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 85, i64 255]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 17, i64 85, i64 255]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 17, i64 85, i64 255]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 17, i64 85, i64 255]
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"inftl_tr\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 927, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 928, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 864, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 884, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 891, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 814, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 826, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 472, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 489, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 511, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 543, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 555, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 617, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 203, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 211, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 227, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 409, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 420, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 439, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 247, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 256, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 290, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 298, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 311, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 345, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 361, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 755, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 775, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 782, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 635, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 643, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 676, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 683, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 699, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 707, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 719, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 43, i32 24 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 47, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 53, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 66, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 96, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 98, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private constant [27 x i8] c"../drivers/mtd/inftlcore.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 121, i32 2 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @INFTL_deleteblock._entry, ptr @INFTL_deleteblock._entry.46, ptr @INFTL_deleteblock._entry_ptr, ptr @INFTL_deleteblock._entry_ptr.47, ptr @INFTL_findfreeblock._entry, ptr @INFTL_findfreeblock._entry_ptr, ptr @INFTL_findwriteunit._entry, ptr @INFTL_findwriteunit._entry.16, ptr @INFTL_findwriteunit._entry.19, ptr @INFTL_findwriteunit._entry_ptr, ptr @INFTL_findwriteunit._entry_ptr.18, ptr @INFTL_findwriteunit._entry_ptr.21, ptr @INFTL_foldchain._entry, ptr @INFTL_foldchain._entry.35, ptr @INFTL_foldchain._entry.38, ptr @INFTL_foldchain._entry_ptr, ptr @INFTL_foldchain._entry_ptr.37, ptr @INFTL_foldchain._entry_ptr.39, ptr @INFTL_makefreeblock._entry, ptr @INFTL_makefreeblock._entry.29, ptr @INFTL_makefreeblock._entry_ptr, ptr @INFTL_makefreeblock._entry_ptr.31, ptr @INFTL_trydeletechain._entry, ptr @INFTL_trydeletechain._entry.51, ptr @INFTL_trydeletechain._entry.53, ptr @INFTL_trydeletechain._entry_ptr, ptr @INFTL_trydeletechain._entry_ptr.52, ptr @INFTL_trydeletechain._entry_ptr.54, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license223, ptr @__exitcall_inftl_tr_exit, ptr @__initcall__kmod_inftl__221_940_inftl_tr_init6, ptr @inftl_add_mtd._entry, ptr @inftl_add_mtd._entry.62, ptr @inftl_add_mtd._entry.65, ptr @inftl_add_mtd._entry.68, ptr @inftl_add_mtd._entry_ptr, ptr @inftl_add_mtd._entry_ptr.64, ptr @inftl_add_mtd._entry_ptr.67, ptr @inftl_add_mtd._entry_ptr.70, ptr @inftl_readblock._entry, ptr @inftl_readblock._entry.5, ptr @inftl_readblock._entry_ptr, ptr @inftl_readblock._entry_ptr.7, ptr @inftl_tr_exit, ptr @inftl_writeblock._entry, ptr @inftl_writeblock._entry_ptr, ptr @inftl_tr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_tr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_readblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_readblock._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_writeblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_findwriteunit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_findwriteunit._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_findwriteunit._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_findfreeblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_makefreeblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_makefreeblock._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_foldchain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_foldchain._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_foldchain._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_deleteblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_deleteblock._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_trydeletechain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_trydeletechain._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_trydeletechain._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_add_mtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_add_mtd._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_add_mtd._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inftl_add_mtd._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inftl_read_oob(ptr noundef %mtd, i64 noundef %offs, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %0 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %5 = getelementptr inbounds i8, ptr %ops, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ops, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %8 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writesize, align 4
  %sub = add i32 %9, -1
  %10 = trunc i64 %offs to i32
  %conv1 = and i32 %sub, %10
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv1, ptr %2, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %0, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %4, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %3, align 4
  %neg = sub i32 0, %9
  %conv4 = zext i32 %neg to i64
  %and5 = and i64 %conv4, %offs
  %call = call i32 @mtd_read_oob(ptr noundef %mtd, i64 noundef %and5, ptr noundef nonnull %ops) #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
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
define dso_local i32 @inftl_write_oob(ptr noundef %mtd, i64 noundef %offs, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #10
  %0 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %5 = getelementptr inbounds i8, ptr %ops, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ops, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %8 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writesize, align 4
  %sub = add i32 %9, -1
  %10 = trunc i64 %offs to i32
  %conv1 = and i32 %sub, %10
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv1, ptr %2, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %0, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %4, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %3, align 4
  %neg = sub i32 0, %9
  %conv4 = zext i32 %neg to i64
  %and5 = and i64 %conv4, %offs
  %call = call i32 @mtd_write_oob(ptr noundef %mtd, i64 noundef %and5, ptr noundef nonnull %ops) #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %17 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @inftl_tr_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_mtd_blktrans(ptr noundef nonnull @inftl_tr) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @inftl_tr_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @deregister_mtd_blktrans(ptr noundef nonnull @inftl_tr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @deregister_mtd_blktrans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_mtd_blktrans(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inftl_readblock(ptr noundef %mbd, i32 noundef %block, ptr noundef %buffer) #0 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %bci = alloca %struct.inftl_bci, align 8
  %retlen42 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %mbd, i32 0, i32 17
  %0 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %VUtable, align 8
  %EraseSize = getelementptr inbounds %struct.INFTLrecord, ptr %mbd, i32 0, i32 2
  %2 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %EraseSize, align 4
  %div89 = lshr i32 %3, 9
  %div1 = udiv i32 %block, %div89
  %arrayidx = getelementptr i16, ptr %1, i32 %div1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %mul = shl i32 %block, 9
  %sub = add i32 %3, -1
  %and = and i32 %sub, %mul
  %mtd4 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %mbd, i32 0, i32 2
  %6 = ptrtoint ptr %mtd4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mtd4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bci) #10
  %8 = getelementptr inbounds %struct.inftl_bci, ptr %bci, i32 0, i32 1
  %9 = getelementptr inbounds %struct.inftl_bci, ptr %bci, i32 0, i32 2
  %10 = ptrtoint ptr %bci to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %bci, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inftl_readblock.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inftl_readblock, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inftl_readblock.__UNIQUE_ID_ddebug220, ptr noundef nonnull @.str.3, ptr noundef %mbd, i32 noundef %block, ptr noundef %buffer) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %mbd, i32 0, i32 18
  %thisEUN.0102 = zext i16 %5 to i32
  %11 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %thisEUN.0102)
  %cmp103 = icmp ugt i32 %12, %thisEUN.0102
  br i1 %cmp103, label %while.body.lr.ph, label %do.end.foundit_crit_edge

do.end.foundit_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %foundit

while.body.lr.ph:                                 ; preds = %do.end
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %17 = getelementptr inbounds i8, ptr %ops.i, i32 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 4
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %mbd, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.body.lr.ph
  %thisEUN.0106 = phi i32 [ %thisEUN.0102, %while.body.lr.ph ], [ %thisEUN.0, %if.end35.while.body_crit_edge ]
  %thisEUN.0.in105 = phi i16 [ %5, %while.body.lr.ph ], [ %38, %if.end35.while.body_crit_edge ]
  %silly.0104 = phi i32 [ 10000, %while.body.lr.ph ], [ %dec, %if.end35.while.body_crit_edge ]
  %18 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %EraseSize, align 4
  %mul9 = mul i32 %19, %thisEUN.0106
  %add = add i32 %mul9, %and
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %20 = call ptr @memset(ptr %17, i32 255, i32 16)
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ops.i, align 4
  %22 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %writesize.i, align 4
  %sub.i = add i32 %23, -1
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
  %neg.i = sub i32 0, %23
  %and5.i97 = and i32 %add, %neg.i
  %and5.i = zext i32 %and5.i97 to i64
  %call.i = call i32 @mtd_read_oob(ptr noundef %7, i64 noundef %and5.i, ptr noundef nonnull %ops.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %while.body.sw.epilog_crit_edge, label %if.end17

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end17:                                         ; preds = %while.body
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 2
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %9, align 1
  %or90 = or i8 %31, %29
  %32 = zext i8 %or90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %or90, label %do.end22 [
    i8 0, label %if.end17.if.then40_crit_edge
    i8 85, label %if.end17.foundit_crit_edge
    i8 -1, label %if.end17.sw.epilog_crit_edge
    i8 17, label %if.end17.sw.epilog_crit_edge138
  ]

if.end17.sw.epilog_crit_edge138:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end17.foundit_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %foundit

if.end17.if.then40_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %or = zext i8 %or90 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %block, i32 noundef %thisEUN.0106, i32 noundef %or) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end22, %if.end17.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge138, %while.body.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.0104)
  %tobool25.not = icmp eq i32 %silly.0104, 0
  br i1 %tobool25.not, label %do.end29, label %if.end35

do.end29:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %EraseSize, align 4
  %div3291 = lshr i32 %34, 9
  %div33 = udiv i32 %block, %div3291
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %div33) #13
  br label %cleanup57

if.end35:                                         ; preds = %sw.epilog
  %dec = add nsw i32 %silly.0104, -1
  %35 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %PUtable, align 4
  %arrayidx36 = getelementptr i16, ptr %36, i32 %thisEUN.0106
  %37 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx36, align 2
  %thisEUN.0 = zext i16 %38 to i32
  %39 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nb_blocks, align 4
  %cmp = icmp ugt i32 %40, %thisEUN.0
  br i1 %cmp, label %if.end35.while.body_crit_edge, label %foundit.loopexit.split.loop.exit

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

foundit.loopexit.split.loop.exit:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %thisEUN.0.le = zext i16 %38 to i32
  br label %foundit

foundit:                                          ; preds = %foundit.loopexit.split.loop.exit, %if.end17.foundit_crit_edge, %do.end.foundit_crit_edge
  %thisEUN.0.in.lcssa = phi i16 [ %5, %do.end.foundit_crit_edge ], [ %38, %foundit.loopexit.split.loop.exit ], [ %thisEUN.0.in105, %if.end17.foundit_crit_edge ]
  %thisEUN.0.lcssa = phi i32 [ %thisEUN.0102, %do.end.foundit_crit_edge ], [ %thisEUN.0.le, %foundit.loopexit.split.loop.exit ], [ %thisEUN.0106, %if.end17.foundit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %thisEUN.0.in.lcssa)
  %cmp38 = icmp eq i16 %thisEUN.0.in.lcssa, -1
  br i1 %cmp38, label %foundit.if.then40_crit_edge, label %if.else41

foundit.if.then40_crit_edge:                      ; preds = %foundit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.then40:                                        ; preds = %foundit.if.then40_crit_edge, %if.end17.if.then40_crit_edge
  %41 = call ptr @memset(ptr %buffer, i32 0, i32 512)
  br label %cleanup57

if.else41:                                        ; preds = %foundit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen42) #10
  %42 = ptrtoint ptr %retlen42 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %retlen42, align 4, !annotation !174
  %43 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %EraseSize, align 4
  %mul44 = mul i32 %44, %thisEUN.0.lcssa
  %add45 = add i32 %mul44, %and
  %conv46 = zext i32 %add45 to i64
  %call47 = call i32 @mtd_read(ptr noundef %7, i64 noundef %conv46, i32 noundef 512, ptr noundef nonnull %retlen42, ptr noundef %buffer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47)
  %cmp48 = icmp sgt i32 %call47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call47)
  %cmp.i.not = icmp eq i32 %call47, -117
  %or.cond = or i1 %cmp48, %cmp.i.not
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen42) #10
  %. = select i1 %or.cond, i32 0, i32 -5
  br label %cleanup57

cleanup57:                                        ; preds = %if.else41, %if.then40, %do.end29
  %retval.1 = phi i32 [ 1, %do.end29 ], [ 0, %if.then40 ], [ %., %if.else41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bci) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inftl_writeblock(ptr noundef %mbd, i32 noundef %block, ptr noundef %buffer) #0 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %oob = alloca %struct.inftl_oob, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %block, 9
  %EraseSize = getelementptr inbounds %struct.INFTLrecord, ptr %mbd, i32 0, i32 2
  %0 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %EraseSize, align 4
  %sub = add i32 %1, -1
  %and = and i32 %sub, %mul
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #10
  %2 = getelementptr inbounds %struct.inftl_bci, ptr %oob, i32 0, i32 1
  %3 = getelementptr inbounds %struct.inftl_bci, ptr %oob, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inftl_writeblock.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inftl_writeblock, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inftl_writeblock.__UNIQUE_ID_ddebug219, ptr noundef nonnull @.str.9, ptr noundef %mbd, i32 noundef %block, ptr noundef %buffer) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %buffer, i32 512
  %cmp50 = icmp ugt ptr %add.ptr, %buffer
  br i1 %cmp50, label %do.end.land.rhs_crit_edge, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %p.051, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %exitcond.not, label %for.cond.if.else_crit_edge, label %for.cond.land.rhs_crit_edge

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.cond.if.else_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %do.end.land.rhs_crit_edge
  %p.051 = phi ptr [ %incdec.ptr, %for.cond.land.rhs_crit_edge ], [ %buffer, %do.end.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %p.051 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p.051, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %for.cond, label %if.then7.critedge

if.then7.critedge:                                ; preds = %land.rhs
  %call8 = tail call fastcc zeroext i16 @INFTL_findwriteunit(ptr noundef %mbd, i32 noundef %block)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call8)
  %cmp9 = icmp eq i16 %call8, -1
  br i1 %cmp9, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end17:                                         ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %call8 to i32
  %6 = call ptr @memset(ptr %oob, i32 255, i32 16)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 85, ptr %3, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 85, ptr %2, align 1
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %mbd, i32 0, i32 2
  %9 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mtd, align 4
  %11 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %EraseSize, align 4
  %mul21 = mul i32 %12, %conv
  %add = add i32 %mul21, %and
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
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %15, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 6
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
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 4
  %28 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writesize.i, align 4
  %neg.i = sub i32 0, %29
  %and.i49 = and i32 %add, %neg.i
  %and.i = zext i32 %and.i49 to i64
  %call.i = call i32 @mtd_write_oob(ptr noundef %10, i64 noundef %and.i, ptr noundef nonnull %ops.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  br label %cleanup

if.else:                                          ; preds = %for.cond.if.else_crit_edge, %do.end.if.else_crit_edge
  tail call fastcc void @INFTL_deleteblock(ptr noundef %mbd, i32 noundef %block)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end17, %do.end14
  %retval.0 = phi i32 [ 1, %do.end14 ], [ 0, %if.else ], [ 0, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inftl_getgeo(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %geo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %heads = getelementptr inbounds %struct.INFTLrecord, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %heads, align 8
  %2 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %geo, align 4
  %sectors = getelementptr inbounds %struct.INFTLrecord, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sectors, align 1
  %sectors2 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %5 = ptrtoint ptr %sectors2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %sectors2, align 1
  %cylinders = getelementptr inbounds %struct.INFTLrecord, ptr %dev, i32 0, i32 7
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
define internal void @inftl_add_mtd(ptr noundef %tr, ptr noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mtd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mtd, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 8, label %entry.lor.lhs.false_crit_edge
    i8 4, label %entry.lor.lhs.false_crit_edge172
  ]

entry.lor.lhs.false_crit_edge172:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge172
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
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(10) %6, ptr noundef nonnull dereferenceable(10) @.str.58, i32 10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %_block_isbad = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 42
  %7 = ptrtoint ptr %_block_isbad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_block_isbad, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %do.end, label %do.body9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #13
  br label %cleanup

do.body9:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inftl_add_mtd.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inftl_add_mtd, %if.then15)) #10
          to label %do.end19 [label %if.then15], !srcloc !173

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inftl_add_mtd.__UNIQUE_ID_ddebug202, ptr noundef nonnull @.str.61, ptr noundef %10) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 440) #15
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %do.end19.cleanup_crit_edge, label %if.end23

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %do.end19
  %mtd24 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %mtd24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mtd, ptr %mtd24, align 4
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %devnum to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %devnum, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tr, ptr %call7.i.i, align 8
  %call28 = tail call i32 @INFTL_mount(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  %cylinders = getelementptr inbounds %struct.INFTLrecord, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1024, ptr %cylinders, align 2
  %heads = getelementptr inbounds %struct.INFTLrecord, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %heads to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %heads, align 8
  %size41 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size41, align 4
  %div170 = lshr i32 %18, 14
  %conv42 = trunc i32 %div170 to i8
  %sectors = getelementptr inbounds %struct.INFTLrecord, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv42, ptr %sectors, align 1
  %rem = and i32 %18, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool45.not = icmp eq i32 %rem, 0
  br i1 %tobool45.not, label %if.end36.if.end76_crit_edge, label %if.then46

if.end36.if.end76_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then46:                                        ; preds = %if.end36
  %inc = add i8 %conv42, 1
  %20 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %inc, ptr %sectors, align 1
  %conv51 = zext i8 %inc to i32
  %mul52 = shl nuw nsw i32 %conv51, 10
  %.frozen = freeze i32 %18
  %mul52.frozen = freeze i32 %mul52
  %div55 = udiv i32 %.frozen, %mul52.frozen
  %conv56 = trunc i32 %div55 to i8
  %21 = ptrtoint ptr %heads to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv56, ptr %heads, align 8
  %22 = mul i32 %div55, %mul52.frozen
  %rem60.decomposed = sub i32 %.frozen, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem60.decomposed)
  %tobool61.not = icmp eq i32 %rem60.decomposed, 0
  br i1 %tobool61.not, label %if.then46.if.end76_crit_edge, label %if.then62

if.then46.if.end76_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then62:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %inc64 = add i8 %conv56, 1
  %23 = ptrtoint ptr %heads to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %inc64, ptr %heads, align 8
  %conv66 = zext i8 %inc64 to i32
  %mul69 = mul nuw nsw i32 %conv66, %conv51
  %div72 = udiv i32 %18, %mul69
  %conv73 = trunc i32 %div72 to i16
  %24 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv73, ptr %cylinders, align 2
  br label %if.end76

if.end76:                                         ; preds = %if.then62, %if.then46.if.end76_crit_edge, %if.end36.if.end76_crit_edge
  %25 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size41, align 4
  %27 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %heads, align 8
  %conv80 = zext i8 %28 to i32
  %29 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cylinders, align 2
  %conv82 = zext i16 %30 to i32
  %mul83 = mul nuw nsw i32 %conv82, %conv80
  %31 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sectors, align 1
  %conv85 = zext i8 %32 to i32
  %mul86 = mul nuw i32 %mul83, %conv85
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %mul86)
  %cmp87.not = icmp eq i32 %26, %mul86
  br i1 %cmp87.not, label %if.end76.if.end116_crit_edge, label %do.end92

if.end76.if.end116_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

do.end92:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %26) #13
  %33 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cylinders, align 2
  %conv102 = zext i16 %34 to i32
  %35 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %heads, align 8
  %conv104 = zext i8 %36 to i32
  %37 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sectors, align 1
  %conv106 = zext i8 %38 to i32
  %mul111 = mul nuw nsw i32 %conv104, %conv102
  %mul114 = mul nuw i32 %mul111, %conv106
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %conv102, i32 noundef %conv104, i32 noundef %conv106, i32 noundef %mul114) #13
  br label %if.end116

if.end116:                                        ; preds = %do.end92, %if.end76.if.end116_crit_edge
  %call118 = tail call i32 @add_mtd_blktrans_dev(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end116.cleanup_crit_edge, label %if.then120

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %call7.i.i, i32 0, i32 16
  %39 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %PUtable, align 4
  tail call void @kfree(ptr noundef %40) #10
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %call7.i.i, i32 0, i32 17
  %41 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %VUtable, align 8
  tail call void @kfree(ptr noundef %42) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %if.end116.cleanup_crit_edge, %do.end33, %do.end19.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inftl_remove_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inftl_remove_dev.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inftl_remove_dev, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %devnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devnum, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inftl_remove_dev.__UNIQUE_ID_ddebug203, ptr noundef nonnull @.str.72, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @del_mtd_blktrans_dev(ptr noundef %dev) #10
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PUtable, align 4
  tail call void @kfree(ptr noundef %3) #10
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %VUtable, align 8
  tail call void @kfree(ptr noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @INFTL_findwriteunit(ptr noundef %inftl, i32 noundef %block) unnamed_addr #6 align 64 {
entry:
  %ops.i318 = alloca %struct.mtd_oob_ops, align 4
  %ops.i310 = alloca %struct.mtd_oob_ops, align 4
  %ops.i280 = alloca %struct.mtd_oob_ops, align 4
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %oob = alloca %struct.inftl_oob, align 1
  %bci = alloca %struct.inftl_bci, align 8
  call void @__sanitizer_cov_trace_pc() #12
  %EraseSize = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 2
  %0 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %EraseSize, align 4
  %div271 = lshr i32 %1, 9
  %div1 = udiv i32 %block, %div271
  %mul = shl i32 %block, 9
  %sub = add i32 %1, -1
  %and = and i32 %sub, %mul
  %mtd3 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %inftl, i32 0, i32 2
  %2 = ptrtoint ptr %mtd3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #10
  %4 = getelementptr inbounds %struct.inftl_oob, ptr %oob, i32 0, i32 1
  %5 = getelementptr inbounds %struct.inftl_oob, ptr %oob, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.inftl_oob, ptr %oob, i32 0, i32 1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.inftl_oob, ptr %oob, i32 0, i32 1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.inftl_oob, ptr %oob, i32 0, i32 1, i32 0, i32 4
  %9 = getelementptr inbounds %struct.inftl_oob, ptr %oob, i32 0, i32 1, i32 0, i32 5
  %10 = call ptr @memset(ptr %oob, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bci) #10
  %11 = getelementptr inbounds %struct.inftl_bci, ptr %bci, i32 0, i32 1
  %12 = getelementptr inbounds %struct.inftl_bci, ptr %bci, i32 0, i32 2
  %13 = ptrtoint ptr %bci to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %bci, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_findwriteunit.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_findwriteunit, %if.then)) #10
          to label %do.body6 [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_findwriteunit.__UNIQUE_ID_ddebug211, ptr noundef nonnull @.str.12, ptr noundef %inftl, i32 noundef %block) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 17
  %14 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %VUtable, align 8
  %arrayidx = getelementptr i16, ptr %15, i32 %div1
  %lastEUN = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %thisEUN.0.in339 = load i16, ptr %arrayidx, align 2
  %17 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %lastEUN, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %thisEUN.0.in339, i16 %18)
  %cmp.not341 = icmp ugt i16 %thisEUN.0.in339, %18
  br i1 %cmp.not341, label %do.body6.if.end46_crit_edge, label %while.body.lr.ph

do.body6.if.end46_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

while.body.lr.ph:                                 ; preds = %do.body6
  %19 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %20 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %21 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %22 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %23 = getelementptr inbounds i8, ptr %ops.i, i32 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 4
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %while.body.lr.ph
  %thisEUN.0344.in = phi i16 [ %thisEUN.0.in339, %while.body.lr.ph ], [ %thisEUN.0.in, %if.end39.while.body_crit_edge ]
  %writeEUN.0343 = phi i32 [ 65535, %while.body.lr.ph ], [ %writeEUN.1, %if.end39.while.body_crit_edge ]
  %silly.0342 = phi i32 [ 10000, %while.body.lr.ph ], [ %dec, %if.end39.while.body_crit_edge ]
  %thisEUN.0344 = zext i16 %thisEUN.0344.in to i32
  %24 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %EraseSize, align 4
  %mul10 = mul i32 %25, %thisEUN.0344
  %add = add i32 %mul10, %and
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %26 = call ptr @memset(ptr %23, i32 255, i32 16)
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ops.i, align 4
  %28 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writesize.i, align 4
  %sub.i = add i32 %29, -1
  %conv1.i = and i32 %sub.i, %add
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv1.i, ptr %20, align 4
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %19, align 4
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %bci, ptr %22, align 4
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %21, align 4
  %neg.i = sub i32 0, %29
  %and5.i331 = and i32 %add, %neg.i
  %and5.i = zext i32 %and5.i331 to i64
  %call.i = call i32 @mtd_read_oob(ptr noundef %3, i64 noundef %and5.i, ptr noundef nonnull %ops.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %11, align 2
  %36 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %12, align 1
  %or272 = or i8 %37, %35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_findwriteunit.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_findwriteunit, %if.then27)) #10
          to label %do.end30 [label %if.then27], !srcloc !173

if.then27:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %or = zext i8 %or272 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_findwriteunit.__UNIQUE_ID_ddebug212, ptr noundef nonnull @.str.13, i32 noundef %block, i32 noundef %writeEUN.0343, i32 noundef %or) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %while.body
  %38 = zext i8 %or272 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %or272, label %do.end30.sw.epilog_crit_edge [
    i8 -1, label %sw.bb
    i8 0, label %do.end30.hitused_crit_edge
    i8 85, label %do.end30.hitused_crit_edge372
  ]

do.end30.hitused_crit_edge372:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %hitused

do.end30.hitused_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %hitused

do.end30.sw.epilog_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end30.sw.epilog_crit_edge
  %writeEUN.1 = phi i32 [ %writeEUN.0343, %do.end30.sw.epilog_crit_edge ], [ %thisEUN.0344, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.0342)
  %tobool32.not = icmp eq i32 %silly.0342, 0
  br i1 %tobool32.not, label %do.end36, label %if.end39

do.end36:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %div1) #13
  br label %cleanup

if.end39:                                         ; preds = %sw.epilog
  %dec = add nsw i32 %silly.0342, -1
  %39 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %PUtable, align 4
  %arrayidx40 = getelementptr i16, ptr %40, i32 %thisEUN.0344
  %41 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %thisEUN.0.in = load i16, ptr %arrayidx40, align 2
  %42 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %lastEUN, align 8
  %cmp.not = icmp ugt i16 %thisEUN.0.in, %43
  br i1 %cmp.not, label %if.end39.hitused_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end39.hitused_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %hitused

hitused:                                          ; preds = %if.end39.hitused_crit_edge, %do.end30.hitused_crit_edge, %do.end30.hitused_crit_edge372
  %writeEUN.0.lcssa = phi i32 [ %writeEUN.0343, %do.end30.hitused_crit_edge ], [ %writeEUN.0343, %do.end30.hitused_crit_edge372 ], [ %writeEUN.1, %if.end39.hitused_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %writeEUN.0.lcssa)
  %cmp42.not = icmp eq i32 %writeEUN.0.lcssa, 65535
  br i1 %cmp42.not, label %hitused.if.end46_crit_edge, label %if.then44

hitused.if.end46_crit_edge:                       ; preds = %hitused
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %hitused
  call void @__sanitizer_cov_trace_pc() #12
  %conv45 = trunc i32 %writeEUN.0.lcssa to i16
  br label %cleanup

if.end46:                                         ; preds = %hitused.if.end46_crit_edge, %do.body6.if.end46_crit_edge
  %call47 = call fastcc zeroext i16 @INFTL_findfreeblock(ptr noundef %inftl, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call47)
  %cmp49 = icmp eq i16 %call47, -1
  br i1 %cmp49, label %if.then51, label %if.end46.if.end81_crit_edge

if.end46.if.end81_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = zext i16 %call47 to i32
  br label %if.end81

if.then51:                                        ; preds = %if.end46
  call fastcc void @INFTL_makefreeblock(ptr noundef %inftl, i32 noundef %block)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_findwriteunit.__UNIQUE_ID_ddebug213, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_findwriteunit, %if.then66)) #10
          to label %do.end69 [label %if.then66], !srcloc !173

if.then66:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_findwriteunit.__UNIQUE_ID_ddebug213, ptr noundef nonnull @.str.15, i32 noundef %div1) #10
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %if.then51
  %LastFreeEUN.i = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 12
  %44 = ptrtoint ptr %LastFreeEUN.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %LastFreeEUN.i, align 4
  %nb_blocks.i = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 18
  %46 = ptrtoint ptr %nb_blocks.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nb_blocks.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_findfreeblock.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_findwriteunit, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !173

if.then.i:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_findfreeblock.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.23, ptr noundef %inftl, i32 noundef 1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end69
  %PUtable.i = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  %48 = ptrtoint ptr %PUtable.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %PUtable.i, align 4
  br label %do.body25.i

do.body25.i:                                      ; preds = %do.cond48.i.do.body25.i_crit_edge, %do.end.i
  %silly.0.i = phi i32 [ %47, %do.end.i ], [ %dec.i, %do.cond48.i.do.body25.i_crit_edge ]
  %pot.0.i = phi i16 [ %45, %do.end.i ], [ %spec.store.select.i, %do.cond48.i.do.body25.i_crit_edge ]
  %idxprom.i = zext i16 %pot.0.i to i32
  %arrayidx.i = getelementptr i16, ptr %49, i32 %idxprom.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %51)
  %cmp27.i = icmp eq i16 %51, -2
  br i1 %cmp27.i, label %INFTL_findfreeblock.exit, label %if.end31.i

if.end31.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.0.i)
  %tobool38.not.i = icmp eq i32 %silly.0.i, 0
  br i1 %tobool38.not.i, label %do.end42.i, label %do.cond48.i

do.end42.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %LastFreeEUN.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %LastFreeEUN.i, align 4
  %conv45.i = zext i16 %53 to i32
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef %conv45.i) #13
  br label %do.end77

do.cond48.i:                                      ; preds = %if.end31.i
  %dec.i = add i32 %silly.0.i, -1
  %inc.i = add i16 %pot.0.i, 1
  %54 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %lastEUN, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %55)
  %cmp34.i = icmp ugt i16 %inc.i, %55
  %spec.store.select.i = select i1 %cmp34.i, i16 0, i16 %inc.i
  %56 = ptrtoint ptr %LastFreeEUN.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %LastFreeEUN.i, align 4
  %cmp52.not.i = icmp eq i16 %spec.store.select.i, %57
  br i1 %cmp52.not.i, label %do.cond48.i.do.end77_crit_edge, label %do.cond48.i.do.body25.i_crit_edge

do.cond48.i.do.body25.i_crit_edge:                ; preds = %do.cond48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25.i

do.cond48.i.do.end77_crit_edge:                   ; preds = %do.cond48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

INFTL_findfreeblock.exit:                         ; preds = %do.body25.i
  %58 = ptrtoint ptr %LastFreeEUN.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %pot.0.i, ptr %LastFreeEUN.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %pot.0.i)
  %cmp72 = icmp eq i16 %pot.0.i, -1
  br i1 %cmp72, label %INFTL_findfreeblock.exit.do.end77_crit_edge, label %INFTL_findfreeblock.exit.if.end81_crit_edge

INFTL_findfreeblock.exit.if.end81_crit_edge:      ; preds = %INFTL_findfreeblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

INFTL_findfreeblock.exit.do.end77_crit_edge:      ; preds = %INFTL_findfreeblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

do.end77:                                         ; preds = %INFTL_findfreeblock.exit.do.end77_crit_edge, %do.cond48.i.do.end77_crit_edge, %do.end42.i
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end81:                                         ; preds = %INFTL_findfreeblock.exit.if.end81_crit_edge, %if.end46.if.end81_crit_edge
  %writeEUN.2.pre-phi = phi i32 [ %.pre, %if.end46.if.end81_crit_edge ], [ %idxprom.i, %INFTL_findfreeblock.exit.if.end81_crit_edge ]
  %writeEUN.2.in = phi i16 [ %call47, %if.end46.if.end81_crit_edge ], [ %pot.0.i, %INFTL_findfreeblock.exit.if.end81_crit_edge ]
  %59 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %VUtable, align 8
  %arrayidx83 = getelementptr i16, ptr %60, i32 %div1
  %61 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx83, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %62)
  %cmp85.not = icmp eq i16 %62, -1
  br i1 %cmp85.not, label %if.end81.if.end101_crit_edge, label %if.then87

if.end81.if.end101_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %conv84 = zext i16 %62 to i32
  %63 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %EraseSize, align 4
  %mul89 = mul i32 %64, %conv84
  %add90 = add i32 %mul89, 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i280) #10
  %65 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i280, i32 0, i32 3
  %66 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i280, i32 0, i32 5
  %67 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i280, i32 0, i32 6
  %68 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i280, i32 0, i32 7
  %69 = getelementptr inbounds i8, ptr %ops.i280, i32 4
  %70 = call ptr @memset(ptr %69, i32 255, i32 16)
  %71 = ptrtoint ptr %ops.i280 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %ops.i280, align 4
  %writesize.i281 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 4
  %72 = ptrtoint ptr %writesize.i281 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %writesize.i281, align 4
  %sub.i282 = add i32 %73, -1
  %conv1.i283 = and i32 %sub.i282, %add90
  %74 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv1.i283, ptr %66, align 4
  %75 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 8, ptr %65, align 4
  %76 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %4, ptr %68, align 4
  %77 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %67, align 4
  %neg.i284 = sub i32 0, %73
  %and5.i286332 = and i32 %add90, %neg.i284
  %and5.i286 = zext i32 %and5.i286332 to i64
  %call.i287 = call i32 @mtd_read_oob(ptr noundef %3, i64 noundef %and5.i286, ptr noundef nonnull %ops.i280) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i280) #10
  %78 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %6, align 1
  %add95 = add i8 %79, 1
  %80 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %7, align 1
  %add99 = add i8 %81, 1
  br label %if.end101

if.end101:                                        ; preds = %if.then87, %if.end81.if.end101_crit_edge
  %nacs.0 = phi i8 [ %add99, %if.then87 ], [ 0, %if.end81.if.end101_crit_edge ]
  %anac.0 = phi i8 [ %add95, %if.then87 ], [ 0, %if.end81.if.end101_crit_edge ]
  %82 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %VUtable, align 8
  %arrayidx103 = getelementptr i16, ptr %83, i32 %div1
  %84 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx103, align 2
  %conv104 = zext i16 %85 to i32
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 18
  %86 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %conv104)
  %cmp105 = icmp ugt i32 %87, %conv104
  br i1 %cmp105, label %if.then107, label %if.end101.if.end110_crit_edge

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %firstEUN = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 9
  %88 = ptrtoint ptr %firstEUN to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %firstEUN, align 2
  %conv108 = zext i16 %89 to i32
  %sub109 = sub nsw i32 %conv104, %conv108
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.end101.if.end110_crit_edge
  %prev_block.0 = phi i32 [ %sub109, %if.then107 ], [ %conv104, %if.end101.if.end110_crit_edge ]
  %90 = and i32 %div1, 1
  %91 = lshr i32 %div1, 1
  %92 = and i32 %91, 1
  %add.i.1 = add nuw nsw i32 %92, %90
  %93 = lshr i32 %div1, 2
  %94 = and i32 %93, 1
  %add.i.2 = add nuw nsw i32 %94, %add.i.1
  %95 = lshr i32 %div1, 3
  %96 = and i32 %95, 1
  %add.i.3 = add nuw nsw i32 %96, %add.i.2
  %97 = lshr i32 %div1, 4
  %98 = and i32 %97, 1
  %add.i.4 = add nuw nsw i32 %98, %add.i.3
  %99 = lshr i32 %div1, 5
  %100 = and i32 %99, 1
  %add.i.5 = add nuw nsw i32 %100, %add.i.4
  %101 = lshr i32 %div1, 6
  %102 = and i32 %101, 1
  %add.i.6 = add nuw nsw i32 %102, %add.i.5
  %103 = lshr i32 %div1, 7
  %104 = and i32 %103, 1
  %add.i.7 = add nuw nsw i32 %104, %add.i.6
  %105 = lshr i32 %div1, 8
  %106 = and i32 %105, 1
  %add.i.8 = add nuw nsw i32 %106, %add.i.7
  %107 = lshr i32 %div1, 9
  %108 = and i32 %107, 1
  %add.i.9 = add nuw nsw i32 %108, %add.i.8
  %109 = lshr i32 %div1, 10
  %110 = and i32 %109, 1
  %add.i.10 = add nuw nsw i32 %110, %add.i.9
  %111 = lshr i32 %div1, 11
  %112 = and i32 %111, 1
  %add.i.11 = add nuw nsw i32 %112, %add.i.10
  %113 = lshr i32 %div1, 12
  %add.i.12 = add nuw nsw i32 %113, %add.i.11
  %114 = lshr i32 %div1, 13
  %add.i.13 = add nuw nsw i32 %114, %add.i.12
  %115 = lshr i32 %div1, 14
  %add.i.14 = add nuw nsw i32 %115, %add.i.13
  %116 = lshr i32 %div1, 15
  %add.i.15 = add nuw nsw i32 %116, %add.i.14
  %117 = and i32 %prev_block.0, 1
  %118 = lshr i32 %prev_block.0, 1
  %119 = and i32 %118, 1
  %add.i291.1 = add nuw nsw i32 %119, %117
  %120 = lshr i32 %prev_block.0, 2
  %121 = and i32 %120, 1
  %add.i291.2 = add nuw nsw i32 %121, %add.i291.1
  %122 = lshr i32 %prev_block.0, 3
  %123 = and i32 %122, 1
  %add.i291.3 = add nuw nsw i32 %123, %add.i291.2
  %124 = lshr i32 %prev_block.0, 4
  %125 = and i32 %124, 1
  %add.i291.4 = add nuw nsw i32 %125, %add.i291.3
  %126 = lshr i32 %prev_block.0, 5
  %127 = and i32 %126, 1
  %add.i291.5 = add nuw nsw i32 %127, %add.i291.4
  %128 = lshr i32 %prev_block.0, 6
  %129 = and i32 %128, 1
  %add.i291.6 = add nuw nsw i32 %129, %add.i291.5
  %130 = lshr i32 %prev_block.0, 7
  %131 = and i32 %130, 1
  %add.i291.7 = add nuw nsw i32 %131, %add.i291.6
  %132 = lshr i32 %prev_block.0, 8
  %133 = and i32 %132, 1
  %add.i291.8 = add nuw nsw i32 %133, %add.i291.7
  %134 = lshr i32 %prev_block.0, 9
  %135 = and i32 %134, 1
  %add.i291.9 = add nuw nsw i32 %135, %add.i291.8
  %136 = lshr i32 %prev_block.0, 10
  %137 = and i32 %136, 1
  %add.i291.10 = add nuw nsw i32 %137, %add.i291.9
  %138 = lshr i32 %prev_block.0, 11
  %139 = and i32 %138, 1
  %add.i291.11 = add nuw nsw i32 %139, %add.i291.10
  %140 = lshr i32 %prev_block.0, 12
  %141 = and i32 %140, 1
  %add.i291.12 = add nuw nsw i32 %141, %add.i291.11
  %142 = lshr i32 %prev_block.0, 13
  %add.i291.13 = add nuw nsw i32 %142, %add.i291.12
  %143 = lshr i32 %prev_block.0, 14
  %add.i291.14 = add nuw nsw i32 %143, %add.i291.13
  %144 = lshr i32 %prev_block.0, 15
  %add.i291.15 = add nuw nsw i32 %144, %add.i291.14
  %and116 = shl nuw nsw i32 %add.i291.15, 1
  %145 = and i32 %and116, 2
  %conv122 = zext i8 %anac.0 to i32
  %146 = and i32 %conv122, 1
  %147 = lshr i32 %conv122, 1
  %148 = and i32 %147, 1
  %add.i298.1 = add nuw nsw i32 %148, %146
  %149 = lshr i32 %conv122, 2
  %150 = and i32 %149, 1
  %add.i298.2 = add nuw nsw i32 %150, %add.i298.1
  %151 = lshr i32 %conv122, 3
  %152 = and i32 %151, 1
  %add.i298.3 = add nuw nsw i32 %152, %add.i298.2
  %153 = lshr i32 %conv122, 4
  %154 = and i32 %153, 1
  %add.i298.4 = add nuw nsw i32 %154, %add.i298.3
  %155 = lshr i32 %conv122, 5
  %add.i298.5 = add nuw nsw i32 %155, %add.i298.4
  %156 = lshr i32 %conv122, 6
  %add.i298.6 = add nuw nsw i32 %156, %add.i298.5
  %157 = lshr i32 %conv122, 7
  %add.i298.7 = add nuw nsw i32 %157, %add.i298.6
  %158 = and i32 %add.i.15, 1
  %and124 = shl nuw nsw i32 %add.i298.7, 2
  %159 = and i32 %and124, 4
  %conv130 = zext i8 %nacs.0 to i32
  %160 = and i32 %conv130, 1
  %161 = lshr i32 %conv130, 1
  %162 = and i32 %161, 1
  %add.i305.1 = add nuw nsw i32 %162, %160
  %163 = lshr i32 %conv130, 2
  %164 = and i32 %163, 1
  %add.i305.2 = add nuw nsw i32 %164, %add.i305.1
  %165 = lshr i32 %conv130, 3
  %166 = and i32 %165, 1
  %add.i305.3 = add nuw nsw i32 %166, %add.i305.2
  %167 = lshr i32 %conv130, 4
  %168 = and i32 %167, 1
  %add.i305.4 = add nuw nsw i32 %168, %add.i305.3
  %169 = lshr i32 %conv130, 5
  %add.i305.5 = add nuw nsw i32 %169, %add.i305.4
  %170 = lshr i32 %conv130, 6
  %add.i305.6 = add nuw nsw i32 %170, %add.i305.5
  %171 = lshr i32 %conv130, 7
  %add.i305.7 = add nuw nsw i32 %171, %add.i305.6
  %or120 = or i32 %145, %158
  %or128 = or i32 %or120, %159
  %and132 = shl nuw nsw i32 %add.i305.7, 3
  %172 = and i32 %and132, 8
  %or136 = or i32 %or128, %172
  %conv137 = trunc i32 %or136 to i8
  %conv138 = trunc i32 %div1 to i16
  %173 = call i16 @llvm.bswap.i16(i16 %conv138)
  %174 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %174, i32 2)
  store i16 %173, ptr %4, align 1
  %conv140 = trunc i32 %prev_block.0 to i16
  %175 = call i16 @llvm.bswap.i16(i16 %conv140)
  %176 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 %175, ptr %5, align 1
  %177 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %anac.0, ptr %6, align 1
  %178 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %nacs.0, ptr %7, align 1
  %179 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv137, ptr %8, align 1
  %180 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 -86, ptr %9, align 1
  %181 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %EraseSize, align 4
  %mul149 = mul i32 %182, %writeEUN.2.pre-phi
  %add150 = add i32 %mul149, 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i310) #10
  %183 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i310, i32 0, i32 3
  %184 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i310, i32 0, i32 5
  %185 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i310, i32 0, i32 6
  %186 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i310, i32 0, i32 7
  %187 = getelementptr inbounds i8, ptr %ops.i310, i32 4
  %188 = call ptr @memset(ptr %187, i32 255, i32 16)
  %189 = ptrtoint ptr %ops.i310 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %ops.i310, align 4
  %writesize.i311 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 4
  %190 = ptrtoint ptr %writesize.i311 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %writesize.i311, align 4
  %sub.i312 = add i32 %191, -1
  %conv1.i313 = and i32 %sub.i312, %add150
  %192 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %conv1.i313, ptr %184, align 4
  %193 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 8, ptr %183, align 4
  %194 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %4, ptr %186, align 4
  %195 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %185, align 4
  %neg.i314 = sub i32 0, %191
  %and5.i316333 = and i32 %add150, %neg.i314
  %and5.i316 = zext i32 %and5.i316333 to i64
  %call.i317 = call i32 @mtd_write_oob(ptr noundef %3, i64 noundef %and5.i316, ptr noundef nonnull %ops.i310) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i310) #10
  %196 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %196, i32 2)
  store i16 %173, ptr %6, align 1
  %197 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %197, i32 2)
  store i16 %175, ptr %5, align 1
  %ANAC161 = getelementptr inbounds %struct.inftl_unithead2, ptr %4, i32 0, i32 1
  %198 = ptrtoint ptr %ANAC161 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %anac.0, ptr %ANAC161, align 1
  %199 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %nacs.0, ptr %8, align 1
  %200 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv137, ptr %4, align 1
  %201 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 -86, ptr %9, align 1
  %202 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %EraseSize, align 4
  %mul169 = mul i32 %203, %writeEUN.2.pre-phi
  %add171 = add i32 %mul169, 2056
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i318) #10
  %204 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i318, i32 0, i32 3
  %205 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i318, i32 0, i32 5
  %206 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i318, i32 0, i32 6
  %207 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i318, i32 0, i32 7
  %208 = getelementptr inbounds i8, ptr %ops.i318, i32 4
  %209 = call ptr @memset(ptr %208, i32 255, i32 16)
  %210 = ptrtoint ptr %ops.i318 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %ops.i318, align 4
  %211 = ptrtoint ptr %writesize.i311 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %writesize.i311, align 4
  %sub.i320 = add i32 %212, -1
  %conv1.i321 = and i32 %sub.i320, %add171
  %213 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %conv1.i321, ptr %205, align 4
  %214 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 8, ptr %204, align 4
  %215 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %4, ptr %207, align 4
  %216 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %206, align 4
  %neg.i322 = sub i32 0, %212
  %and5.i324334 = and i32 %add171, %neg.i322
  %and5.i324 = zext i32 %and5.i324334 to i64
  %call.i325 = call i32 @mtd_write_oob(ptr noundef %3, i64 noundef %and5.i324, ptr noundef nonnull %ops.i318) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i318) #10
  %217 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %VUtable, align 8
  %arrayidx176 = getelementptr i16, ptr %218, i32 %div1
  %219 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %arrayidx176, align 2
  %PUtable177 = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  %221 = ptrtoint ptr %PUtable177 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %PUtable177, align 4
  %arrayidx178 = getelementptr i16, ptr %222, i32 %writeEUN.2.pre-phi
  %223 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %220, ptr %arrayidx178, align 2
  %224 = load ptr, ptr %VUtable, align 8
  %arrayidx181 = getelementptr i16, ptr %224, i32 %div1
  %225 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %writeEUN.2.in, ptr %arrayidx181, align 2
  %numfreeEUNs = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 11
  %226 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %numfreeEUNs, align 2
  %dec182 = add i16 %227, -1
  store i16 %dec182, ptr %numfreeEUNs, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %do.end77, %if.then44, %do.end36
  %retval.0 = phi i16 [ -1, %do.end36 ], [ %conv45, %if.then44 ], [ -1, %do.end77 ], [ %writeEUN.2.in, %if.end110 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bci) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #10
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @INFTL_deleteblock(ptr noundef %inftl, i32 noundef %block) unnamed_addr #0 align 64 {
entry:
  %ops.i14 = alloca %struct.mtd_oob_ops, align 4
  %ops.i6 = alloca %struct.mtd_oob_ops, align 4
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %bci = alloca %struct.inftl_bci, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 17
  %0 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %VUtable, align 8
  %EraseSize = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 2
  %2 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %EraseSize, align 4
  %div2 = lshr i32 %3, 9
  %div1 = udiv i32 %block, %div2
  %arrayidx = getelementptr i16, ptr %1, i32 %div1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %mul = shl i32 %block, 9
  %sub = add i32 %3, -1
  %and = and i32 %sub, %mul
  %mtd3 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %inftl, i32 0, i32 2
  %6 = ptrtoint ptr %mtd3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mtd3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bci) #10
  %8 = getelementptr inbounds %struct.inftl_bci, ptr %bci, i32 0, i32 1
  %9 = getelementptr inbounds %struct.inftl_bci, ptr %bci, i32 0, i32 2
  %10 = ptrtoint ptr %bci to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %bci, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_deleteblock.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_deleteblock, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_deleteblock.__UNIQUE_ID_ddebug218, ptr noundef nonnull @.str.44, ptr noundef %inftl, i32 noundef %block) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 18
  %thisEUN.034 = zext i16 %5 to i32
  %11 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %thisEUN.034)
  %cmp35 = icmp ugt i32 %12, %thisEUN.034
  br i1 %cmp35, label %while.body.lr.ph, label %do.end.foundit_crit_edge

do.end.foundit_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %foundit

while.body.lr.ph:                                 ; preds = %do.end
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %17 = getelementptr inbounds i8, ptr %ops.i, i32 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 4
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.body.lr.ph
  %thisEUN.038 = phi i32 [ %thisEUN.034, %while.body.lr.ph ], [ %thisEUN.0, %if.end34.while.body_crit_edge ]
  %thisEUN.0.in37 = phi i16 [ %5, %while.body.lr.ph ], [ %38, %if.end34.while.body_crit_edge ]
  %silly.036 = phi i32 [ 10000, %while.body.lr.ph ], [ %dec, %if.end34.while.body_crit_edge ]
  %18 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %EraseSize, align 4
  %mul8 = mul i32 %19, %thisEUN.038
  %add = add i32 %mul8, %and
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %20 = call ptr @memset(ptr %17, i32 255, i32 16)
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ops.i, align 4
  %22 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %writesize.i, align 4
  %sub.i = add i32 %23, -1
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
  %neg.i = sub i32 0, %23
  %and5.i29 = and i32 %add, %neg.i
  %and5.i = zext i32 %and5.i29 to i64
  %call.i = call i32 @mtd_read_oob(ptr noundef %7, i64 noundef %and5.i, ptr noundef nonnull %ops.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11 = icmp slt i32 %call.i, 0
  br i1 %cmp11, label %while.body.sw.epilog_crit_edge, label %if.end16

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end16:                                         ; preds = %while.body
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 2
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %9, align 1
  %or4 = or i8 %31, %29
  %32 = zext i8 %or4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %or4, label %do.end21 [
    i8 -1, label %if.end16.sw.epilog_crit_edge
    i8 17, label %if.end16.sw.epilog_crit_edge70
    i8 0, label %if.end16.cleanup60_crit_edge
    i8 85, label %if.end16.foundit_crit_edge
  ]

if.end16.foundit_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %foundit

if.end16.cleanup60_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.end16.sw.epilog_crit_edge70:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %or = zext i8 %or4 to i32
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %block, i32 noundef %thisEUN.038, i32 noundef %or) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end21, %if.end16.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge70, %while.body.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.036)
  %tobool24.not = icmp eq i32 %silly.036, 0
  br i1 %tobool24.not, label %do.end28, label %if.end34

do.end28:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %EraseSize, align 4
  %div315 = lshr i32 %34, 9
  %div32 = udiv i32 %block, %div315
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %div32) #13
  br label %cleanup60

if.end34:                                         ; preds = %sw.epilog
  %dec = add nsw i32 %silly.036, -1
  %35 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %PUtable, align 4
  %arrayidx35 = getelementptr i16, ptr %36, i32 %thisEUN.038
  %37 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx35, align 2
  %thisEUN.0 = zext i16 %38 to i32
  %39 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nb_blocks, align 4
  %cmp = icmp ugt i32 %40, %thisEUN.0
  br i1 %cmp, label %if.end34.while.body_crit_edge, label %foundit.loopexit.split.loop.exit

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

foundit.loopexit.split.loop.exit:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %thisEUN.0.le = zext i16 %38 to i32
  br label %foundit

foundit:                                          ; preds = %foundit.loopexit.split.loop.exit, %if.end16.foundit_crit_edge, %do.end.foundit_crit_edge
  %thisEUN.0.in.lcssa = phi i16 [ %5, %do.end.foundit_crit_edge ], [ %38, %foundit.loopexit.split.loop.exit ], [ %thisEUN.0.in37, %if.end16.foundit_crit_edge ]
  %thisEUN.0.lcssa = phi i32 [ %thisEUN.034, %do.end.foundit_crit_edge ], [ %thisEUN.0.le, %foundit.loopexit.split.loop.exit ], [ %thisEUN.038, %if.end16.foundit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %thisEUN.0.in.lcssa)
  %cmp37.not = icmp eq i16 %thisEUN.0.in.lcssa, -1
  br i1 %cmp37.not, label %foundit.cleanup60_crit_edge, label %if.then39

foundit.cleanup60_crit_edge:                      ; preds = %foundit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.then39:                                        ; preds = %foundit
  %41 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %EraseSize, align 4
  %mul41 = mul i32 %42, %thisEUN.0.lcssa
  %add42 = add i32 %mul41, %and
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i6) #10
  %43 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i6, i32 0, i32 3
  %44 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i6, i32 0, i32 5
  %45 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i6, i32 0, i32 6
  %46 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i6, i32 0, i32 7
  %47 = getelementptr inbounds i8, ptr %ops.i6, i32 4
  %48 = call ptr @memset(ptr %47, i32 255, i32 16)
  %49 = ptrtoint ptr %ops.i6 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %ops.i6, align 4
  %writesize.i7 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 4
  %50 = ptrtoint ptr %writesize.i7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %writesize.i7, align 4
  %sub.i8 = add i32 %51, -1
  %conv1.i9 = and i32 %sub.i8, %add42
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv1.i9, ptr %44, align 4
  %53 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 8, ptr %43, align 4
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %bci, ptr %46, align 4
  %55 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %45, align 4
  %neg.i10 = sub i32 0, %51
  %and5.i1227 = and i32 %add42, %neg.i10
  %and5.i12 = zext i32 %and5.i1227 to i64
  %call.i13 = call i32 @mtd_read_oob(ptr noundef %7, i64 noundef %and5.i12, ptr noundef nonnull %ops.i6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp45 = icmp slt i32 %call.i13, 0
  br i1 %cmp45, label %if.then39.cleanup60_crit_edge, label %if.end48

if.then39.cleanup60_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.end48:                                         ; preds = %if.then39
  %56 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %9, align 1
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %8, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i14) #10
  %58 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i14, i32 0, i32 3
  %59 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i14, i32 0, i32 5
  %60 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i14, i32 0, i32 6
  %61 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i14, i32 0, i32 7
  %62 = getelementptr inbounds i8, ptr %ops.i14, i32 4
  %63 = call ptr @memset(ptr %62, i32 255, i32 16)
  %64 = ptrtoint ptr %ops.i14 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %ops.i14, align 4
  %65 = ptrtoint ptr %writesize.i7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %writesize.i7, align 4
  %sub.i16 = add i32 %66, -1
  %conv1.i17 = and i32 %sub.i16, %add42
  %67 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv1.i17, ptr %59, align 4
  %68 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 8, ptr %58, align 4
  %69 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %bci, ptr %61, align 4
  %70 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %60, align 4
  %neg.i18 = sub i32 0, %66
  %and5.i2028 = and i32 %add42, %neg.i18
  %and5.i20 = zext i32 %and5.i2028 to i64
  %call.i21 = call i32 @mtd_write_oob(ptr noundef %7, i64 noundef %and5.i20, ptr noundef nonnull %ops.i14) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp52 = icmp slt i32 %call.i21, 0
  br i1 %cmp52, label %if.end48.cleanup60_crit_edge, label %if.end55

if.end48.cleanup60_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %EraseSize, align 4
  %div573 = lshr i32 %72, 9
  %div58 = udiv i32 %block, %div573
  call fastcc void @INFTL_trydeletechain(ptr noundef %inftl, i32 noundef %div58)
  br label %cleanup60

cleanup60:                                        ; preds = %if.end55, %if.end48.cleanup60_crit_edge, %if.then39.cleanup60_crit_edge, %foundit.cleanup60_crit_edge, %do.end28, %if.end16.cleanup60_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bci) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @INFTL_findfreeblock(ptr noundef %inftl, i32 noundef %desperate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %LastFreeEUN = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 12
  %0 = ptrtoint ptr %LastFreeEUN to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %LastFreeEUN, align 4
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 18
  %2 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nb_blocks, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_findfreeblock.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_findfreeblock, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_findfreeblock.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.23, ptr noundef %inftl, i32 noundef %desperate) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desperate)
  %tobool3.not = icmp eq i32 %desperate, 0
  br i1 %tobool3.not, label %land.lhs.true, label %do.end.if.end24_crit_edge

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %do.end
  %numfreeEUNs = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 11
  %4 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %numfreeEUNs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp = icmp ult i16 %5, 2
  br i1 %cmp, label %do.body6, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.body6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_findfreeblock.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_findfreeblock, %if.then18)) #10
          to label %cleanup [label %if.then18], !srcloc !173

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %numfreeEUNs, align 2
  %conv20 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_findfreeblock.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.24, i32 noundef %conv20) #10
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %do.end.if.end24_crit_edge
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  %8 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PUtable, align 4
  %lastEUN = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 10
  br label %do.body25

do.body25:                                        ; preds = %do.cond48.do.body25_crit_edge, %if.end24
  %silly.0 = phi i32 [ %3, %if.end24 ], [ %dec, %do.cond48.do.body25_crit_edge ]
  %pot.0 = phi i16 [ %1, %if.end24 ], [ %spec.store.select, %do.cond48.do.body25_crit_edge ]
  %idxprom = zext i16 %pot.0 to i32
  %arrayidx = getelementptr i16, ptr %9, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %11)
  %cmp27 = icmp eq i16 %11, -2
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %LastFreeEUN to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %pot.0, ptr %LastFreeEUN, align 4
  br label %cleanup

if.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.0)
  %tobool38.not = icmp eq i32 %silly.0, 0
  br i1 %tobool38.not, label %do.end42, label %do.cond48

do.end42:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %LastFreeEUN to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %LastFreeEUN, align 4
  %conv45 = zext i16 %14 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef %conv45) #13
  br label %cleanup

do.cond48:                                        ; preds = %if.end31
  %dec = add i32 %silly.0, -1
  %inc = add i16 %pot.0, 1
  %15 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %lastEUN, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %16)
  %cmp34 = icmp ugt i16 %inc, %16
  %spec.store.select = select i1 %cmp34, i16 0, i16 %inc
  %17 = ptrtoint ptr %LastFreeEUN to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %LastFreeEUN, align 4
  %cmp52.not = icmp eq i16 %spec.store.select, %18
  br i1 %cmp52.not, label %do.cond48.cleanup_crit_edge, label %do.cond48.do.body25_crit_edge

do.cond48.do.body25_crit_edge:                    ; preds = %do.cond48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25

do.cond48.cleanup_crit_edge:                      ; preds = %do.cond48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %do.cond48.cleanup_crit_edge, %do.end42, %if.then29, %if.then18, %do.body6
  %retval.0 = phi i16 [ %pot.0, %if.then29 ], [ -1, %do.end42 ], [ -1, %if.then18 ], [ -1, %do.body6 ], [ -1, %do.cond48.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @INFTL_makefreeblock(ptr noundef %inftl, i32 noundef %pendingblock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_makefreeblock.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_makefreeblock, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_makefreeblock.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.27, ptr noundef %inftl, i32 noundef %pendingblock) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 18
  %0 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %do.end.do.end35_crit_edge, label %for.body.lr.ph

do.end.do.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

for.body.lr.ph:                                   ; preds = %do.end
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 17
  %lastEUN = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 10
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %conv8 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %while.end.for.body_crit_edge ]
  %LongestChain.07 = phi i16 [ 0, %for.body.lr.ph ], [ %spec.select1, %while.end.for.body_crit_edge ]
  %ChainLength.06 = phi i16 [ 0, %for.body.lr.ph ], [ %12, %while.end.for.body_crit_edge ]
  %chain.05 = phi i16 [ 0, %for.body.lr.ph ], [ %inc28, %while.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %VUtable, align 8
  %arrayidx = getelementptr i16, ptr %3, i32 %conv8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lastEUN, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %for.body
  %EUN.0 = phi i16 [ %5, %for.body ], [ %11, %while.body.while.cond_crit_edge ]
  %thislen.0 = phi i16 [ 0, %for.body ], [ %inc, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %EUN.0, i16 %7)
  %cmp6.not = icmp ugt i16 %EUN.0, %7
  br i1 %cmp6.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %conv4 = zext i16 %EUN.0 to i32
  %inc = add nuw i16 %thislen.0, 1
  %8 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PUtable, align 4
  %arrayidx9 = getelementptr i16, ptr %9, i32 %conv4
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx9, align 2
  %cmp11 = icmp ugt i16 %thislen.0, -257
  br i1 %cmp11, label %do.end16, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.end16:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv19 = zext i16 %11 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv8, i32 noundef %conv19) #13
  br label %while.end

while.end:                                        ; preds = %do.end16, %while.cond.while.end_crit_edge
  %thislen.1 = phi i16 [ 0, %do.end16 ], [ %thislen.0, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %thislen.1, i16 %ChainLength.06)
  %cmp24 = icmp ugt i16 %thislen.1, %ChainLength.06
  %12 = tail call i16 @llvm.umax.i16(i16 %thislen.1, i16 %ChainLength.06)
  %spec.select1 = select i1 %cmp24, i16 %chain.05, i16 %LongestChain.07
  %inc28 = add i16 %chain.05, 1
  %conv = zext i16 %inc28 to i32
  %13 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nb_blocks, align 4
  %cmp = icmp ugt i32 %14, %conv
  br i1 %cmp, label %while.end.for.body_crit_edge, label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %phi.cmp = icmp ult i16 %12, 2
  br i1 %phi.cmp, label %for.end.do.end35_crit_edge, label %if.end38

for.end.do.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

do.end35:                                         ; preds = %for.end.do.end35_crit_edge, %do.end.do.end35_crit_edge
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #13
  br label %cleanup

if.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast = zext i16 %spec.select1 to i32
  %call40 = tail call fastcc zeroext i16 @INFTL_foldchain(ptr noundef %inftl, i32 noundef %phi.cast, i32 noundef %pendingblock)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @INFTL_foldchain(ptr noundef %inftl, i32 noundef %thisVUC, i32 noundef %pendingblock) unnamed_addr #0 align 64 {
entry:
  %ops.i299 = alloca %struct.mtd_oob_ops, align 4
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %BlockMap = alloca [64 x i16], align 2
  %BlockDeleted = alloca [64 x i8], align 1
  %oob = alloca %struct.inftl_oob, align 1
  %retlen = alloca i32, align 4
  %movebuf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %BlockMap) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %BlockDeleted) #10
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %inftl, i32 0, i32 2
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oob) #10
  %2 = getelementptr inbounds %struct.inftl_bci, ptr %oob, i32 0, i32 1
  %3 = getelementptr inbounds %struct.inftl_bci, ptr %oob, i32 0, i32 2
  %4 = call ptr @memset(ptr %oob, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %5 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %retlen, align 4, !annotation !174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_foldchain.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_foldchain, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_foldchain.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.33, ptr noundef %inftl, i32 noundef %thisVUC, i32 noundef %pendingblock) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = call ptr @memset(ptr %BlockMap, i32 255, i32 128)
  %7 = call ptr @memset(ptr %BlockDeleted, i32 0, i32 64)
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 17
  %8 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %VUtable, align 8
  %arrayidx = getelementptr i16, ptr %9, i32 %thisVUC
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp = icmp eq i16 %11, -1
  br i1 %cmp, label %do.end9, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 18
  %12 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp13316 = icmp ugt i32 %13, %conv
  br i1 %cmp13316, label %for.cond.preheader.lr.ph, label %while.cond.preheader.do.body57_crit_edge

while.cond.preheader.do.body57_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

for.cond.preheader.lr.ph:                         ; preds = %while.cond.preheader
  %EraseSize = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 2
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 4
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %17 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %18 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %19 = getelementptr inbounds i8, ptr %ops.i, i32 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  br label %for.cond.preheader

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %thisVUC) #13
  br label %cleanup209

for.cond.preheader:                               ; preds = %if.end54.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %thisEUN.0318 = phi i32 [ %conv, %for.cond.preheader.lr.ph ], [ %conv56, %if.end54.for.cond.preheader_crit_edge ]
  %silly.0317 = phi i32 [ 10000, %for.cond.preheader.lr.ph ], [ %dec, %if.end54.for.cond.preheader_crit_edge ]
  %20 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %EraseSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %21)
  %cmp15313.not = icmp ult i32 %21, 512
  br i1 %cmp15313.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv38 = trunc i32 %thisEUN.0318 to i16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %22 = phi i32 [ %21, %for.body.lr.ph ], [ %46, %for.inc.for.body_crit_edge ]
  %block.0314 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx17 = getelementptr [64 x i16], ptr %BlockMap, i32 0, i32 %block.0314
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %24)
  %cmp19.not = icmp eq i16 %24, -1
  br i1 %cmp19.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx21 = getelementptr [64 x i8], ptr %BlockDeleted, i32 0, i32 %block.0314
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool23.not = icmp eq i8 %26, 0
  br i1 %tobool23.not, label %if.end25, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end25:                                         ; preds = %lor.lhs.false
  %mul = mul i32 %22, %thisEUN.0318
  %mul27 = shl i32 %block.0314, 9
  %add = add i32 %mul, %mul27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %27 = call ptr @memset(ptr %19, i32 255, i32 16)
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ops.i, align 4
  %29 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writesize.i, align 4
  %sub.i = add i32 %30, -1
  %conv1.i = and i32 %sub.i, %add
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv1.i, ptr %16, align 4
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %14, align 4
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %oob, ptr %18, align 4
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %17, align 4
  %neg.i = sub i32 0, %30
  %and5.i310 = and i32 %add, %neg.i
  %and5.i = zext i32 %and5.i310 to i64
  %call.i = call i32 @mtd_read_oob(ptr noundef %1, i64 noundef %and5.i, ptr noundef nonnull %ops.i) #10
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %15, align 4
  %37 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp30 = icmp slt i32 %call.i, 0
  br i1 %cmp30, label %if.end25.for.inc_crit_edge, label %if.end36

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end36:                                         ; preds = %if.end25
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %2, align 1
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %3, align 1
  %or289 = or i8 %41, %39
  %42 = zext i8 %or289 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %or289, label %do.end44 [
    i8 -1, label %if.end36.for.inc_crit_edge
    i8 17, label %if.end36.for.inc_crit_edge325
    i8 85, label %sw.bb37
    i8 0, label %sw.bb40
  ]

if.end36.for.inc_crit_edge325:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb37:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv38, ptr %arrayidx17, align 2
  br label %for.inc

sw.bb40:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %arrayidx21, align 1
  br label %for.inc

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %or = zext i8 %or289 to i32
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %block.0314, i32 noundef %thisEUN.0318, i32 noundef %or) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end44, %sw.bb40, %sw.bb37, %if.end36.for.inc_crit_edge, %if.end36.for.inc_crit_edge325, %if.end25.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %block.0314, 1
  %45 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %EraseSize, align 4
  %div288 = lshr i32 %46, 9
  %cmp15 = icmp ult i32 %inc, %div288
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.0317)
  %tobool47.not = icmp eq i32 %silly.0317, 0
  br i1 %tobool47.not, label %do.end51, label %if.end54

do.end51:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %thisVUC) #13
  br label %cleanup209

if.end54:                                         ; preds = %for.end
  %dec = add nsw i32 %silly.0317, -1
  %47 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %PUtable, align 4
  %arrayidx55 = getelementptr i16, ptr %48, i32 %thisEUN.0318
  %49 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx55, align 2
  %conv56 = zext i16 %50 to i32
  %51 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nb_blocks, align 4
  %cmp13 = icmp ugt i32 %52, %conv56
  br i1 %cmp13, label %if.end54.for.cond.preheader_crit_edge, label %if.end54.do.body57_crit_edge

if.end54.do.body57_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

if.end54.for.cond.preheader_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

do.body57:                                        ; preds = %if.end54.do.body57_crit_edge, %while.cond.preheader.do.body57_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_foldchain.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_foldchain, %if.then69)) #10
          to label %do.end72 [label %if.then69], !srcloc !173

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_foldchain.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.40, i32 noundef %thisVUC, i32 noundef %conv) #10
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body57
  %EraseSize74 = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 2
  %53 = ptrtoint ptr %EraseSize74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %EraseSize74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %54)
  %cmp76321.not = icmp ult i32 %54, 512
  br i1 %cmp76321.not, label %do.end72.do.body159_crit_edge, label %for.body78.lr.ph

do.end72.do.body159_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body159

for.body78.lr.ph:                                 ; preds = %do.end72
  %div75286320 = lshr i32 %54, 9
  %55 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i299, i32 0, i32 1
  %56 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i299, i32 0, i32 2
  %57 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i299, i32 0, i32 3
  %58 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i299, i32 0, i32 5
  %59 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i299, i32 0, i32 6
  %60 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i299, i32 0, i32 7
  br label %for.body78

for.body78:                                       ; preds = %cleanup.for.body78_crit_edge, %for.body78.lr.ph
  %div75286324 = phi i32 [ %div75286320, %for.body78.lr.ph ], [ %div75286, %cleanup.for.body78_crit_edge ]
  %61 = phi i32 [ %54, %for.body78.lr.ph ], [ %89, %cleanup.for.body78_crit_edge ]
  %block.1322 = phi i32 [ 0, %for.body78.lr.ph ], [ %inc157, %cleanup.for.body78_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %movebuf) #10
  %62 = call ptr @memset(ptr %movebuf, i32 255, i32 512)
  %arrayidx79 = getelementptr [64 x i16], ptr %BlockMap, i32 0, i32 %block.1322
  %63 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx79, align 2
  %conv80 = zext i16 %64 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %11)
  %cmp81 = icmp eq i16 %64, %11
  br i1 %cmp81, label %for.body78.cleanup_crit_edge, label %lor.lhs.false83

for.body78.cleanup_crit_edge:                     ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false83:                                  ; preds = %for.body78
  %mul86 = mul i32 %div75286324, %thisVUC
  %add87 = add i32 %mul86, %block.1322
  call void @__sanitizer_cov_trace_cmp4(i32 %add87, i32 %pendingblock)
  %cmp88 = icmp eq i32 %add87, %pendingblock
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %64)
  %cmp94 = icmp eq i16 %64, -1
  %or.cond = select i1 %cmp88, i1 true, i1 %cmp94
  br i1 %or.cond, label %lor.lhs.false83.cleanup_crit_edge, label %if.end97

lor.lhs.false83.cleanup_crit_edge:                ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end97:                                         ; preds = %lor.lhs.false83
  %mul101 = mul i32 %61, %conv80
  %mul102 = shl i32 %block.1322, 9
  %add103 = add i32 %mul101, %mul102
  %conv104 = zext i32 %add103 to i64
  %call106 = call i32 @mtd_read(ptr noundef %1, i64 noundef %conv104, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef nonnull %movebuf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call106)
  %cmp107 = icmp sgt i32 %call106, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call106)
  %cmp.i.not = icmp eq i32 %call106, -117
  %or.cond311 = or i1 %cmp107, %cmp.i.not
  br i1 %or.cond311, label %if.end97.if.end141_crit_edge, label %if.then111

if.end97.if.end141_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then111:                                       ; preds = %if.end97
  %65 = ptrtoint ptr %EraseSize74 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %EraseSize74, align 4
  %mul115 = mul i32 %66, %conv80
  %add117 = add i32 %mul115, %mul102
  %conv118 = zext i32 %add117 to i64
  %call120 = call i32 @mtd_read(ptr noundef %1, i64 noundef %conv118, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef nonnull %movebuf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call120)
  %cmp121.not = icmp eq i32 %call120, -5
  br i1 %cmp121.not, label %if.then111.if.end141_crit_edge, label %do.body124

if.then111.if.end141_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

do.body124:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_foldchain.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_foldchain, %if.then136)) #10
          to label %if.end141 [label %if.then136], !srcloc !173

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_foldchain.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.41) #10
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %do.body124, %if.then111.if.end141_crit_edge, %if.end97.if.end141_crit_edge
  %67 = call ptr @memset(ptr %oob, i32 255, i32 16)
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 85, ptr %3, align 1
  %69 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 85, ptr %2, align 1
  %70 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mtd1, align 4
  %72 = ptrtoint ptr %EraseSize74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %EraseSize74, align 4
  %mul149 = mul i32 %73, %conv
  %add151 = add i32 %mul149, %mul102
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i299) #10
  %74 = call ptr @memset(ptr %56, i32 255, i32 12)
  %75 = ptrtoint ptr %ops.i299 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %ops.i299, align 4
  %76 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add151, ptr %58, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %71, i32 0, i32 6
  %77 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %oobsize.i, align 4
  %79 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %57, align 4
  %80 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %oob, ptr %60, align 4
  %81 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %movebuf, ptr %59, align 4
  %82 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 512, ptr %55, align 4
  %writesize.i300 = getelementptr inbounds %struct.mtd_info, ptr %71, i32 0, i32 4
  %83 = ptrtoint ptr %writesize.i300 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %writesize.i300, align 4
  %neg.i301 = sub i32 0, %84
  %and.i309 = and i32 %add151, %neg.i301
  %and.i = zext i32 %and.i309 to i64
  %call.i302 = call i32 @mtd_write_oob(ptr noundef %71, i64 noundef %and.i, ptr noundef nonnull %ops.i299) #10
  %85 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %56, align 4
  %87 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i299) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %lor.lhs.false83.cleanup_crit_edge, %for.body78.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %movebuf) #10
  %inc157 = add nuw nsw i32 %block.1322, 1
  %88 = ptrtoint ptr %EraseSize74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %EraseSize74, align 4
  %div75286 = lshr i32 %89, 9
  %cmp76 = icmp ult i32 %inc157, %div75286
  br i1 %cmp76, label %cleanup.for.body78_crit_edge, label %cleanup.do.body159_crit_edge

cleanup.do.body159_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body159

cleanup.for.body78_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body78

do.body159:                                       ; preds = %cleanup.do.body159_crit_edge, %do.end72.do.body159_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_foldchain.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_foldchain, %if.then171)) #10
          to label %do.end174 [label %if.then171], !srcloc !173

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_foldchain.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.42, i32 noundef %thisVUC) #10
  br label %do.end174

do.end174:                                        ; preds = %if.then171, %do.body159
  %PUtable180 = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  %numfreeEUNs = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 11
  br label %for.cond175

for.cond175:                                      ; preds = %for.cond175.backedge, %do.end174
  %90 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %VUtable, align 8
  %arrayidx177 = getelementptr i16, ptr %91, i32 %thisVUC
  %92 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx177, align 2
  %94 = ptrtoint ptr %PUtable180 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %PUtable180, align 4
  br label %while.cond179

while.cond179:                                    ; preds = %while.cond179.while.cond179_crit_edge, %for.cond175
  %prevEUN.0 = phi i32 [ 65535, %for.cond175 ], [ %thisEUN.1, %while.cond179.while.cond179_crit_edge ]
  %thisEUN.1.in = phi i16 [ %93, %for.cond175 ], [ %97, %while.cond179.while.cond179_crit_edge ]
  %thisEUN.1 = zext i16 %thisEUN.1.in to i32
  %arrayidx181 = getelementptr i16, ptr %95, i32 %thisEUN.1
  %96 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx181, align 2
  %cmp183.not = icmp eq i16 %97, -1
  br i1 %cmp183.not, label %while.end189, label %while.cond179.while.cond179_crit_edge

while.cond179.while.cond179_crit_edge:            ; preds = %while.cond179
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond179

while.end189:                                     ; preds = %while.cond179
  call void @__sanitizer_cov_trace_cmp2(i16 %thisEUN.1.in, i16 %11)
  %cmp190 = icmp eq i16 %thisEUN.1.in, %11
  br i1 %cmp190, label %while.end189.cleanup209_crit_edge, label %if.end193

while.end189.cleanup209_crit_edge:                ; preds = %while.end189
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup209

if.end193:                                        ; preds = %while.end189
  %arrayidx195 = getelementptr i16, ptr %95, i32 %prevEUN.0
  %98 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -1, ptr %arrayidx195, align 2
  %call196 = call i32 @INFTL_formatblock(ptr noundef %inftl, i32 noundef %thisEUN.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp slt i32 %call196, 0
  %99 = ptrtoint ptr %PUtable180 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %PUtable180, align 4
  %arrayidx201 = getelementptr i16, ptr %100, i32 %thisEUN.1
  br i1 %cmp197, label %if.then199, label %if.else202

if.then199:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -4, ptr %arrayidx201, align 2
  br label %for.cond175.backedge

if.else202:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -2, ptr %arrayidx201, align 2
  %103 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %numfreeEUNs, align 2
  %inc205 = add i16 %104, 1
  store i16 %inc205, ptr %numfreeEUNs, align 2
  br label %for.cond175.backedge

for.cond175.backedge:                             ; preds = %if.else202, %if.then199
  br label %for.cond175

cleanup209:                                       ; preds = %while.end189.cleanup209_crit_edge, %do.end51, %do.end9
  %retval.0 = phi i16 [ -1, %do.end9 ], [ -1, %do.end51 ], [ %11, %while.end189.cleanup209_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oob) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %BlockDeleted) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %BlockMap) #10
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @INFTL_formatblock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @INFTL_trydeletechain(ptr noundef %inftl, i32 noundef %thisVUC) unnamed_addr #0 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  %BlockUsed = alloca [64 x i8], align 1
  %BlockDeleted = alloca [64 x i8], align 1
  %bci = alloca %struct.inftl_bci, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %inftl, i32 0, i32 2
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %BlockUsed) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %BlockDeleted) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bci) #10
  %2 = getelementptr inbounds %struct.inftl_bci, ptr %bci, i32 0, i32 1
  %3 = getelementptr inbounds %struct.inftl_bci, ptr %bci, i32 0, i32 2
  %4 = ptrtoint ptr %bci to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %bci, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_trydeletechain.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_trydeletechain, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_trydeletechain.__UNIQUE_ID_ddebug214, ptr noundef nonnull @.str.49, ptr noundef %inftl, i32 noundef %thisVUC) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = call ptr @memset(ptr %BlockUsed, i32 0, i32 64)
  %6 = call ptr @memset(ptr %BlockDeleted, i32 0, i32 64)
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 17
  %7 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %VUtable, align 8
  %arrayidx = getelementptr i16, ptr %8, i32 %thisVUC
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp = icmp eq i16 %10, -1
  br i1 %cmp, label %do.end9, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 18
  %thisEUN.0254 = zext i16 %10 to i32
  %11 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %thisEUN.0254)
  %cmp13255 = icmp ugt i32 %12, %thisEUN.0254
  br i1 %cmp13255, label %for.cond.preheader.lr.ph, label %while.cond.preheader.for.cond54.preheader_crit_edge

while.cond.preheader.for.cond54.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond54.preheader

for.cond.preheader.lr.ph:                         ; preds = %while.cond.preheader
  %EraseSize = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 2
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  %17 = getelementptr inbounds i8, ptr %ops.i, i32 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  br label %for.cond.preheader

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %thisVUC) #13
  br label %cleanup167

for.cond.preheader:                               ; preds = %if.end51.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %thisEUN.0257 = phi i32 [ %thisEUN.0254, %for.cond.preheader.lr.ph ], [ %thisEUN.0, %if.end51.for.cond.preheader_crit_edge ]
  %silly.0256 = phi i32 [ 10000, %for.cond.preheader.lr.ph ], [ %dec, %if.end51.for.cond.preheader_crit_edge ]
  %18 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %EraseSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %19)
  %cmp15251.not = icmp ult i32 %19, 512
  br i1 %cmp15251.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond54.preheader:                             ; preds = %if.end51.for.cond54.preheader_crit_edge, %while.cond.preheader.for.cond54.preheader_crit_edge
  %EraseSize55 = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 2
  %20 = ptrtoint ptr %EraseSize55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %EraseSize55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %21)
  %cmp57258.not = icmp ult i32 %21, 512
  br i1 %cmp57258.not, label %for.cond54.preheader.do.body67_crit_edge, label %for.body59.preheader

for.cond54.preheader.do.body67_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body67

for.body59.preheader:                             ; preds = %for.cond54.preheader
  %div56223 = lshr i32 %21, 9
  br label %for.body59

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %22 = phi i32 [ %43, %for.inc.for.body_crit_edge ], [ %19, %for.cond.preheader.for.body_crit_edge ]
  %block.0252 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx17 = getelementptr [64 x i8], ptr %BlockUsed, i32 0, i32 %block.0252
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool19.not = icmp eq i8 %24, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx20 = getelementptr [64 x i8], ptr %BlockDeleted, i32 0, i32 %block.0252
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool22.not = icmp eq i8 %26, 0
  br i1 %tobool22.not, label %if.end24, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end24:                                         ; preds = %lor.lhs.false
  %mul = mul i32 %22, %thisEUN.0257
  %mul26 = shl i32 %block.0252, 9
  %add = add i32 %mul, %mul26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #10
  %27 = call ptr @memset(ptr %17, i32 255, i32 16)
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ops.i, align 4
  %29 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writesize.i, align 4
  %sub.i = add i32 %30, -1
  %conv1.i = and i32 %sub.i, %add
  %31 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv1.i, ptr %14, align 4
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %13, align 4
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bci, ptr %16, align 4
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %15, align 4
  %neg.i = sub i32 0, %30
  %and5.i243 = and i32 %add, %neg.i
  %and5.i = zext i32 %and5.i243 to i64
  %call.i = call i32 @mtd_read_oob(ptr noundef %1, i64 noundef %and5.i, ptr noundef nonnull %ops.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp29 = icmp slt i32 %call.i, 0
  br i1 %cmp29, label %if.end24.for.inc_crit_edge, label %if.end34

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end34:                                         ; preds = %if.end24
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %2, align 2
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %3, align 1
  %or225 = or i8 %38, %36
  %39 = zext i8 %or225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %or225, label %do.end41 [
    i8 -1, label %if.end34.for.inc_crit_edge
    i8 17, label %if.end34.for.inc_crit_edge280
    i8 85, label %sw.bb35
    i8 0, label %sw.bb37
  ]

if.end34.for.inc_crit_edge280:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb35:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %arrayidx17, align 1
  br label %for.inc

sw.bb37:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %arrayidx20, align 1
  br label %for.inc

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %or = zext i8 %or225 to i32
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %block.0252, i32 noundef %thisEUN.0257, i32 noundef %or) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end41, %sw.bb37, %sw.bb35, %if.end34.for.inc_crit_edge, %if.end34.for.inc_crit_edge280, %if.end24.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %block.0252, 1
  %42 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %EraseSize, align 4
  %div224 = lshr i32 %43, 9
  %cmp15 = icmp ult i32 %inc, %div224
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silly.0256)
  %tobool44.not = icmp eq i32 %silly.0256, 0
  br i1 %tobool44.not, label %do.end48, label %if.end51

do.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %thisVUC) #13
  br label %cleanup167

if.end51:                                         ; preds = %for.end
  %dec = add nsw i32 %silly.0256, -1
  %44 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %PUtable, align 4
  %arrayidx52 = getelementptr i16, ptr %45, i32 %thisEUN.0257
  %46 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx52, align 2
  %thisEUN.0 = zext i16 %47 to i32
  %48 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nb_blocks, align 4
  %cmp13 = icmp ugt i32 %49, %thisEUN.0
  br i1 %cmp13, label %if.end51.for.cond.preheader_crit_edge, label %if.end51.for.cond54.preheader_crit_edge

if.end51.for.cond54.preheader_crit_edge:          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond54.preheader

if.end51.for.cond.preheader_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.cond54:                                       ; preds = %for.body59
  %inc65 = add nuw nsw i32 %block.1259, 1
  %exitcond.not = icmp eq i32 %inc65, %div56223
  br i1 %exitcond.not, label %for.cond54.do.body67_crit_edge, label %for.cond54.for.body59_crit_edge

for.cond54.for.body59_crit_edge:                  ; preds = %for.cond54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body59

for.cond54.do.body67_crit_edge:                   ; preds = %for.cond54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body67

for.body59:                                       ; preds = %for.cond54.for.body59_crit_edge, %for.body59.preheader
  %block.1259 = phi i32 [ %inc65, %for.cond54.for.body59_crit_edge ], [ 0, %for.body59.preheader ]
  %arrayidx60 = getelementptr [64 x i8], ptr %BlockUsed, i32 0, i32 %block.1259
  %50 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool61.not = icmp eq i8 %51, 0
  br i1 %tobool61.not, label %for.cond54, label %for.body59.cleanup167_crit_edge

for.body59.cleanup167_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup167

do.body67:                                        ; preds = %for.cond54.do.body67_crit_edge, %for.cond54.preheader.do.body67_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_trydeletechain.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_trydeletechain, %if.then79)) #10
          to label %do.end82 [label %if.then79], !srcloc !173

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_trydeletechain.__UNIQUE_ID_ddebug215, ptr noundef nonnull @.str.55, i32 noundef %thisVUC) #10
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %do.body67
  %PUtable108 = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  %numfreeEUNs = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 11
  %52 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %VUtable, align 8
  %arrayidx85273 = getelementptr i16, ptr %53, i32 %thisVUC
  %54 = ptrtoint ptr %arrayidx85273 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx85273, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %cmp87274 = icmp eq i16 %55, -1
  br i1 %cmp87274, label %do.end82.do.body90_crit_edge, label %do.end82.while.cond107.preheader_crit_edge

do.end82.while.cond107.preheader_crit_edge:       ; preds = %do.end82
  br label %while.cond107.preheader

do.end82.do.body90_crit_edge:                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body90

while.cond107.preheader:                          ; preds = %if.end164.while.cond107.preheader_crit_edge, %do.end82.while.cond107.preheader_crit_edge
  %56 = phi i16 [ %76, %if.end164.while.cond107.preheader_crit_edge ], [ %55, %do.end82.while.cond107.preheader_crit_edge ]
  %arrayidx85275 = phi ptr [ %arrayidx85, %if.end164.while.cond107.preheader_crit_edge ], [ %arrayidx85273, %do.end82.while.cond107.preheader_crit_edge ]
  %57 = ptrtoint ptr %PUtable108 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %PUtable108, align 4
  %thisEUN.1260 = zext i16 %56 to i32
  %arrayidx109261 = getelementptr i16, ptr %58, i32 %thisEUN.1260
  %59 = ptrtoint ptr %arrayidx109261 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx109261, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %60)
  %cmp111.not262 = icmp eq i16 %60, -1
  br i1 %cmp111.not262, label %while.cond107.preheader.do.body138_crit_edge, label %do.body114.lr.ph

while.cond107.preheader.do.body138_crit_edge:     ; preds = %while.cond107.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body138

do.body114.lr.ph:                                 ; preds = %while.cond107.preheader
  %61 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nb_blocks, align 4
  br label %do.body114

do.body90:                                        ; preds = %if.end164.do.body90_crit_edge, %do.end82.do.body90_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_trydeletechain.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_trydeletechain, %if.then102)) #10
          to label %cleanup167 [label %if.then102], !srcloc !173

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_trydeletechain.__UNIQUE_ID_ddebug216, ptr noundef nonnull @.str.56, i32 noundef 65535) #10
  br label %cleanup167

while.cond107:                                    ; preds = %do.body114
  %thisEUN.1 = zext i16 %65 to i32
  %arrayidx109 = getelementptr i16, ptr %58, i32 %thisEUN.1
  %63 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx109, align 2
  %cmp111.not = icmp eq i16 %64, -1
  br i1 %cmp111.not, label %while.cond107.do.body138_crit_edge, label %while.cond107.do.body114_crit_edge

while.cond107.do.body114_crit_edge:               ; preds = %while.cond107
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body114

while.cond107.do.body138_crit_edge:               ; preds = %while.cond107
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body138

do.body114:                                       ; preds = %while.cond107.do.body114_crit_edge, %do.body114.lr.ph
  %65 = phi i16 [ %60, %do.body114.lr.ph ], [ %64, %while.cond107.do.body114_crit_edge ]
  %arrayidx109264 = phi ptr [ %arrayidx109261, %do.body114.lr.ph ], [ %arrayidx109, %while.cond107.do.body114_crit_edge ]
  %thisEUN.1263 = phi i32 [ %thisEUN.1260, %do.body114.lr.ph ], [ %thisEUN.1, %while.cond107.do.body114_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %thisEUN.1263)
  %cmp116.not = icmp ugt i32 %62, %thisEUN.1263
  br i1 %cmp116.not, label %while.cond107, label %do.body125, !prof !175

do.body125:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/inftlcore.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 713, 0\0A.popsection", ""() #10, !srcloc !176
  unreachable

do.body138:                                       ; preds = %while.cond107.do.body138_crit_edge, %while.cond107.preheader.do.body138_crit_edge
  %prevEUN.0.lcssa = phi ptr [ %arrayidx85275, %while.cond107.preheader.do.body138_crit_edge ], [ %arrayidx109264, %while.cond107.do.body138_crit_edge ]
  %thisEUN.1.lcssa = phi i32 [ %thisEUN.1260, %while.cond107.preheader.do.body138_crit_edge ], [ %thisEUN.1, %while.cond107.do.body138_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_trydeletechain.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_trydeletechain, %if.then150)) #10
          to label %do.end153 [label %if.then150], !srcloc !173

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_trydeletechain.__UNIQUE_ID_ddebug217, ptr noundef nonnull @.str.57, i32 noundef %thisEUN.1.lcssa, i32 noundef %thisVUC) #10
  br label %do.end153

do.end153:                                        ; preds = %if.then150, %do.body138
  %call154 = call i32 @INFTL_formatblock(ptr noundef %inftl, i32 noundef %thisEUN.1.lcssa) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp slt i32 %call154, 0
  %66 = ptrtoint ptr %PUtable108 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %PUtable108, align 4
  %arrayidx159 = getelementptr i16, ptr %67, i32 %thisEUN.1.lcssa
  br i1 %cmp155, label %if.then157, label %if.else160

if.then157:                                       ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -4, ptr %arrayidx159, align 2
  br label %if.end164

if.else160:                                       ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 -2, ptr %arrayidx159, align 2
  %70 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %numfreeEUNs, align 2
  %inc163 = add i16 %71, 1
  store i16 %inc163, ptr %numfreeEUNs, align 2
  br label %if.end164

if.end164:                                        ; preds = %if.else160, %if.then157
  %72 = ptrtoint ptr %prevEUN.0.lcssa to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %prevEUN.0.lcssa, align 2
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 739, i32 noundef 0) #10
  %call.i236 = call i32 @__cond_resched() #10
  %73 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %VUtable, align 8
  %arrayidx85 = getelementptr i16, ptr %74, i32 %thisVUC
  %75 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx85, align 2
  %cmp87 = icmp eq i16 %76, -1
  br i1 %cmp87, label %if.end164.do.body90_crit_edge, label %if.end164.while.cond107.preheader_crit_edge

if.end164.while.cond107.preheader_crit_edge:      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond107.preheader

if.end164.do.body90_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body90

cleanup167:                                       ; preds = %if.then102, %do.body90, %for.body59.cleanup167_crit_edge, %do.end48, %do.end9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bci) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %BlockDeleted) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %BlockUsed) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @INFTL_mount(ptr noundef) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !142, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__initcall__kmod_inftl__221_940_inftl_tr_init6, !1, !"__initcall__kmod_inftl__221_940_inftl_tr_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/inftlcore.c", i32 940, i32 1}
!2 = !{ptr @__exitcall_inftl_tr_exit, !1, !"__exitcall_inftl_tr_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file222, !4, !"__UNIQUE_ID_file222", i1 false, i1 false}
!4 = !{!"../drivers/mtd/inftlcore.c", i32 942, i32 1}
!5 = !{ptr @__UNIQUE_ID_license223, !4, !"__UNIQUE_ID_license223", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author224, !7, !"__UNIQUE_ID_author224", i1 false, i1 false}
!7 = !{!"../drivers/mtd/inftlcore.c", i32 943, i32 1}
!8 = !{ptr @__UNIQUE_ID_description225, !9, !"__UNIQUE_ID_description225", i1 false, i1 false}
!9 = !{!"../drivers/mtd/inftlcore.c", i32 944, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/inftlcore.c", i32 928, i32 11}
!12 = !{ptr @inftl_tr, !13, !"inftl_tr", i1 false, i1 false}
!13 = !{!"../drivers/mtd/inftlcore.c", i32 927, i32 32}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/inftlcore.c", i32 864, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @inftl_readblock.__UNIQUE_ID_ddebug220, !15, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/inftlcore.c", i32 884, i32 4}
!21 = !{ptr @inftl_readblock._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @inftl_readblock._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/inftlcore.c", i32 891, i32 4}
!25 = !{ptr @inftl_readblock._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @inftl_readblock._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/inftlcore.c", i32 814, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @inftl_writeblock.__UNIQUE_ID_ddebug219, !28, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/inftlcore.c", i32 826, i32 4}
!33 = !{ptr @inftl_writeblock._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @inftl_writeblock._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/inftlcore.c", i32 472, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @INFTL_findwriteunit.__UNIQUE_ID_ddebug211, !36, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/inftlcore.c", i32 489, i32 4}
!41 = !{ptr @INFTL_findwriteunit.__UNIQUE_ID_ddebug212, !40, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/inftlcore.c", i32 511, i32 5}
!44 = !{ptr @INFTL_findwriteunit._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @INFTL_findwriteunit._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/inftlcore.c", i32 543, i32 4}
!48 = !{ptr @INFTL_findwriteunit.__UNIQUE_ID_ddebug213, !47, !"__UNIQUE_ID_ddebug213", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/inftlcore.c", i32 555, i32 5}
!51 = !{ptr @INFTL_findwriteunit._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @INFTL_findwriteunit._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/inftlcore.c", i32 617, i32 2}
!55 = !{ptr @INFTL_findwriteunit._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @INFTL_findwriteunit._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/inftlcore.c", i32 203, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @INFTL_findfreeblock.__UNIQUE_ID_ddebug204, !58, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/inftlcore.c", i32 211, i32 3}
!63 = !{ptr @INFTL_findfreeblock.__UNIQUE_ID_ddebug205, !62, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/inftlcore.c", i32 227, i32 4}
!66 = !{ptr @INFTL_findfreeblock._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @INFTL_findfreeblock._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/inftlcore.c", i32 409, i32 2}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @INFTL_makefreeblock.__UNIQUE_ID_ddebug210, !69, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/inftlcore.c", i32 420, i32 5}
!74 = !{ptr @INFTL_makefreeblock._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @INFTL_makefreeblock._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/inftlcore.c", i32 439, i32 3}
!78 = !{ptr @INFTL_makefreeblock._entry.29, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @INFTL_makefreeblock._entry_ptr.31, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/inftlcore.c", i32 247, i32 2}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @INFTL_foldchain.__UNIQUE_ID_ddebug206, !81, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/inftlcore.c", i32 256, i32 3}
!86 = !{ptr @INFTL_foldchain._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @INFTL_foldchain._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/inftlcore.c", i32 290, i32 5}
!90 = !{ptr @INFTL_foldchain._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @INFTL_foldchain._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @INFTL_foldchain._entry.38, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/mtd/inftlcore.c", i32 298, i32 4}
!94 = !{ptr @INFTL_foldchain._entry_ptr.39, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/inftlcore.c", i32 311, i32 2}
!97 = !{ptr @INFTL_foldchain.__UNIQUE_ID_ddebug207, !96, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/inftlcore.c", i32 345, i32 5}
!100 = !{ptr @INFTL_foldchain.__UNIQUE_ID_ddebug208, !99, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/inftlcore.c", i32 361, i32 2}
!103 = !{ptr @INFTL_foldchain.__UNIQUE_ID_ddebug209, !102, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/inftlcore.c", i32 755, i32 2}
!106 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @INFTL_deleteblock.__UNIQUE_ID_ddebug218, !105, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/inftlcore.c", i32 775, i32 4}
!110 = !{ptr @INFTL_deleteblock._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @INFTL_deleteblock._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @INFTL_deleteblock._entry.46, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/mtd/inftlcore.c", i32 782, i32 4}
!114 = !{ptr @INFTL_deleteblock._entry_ptr.47, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/inftlcore.c", i32 635, i32 2}
!117 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @INFTL_trydeletechain.__UNIQUE_ID_ddebug214, !116, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/inftlcore.c", i32 643, i32 3}
!121 = !{ptr @INFTL_trydeletechain._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @INFTL_trydeletechain._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @INFTL_trydeletechain._entry.51, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/mtd/inftlcore.c", i32 676, i32 5}
!125 = !{ptr @INFTL_trydeletechain._entry_ptr.52, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @INFTL_trydeletechain._entry.53, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/mtd/inftlcore.c", i32 683, i32 4}
!128 = !{ptr @INFTL_trydeletechain._entry_ptr.54, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/inftlcore.c", i32 699, i32 2}
!131 = !{ptr @INFTL_trydeletechain.__UNIQUE_ID_ddebug215, !130, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/inftlcore.c", i32 707, i32 4}
!134 = !{ptr @INFTL_trydeletechain.__UNIQUE_ID_ddebug216, !133, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/inftlcore.c", i32 719, i32 3}
!137 = !{ptr @INFTL_trydeletechain.__UNIQUE_ID_ddebug217, !136, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mtd/inftlcore.c", i32 43, i32 24}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mtd/inftlcore.c", i32 47, i32 3}
!142 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @inftl_add_mtd._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @inftl_add_mtd._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mtd/inftlcore.c", i32 53, i32 2}
!147 = !{ptr @inftl_add_mtd.__UNIQUE_ID_ddebug202, !146, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/inftlcore.c", i32 66, i32 3}
!150 = !{ptr @inftl_add_mtd._entry.62, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @inftl_add_mtd._entry_ptr.64, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/inftlcore.c", i32 96, i32 3}
!154 = !{ptr @inftl_add_mtd._entry.65, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @inftl_add_mtd._entry_ptr.67, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mtd/inftlcore.c", i32 98, i32 3}
!158 = !{ptr @inftl_add_mtd._entry.68, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @inftl_add_mtd._entry_ptr.70, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/inftlcore.c", i32 121, i32 2}
!162 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @inftl_remove_dev.__UNIQUE_ID_ddebug203, !161, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{i64 2148713790, i64 2148713795, i64 2148713808, i64 2148713852, i64 2148713886, i64 2148713907}
!174 = !{!"auto-init"}
!175 = !{!"branch_weights", i32 2000, i32 1}
!176 = !{i64 2153305424, i64 2153305912, i64 2153305461, i64 2153305517, i64 2153305551, i64 2153305575, i64 2153305616, i64 2153305637, i64 2153305665, i64 2153305699}
