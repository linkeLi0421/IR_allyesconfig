; ModuleID = '/llk/IR_all_yes/drivers/mtd/inftlmount.c_pt.bc'
source_filename = "../drivers/mtd/inftlmount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inftl_unittail = type { [4 x i8], i16, i16 }
%struct.INFTLrecord = type { %struct.mtd_blktrans_dev, i16, i32, %struct.INFTLMediaHeader, i32, i8, i8, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, i32, i32, %struct.erase_info }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.INFTLMediaHeader = type { [8 x i8], i32, i32, i32, i32, i32, i32, i32, [4 x %struct.INFTLPartition] }
%struct.INFTLPartition = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.inftl_unithead1 = type { i16, i16, i8, i8, i8, i8 }

@INFTL_formatblock.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inftl\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INFTL_formatblock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mtd/inftlmount.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"INFTL: INFTL_formatblock(inftl=%p,block=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@INFTL_formatblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014INFTL: error while formatting block %d\0A\00", [54 x i8] zeroinitializer }, align 32
@INFTL_formatblock._entry_ptr = internal global ptr @INFTL_formatblock._entry, section ".printk_index", align 4
@INFTL_dumptables.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INFTL_dumptables\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"-----------------------------------------------------------------------------\0A\00", [49 x i8] zeroinitializer }, align 32
@INFTL_dumptables.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VUtable[%d] ->\00", [17 x i8] zeroinitializer }, align 32
@INFTL_dumptables.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A%04x: \00", [24 x i8] zeroinitializer }, align 32
@INFTL_dumptables.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.9, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04x \00", [26 x i8] zeroinitializer }, align 32
@INFTL_dumptables.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\0A-----------------------------------------------------------------------------\0A\00", [48 x i8] zeroinitializer }, align 32
@INFTL_dumptables.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.11, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PUtable[%d-%d=%d] ->\00", [43 x i8] zeroinitializer }, align 32
@INFTL_dumptables.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@INFTL_dumptables.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.9, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@INFTL_dumptables.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@INFTL_dumptables.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.12, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [222 x i8], [34 x i8] } { [222 x i8] c"INFTL ->\0A  EraseSize       = %d\0A  h/s/c           = %d/%d/%d\0A  numvunits       = %d\0A  firstEUN        = %d\0A  lastEUN         = %d\0A  numfreeEUNs     = %d\0A  LastFreeEUN     = %d\0A  nb_blocks       = %d\0A  nb_boot_blocks  = %d\00", [34 x i8] zeroinitializer }, align 32
@INFTL_dumptables.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@INFTL_dumpVUchains.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.6, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INFTL_dumpVUchains\00", [45 x i8] zeroinitializer }, align 32
@INFTL_dumpVUchains.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"INFTL Virtual Unit Chains:\0A\00", [36 x i8] zeroinitializer }, align 32
@INFTL_dumpVUchains.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  LOGICAL %d --> %d \00", [43 x i8] zeroinitializer }, align 32
@INFTL_dumpVUchains.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@INFTL_dumpVUchains.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.17, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@INFTL_dumpVUchains.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.6, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@INFTL_mount.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INFTL_mount\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"INFTL: INFTL_mount(inftl=%p)\0A\00", [34 x i8] zeroinitializer }, align 32
@INFTL_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014INFTL: could not find valid boot record?\0A\00", [52 x i8] zeroinitializer }, align 32
@INFTL_mount._entry_ptr = internal global ptr @INFTL_mount._entry, section ".printk_index", align 4
@INFTL_mount.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"INFTL: pass 1, explore each unit\0A\00", [62 x i8] zeroinitializer }, align 32
@INFTL_mount._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014INFTL: corrupt block %d in chain %d, chain length %d, erase mark 0x%x?\0A\00", [54 x i8] zeroinitializer }, align 32
@INFTL_mount._entry_ptr.24 = internal global ptr @INFTL_mount._entry.22, section ".printk_index", align 4
@INFTL_mount._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014INFTL: corrupt block %d in chain %d?\0A\00", [56 x i8] zeroinitializer }, align 32
@INFTL_mount._entry_ptr.27 = internal global ptr @INFTL_mount._entry.25, section ".printk_index", align 4
@INFTL_mount._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014INFTL: invalid previous block %d in chain %d?\0A\00", [47 x i8] zeroinitializer }, align 32
@INFTL_mount._entry_ptr.30 = internal global ptr @INFTL_mount._entry.28, section ".printk_index", align 4
@INFTL_mount.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.31, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"INFTL: pass 2, validate virtual chains\0A\00", [56 x i8] zeroinitializer }, align 32
@INFTL_mount._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014INFTL: invalid prev %d, in virtual chain %d\0A\00", [49 x i8] zeroinitializer }, align 32
@INFTL_mount._entry_ptr.34 = internal global ptr @INFTL_mount._entry.32, section ".printk_index", align 4
@INFTL_mount.__UNIQUE_ID_ddebug213 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.35, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"INFTL: pass 3, format unused blocks\0A\00", [59 x i8] zeroinitializer }, align 32
@INFTL_mount._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.18, ptr @.str.2, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"INFTL: unreferenced block %d, formatting it\0A\00", [51 x i8] zeroinitializer }, align 32
@INFTL_mount._entry_ptr.38 = internal global ptr @INFTL_mount._entry.36, section ".printk_index", align 4
@find_boot_record.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"find_boot_record\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"INFTL: find_boot_record(inftl=%p)\0A\00", [61 x i8] zeroinitializer }, align 32
@find_boot_record.warncount = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@find_boot_record._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014INFTL: block read at 0x%x of mtd%d failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr = internal global ptr @find_boot_record._entry, section ".printk_index", align 4
@find_boot_record._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014INFTL: further failures for this block will not be printed\0A\00", [34 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.44 = internal global ptr @find_boot_record._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BNAND\00", [26 x i8] zeroinitializer }, align 32
@find_boot_record._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014INFTL: ANAND header found at 0x%x in mtd%d, but OOB data read failed (err %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.48 = internal global ptr @find_boot_record._entry.46, section ".printk_index", align 4
@find_boot_record._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014INFTL: Unable to read spare Media Header\0A\00", [52 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.51 = internal global ptr @find_boot_record._entry.49, section ".printk_index", align 4
@find_boot_record._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.39, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014INFTL: Primary and spare Media Headers disagree.\0A\00", [44 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.54 = internal global ptr @find_boot_record._entry.52, section ".printk_index", align 4
@find_boot_record.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.55, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [274 x i8], [78 x i8] } { [274 x i8] c"INFTL: Media Header ->\0A    bootRecordID          = %s\0A    NoOfBootImageBlocks   = %d\0A    NoOfBinaryPartitions  = %d\0A    NoOfBDTLPartitions    = %d\0A    BlockMultiplierBits   = %d\0A    FormatFlgs            = %d\0A    OsakVersion           = 0x%x\0A    PercentUsed           = %d\0A\00", [78 x i8] zeroinitializer }, align 32
@find_boot_record._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.39, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\014INFTL: Media Header sanity check failed: NoOfBDTLPartitions (%d) == 0, must be at least 1\0A\00", [35 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.58 = internal global ptr @find_boot_record._entry.56, section ".printk_index", align 4
@find_boot_record._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.39, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014INFTL: Media Header sanity check failed: Total Partitions (%d) > 4, BDTL=%d Binary=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.61 = internal global ptr @find_boot_record._entry.59, section ".printk_index", align 4
@find_boot_record._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.39, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014INFTL: sorry, we don't support UnitSizeFactor 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.64 = internal global ptr @find_boot_record._entry.62, section ".printk_index", align 4
@find_boot_record._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.39, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014INFTL: support for INFTL with UnitSizeFactor 0x%02x is experimental\0A\00", [57 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.67 = internal global ptr @find_boot_record._entry.65, section ".printk_index", align 4
@find_boot_record.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.68, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [169 x i8], [55 x i8] } { [169 x i8] c"    PARTITION[%d] ->\0A        virtualUnits    = %d\0A        firstUnit       = %d\0A        lastUnit        = %d\0A        flags           = 0x%x\0A        spareUnits      = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@find_boot_record._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.39, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\014INFTL: Media Header Partition %d sanity check failed\0A    firstUnit %d : lastUnit %d  >  virtualUnits %d\0A\00", [53 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.71 = internal global ptr @find_boot_record._entry.69, section ".printk_index", align 4
@find_boot_record._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.39, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014INFTL: Media Header Partition %d sanity check failed: Reserved1 %d != 0\0A\00", [53 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.74 = internal global ptr @find_boot_record._entry.72, section ".printk_index", align 4
@find_boot_record._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.39, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\014INFTL: Media Header Partition sanity check failed:\0A       No partition marked as Disk Partition\0A\00", [61 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.77 = internal global ptr @find_boot_record._entry.75, section ".printk_index", align 4
@find_boot_record._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.39, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\014INFTL: Media Header sanity check failed:\0A        numvunits (%d) > nb_blocks (%d) - nb_boot_blocks(%d) - 2\0A\00", [51 x i8] zeroinitializer }, align 32
@find_boot_record._entry_ptr.80 = internal global ptr @find_boot_record._entry.78, section ".printk_index", align 4
@format_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014INFTL: formatting chain at block %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"format_chain\00", [19 x i8] zeroinitializer }, align 32
@format_chain._entry_ptr = internal global ptr @format_chain._entry, section ".printk_index", align 4
@format_chain._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014INFTL: formatting block %d\0A\00", [34 x i8] zeroinitializer }, align 32
@format_chain._entry_ptr.85 = internal global ptr @format_chain._entry.83, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 65279, i64 65535]
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 369, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 388, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 459, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 462, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 465, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 466, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 469, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 472, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 482, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 504, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 507, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 512, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 517, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 519, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 538, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 542, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 564, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 613, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 638, i32 6 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 673, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 703, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 717, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 757, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 760, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 42, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [10 x i8] c"warncount\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 67, i32 15 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 70, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 75, i32 6 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 82, i32 33 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 92, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 110, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 116, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 128, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 144, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 151, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 161, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 166, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 185, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 210, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 218, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 230, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 240, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 431, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private constant [28 x i8] c"../drivers/mtd/inftlmount.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 437, i32 3 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @INFTL_formatblock._entry, ptr @INFTL_formatblock._entry_ptr, ptr @INFTL_mount._entry, ptr @INFTL_mount._entry.22, ptr @INFTL_mount._entry.25, ptr @INFTL_mount._entry.28, ptr @INFTL_mount._entry.32, ptr @INFTL_mount._entry.36, ptr @INFTL_mount._entry_ptr, ptr @INFTL_mount._entry_ptr.24, ptr @INFTL_mount._entry_ptr.27, ptr @INFTL_mount._entry_ptr.30, ptr @INFTL_mount._entry_ptr.34, ptr @INFTL_mount._entry_ptr.38, ptr @find_boot_record._entry, ptr @find_boot_record._entry.42, ptr @find_boot_record._entry.46, ptr @find_boot_record._entry.49, ptr @find_boot_record._entry.52, ptr @find_boot_record._entry.56, ptr @find_boot_record._entry.59, ptr @find_boot_record._entry.62, ptr @find_boot_record._entry.65, ptr @find_boot_record._entry.69, ptr @find_boot_record._entry.72, ptr @find_boot_record._entry.75, ptr @find_boot_record._entry.78, ptr @find_boot_record._entry_ptr, ptr @find_boot_record._entry_ptr.44, ptr @find_boot_record._entry_ptr.48, ptr @find_boot_record._entry_ptr.51, ptr @find_boot_record._entry_ptr.54, ptr @find_boot_record._entry_ptr.58, ptr @find_boot_record._entry_ptr.61, ptr @find_boot_record._entry_ptr.64, ptr @find_boot_record._entry_ptr.67, ptr @find_boot_record._entry_ptr.71, ptr @find_boot_record._entry_ptr.74, ptr @find_boot_record._entry_ptr.77, ptr @find_boot_record._entry_ptr.80, ptr @format_chain._entry, ptr @format_chain._entry.83, ptr @format_chain._entry_ptr, ptr @format_chain._entry_ptr.85, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @find_boot_record.warncount, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_formatblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 222, i32 256, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_mount._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_mount._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_mount._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_mount._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INFTL_mount._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record.warncount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 274, i32 352, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 169, i32 224, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_boot_record._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_chain._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @INFTL_formatblock(ptr noundef %inftl, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  %retlen.i = alloca i32, align 4
  %retlen = alloca i32, align 4
  %uci = alloca %struct.inftl_unittail, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #7
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uci) #7
  %1 = getelementptr inbounds %struct.inftl_unittail, ptr %uci, i32 0, i32 1
  %2 = getelementptr inbounds %struct.inftl_unittail, ptr %uci, i32 0, i32 2
  %instr1 = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 20
  %mtd2 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %inftl, i32 0, i32 2
  %3 = ptrtoint ptr %uci to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %uci, align 8
  %4 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtd2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_formatblock.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_formatblock, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_formatblock.__UNIQUE_ID_ddebug192, ptr noundef nonnull @.str.3, ptr noundef %inftl, i32 noundef %block) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 20, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %EraseSize = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 2
  %8 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %EraseSize, align 4
  %mul = mul i32 %9, %block
  %conv = zext i32 %mul to i64
  %10 = ptrtoint ptr %instr1 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %instr1, align 8
  %11 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mtd2, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize, align 8
  %conv7 = zext i32 %14 to i64
  %len = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv7, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp106.not = icmp eq i32 %9, 0
  br i1 %cmp106.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %physblock.0107 = phi i32 [ %conv32, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %16 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mtd2, align 4
  %call12 = call i32 @mtd_erase(ptr noundef %17, ptr noundef %instr1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %block) #10
  br label %fail

if.end20:                                         ; preds = %for.body
  %18 = ptrtoint ptr %instr1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %instr1, align 8
  %conv22 = trunc i64 %19 to i32
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %len, align 8
  %conv24 = trunc i64 %21 to i32
  %22 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mtd2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #7
  %24 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %retlen.i, align 4, !annotation !178
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %23, i32 0, i32 6
  %25 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %oobsize.i, align 4
  %add.i = add i32 %26, 512
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %check_free_sectors.exit.thread, label %for.cond.preheader.i

check_free_sectors.exit.thread:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #7
  br label %fail

for.cond.preheader.i:                             ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv24)
  %cmp17.i = icmp sgt i32 %conv24, 0
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.inc_crit_edge

for.cond.preheader.i.for.inc_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 512
  br label %for.body.i

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add28.i, %if.end26.i.for.body.i_crit_edge ]
  %address.addr.018.i = phi i32 [ %conv22, %for.body.lr.ph.i ], [ %add27.i, %if.end26.i.for.body.i_crit_edge ]
  %conv.i = zext i32 %address.addr.018.i to i64
  %call2.i = call i32 @mtd_read(ptr noundef %23, i64 noundef %conv.i, i32 noundef 512, ptr noundef nonnull %retlen.i, ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.body.i.for.body.i.i_crit_edge, label %for.body.i.check_free_sectors.exit.thread92_crit_edge

for.body.i.check_free_sectors.exit.thread92_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_free_sectors.exit.thread92

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 512
  br i1 %exitcond.not.i.i, label %if.then12.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %call9.i.i, i32 %i.02.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp1.not.i.i = icmp eq i8 %28, -1
  br i1 %cmp1.not.i.i, label %for.cond.i.i, label %for.body.i.i.check_free_sectors.exit.thread92_crit_edge

for.body.i.i.check_free_sectors.exit.thread92_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_free_sectors.exit.thread92

if.then12.i:                                      ; preds = %for.cond.i.i
  %29 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %oobsize.i, align 4
  %call15.i = call i32 @inftl_read_oob(ptr noundef %23, i64 noundef %conv.i, i32 noundef %30, ptr noundef nonnull %retlen.i, ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then12.i.check_free_sectors.exit.thread92_crit_edge, label %if.end19.i

if.then12.i.check_free_sectors.exit.thread92_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_free_sectors.exit.thread92

if.end19.i:                                       ; preds = %if.then12.i
  %31 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %oobsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1.i.i = icmp sgt i32 %32, 0
  br i1 %cmp1.i.i, label %if.end19.i.for.body.i7.i_crit_edge, label %if.end19.i.if.end26.i_crit_edge

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.end19.i.for.body.i7.i_crit_edge:               ; preds = %if.end19.i
  br label %for.body.i7.i

for.cond.i3.i:                                    ; preds = %for.body.i7.i
  %inc.i1.i = add nuw nsw i32 %i.02.i4.i, 1
  %exitcond.not.i2.i = icmp eq i32 %inc.i1.i, %32
  br i1 %exitcond.not.i2.i, label %for.cond.i3.i.if.end26.i_crit_edge, label %for.cond.i3.i.for.body.i7.i_crit_edge

for.cond.i3.i.for.body.i7.i_crit_edge:            ; preds = %for.cond.i3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i7.i

for.cond.i3.i.if.end26.i_crit_edge:               ; preds = %for.cond.i3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

for.body.i7.i:                                    ; preds = %for.cond.i3.i.for.body.i7.i_crit_edge, %if.end19.i.for.body.i7.i_crit_edge
  %i.02.i4.i = phi i32 [ %inc.i1.i, %for.cond.i3.i.for.body.i7.i_crit_edge ], [ 0, %if.end19.i.for.body.i7.i_crit_edge ]
  %arrayidx.i5.i = getelementptr i8, ptr %arrayidx.i, i32 %i.02.i4.i
  %33 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp1.not.i6.i = icmp eq i8 %34, -1
  br i1 %cmp1.not.i6.i, label %for.cond.i3.i, label %for.body.i7.i.check_free_sectors.exit.thread92_crit_edge

for.body.i7.i.check_free_sectors.exit.thread92_crit_edge: ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_free_sectors.exit.thread92

if.end26.i:                                       ; preds = %for.cond.i3.i.if.end26.i_crit_edge, %if.end19.i.if.end26.i_crit_edge
  %add27.i = add i32 %address.addr.018.i, 512
  %add28.i = add i32 %i.019.i, 512
  %cmp.i = icmp slt i32 %add28.i, %conv24
  br i1 %cmp.i, label %if.end26.i.for.body.i_crit_edge, label %if.end26.i.for.inc_crit_edge

if.end26.i.for.inc_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

check_free_sectors.exit.thread92:                 ; preds = %for.body.i7.i.check_free_sectors.exit.thread92_crit_edge, %if.then12.i.check_free_sectors.exit.thread92_crit_edge, %for.body.i.i.check_free_sectors.exit.thread92_crit_edge, %for.body.i.check_free_sectors.exit.thread92_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #7
  br label %fail

for.inc:                                          ; preds = %if.end26.i.for.inc_crit_edge, %for.cond.preheader.i.for.inc_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #7
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %len, align 8
  %37 = trunc i64 %36 to i32
  %conv32 = add i32 %physblock.0107, %37
  %38 = ptrtoint ptr %instr1 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %instr1, align 8
  %add35 = add i64 %39, %36
  store i64 %add35, ptr %instr1, align 8
  %40 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %EraseSize, align 4
  %cmp = icmp ult i32 %conv32, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %41, %for.inc.for.end_crit_edge ]
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 26940, ptr %1, align 4
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 26940, ptr %2, align 2
  %mul43 = mul i32 %.lcssa, %block
  %add44 = add i32 %mul43, 1024
  %conv45 = zext i32 %add44 to i64
  %44 = ptrtoint ptr %uci to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %uci, align 8
  %45 = ptrtoint ptr %instr1 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv45, ptr %instr1, align 8
  %add48 = add nuw nsw i64 %conv45, 8
  %call49 = call i32 @inftl_write_oob(ptr noundef %5, i64 noundef %add48, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef nonnull %uci) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %for.end.fail_crit_edge, label %for.end.cleanup58_crit_edge

for.end.cleanup58_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

fail:                                             ; preds = %for.end.fail_crit_edge, %check_free_sectors.exit.thread92, %check_free_sectors.exit.thread, %do.end17
  %46 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mtd2, align 4
  %48 = ptrtoint ptr %instr1 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %instr1, align 8
  %call57 = call i32 @mtd_block_markbad(ptr noundef %47, i64 noundef %49) #7
  br label %cleanup58

cleanup58:                                        ; preds = %fail, %for.end.cleanup58_crit_edge
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %for.end.cleanup58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uci) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inftl_write_oob(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @INFTL_dumptables(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then)) #7
          to label %do.body3 [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug193, ptr noundef nonnull @.str.6) #7
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then15)) #7
          to label %do.end18 [label %if.then15], !srcloc !179

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 18
  %0 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nb_blocks, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug194, ptr noundef nonnull @.str.7, i32 noundef %1) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body3
  %nb_blocks19 = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 18
  %2 = ptrtoint ptr %nb_blocks19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nb_blocks19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp265.not = icmp eq i32 %3, 0
  br i1 %cmp265.not, label %do.end18.do.body55_crit_edge, label %for.body.lr.ph

do.end18.do.body55_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

for.body.lr.ph:                                   ; preds = %do.end18
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0266 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = and i32 %i.0266, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp20 = icmp eq i32 %4, 0
  br i1 %cmp20, label %do.body22, label %for.body.do.body39_crit_edge

for.body.do.body39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

do.body22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then34)) #7
          to label %do.body39 [label %if.then34], !srcloc !179

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug195, ptr noundef nonnull @.str.8, i32 noundef %i.0266) #7
  br label %do.body39

do.body39:                                        ; preds = %if.then34, %do.body22, %for.body.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then51)) #7
          to label %for.inc [label %if.then51], !srcloc !179

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %VUtable, align 8
  %arrayidx = getelementptr i16, ptr %6, i32 %i.0266
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug196, ptr noundef nonnull @.str.9, i32 noundef %conv) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then51, %do.body39
  %inc = add nuw i32 %i.0266, 1
  %9 = ptrtoint ptr %nb_blocks19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nb_blocks19, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body55_crit_edge

for.inc.do.body55_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body55:                                        ; preds = %for.inc.do.body55_crit_edge, %do.end18.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then67)) #7
          to label %do.body71 [label %if.then67], !srcloc !179

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug197, ptr noundef nonnull @.str.10) #7
  br label %do.body71

do.body71:                                        ; preds = %if.then67, %do.body55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then83)) #7
          to label %do.end89 [label %if.then83], !srcloc !179

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  %firstEUN = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 9
  %11 = ptrtoint ptr %firstEUN to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %firstEUN, align 2
  %conv84 = zext i16 %12 to i32
  %lastEUN = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 10
  %13 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lastEUN, align 8
  %conv85 = zext i16 %14 to i32
  %15 = ptrtoint ptr %nb_blocks19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nb_blocks19, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug198, ptr noundef nonnull @.str.11, i32 noundef %conv84, i32 noundef %conv85, i32 noundef %16) #7
  br label %do.end89

do.end89:                                         ; preds = %if.then83, %do.body71
  %lastEUN91 = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 10
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 16
  br label %for.body95

for.body95:                                       ; preds = %for.inc135.for.body95_crit_edge, %do.end89
  %i.1270 = phi i32 [ 0, %do.end89 ], [ %inc136, %for.inc135.for.body95_crit_edge ]
  %17 = and i32 %i.1270, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp97 = icmp eq i32 %17, 0
  br i1 %cmp97, label %do.body100, label %for.body95.do.body117_crit_edge

for.body95.do.body117_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body117

do.body100:                                       ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then112)) #7
          to label %do.body117 [label %if.then112], !srcloc !179

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug199, ptr noundef nonnull @.str.8, i32 noundef %i.1270) #7
  br label %do.body117

do.body117:                                       ; preds = %if.then112, %do.body100, %for.body95.do.body117_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then129)) #7
          to label %for.inc135 [label %if.then129], !srcloc !179

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %PUtable, align 4
  %arrayidx130 = getelementptr i16, ptr %19, i32 %i.1270
  %20 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx130, align 2
  %conv131 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug200, ptr noundef nonnull @.str.9, i32 noundef %conv131) #7
  br label %for.inc135

for.inc135:                                       ; preds = %if.then129, %do.body117
  %inc136 = add nuw nsw i32 %i.1270, 1
  %22 = ptrtoint ptr %lastEUN91 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %lastEUN91, align 8
  %conv92 = zext i16 %23 to i32
  %cmp93.not.not = icmp ult i32 %i.1270, %conv92
  br i1 %cmp93.not.not, label %for.inc135.for.body95_crit_edge, label %do.body138

for.inc135.for.body95_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body95

do.body138:                                       ; preds = %for.inc135
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then150)) #7
          to label %do.body154 [label %if.then150], !srcloc !179

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug201, ptr noundef nonnull @.str.10) #7
  br label %do.body154

do.body154:                                       ; preds = %if.then150, %do.body138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then166)) #7
          to label %do.body181 [label %if.then166], !srcloc !179

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #9
  %EraseSize = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 2
  %24 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %EraseSize, align 4
  %heads = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 5
  %26 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %heads, align 8
  %conv167 = zext i8 %27 to i32
  %sectors = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 6
  %28 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sectors, align 1
  %conv168 = zext i8 %29 to i32
  %cylinders = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 7
  %30 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cylinders, align 2
  %conv169 = zext i16 %31 to i32
  %numvunits = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 8
  %32 = ptrtoint ptr %numvunits to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %numvunits, align 4
  %conv170 = zext i16 %33 to i32
  %firstEUN171 = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 9
  %34 = ptrtoint ptr %firstEUN171 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %firstEUN171, align 2
  %conv172 = zext i16 %35 to i32
  %36 = ptrtoint ptr %lastEUN91 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %lastEUN91, align 8
  %conv174 = zext i16 %37 to i32
  %numfreeEUNs = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 11
  %38 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %numfreeEUNs, align 2
  %conv175 = zext i16 %39 to i32
  %LastFreeEUN = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 12
  %40 = ptrtoint ptr %LastFreeEUN to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %LastFreeEUN, align 4
  %conv176 = zext i16 %41 to i32
  %42 = ptrtoint ptr %nb_blocks19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nb_blocks19, align 4
  %nb_boot_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 19
  %44 = ptrtoint ptr %nb_boot_blocks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nb_boot_blocks, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug202, ptr noundef nonnull @.str.12, i32 noundef %25, i32 noundef %conv167, i32 noundef %conv168, i32 noundef %conv169, i32 noundef %conv170, i32 noundef %conv172, i32 noundef %conv174, i32 noundef %conv175, i32 noundef %conv176, i32 noundef %43, i32 noundef %45) #7
  br label %do.body181

do.body181:                                       ; preds = %if.then166, %do.body154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumptables.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumptables, %if.then193)) #7
          to label %do.end196 [label %if.then193], !srcloc !179

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumptables.__UNIQUE_ID_ddebug203, ptr noundef nonnull @.str.10) #7
  br label %do.end196

do.end196:                                        ; preds = %if.then193, %do.body181
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @INFTL_dumpVUchains(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumpVUchains, %if.then)) #7
          to label %do.body3 [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumpVUchains.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.6) #7
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumpVUchains, %if.then15)) #7
          to label %do.end18 [label %if.then15], !srcloc !179

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumpVUchains.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.14) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body3
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 18
  %0 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp142.not = icmp eq i32 %1, 0
  br i1 %cmp142.not, label %do.end18.do.body89_crit_edge, label %for.body.lr.ph

do.end18.do.body89_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body89

for.body.lr.ph:                                   ; preds = %do.end18
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 17
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc86.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %16, %for.inc86.for.body_crit_edge ]
  %logical.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc87, %for.inc86.for.body_crit_edge ]
  %3 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %VUtable, align 8
  %arrayidx = getelementptr i16, ptr %4, i32 %logical.0143
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp20.not = icmp ugt i32 %2, %conv
  br i1 %cmp20.not, label %do.body24, label %for.body.for.inc86_crit_edge

for.body.for.inc86_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc86

do.body24:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumpVUchains, %if.then36)) #7
          to label %do.end39 [label %if.then36], !srcloc !179

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumpVUchains.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.15, i32 noundef %logical.0143, i32 noundef %conv) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24
  %7 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp42139.not = icmp eq i32 %8, 0
  br i1 %cmp42139.not, label %do.end39.do.body70_crit_edge, label %do.end39.for.body44_crit_edge

do.end39.for.body44_crit_edge:                    ; preds = %do.end39
  br label %for.body44

do.end39.do.body70_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

for.body44:                                       ; preds = %for.inc.for.body44_crit_edge, %do.end39.for.body44_crit_edge
  %block.0141 = phi i32 [ %conv46, %for.inc.for.body44_crit_edge ], [ %conv, %do.end39.for.body44_crit_edge ]
  %i.0140 = phi i32 [ %inc, %for.inc.for.body44_crit_edge ], [ 0, %do.end39.for.body44_crit_edge ]
  %9 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %PUtable, align 4
  %arrayidx45 = getelementptr i16, ptr %10, i32 %block.0141
  %11 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx45, align 2
  %conv46 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp47 = icmp eq i16 %12, -1
  br i1 %cmp47, label %for.body44.do.body70_crit_edge, label %if.end50

for.body44.do.body70_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

if.end50:                                         ; preds = %for.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumpVUchains, %if.then66)) #7
          to label %for.inc [label %if.then66], !srcloc !179

if.then66:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumpVUchains.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.16, i32 noundef %conv46) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then66, %if.end50
  %inc = add nuw i32 %i.0140, 1
  %13 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nb_blocks, align 4
  %cmp42 = icmp ult i32 %inc, %14
  br i1 %cmp42, label %for.inc.for.body44_crit_edge, label %for.inc.do.body70_crit_edge

for.inc.do.body70_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

for.inc.for.body44_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body44

do.body70:                                        ; preds = %for.inc.do.body70_crit_edge, %for.body44.do.body70_crit_edge, %do.end39.do.body70_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumpVUchains, %if.then82)) #7
          to label %for.inc86 [label %if.then82], !srcloc !179

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumpVUchains.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.17) #7
  br label %for.inc86

for.inc86:                                        ; preds = %if.then82, %do.body70, %for.body.for.inc86_crit_edge
  %inc87 = add nuw i32 %logical.0143, 1
  %15 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nb_blocks, align 4
  %cmp = icmp ult i32 %inc87, %16
  br i1 %cmp, label %for.inc86.for.body_crit_edge, label %for.inc86.do.body89_crit_edge

for.inc86.do.body89_crit_edge:                    ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body89

for.inc86.for.body_crit_edge:                     ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body89:                                        ; preds = %for.inc86.do.body89_crit_edge, %do.end18.do.body89_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_dumpVUchains, %if.then101)) #7
          to label %do.end104 [label %if.then101], !srcloc !179

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_dumpVUchains.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.6) #7
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %do.body89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @INFTL_mount(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  %h0 = alloca %struct.inftl_unithead1, align 8
  %h1 = alloca %struct.inftl_unittail, align 8
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h0) #7
  %2 = getelementptr inbounds %struct.inftl_unithead1, ptr %h0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.inftl_unithead1, ptr %h0, i32 0, i32 2
  %4 = ptrtoint ptr %h0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %h0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h1) #7
  %5 = getelementptr inbounds %struct.inftl_unittail, ptr %h1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.inftl_unittail, ptr %h1, i32 0, i32 2
  %7 = ptrtoint ptr %h1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %h1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #7
  %8 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %retlen, align 4, !annotation !178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_mount.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_mount, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_mount.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.19, ptr noundef %s) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc i32 @find_boot_record(ptr noundef %s)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 18
  %9 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12594.not = icmp eq i32 %10, 0
  br i1 %cmp12594.not, label %for.cond.preheader.if.end7.i.i_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end7.i.i_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 17
  br label %for.body

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0595 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %VUtable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %VUtable, align 8
  %arrayidx = getelementptr i16, ptr %12, i32 %i.0595
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %arrayidx, align 2
  %inc = add nuw i32 %i.0595, 1
  %14 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nb_blocks, align 4
  %cmp12 = icmp ult i32 %inc, %15
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.if.end7.i.i_crit_edge

for.body.if.end7.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end7.i.i:                                      ; preds = %for.body.if.end7.i.i_crit_edge, %for.cond.preheader.if.end7.i.i_crit_edge
  %.lcssa593 = phi i32 [ 0, %for.cond.preheader.if.end7.i.i_crit_edge ], [ %15, %for.body.if.end7.i.i_crit_edge ]
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %.lcssa593, i32 noundef 3520) #11
  %tobool15.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool15.not, label %if.end7.i.i.cleanup_crit_edge, label %do.body18

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body18:                                        ; preds = %if.end7.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_mount.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_mount, %if.then30)) #7
          to label %do.end33 [label %if.then30], !srcloc !179

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_mount.__UNIQUE_ID_ddebug211, ptr noundef nonnull @.str.21) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body18
  %firstEUN = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 9
  %16 = ptrtoint ptr %firstEUN to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %firstEUN, align 2
  %conv = zext i16 %17 to i32
  %lastEUN = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 10
  %18 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %lastEUN, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp36.not598 = icmp ugt i16 %17, %19
  br i1 %cmp36.not598, label %do.end33.for.end193_crit_edge, label %for.body38.lr.ph

do.end33.for.end193_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end193

for.body38.lr.ph:                                 ; preds = %do.end33
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 16
  %EraseSize = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 2
  %VUtable189 = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 17
  br label %for.body38

for.body38:                                       ; preds = %for.inc191.for.body38_crit_edge, %for.body38.lr.ph
  %first_block.0599 = phi i32 [ %conv, %for.body38.lr.ph ], [ %inc192, %for.inc191.for.body38_crit_edge ]
  %20 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %PUtable, align 4
  %arrayidx39 = getelementptr i16, ptr %21, i32 %first_block.0599
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %23)
  %cmp41.not = icmp eq i16 %23, -3
  br i1 %cmp41.not, label %for.body38.for.cond45_crit_edge, label %for.body38.for.inc191_crit_edge

for.body38.for.inc191_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc191

for.body38.for.cond45_crit_edge:                  ; preds = %for.body38
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc182, %for.body38.for.cond45_crit_edge
  %chain_length.0 = phi i32 [ %inc183, %for.inc182 ], [ 0, %for.body38.for.cond45_crit_edge ]
  %first_logical_block.0 = phi i32 [ %first_logical_block.1, %for.inc182 ], [ 65535, %for.body38.for.cond45_crit_edge ]
  %last_block.0 = phi i32 [ %block.0, %for.inc182 ], [ 65535, %for.body38.for.cond45_crit_edge ]
  %block.0 = phi i32 [ %prev_block.0, %for.inc182 ], [ %first_block.0599, %for.body38.for.cond45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain_length.0)
  %cmp46 = icmp eq i32 %chain_length.0, 0
  br i1 %cmp46, label %land.lhs.true, label %for.cond45.if.end54_crit_edge

for.cond45.if.end54_crit_edge:                    ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true:                                    ; preds = %for.cond45
  %24 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %PUtable, align 4
  %arrayidx49 = getelementptr i16, ptr %25, i32 %block.0
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx49, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %27)
  %cmp51.not = icmp eq i16 %27, -3
  br i1 %cmp51.not, label %land.lhs.true.if.end54_crit_edge, label %land.lhs.true.if.end187_crit_edge

land.lhs.true.if.end187_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true.if.end54_crit_edge, %for.cond45.if.end54_crit_edge
  %28 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %EraseSize, align 4
  %mul = mul i32 %29, %block.0
  %add = add i32 %mul, 8
  %conv55 = zext i32 %add to i64
  %call56 = call i32 @inftl_read_oob(ptr noundef %1, i64 noundef %conv55, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef nonnull %h0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end54.if.then186_crit_edge, label %lor.lhs.false

if.end54.if.then186_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then186

lor.lhs.false:                                    ; preds = %if.end54
  %30 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %EraseSize, align 4
  %mul60 = mul i32 %31, %block.0
  %add62 = add i32 %mul60, 1032
  %conv63 = zext i32 %add62 to i64
  %call64 = call i32 @inftl_read_oob(ptr noundef %1, i64 noundef %conv63, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef nonnull %h1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %lor.lhs.false.if.then186_crit_edge, label %if.end69

lor.lhs.false.if.then186_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then186

if.end69:                                         ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %h0 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %h0, align 8
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %conv70 = zext i16 %34 to i32
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %2, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %conv71 = zext i16 %37 to i32
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %5, align 4
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %6, align 2
  %or497 = or i16 %41, %39
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %3, align 4
  %arrayidx77 = getelementptr i8, ptr %call8.i.i, i32 %block.0
  %44 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx77, align 1
  %45 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv71)
  %cmp79 = icmp ugt i32 %46, %conv71
  br i1 %cmp79, label %if.then81, label %if.end69.if.end85_crit_edge

if.end69.if.end85_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then81:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %firstEUN to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %firstEUN, align 2
  %conv83 = zext i16 %48 to i32
  %add84 = add nuw nsw i32 %conv83, %conv71
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end69.if.end85_crit_edge
  %prev_block.0 = phi i32 [ %add84, %if.then81 ], [ %conv71, %if.end69.if.end85_crit_edge ]
  %49 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %PUtable, align 4
  %arrayidx87 = getelementptr i16, ptr %50, i32 %block.0
  %51 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx87, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %52)
  %cmp89.not = icmp eq i16 %52, -3
  br i1 %cmp89.not, label %if.end103, label %if.then91

if.then91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_cmp4(i32 %first_logical_block.0, i32 %conv70)
  %cmp92 = icmp ne i32 %first_logical_block.0, %conv70
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %last_block.0)
  %cmp95.not = icmp eq i32 %last_block.0, 65535
  %or.cond = select i1 %cmp92, i1 true, i1 %cmp95.not
  br i1 %or.cond, label %if.then91.if.end187_crit_edge, label %if.then97

if.then91.if.end187_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.then97:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %conv98 = trunc i32 %block.0 to i16
  %arrayidx100 = getelementptr i16, ptr %50, i32 %last_block.0
  %53 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv98, ptr %arrayidx100, align 2
  br label %if.end187

if.end103:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp2(i16 26940, i16 %or497)
  %cmp104.not = icmp eq i16 %or497, 26940
  br i1 %cmp104.not, label %if.end117, label %for.end184

if.end117:                                        ; preds = %if.end103
  %54 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i16 %33, label %if.end126 [
    i16 -257, label %if.end117.if.then123_crit_edge
    i16 -1, label %if.end117.if.then123_crit_edge891
  ]

if.end117.if.then123_crit_edge891:                ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then123

if.end117.if.then123_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then123

if.then123:                                       ; preds = %if.end117.if.then123_crit_edge, %if.end117.if.then123_crit_edge891
  %55 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -2, ptr %arrayidx87, align 2
  br label %if.end187

if.end126:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv70)
  %cmp128.not = icmp ugt i32 %46, %conv70
  br i1 %cmp128.not, label %lor.lhs.false130, label %if.end126.if.then137_crit_edge

if.end126.if.then137_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then137

lor.lhs.false130:                                 ; preds = %if.end126
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_block.0, i32 %46)
  %cmp132.not = icmp ult i32 %prev_block.0, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %prev_block.0)
  %cmp135.not = icmp eq i32 %prev_block.0, 65535
  %or.cond498 = or i1 %cmp132.not, %cmp135.not
  br i1 %or.cond498, label %if.end148, label %lor.lhs.false130.if.then137_crit_edge

lor.lhs.false130.if.then137_crit_edge:            ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then137

if.then137:                                       ; preds = %lor.lhs.false130.if.then137_crit_edge, %if.end126.if.then137_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain_length.0)
  %cmp138 = icmp sgt i32 %chain_length.0, 0
  br i1 %cmp138, label %do.end143, label %if.then137.if.end187_crit_edge

if.then137.if.end187_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

do.end143:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %block.0, i32 noundef %first_block.0599) #10
  br label %if.then186

if.end148:                                        ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %first_logical_block.0)
  %cmp149 = icmp eq i32 %first_logical_block.0, 65535
  br i1 %cmp149, label %if.end148.if.end156_crit_edge, label %if.else

if.end148.if.end156_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.else:                                          ; preds = %if.end148
  call void @__sanitizer_cov_trace_cmp4(i32 %first_logical_block.0, i32 %conv70)
  %cmp152.not = icmp eq i32 %first_logical_block.0, %conv70
  br i1 %cmp152.not, label %if.else.if.end156_crit_edge, label %if.else.if.end187_crit_edge

if.else.if.end187_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.else.if.end156_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.end156:                                        ; preds = %if.else.if.end156_crit_edge, %if.end148.if.end156_crit_edge
  %first_logical_block.1 = phi i32 [ %first_logical_block.0, %if.else.if.end156_crit_edge ], [ %conv70, %if.end148.if.end156_crit_edge ]
  %56 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1, ptr %arrayidx87, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %last_block.0)
  %cmp159.not = icmp eq i32 %last_block.0, 65535
  br i1 %cmp159.not, label %if.end156.if.end165_crit_edge, label %if.then161

if.end156.if.end165_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then161:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  %conv162 = trunc i32 %block.0 to i16
  %57 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %PUtable, align 4
  %arrayidx164 = getelementptr i16, ptr %58, i32 %last_block.0
  %59 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv162, ptr %arrayidx164, align 2
  br label %if.end165

if.end165:                                        ; preds = %if.then161, %if.end156.if.end165_crit_edge
  br i1 %cmp135.not, label %if.end165.if.end187_crit_edge, label %if.end169

if.end165.if.end187_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.end169:                                        ; preds = %if.end165
  %60 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %lastEUN, align 8
  %conv171 = zext i16 %61 to i32
  %cmp172 = icmp ugt i32 %prev_block.0, %conv171
  br i1 %cmp172, label %do.end177, label %for.inc182

do.end177:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %prev_block.0, i32 noundef %first_block.0599) #10
  br label %if.then186

for.inc182:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  %inc183 = add i32 %chain_length.0, 1
  br label %for.cond45

for.end184:                                       ; preds = %if.end103
  %62 = call i16 @llvm.bswap.i16(i16 %or497)
  %conv75.le = zext i16 %62 to i32
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %block.0, i32 noundef %first_block.0599, i32 noundef %chain_length.0, i32 noundef %conv75.le) #10
  br i1 %cmp46, label %for.end184.if.then186_crit_edge, label %for.end184.if.end187_crit_edge

for.end184.if.end187_crit_edge:                   ; preds = %for.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

for.end184.if.then186_crit_edge:                  ; preds = %for.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then186

if.then186:                                       ; preds = %for.end184.if.then186_crit_edge, %do.end177, %do.end143, %lor.lhs.false.if.then186_crit_edge, %if.end54.if.then186_crit_edge
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %first_block.0599) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false.i.for.cond.i_crit_edge, %if.then186
  %block.0.i = phi i32 [ %first_block.0599, %if.then186 ], [ %conv.i, %lor.lhs.false.i.for.cond.i_crit_edge ]
  %63 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %PUtable, align 4
  %arrayidx.i = getelementptr i16, ptr %64, i32 %block.0.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i, align 2
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %block.0.i) #10
  %call6.i = call i32 @INFTL_formatblock(ptr noundef %s, i32 noundef %block.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  %67 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %PUtable, align 4
  %arrayidx9.i = getelementptr i16, ptr %68, i32 %block.0.i
  %..i = select i1 %cmp.i, i16 -4, i16 -2
  %69 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %..i, ptr %arrayidx9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %66)
  %cmp12.i = icmp eq i16 %66, -1
  br i1 %cmp12.i, label %for.cond.i.for.inc191_crit_edge, label %lor.lhs.false.i

for.cond.i.for.inc191_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc191

lor.lhs.false.i:                                  ; preds = %for.cond.i
  %conv.i = zext i16 %66 to i32
  %70 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %lastEUN, align 8
  %cmp15.not.i = icmp ult i16 %66, %71
  br i1 %cmp15.not.i, label %lor.lhs.false.i.for.cond.i_crit_edge, label %lor.lhs.false.i.for.inc191_crit_edge

lor.lhs.false.i.for.inc191_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc191

lor.lhs.false.i.for.cond.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end187:                                        ; preds = %for.end184.if.end187_crit_edge, %if.end165.if.end187_crit_edge, %if.else.if.end187_crit_edge, %if.then137.if.end187_crit_edge, %if.then123, %if.then97, %if.then91.if.end187_crit_edge, %land.lhs.true.if.end187_crit_edge
  %first_logical_block.2531 = phi i32 [ %first_logical_block.0, %for.end184.if.end187_crit_edge ], [ %first_logical_block.0, %if.then123 ], [ %first_logical_block.0, %if.then97 ], [ %first_logical_block.0, %if.then91.if.end187_crit_edge ], [ %first_logical_block.0, %if.then137.if.end187_crit_edge ], [ %first_logical_block.1, %if.end165.if.end187_crit_edge ], [ %first_logical_block.0, %if.else.if.end187_crit_edge ], [ %first_logical_block.0, %land.lhs.true.if.end187_crit_edge ]
  %conv188 = trunc i32 %first_block.0599 to i16
  %72 = ptrtoint ptr %VUtable189 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %VUtable189, align 8
  %arrayidx190 = getelementptr i16, ptr %73, i32 %first_logical_block.2531
  %74 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv188, ptr %arrayidx190, align 2
  br label %for.inc191

for.inc191:                                       ; preds = %if.end187, %lor.lhs.false.i.for.inc191_crit_edge, %for.cond.i.for.inc191_crit_edge, %for.body38.for.inc191_crit_edge
  %inc192 = add nuw nsw i32 %first_block.0599, 1
  %75 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %lastEUN, align 8
  %conv35 = zext i16 %76 to i32
  %cmp36.not.not = icmp ult i32 %first_block.0599, %conv35
  br i1 %cmp36.not.not, label %for.inc191.for.body38_crit_edge, label %for.inc191.for.end193_crit_edge

for.inc191.for.end193_crit_edge:                  ; preds = %for.inc191
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end193

for.inc191.for.body38_crit_edge:                  ; preds = %for.inc191
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body38

for.end193:                                       ; preds = %for.inc191.for.end193_crit_edge, %do.end33.for.end193_crit_edge
  %first_block.0.lcssa = phi i32 [ %conv, %do.end33.for.end193_crit_edge ], [ %inc192, %for.inc191.for.end193_crit_edge ]
  call void @INFTL_dumptables(ptr noundef %s)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_mount.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_mount, %if.then206)) #7
          to label %do.end209 [label %if.then206], !srcloc !179

if.then206:                                       ; preds = %for.end193
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_mount.__UNIQUE_ID_ddebug212, ptr noundef nonnull @.str.31) #7
  br label %do.end209

do.end209:                                        ; preds = %if.then206, %for.end193
  %numvunits = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 8
  %77 = ptrtoint ptr %numvunits to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %numvunits, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp212614.not = icmp eq i16 %78, 0
  br i1 %cmp212614.not, label %do.end209.for.end280_crit_edge, label %for.body214.lr.ph

do.end209.for.end280_crit_edge:                   ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end280

for.body214.lr.ph:                                ; preds = %do.end209
  %VUtable215 = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 17
  %PUtable229 = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 16
  br label %for.body214

for.body214:                                      ; preds = %for.inc278.for.body214_crit_edge, %for.body214.lr.ph
  %logical_block.0615 = phi i32 [ 0, %for.body214.lr.ph ], [ %inc279, %for.inc278.for.body214_crit_edge ]
  %79 = ptrtoint ptr %VUtable215 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %VUtable215, align 8
  %arrayidx216 = getelementptr i16, ptr %80, i32 %logical_block.0615
  %81 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx216, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -5, i16 %82)
  %cmp218 = icmp ugt i16 %82, -5
  br i1 %cmp218, label %for.body214.for.inc278_crit_edge, label %if.end221

for.body214.for.inc278_crit_edge:                 ; preds = %for.body214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc278

if.end221:                                        ; preds = %for.body214
  %83 = ptrtoint ptr %numvunits to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %numvunits, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %cmp226606.not = icmp eq i16 %84, 0
  br i1 %cmp226606.not, label %if.end221.for.end272_crit_edge, label %for.body228.preheader

if.end221.for.end272_crit_edge:                   ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end272

for.body228.preheader:                            ; preds = %if.end221
  %conv217 = zext i16 %82 to i32
  %arrayidx222 = getelementptr i8, ptr %call8.i.i, i32 %conv217
  %85 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx222, align 1
  br label %for.body228

for.body228:                                      ; preds = %if.end266.for.body228_crit_edge, %for.body228.preheader
  %block.1610 = phi i32 [ %conv269, %if.end266.for.body228_crit_edge ], [ %conv217, %for.body228.preheader ]
  %last_block.1609 = phi i32 [ %block.1610, %if.end266.for.body228_crit_edge ], [ 65535, %for.body228.preheader ]
  %i.1608 = phi i32 [ %inc271, %if.end266.for.body228_crit_edge ], [ 0, %for.body228.preheader ]
  %ANAC.0607 = phi i8 [ %dec, %if.end266.for.body228_crit_edge ], [ %86, %for.body228.preheader ]
  %87 = ptrtoint ptr %PUtable229 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %PUtable229, align 4
  %arrayidx230 = getelementptr i16, ptr %88, i32 %block.1610
  %89 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx230, align 2
  %conv231 = zext i16 %90 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %90)
  %cmp232 = icmp eq i16 %90, -1
  br i1 %cmp232, label %for.body228.for.end272_crit_edge, label %if.end235

for.body228.for.end272_crit_edge:                 ; preds = %for.body228
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end272

if.end235:                                        ; preds = %for.body228
  %91 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %lastEUN, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %92)
  %cmp241 = icmp ugt i16 %90, %92
  br i1 %cmp241, label %do.end246, label %if.end235.if.end254_crit_edge

if.end235.if.end254_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254

do.end246:                                        ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #9
  %call251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv231, i32 noundef %logical_block.0615) #10
  %93 = ptrtoint ptr %PUtable229 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %PUtable229, align 4
  %arrayidx253 = getelementptr i16, ptr %94, i32 %block.1610
  %95 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -1, ptr %arrayidx253, align 2
  br label %if.end254

if.end254:                                        ; preds = %do.end246, %if.end235.if.end254_crit_edge
  %arrayidx255 = getelementptr i8, ptr %call8.i.i, i32 %block.1610
  %96 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx255, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %ANAC.0607)
  %cmp258.not = icmp eq i8 %97, %ANAC.0607
  br i1 %cmp258.not, label %if.end266, label %if.then260

if.then260:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  %conv261 = trunc i32 %block.1610 to i16
  %98 = ptrtoint ptr %VUtable215 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %VUtable215, align 8
  %arrayidx263 = getelementptr i16, ptr %99, i32 %logical_block.0615
  %100 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv261, ptr %arrayidx263, align 2
  %101 = ptrtoint ptr %PUtable229 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %PUtable229, align 4
  %arrayidx265 = getelementptr i16, ptr %102, i32 %last_block.1609
  %103 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 -1, ptr %arrayidx265, align 2
  br label %for.end272

if.end266:                                        ; preds = %if.end254
  %dec = add i8 %ANAC.0607, -1
  %104 = ptrtoint ptr %PUtable229 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %PUtable229, align 4
  %arrayidx268 = getelementptr i16, ptr %105, i32 %block.1610
  %106 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx268, align 2
  %conv269 = zext i16 %107 to i32
  %inc271 = add nuw nsw i32 %i.1608, 1
  %108 = ptrtoint ptr %numvunits to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %numvunits, align 4
  %conv225 = zext i16 %109 to i32
  %cmp226 = icmp ult i32 %inc271, %conv225
  br i1 %cmp226, label %if.end266.for.body228_crit_edge, label %if.end266.for.end272_crit_edge

if.end266.for.end272_crit_edge:                   ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end272

if.end266.for.body228_crit_edge:                  ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body228

for.end272:                                       ; preds = %if.end266.for.end272_crit_edge, %if.then260, %for.body228.for.end272_crit_edge, %if.end221.for.end272_crit_edge
  %i.1542 = phi i32 [ %i.1608, %if.then260 ], [ 0, %if.end221.for.end272_crit_edge ], [ %inc271, %if.end266.for.end272_crit_edge ], [ %i.1608, %for.body228.for.end272_crit_edge ]
  %110 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1542, i32 %111)
  %cmp274.not = icmp ult i32 %i.1542, %111
  br i1 %cmp274.not, label %for.end272.for.inc278_crit_edge, label %if.then276

for.end272.for.inc278_crit_edge:                  ; preds = %for.end272
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc278

if.then276:                                       ; preds = %for.end272
  %call.i508 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %first_block.0.lcssa) #10
  br label %for.cond.i519

for.cond.i519:                                    ; preds = %lor.lhs.false.i522.for.cond.i519_crit_edge, %if.then276
  %block.0.i511 = phi i32 [ %first_block.0.lcssa, %if.then276 ], [ %conv.i520, %lor.lhs.false.i522.for.cond.i519_crit_edge ]
  %112 = ptrtoint ptr %PUtable229 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %PUtable229, align 4
  %arrayidx.i512 = getelementptr i16, ptr %113, i32 %block.0.i511
  %114 = ptrtoint ptr %arrayidx.i512 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx.i512, align 2
  %call5.i513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %block.0.i511) #10
  %call6.i514 = call i32 @INFTL_formatblock(ptr noundef %s, i32 noundef %block.0.i511) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i514)
  %cmp.i515 = icmp slt i32 %call6.i514, 0
  %116 = ptrtoint ptr %PUtable229 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %PUtable229, align 4
  %arrayidx9.i516 = getelementptr i16, ptr %117, i32 %block.0.i511
  %..i517 = select i1 %cmp.i515, i16 -4, i16 -2
  %118 = ptrtoint ptr %arrayidx9.i516 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %..i517, ptr %arrayidx9.i516, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %115)
  %cmp12.i518 = icmp eq i16 %115, -1
  br i1 %cmp12.i518, label %for.cond.i519.for.inc278_crit_edge, label %lor.lhs.false.i522

for.cond.i519.for.inc278_crit_edge:               ; preds = %for.cond.i519
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc278

lor.lhs.false.i522:                               ; preds = %for.cond.i519
  %conv.i520 = zext i16 %115 to i32
  %119 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %lastEUN, align 8
  %cmp15.not.i521 = icmp ult i16 %115, %120
  br i1 %cmp15.not.i521, label %lor.lhs.false.i522.for.cond.i519_crit_edge, label %lor.lhs.false.i522.for.inc278_crit_edge

lor.lhs.false.i522.for.inc278_crit_edge:          ; preds = %lor.lhs.false.i522
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc278

lor.lhs.false.i522.for.cond.i519_crit_edge:       ; preds = %lor.lhs.false.i522
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i519

for.inc278:                                       ; preds = %lor.lhs.false.i522.for.inc278_crit_edge, %for.cond.i519.for.inc278_crit_edge, %for.end272.for.inc278_crit_edge, %for.body214.for.inc278_crit_edge
  %inc279 = add nuw nsw i32 %logical_block.0615, 1
  %121 = ptrtoint ptr %numvunits to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %numvunits, align 4
  %conv211 = zext i16 %122 to i32
  %cmp212 = icmp ult i32 %inc279, %conv211
  br i1 %cmp212, label %for.inc278.for.body214_crit_edge, label %for.inc278.for.end280_crit_edge

for.inc278.for.end280_crit_edge:                  ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end280

for.inc278.for.body214_crit_edge:                 ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body214

for.end280:                                       ; preds = %for.inc278.for.end280_crit_edge, %do.end209.for.end280_crit_edge
  call void @INFTL_dumptables(ptr noundef %s)
  call void @INFTL_dumpVUchains(ptr noundef %s)
  %numfreeEUNs = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 11
  %123 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %numfreeEUNs, align 2
  %LastFreeEUN = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 12
  %124 = ptrtoint ptr %LastFreeEUN to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -1, ptr %LastFreeEUN, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @INFTL_mount.__UNIQUE_ID_ddebug213, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@INFTL_mount, %if.then293)) #7
          to label %do.end296 [label %if.then293], !srcloc !179

if.then293:                                       ; preds = %for.end280
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @INFTL_mount.__UNIQUE_ID_ddebug213, ptr noundef nonnull @.str.35) #7
  br label %do.end296

do.end296:                                        ; preds = %if.then293, %for.end280
  %125 = ptrtoint ptr %firstEUN to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %firstEUN, align 2
  %127 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %lastEUN, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %126, i16 %128)
  %cmp302.not617 = icmp ugt i16 %126, %128
  br i1 %cmp302.not617, label %do.end296.for.end346_crit_edge, label %for.body304.lr.ph

do.end296.for.end346_crit_edge:                   ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end346

for.body304.lr.ph:                                ; preds = %do.end296
  %conv298 = zext i16 %126 to i32
  %PUtable305 = getelementptr inbounds %struct.INFTLrecord, ptr %s, i32 0, i32 16
  br label %for.body304

for.body304:                                      ; preds = %for.inc344.for.body304_crit_edge, %for.body304.lr.ph
  %block.2618 = phi i32 [ %conv298, %for.body304.lr.ph ], [ %inc345, %for.inc344.for.body304_crit_edge ]
  %129 = ptrtoint ptr %PUtable305 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %PUtable305, align 4
  %arrayidx306 = getelementptr i16, ptr %130, i32 %block.2618
  %131 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx306, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %132)
  %cmp308 = icmp eq i16 %132, -3
  br i1 %cmp308, label %do.end313, label %for.body304.if.end326_crit_edge

for.body304.if.end326_crit_edge:                  ; preds = %for.body304
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end326

do.end313:                                        ; preds = %for.body304
  call void @__sanitizer_cov_trace_pc() #9
  %call315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %block.2618) #10
  %call316 = call i32 @INFTL_formatblock(ptr noundef %s, i32 noundef %block.2618)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %cmp317 = icmp slt i32 %call316, 0
  %133 = ptrtoint ptr %PUtable305 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %PUtable305, align 4
  %arrayidx321 = getelementptr i16, ptr %134, i32 %block.2618
  %. = select i1 %cmp317, i16 -4, i16 -2
  %135 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %., ptr %arrayidx321, align 2
  br label %if.end326

if.end326:                                        ; preds = %do.end313, %for.body304.if.end326_crit_edge
  %136 = ptrtoint ptr %PUtable305 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %PUtable305, align 4
  %arrayidx328 = getelementptr i16, ptr %137, i32 %block.2618
  %138 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx328, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %139)
  %cmp330 = icmp eq i16 %139, -2
  br i1 %cmp330, label %if.then332, label %if.end326.for.inc344_crit_edge

if.end326.for.inc344_crit_edge:                   ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc344

if.then332:                                       ; preds = %if.end326
  %140 = ptrtoint ptr %numfreeEUNs to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %numfreeEUNs, align 2
  %inc334 = add i16 %141, 1
  store i16 %inc334, ptr %numfreeEUNs, align 2
  %142 = ptrtoint ptr %LastFreeEUN to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %LastFreeEUN, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %143)
  %cmp337 = icmp eq i16 %143, -1
  br i1 %cmp337, label %if.then339, label %if.then332.for.inc344_crit_edge

if.then332.for.inc344_crit_edge:                  ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc344

if.then339:                                       ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #9
  %conv340 = trunc i32 %block.2618 to i16
  %144 = ptrtoint ptr %LastFreeEUN to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv340, ptr %LastFreeEUN, align 4
  br label %for.inc344

for.inc344:                                       ; preds = %if.then339, %if.then332.for.inc344_crit_edge, %if.end326.for.inc344_crit_edge
  %inc345 = add nuw nsw i32 %block.2618, 1
  %145 = ptrtoint ptr %lastEUN to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %lastEUN, align 8
  %conv301 = zext i16 %146 to i32
  %cmp302.not.not = icmp ult i32 %block.2618, %conv301
  br i1 %cmp302.not.not, label %for.inc344.for.body304_crit_edge, label %for.inc344.for.end346_crit_edge

for.inc344.for.end346_crit_edge:                  ; preds = %for.inc344
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end346

for.inc344.for.body304_crit_edge:                 ; preds = %for.inc344
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body304

for.end346:                                       ; preds = %for.inc344.for.end346_crit_edge, %do.end296.for.end346_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end346, %if.end7.i.i.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -6, %do.end8 ], [ 0, %for.end346 ], [ -12, %if.end7.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h0) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_boot_record(ptr noundef %inftl) unnamed_addr #0 align 64 {
entry:
  %h1 = alloca %struct.inftl_unittail, align 8
  %buf = alloca [512 x i8], align 1
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h1) #7
  %0 = ptrtoint ptr %h1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %h1, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #7
  %1 = call ptr @memset(ptr %buf, i32 255, i32 512)
  %MediaHdr = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 3
  %mtd1 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %inftl, i32 0, i32 2
  %2 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #7
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %retlen, align 4, !annotation !178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_boot_record.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_boot_record, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_boot_record.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.40, ptr noundef %inftl) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mtd1, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %erasesize, align 8
  %EraseSize = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 2
  %9 = ptrtoint ptr %EraseSize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %EraseSize, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size, align 8
  %conv = trunc i64 %11 to i32
  %div = udiv i32 %conv, %8
  %nb_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 18
  %12 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %nb_blocks, align 4
  %MediaUnit = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 1
  %13 = ptrtoint ptr %MediaUnit to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %MediaUnit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp626.not = icmp ugt i32 %8, %conv
  br i1 %cmp626.not, label %do.end.cleanup373_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup373_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup373

for.body:                                         ; preds = %for.inc370.for.body_crit_edge, %do.end.for.body_crit_edge
  %block.0627 = phi i32 [ %inc371, %for.inc370.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %EraseSize, align 4
  %mul = mul i32 %15, %block.0627
  %conv12 = zext i32 %mul to i64
  %call13 = call i32 @mtd_read(ptr noundef %3, i64 noundef %conv12, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef nonnull %buf) #7
  %16 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %17)
  %cmp14.not = icmp eq i32 %17, 512
  br i1 %cmp14.not, label %lor.lhs.false, label %if.then16

if.then16:                                        ; preds = %for.body
  %18 = load i32, ptr @find_boot_record.warncount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.then16.for.inc370_crit_edge, label %do.end21

if.then16.for.inc370_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc370

do.end21:                                         ; preds = %if.then16
  %19 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %EraseSize, align 4
  %mul24 = mul i32 %20, %block.0627
  %21 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mtd1, align 4
  %index = getelementptr inbounds %struct.mtd_info, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %mul24, i32 noundef %24, i32 noundef %call13) #10
  %25 = load i32, ptr @find_boot_record.warncount, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr @find_boot_record.warncount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool28.not = icmp eq i32 %dec, 0
  br i1 %tobool28.not, label %do.end32, label %do.end21.for.inc370_crit_edge

do.end21.for.inc370_crit_edge:                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc370

do.end32:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #10
  br label %for.inc370

lor.lhs.false:                                    ; preds = %for.body
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buf, ptr noundef nonnull dereferenceable(6) @.str.45, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool42.not = icmp eq i32 %bcmp, 0
  br i1 %tobool42.not, label %if.end44, label %lor.lhs.false.for.inc370_crit_edge

lor.lhs.false.for.inc370_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc370

if.end44:                                         ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %EraseSize, align 4
  %mul46 = mul i32 %27, %block.0627
  %add47 = add i32 %mul46, 520
  %conv48 = zext i32 %add47 to i64
  %call49 = call i32 @inftl_read_oob(ptr noundef %3, i64 noundef %conv48, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef nonnull %h1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end55, label %if.end63

do.end55:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %EraseSize, align 4
  %mul58 = mul i32 %29, %block.0627
  %30 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mtd1, align 4
  %index61 = getelementptr inbounds %struct.mtd_info, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %index61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index61, align 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %mul58, i32 noundef %33, i32 noundef %call49) #10
  br label %for.inc370

if.end63:                                         ; preds = %if.end44
  %34 = call ptr @memcpy(ptr %MediaHdr, ptr %buf, i32 148)
  %35 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %EraseSize, align 4
  %mul66 = mul i32 %36, %block.0627
  %add67 = add i32 %mul66, 4096
  %conv68 = zext i32 %add67 to i64
  %call70 = call i32 @mtd_read(ptr noundef %3, i64 noundef %conv68, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef nonnull %buf) #7
  %37 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %38)
  %cmp71.not = icmp eq i32 %38, 512
  br i1 %cmp71.not, label %if.end79, label %do.end76

do.end76:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #10
  br label %cleanup373

if.end79:                                         ; preds = %if.end63
  %bcmp547 = call i32 @bcmp(ptr noundef dereferenceable(148) %MediaHdr, ptr noundef nonnull dereferenceable(148) %buf, i32 148) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp547)
  %tobool82.not = icmp eq i32 %bcmp547, 0
  br i1 %tobool82.not, label %if.end89, label %do.end86

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #10
  br label %cleanup373

if.end89:                                         ; preds = %if.end79
  %NoOfBootImageBlocks = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %NoOfBootImageBlocks to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %NoOfBootImageBlocks, align 1
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %NoOfBootImageBlocks to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %NoOfBootImageBlocks, align 1
  %NoOfBinaryPartitions = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %NoOfBinaryPartitions to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %NoOfBinaryPartitions, align 1
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %NoOfBinaryPartitions to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %NoOfBinaryPartitions, align 1
  %NoOfBDTLPartitions = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %NoOfBDTLPartitions to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %NoOfBDTLPartitions, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %NoOfBDTLPartitions to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %NoOfBDTLPartitions, align 1
  %BlockMultiplierBits = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 4
  %51 = ptrtoint ptr %BlockMultiplierBits to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %BlockMultiplierBits, align 1
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %BlockMultiplierBits to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %BlockMultiplierBits, align 1
  %FormatFlags = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 5
  %55 = ptrtoint ptr %FormatFlags to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %FormatFlags, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %FormatFlags to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %FormatFlags, align 1
  %PercentUsed = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 7
  %59 = ptrtoint ptr %PercentUsed to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %PercentUsed, align 1
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %62 = ptrtoint ptr %PercentUsed to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %PercentUsed, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_boot_record.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_boot_record, %if.then108)) #7
          to label %do.end118 [label %if.then108], !srcloc !179

if.then108:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %NoOfBootImageBlocks to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %NoOfBootImageBlocks, align 1
  %65 = ptrtoint ptr %NoOfBinaryPartitions to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %NoOfBinaryPartitions, align 1
  %67 = ptrtoint ptr %NoOfBDTLPartitions to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %NoOfBDTLPartitions, align 1
  %69 = ptrtoint ptr %BlockMultiplierBits to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %BlockMultiplierBits, align 1
  %71 = ptrtoint ptr %FormatFlags to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %FormatFlags, align 1
  %OsakVersion = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 6
  %73 = ptrtoint ptr %OsakVersion to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %OsakVersion, align 1
  %75 = ptrtoint ptr %PercentUsed to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %PercentUsed, align 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_boot_record.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.55, ptr noundef %MediaHdr, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76) #7
  br label %do.end118

do.end118:                                        ; preds = %if.then108, %if.end89
  %77 = ptrtoint ptr %NoOfBDTLPartitions to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %NoOfBDTLPartitions, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp120 = icmp eq i32 %78, 0
  br i1 %cmp120, label %do.end125, label %if.end129

do.end125:                                        ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #9
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef 0) #10
  br label %cleanup373

if.end129:                                        ; preds = %do.end118
  %79 = ptrtoint ptr %NoOfBinaryPartitions to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %NoOfBinaryPartitions, align 1
  %add132 = add i32 %80, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add132)
  %cmp133 = icmp ugt i32 %add132, 4
  br i1 %cmp133, label %do.end138, label %if.end146

do.end138:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %add132, i32 noundef %78, i32 noundef %80) #10
  br label %cleanup373

if.end146:                                        ; preds = %if.end129
  %81 = ptrtoint ptr %BlockMultiplierBits to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %BlockMultiplierBits, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp148 = icmp ugt i32 %82, 1
  br i1 %cmp148, label %do.end153, label %if.else

do.end153:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %82) #10
  br label %cleanup373

if.else:                                          ; preds = %if.end146
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp158 = icmp eq i32 %82, 1
  br i1 %cmp158, label %do.end163, label %if.else.if.end181_crit_edge

if.else.if.end181_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

do.end163:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 1) #10
  %83 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mtd1, align 4
  %erasesize169 = getelementptr inbounds %struct.mtd_info, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %erasesize169 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %erasesize169, align 8
  %87 = ptrtoint ptr %BlockMultiplierBits to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %BlockMultiplierBits, align 1
  %shl = shl i32 %86, %88
  %89 = ptrtoint ptr %EraseSize to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %shl, ptr %EraseSize, align 4
  %size174 = getelementptr inbounds %struct.mtd_info, ptr %84, i32 0, i32 2
  %90 = ptrtoint ptr %size174 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %size174, align 8
  %conv175 = trunc i64 %91 to i32
  %div177 = udiv i32 %conv175, %shl
  %92 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div177, ptr %nb_blocks, align 4
  %shr = lshr i32 %block.0627, %88
  br label %if.end181

if.end181:                                        ; preds = %do.end163, %if.else.if.end181_crit_edge
  %block.1 = phi i32 [ %shr, %do.end163 ], [ %block.0627, %if.else.if.end181_crit_edge ]
  %instr218 = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 20
  %len = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 20, i32 1
  br label %for.body185

for.body185:                                      ; preds = %for.inc.for.body185_crit_edge, %if.end181
  %i.0629 = phi i32 [ 0, %if.end181 ], [ %inc, %for.inc.for.body185_crit_edge ]
  %arrayidx = getelementptr %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 8, i32 %i.0629
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %arrayidx, align 1
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %arrayidx, align 1
  %firstUnit = getelementptr %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 8, i32 %i.0629, i32 1
  %97 = ptrtoint ptr %firstUnit to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %firstUnit, align 1
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %100 = ptrtoint ptr %firstUnit to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %99, ptr %firstUnit, align 1
  %lastUnit = getelementptr %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 8, i32 %i.0629, i32 2
  %101 = ptrtoint ptr %lastUnit to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %lastUnit, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %104 = ptrtoint ptr %lastUnit to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %103, ptr %lastUnit, align 1
  %flags = getelementptr %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 8, i32 %i.0629, i32 3
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %flags, align 1
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %108 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %107, ptr %flags, align 1
  %spareUnits = getelementptr %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 8, i32 %i.0629, i32 4
  %109 = ptrtoint ptr %spareUnits to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %spareUnits, align 1
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %112 = ptrtoint ptr %spareUnits to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %111, ptr %spareUnits, align 1
  %Reserved0 = getelementptr %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 8, i32 %i.0629, i32 5
  %113 = ptrtoint ptr %Reserved0 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %Reserved0, align 1
  %115 = call i32 @llvm.bswap.i32(i32 %114)
  %116 = ptrtoint ptr %Reserved0 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %115, ptr %Reserved0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_boot_record.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_boot_record, %if.then204)) #7
          to label %do.end212 [label %if.then204], !srcloc !179

if.then204:                                       ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %arrayidx, align 1
  %119 = ptrtoint ptr %firstUnit to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %firstUnit, align 1
  %121 = ptrtoint ptr %lastUnit to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %lastUnit, align 1
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %flags, align 1
  %125 = ptrtoint ptr %spareUnits to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %spareUnits, align 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_boot_record.__UNIQUE_ID_ddebug191, ptr noundef nonnull @.str.68, i32 noundef %i.0629, i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %124, i32 noundef %126) #7
  br label %do.end212

do.end212:                                        ; preds = %if.then204, %for.body185
  %127 = ptrtoint ptr %Reserved0 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %Reserved0, align 1
  %129 = ptrtoint ptr %firstUnit to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %firstUnit, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %cmp215.not = icmp eq i32 %128, %130
  br i1 %cmp215.not, label %do.end212.if.end226_crit_edge, label %if.then217

do.end212.if.end226_crit_edge:                    ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end226

if.then217:                                       ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %EraseSize, align 4
  %mul221 = mul i32 %132, %128
  %conv222 = zext i32 %mul221 to i64
  %133 = ptrtoint ptr %instr218 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %conv222, ptr %instr218, align 8
  %conv224 = zext i32 %132 to i64
  %134 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %conv224, ptr %len, align 8
  %call225 = call i32 @mtd_erase(ptr noundef %3, ptr noundef %instr218) #7
  br label %if.end226

if.end226:                                        ; preds = %if.then217, %do.end212.if.end226_crit_edge
  %135 = ptrtoint ptr %lastUnit to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %lastUnit, align 1
  %137 = ptrtoint ptr %firstUnit to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %firstUnit, align 1
  %sub = add i32 %136, 1
  %add229 = sub i32 %sub, %138
  %139 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add229, i32 %140)
  %cmp231 = icmp ult i32 %add229, %140
  br i1 %cmp231, label %do.end236, label %if.end242

do.end236:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %Reserved0 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %Reserved0, align 1
  %call241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %i.0629, i32 noundef %136, i32 noundef %138, i32 noundef %142) #10
  br label %cleanup373

if.end242:                                        ; preds = %if.end226
  %Reserved1 = getelementptr %struct.INFTLrecord, ptr %inftl, i32 0, i32 3, i32 8, i32 %i.0629, i32 6
  %143 = ptrtoint ptr %Reserved1 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %Reserved1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp243.not = icmp eq i32 %144, 0
  br i1 %cmp243.not, label %if.end252, label %do.end248

do.end248:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  %call251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %i.0629, i32 noundef %144) #10
  br label %cleanup373

if.end252:                                        ; preds = %if.end242
  %145 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %flags, align 1
  %and = and i32 %146, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool254.not = icmp eq i32 %and, 0
  br i1 %tobool254.not, label %for.inc, label %if.end265

for.inc:                                          ; preds = %if.end252
  %inc = add nuw nsw i32 %i.0629, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %do.end262, label %for.inc.for.body185_crit_edge

for.inc.for.body185_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body185

do.end262:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #10
  br label %cleanup373

if.end265:                                        ; preds = %if.end252
  %147 = ptrtoint ptr %firstUnit to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %firstUnit, align 1
  %nb_boot_blocks = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 19
  %149 = ptrtoint ptr %nb_boot_blocks to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %nb_boot_blocks, align 8
  %150 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load i32, ptr %arrayidx, align 1
  %conv268 = trunc i32 %151 to i16
  %numvunits = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 8
  %152 = ptrtoint ptr %numvunits to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv268, ptr %numvunits, align 4
  %conv270 = and i32 %151, 65535
  %153 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nb_blocks, align 4
  %sub273 = sub i32 -2, %148
  %sub274 = add i32 %sub273, %154
  call void @__sanitizer_cov_trace_cmp4(i32 %conv270, i32 %sub274)
  %cmp275 = icmp ugt i32 %conv270, %sub274
  br i1 %cmp275, label %do.end280, label %if.end287

do.end280:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #9
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %conv270, i32 noundef %154, i32 noundef %148) #10
  br label %cleanup373

if.end287:                                        ; preds = %if.end265
  %155 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %EraseSize, align 4
  %div291548 = lshr i32 %156, 9
  %mul292 = mul i32 %div291548, %conv270
  %size294 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %inftl, i32 0, i32 6
  %157 = ptrtoint ptr %size294 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %mul292, ptr %size294, align 4
  %158 = ptrtoint ptr %firstUnit to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %firstUnit, align 1
  %conv296 = trunc i32 %159 to i16
  %firstEUN = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 9
  %160 = ptrtoint ptr %firstEUN to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv296, ptr %firstEUN, align 2
  %161 = ptrtoint ptr %lastUnit to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %lastUnit, align 1
  %conv298 = trunc i32 %162 to i16
  %lastEUN = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 10
  %163 = ptrtoint ptr %lastEUN to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv298, ptr %lastEUN, align 8
  %164 = load i32, ptr %lastUnit, align 1
  %add300 = add i32 %164, 1
  %165 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %add300, ptr %nb_blocks, align 4
  %166 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add300, i32 2) #7
  %167 = extractvalue { i32, i1 } %166, 1
  br i1 %167, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !180

kmalloc_array.exit.thread:                        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #9
  %PUtable596 = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  %168 = ptrtoint ptr %PUtable596 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %PUtable596, align 4
  br label %cleanup373

if.end7.i:                                        ; preds = %if.end287
  %169 = extractvalue { i32, i1 } %166, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %169, i32 noundef 3264) #11
  %PUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 16
  %170 = ptrtoint ptr %PUtable to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call8.i, ptr %PUtable, align 4
  %tobool305.not = icmp eq ptr %call8.i, null
  br i1 %tobool305.not, label %if.end7.i.cleanup373_crit_edge, label %if.end307

if.end7.i.cleanup373_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup373

if.end307:                                        ; preds = %if.end7.i
  %171 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %nb_blocks, align 4
  %173 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %172, i32 2) #7
  %174 = extractvalue { i32, i1 } %173, 1
  br i1 %174, label %kmalloc_array.exit588.thread, label %if.end7.i586, !prof !180

kmalloc_array.exit588.thread:                     ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #9
  %VUtable604 = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 17
  %175 = ptrtoint ptr %VUtable604 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %VUtable604, align 8
  br label %if.then312

if.end7.i586:                                     ; preds = %if.end307
  %176 = extractvalue { i32, i1 } %173, 0
  %call8.i585 = call noalias align 128 ptr @__kmalloc(i32 noundef %176, i32 noundef 3264) #11
  %VUtable = getelementptr inbounds %struct.INFTLrecord, ptr %inftl, i32 0, i32 17
  %177 = ptrtoint ptr %VUtable to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call8.i585, ptr %VUtable, align 8
  %tobool311.not = icmp eq ptr %call8.i585, null
  br i1 %tobool311.not, label %if.end7.i586.if.then312_crit_edge, label %for.cond315.preheader

if.end7.i586.if.then312_crit_edge:                ; preds = %if.end7.i586
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then312

for.cond315.preheader:                            ; preds = %if.end7.i586
  %178 = ptrtoint ptr %nb_boot_blocks to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %nb_boot_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp317630.not = icmp eq i32 %179, 0
  br i1 %cmp317630.not, label %for.cond315.preheader.for.cond325.preheader_crit_edge, label %for.cond315.preheader.for.body319_crit_edge

for.cond315.preheader.for.body319_crit_edge:      ; preds = %for.cond315.preheader
  br label %for.body319

for.cond315.preheader.for.cond325.preheader_crit_edge: ; preds = %for.cond315.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond325.preheader

if.then312:                                       ; preds = %if.end7.i586.if.then312_crit_edge, %kmalloc_array.exit588.thread
  %180 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %PUtable, align 4
  call void @kfree(ptr noundef %181) #7
  br label %cleanup373

for.cond325.preheader:                            ; preds = %for.body319.for.cond325.preheader_crit_edge, %for.cond315.preheader.for.cond325.preheader_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond315.preheader.for.cond325.preheader_crit_edge ], [ %inc323, %for.body319.for.cond325.preheader_crit_edge ]
  %182 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %183)
  %cmp327632 = icmp ult i32 %i.1.lcssa, %183
  br i1 %cmp327632, label %for.cond325.preheader.for.body329_crit_edge, label %for.cond325.preheader.for.end334_crit_edge

for.cond325.preheader.for.end334_crit_edge:       ; preds = %for.cond325.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end334

for.cond325.preheader.for.body329_crit_edge:      ; preds = %for.cond325.preheader
  br label %for.body329

for.body319:                                      ; preds = %for.body319.for.body319_crit_edge, %for.cond315.preheader.for.body319_crit_edge
  %i.1631 = phi i32 [ %inc323, %for.body319.for.body319_crit_edge ], [ 0, %for.cond315.preheader.for.body319_crit_edge ]
  %184 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %PUtable, align 4
  %arrayidx321 = getelementptr i16, ptr %185, i32 %i.1631
  %186 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 -4, ptr %arrayidx321, align 2
  %inc323 = add nuw i32 %i.1631, 1
  %187 = ptrtoint ptr %nb_boot_blocks to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %nb_boot_blocks, align 8
  %cmp317 = icmp ult i32 %inc323, %188
  br i1 %cmp317, label %for.body319.for.body319_crit_edge, label %for.body319.for.cond325.preheader_crit_edge

for.body319.for.cond325.preheader_crit_edge:      ; preds = %for.body319
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond325.preheader

for.body319.for.body319_crit_edge:                ; preds = %for.body319
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body319

for.body329:                                      ; preds = %for.body329.for.body329_crit_edge, %for.cond325.preheader.for.body329_crit_edge
  %i.2633 = phi i32 [ %inc333, %for.body329.for.body329_crit_edge ], [ %i.1.lcssa, %for.cond325.preheader.for.body329_crit_edge ]
  %189 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %PUtable, align 4
  %arrayidx331 = getelementptr i16, ptr %190, i32 %i.2633
  %191 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 -3, ptr %arrayidx331, align 2
  %inc333 = add nuw i32 %i.2633, 1
  %192 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nb_blocks, align 4
  %cmp327 = icmp ult i32 %inc333, %193
  br i1 %cmp327, label %for.body329.for.body329_crit_edge, label %for.body329.for.end334_crit_edge

for.body329.for.end334_crit_edge:                 ; preds = %for.body329
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end334

for.body329.for.body329_crit_edge:                ; preds = %for.body329
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body329

for.end334:                                       ; preds = %for.body329.for.end334_crit_edge, %for.cond325.preheader.for.end334_crit_edge
  %194 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %PUtable, align 4
  %arrayidx336 = getelementptr i16, ptr %195, i32 %block.1
  %196 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 -4, ptr %arrayidx336, align 2
  %197 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nb_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp339636.not = icmp eq i32 %198, 0
  br i1 %cmp339636.not, label %for.end334.for.end367_crit_edge, label %for.end334.for.cond342.preheader_crit_edge

for.end334.for.cond342.preheader_crit_edge:       ; preds = %for.end334
  br label %for.cond342.preheader

for.end334.for.end367_crit_edge:                  ; preds = %for.end334
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end367

for.cond342.preheader:                            ; preds = %for.end364.for.cond342.preheader_crit_edge, %for.end334.for.cond342.preheader_crit_edge
  %i.3637 = phi i32 [ %inc366, %for.end364.for.cond342.preheader_crit_edge ], [ 0, %for.end334.for.cond342.preheader_crit_edge ]
  %199 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %EraseSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp344634.not = icmp eq i32 %200, 0
  br i1 %cmp344634.not, label %for.cond342.preheader.for.end364_crit_edge, label %for.cond342.preheader.for.body346_crit_edge

for.cond342.preheader.for.body346_crit_edge:      ; preds = %for.cond342.preheader
  br label %for.body346

for.cond342.preheader.for.end364_crit_edge:       ; preds = %for.cond342.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end364

for.body346:                                      ; preds = %for.inc359.for.body346_crit_edge, %for.cond342.preheader.for.body346_crit_edge
  %201 = phi i32 [ %212, %for.inc359.for.body346_crit_edge ], [ %200, %for.cond342.preheader.for.body346_crit_edge ]
  %physblock.0635 = phi i32 [ %add363, %for.inc359.for.body346_crit_edge ], [ 0, %for.cond342.preheader.for.body346_crit_edge ]
  %202 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mtd1, align 4
  %mul350 = mul i32 %201, %i.3637
  %add351 = add i32 %mul350, %physblock.0635
  %conv352 = zext i32 %add351 to i64
  %call353 = call i32 @mtd_block_isbad(ptr noundef %203, i64 noundef %conv352) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %for.body346.for.inc359_crit_edge, label %if.then355

for.body346.for.inc359_crit_edge:                 ; preds = %for.body346
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc359

if.then355:                                       ; preds = %for.body346
  call void @__sanitizer_cov_trace_pc() #9
  %204 = ptrtoint ptr %PUtable to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %PUtable, align 4
  %arrayidx357 = getelementptr i16, ptr %205, i32 %i.3637
  %206 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 -4, ptr %arrayidx357, align 2
  br label %for.inc359

for.inc359:                                       ; preds = %if.then355, %for.body346.for.inc359_crit_edge
  %207 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mtd1, align 4
  %erasesize362 = getelementptr inbounds %struct.mtd_info, ptr %208, i32 0, i32 3
  %209 = ptrtoint ptr %erasesize362 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %erasesize362, align 8
  %add363 = add i32 %210, %physblock.0635
  %211 = ptrtoint ptr %EraseSize to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %EraseSize, align 4
  %cmp344 = icmp ult i32 %add363, %212
  br i1 %cmp344, label %for.inc359.for.body346_crit_edge, label %for.inc359.for.end364_crit_edge

for.inc359.for.end364_crit_edge:                  ; preds = %for.inc359
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end364

for.inc359.for.body346_crit_edge:                 ; preds = %for.inc359
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body346

for.end364:                                       ; preds = %for.inc359.for.end364_crit_edge, %for.cond342.preheader.for.end364_crit_edge
  %inc366 = add nuw i32 %i.3637, 1
  %213 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %nb_blocks, align 4
  %cmp339 = icmp ult i32 %inc366, %214
  br i1 %cmp339, label %for.end364.for.cond342.preheader_crit_edge, label %for.end364.for.end367_crit_edge

for.end364.for.end367_crit_edge:                  ; preds = %for.end364
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end367

for.end364.for.cond342.preheader_crit_edge:       ; preds = %for.end364
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond342.preheader

for.end367:                                       ; preds = %for.end364.for.end367_crit_edge, %for.end334.for.end367_crit_edge
  %conv368 = trunc i32 %block.1 to i16
  %215 = ptrtoint ptr %MediaUnit to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv368, ptr %MediaUnit, align 8
  br label %cleanup373

for.inc370:                                       ; preds = %do.end55, %lor.lhs.false.for.inc370_crit_edge, %do.end32, %do.end21.for.inc370_crit_edge, %if.then16.for.inc370_crit_edge
  %inc371 = add nuw i32 %block.0627, 1
  %216 = ptrtoint ptr %nb_blocks to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %nb_blocks, align 4
  %cmp = icmp ult i32 %inc371, %217
  br i1 %cmp, label %for.inc370.for.body_crit_edge, label %for.inc370.cleanup373_crit_edge

for.inc370.cleanup373_crit_edge:                  ; preds = %for.inc370
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup373

for.inc370.for.body_crit_edge:                    ; preds = %for.inc370
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup373:                                       ; preds = %for.inc370.cleanup373_crit_edge, %for.end367, %if.then312, %if.end7.i.cleanup373_crit_edge, %kmalloc_array.exit.thread, %do.end280, %do.end262, %do.end248, %do.end236, %do.end153, %do.end138, %do.end125, %do.end86, %do.end76, %do.end.cleanup373_crit_edge
  %retval.2 = phi i32 [ -12, %kmalloc_array.exit.thread ], [ -12, %if.end7.i.cleanup373_crit_edge ], [ -1, %do.end76 ], [ -1, %do.end86 ], [ -1, %do.end125 ], [ -1, %do.end138 ], [ -1, %do.end153 ], [ -1, %do.end236 ], [ -1, %do.end248 ], [ -1, %do.end262 ], [ -1, %do.end280 ], [ -12, %if.then312 ], [ 0, %for.end367 ], [ -1, %do.end.cleanup373_crit_edge ], [ -1, %for.inc370.cleanup373_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #7
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h1) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inftl_read_oob(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !33, !35, !37, !38, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/inftlmount.c", i32 369, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @INFTL_formatblock.__UNIQUE_ID_ddebug192, !1, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/inftlmount.c", i32 388, i32 4}
!8 = !{ptr @INFTL_formatblock._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @INFTL_formatblock._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/inftlmount.c", i32 459, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug193, !11, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/inftlmount.c", i32 462, i32 2}
!16 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug194, !15, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/inftlmount.c", i32 465, i32 4}
!19 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug195, !18, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/inftlmount.c", i32 466, i32 3}
!22 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug196, !21, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/inftlmount.c", i32 469, i32 2}
!25 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug197, !24, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/inftlmount.c", i32 472, i32 2}
!28 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug198, !27, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!29 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug199, !30, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!30 = !{!"../drivers/mtd/inftlmount.c", i32 475, i32 4}
!31 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug200, !32, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!32 = !{!"../drivers/mtd/inftlmount.c", i32 476, i32 3}
!33 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug201, !34, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!34 = !{!"../drivers/mtd/inftlmount.c", i32 479, i32 2}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/inftlmount.c", i32 482, i32 2}
!37 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug202, !36, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!38 = !{ptr @INFTL_dumptables.__UNIQUE_ID_ddebug203, !39, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!39 = !{!"../drivers/mtd/inftlmount.c", i32 496, i32 2}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/inftlmount.c", i32 504, i32 2}
!42 = !{ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug204, !41, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/inftlmount.c", i32 507, i32 2}
!45 = !{ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug205, !44, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/inftlmount.c", i32 512, i32 3}
!48 = !{ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug206, !47, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/inftlmount.c", i32 517, i32 4}
!51 = !{ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug207, !50, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/inftlmount.c", i32 519, i32 3}
!54 = !{ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug208, !53, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!55 = !{ptr @INFTL_dumpVUchains.__UNIQUE_ID_ddebug209, !56, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!56 = !{!"../drivers/mtd/inftlmount.c", i32 522, i32 2}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/inftlmount.c", i32 538, i32 2}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @INFTL_mount.__UNIQUE_ID_ddebug210, !58, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/inftlmount.c", i32 542, i32 3}
!63 = !{ptr @INFTL_mount._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @INFTL_mount._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/inftlmount.c", i32 564, i32 2}
!67 = !{ptr @INFTL_mount.__UNIQUE_ID_ddebug211, !66, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/inftlmount.c", i32 613, i32 5}
!70 = !{ptr @INFTL_mount._entry.22, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @INFTL_mount._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/inftlmount.c", i32 638, i32 6}
!74 = !{ptr @INFTL_mount._entry.25, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @INFTL_mount._entry_ptr.27, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/inftlmount.c", i32 673, i32 5}
!78 = !{ptr @INFTL_mount._entry.28, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @INFTL_mount._entry_ptr.30, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/inftlmount.c", i32 703, i32 2}
!82 = !{ptr @INFTL_mount.__UNIQUE_ID_ddebug212, !81, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/inftlmount.c", i32 717, i32 5}
!85 = !{ptr @INFTL_mount._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @INFTL_mount._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/inftlmount.c", i32 757, i32 2}
!89 = !{ptr @INFTL_mount.__UNIQUE_ID_ddebug213, !88, !"__UNIQUE_ID_ddebug213", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/inftlmount.c", i32 760, i32 4}
!92 = !{ptr @INFTL_mount._entry.36, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @INFTL_mount._entry_ptr.38, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/inftlmount.c", i32 42, i32 2}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @find_boot_record.__UNIQUE_ID_ddebug189, !95, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!98 = !{ptr @find_boot_record.warncount, !99, !"warncount", i1 false, i1 false}
!99 = !{!"../drivers/mtd/inftlmount.c", i32 67, i32 15}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/inftlmount.c", i32 70, i32 5}
!102 = !{ptr @find_boot_record._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @find_boot_record._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/inftlmount.c", i32 75, i32 6}
!106 = !{ptr @find_boot_record._entry.42, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @find_boot_record._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/inftlmount.c", i32 82, i32 33}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/inftlmount.c", i32 92, i32 4}
!112 = !{ptr @find_boot_record._entry.46, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @find_boot_record._entry_ptr.48, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/inftlmount.c", i32 110, i32 4}
!116 = !{ptr @find_boot_record._entry.49, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @find_boot_record._entry_ptr.51, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/inftlmount.c", i32 116, i32 4}
!120 = !{ptr @find_boot_record._entry.52, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @find_boot_record._entry_ptr.54, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/inftlmount.c", i32 128, i32 3}
!124 = !{ptr @find_boot_record.__UNIQUE_ID_ddebug190, !123, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/inftlmount.c", i32 144, i32 4}
!127 = !{ptr @find_boot_record._entry.56, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @find_boot_record._entry_ptr.58, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/inftlmount.c", i32 151, i32 4}
!131 = !{ptr @find_boot_record._entry.59, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @find_boot_record._entry_ptr.61, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/inftlmount.c", i32 161, i32 4}
!135 = !{ptr @find_boot_record._entry.62, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @find_boot_record._entry_ptr.64, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/inftlmount.c", i32 166, i32 4}
!139 = !{ptr @find_boot_record._entry.65, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @find_boot_record._entry_ptr.67, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/inftlmount.c", i32 185, i32 4}
!143 = !{ptr @find_boot_record.__UNIQUE_ID_ddebug191, !142, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mtd/inftlmount.c", i32 210, i32 5}
!146 = !{ptr @find_boot_record._entry.69, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @find_boot_record._entry_ptr.71, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/inftlmount.c", i32 218, i32 5}
!150 = !{ptr @find_boot_record._entry.72, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @find_boot_record._entry_ptr.74, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/inftlmount.c", i32 230, i32 4}
!154 = !{ptr @find_boot_record._entry.75, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @find_boot_record._entry_ptr.77, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mtd/inftlmount.c", i32 240, i32 4}
!158 = !{ptr @find_boot_record._entry.78, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @find_boot_record._entry_ptr.80, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/inftlmount.c", i32 431, i32 2}
!162 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @format_chain._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @format_chain._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/inftlmount.c", i32 437, i32 3}
!167 = !{ptr @format_chain._entry.83, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @format_chain._entry_ptr.85, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"auto-init"}
!179 = !{i64 2148711567, i64 2148711572, i64 2148711585, i64 2148711629, i64 2148711663, i64 2148711684}
!180 = !{!"branch_weights", i32 1, i32 2000}
