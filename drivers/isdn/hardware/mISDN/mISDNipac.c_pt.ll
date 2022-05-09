; ModuleID = '/llk/IR_all_yes/drivers/isdn/hardware/mISDN/mISDNipac.c_pt.bc'
source_filename = "../drivers/isdn/hardware/mISDN/mISDNipac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mISDNisac_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDNisac_irq\09\09\09\09"
module asm "\09.long\09__crc_mISDNisac_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDNisac_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDNisac_irq\22\09\09\09\09\09"
module asm "__kstrtabns_mISDNisac_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDNisac_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDNisac_init\09\09\09\09"
module asm "\09.long\09__crc_mISDNisac_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDNisac_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDNisac_init\22\09\09\09\09\09"
module asm "__kstrtabns_mISDNisac_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDNipac_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDNipac_irq\09\09\09\09"
module asm "\09.long\09__crc_mISDNipac_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDNipac_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDNipac_irq\22\09\09\09\09\09"
module asm "__kstrtabns_mISDNipac_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDNipac_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDNipac_init\09\09\09\09"
module asm "\09.long\09__crc_mISDNipac_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDNipac_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDNipac_init\22\09\09\09\09\09"
module asm "__kstrtabns_mISDNipac_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.isac_hw = type { %struct.dchannel, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.timer_list, %struct.wait_queue_head, i8, i8, i8, i8, i8 }
%struct.dchannel = type { %struct.mISDNdevice, i32, %struct.work_struct, ptr, i32, ptr, ptr, i32, %struct.timer_list, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32 }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.ipac_hw = type { %struct.isac_hw, [2 x %struct.hscx_hw], ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.hscx_hw = type { %struct.bchannel, ptr, i8, i8, i8, [64 x i8] }
%struct.bchannel = type { %struct.mISDNchannel, i32, i32, %struct.work_struct, i32, ptr, i32, %struct.timer_list, [4 x i8], ptr, i16, i16, i16, i16, i16, i16, ptr, ptr, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author457 = internal constant [30 x i8] c"mISDNipac.author=Karsten Keil\00", section ".modinfo", align 1
@__UNIQUE_ID_version458 = internal constant [22 x i8] c"mISDNipac.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mISDNipac\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file459 = internal constant [53 x i8] c"mISDNipac.file=drivers/isdn/hardware/mISDN/mISDNipac\00", section ".modinfo", align 1
@__UNIQUE_ID_license460 = internal constant [25 x i8] c"mISDNipac.license=GPL v2\00", section ".modinfo", align 1
@mISDNisac_irq.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mISDNisac_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/isdn/hardware/mISDN/mISDNipac.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: ISAC interrupt %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@mISDNisac_irq.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: ISTAD %02x\0A\00", [16 x i8] zeroinitializer }, align 32
@mISDNisac_irq.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: ISAC XDU\0A\00", [18 x i8] zeroinitializer }, align 32
@mISDNisac_irq.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: ISAC XMR\0A\00", [18 x i8] zeroinitializer }, align 32
@mISDNisac_irq.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: ISAC RFO\0A\00", [18 x i8] zeroinitializer }, align 32
@mISDNisac_irq.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: ISAC RSC interrupt\0A\00", [40 x i8] zeroinitializer }, align 32
@mISDNisac_irq.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: ISAC SIN interrupt\0A\00", [40 x i8] zeroinitializer }, align 32
@mISDNisac_irq.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ISAC EXIR %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@mISDNisac_irq.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mISDNisac_irq.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_mISDNisac_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDNisac_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDNisac_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDNisac_irq to i32), ptr @__kstrtab_mISDNisac_irq, ptr @__kstrtabns_mISDNisac_irq }, section "___ksymtab+mISDNisac_irq", align 4
@__kstrtab_mISDNisac_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDNisac_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDNisac_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDNisac_init to i32), ptr @__kstrtab_mISDNisac_init, ptr @__kstrtabns_mISDNisac_init }, section "___ksymtab+mISDNisac_init", align 4
@mISDNipac_irq.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mISDNipac_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: ISTA %02x\0A\00", [17 x i8] zeroinitializer }, align 32
@mISDNipac_irq.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mISDNipac_irq.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.6, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mISDNipac_irq.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.15, i8 1, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s TIN2 irq\0A\00", [19 x i8] zeroinitializer }, align 32
@mISDNipac_irq.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.16, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: B2 ISTA %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@mISDNipac_irq.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.6, i8 1, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mISDNipac_irq.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.17, i8 1, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: %d irqloops cpu%d\0A\00", [41 x i8] zeroinitializer }, align 32
@mISDNipac_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.4, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015%s: %d IRQ LOOP cpu%d\0A\00", [39 x i8] zeroinitializer }, align 32
@mISDNipac_irq._entry_ptr = internal global ptr @mISDNipac_irq._entry, section ".printk_index", align 4
@__kstrtab_mISDNipac_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDNipac_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDNipac_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDNipac_irq to i32), ptr @__kstrtab_mISDNipac_irq, ptr @__kstrtabns_mISDNipac_irq }, section "___ksymtab+mISDNipac_irq", align 4
@mISDNipac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\015%s: ipac type %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mISDNipac_init\00", [17 x i8] zeroinitializer }, align 32
@mISDNipac_init._entry_ptr = internal global ptr @mISDNipac_init._entry, section ".printk_index", align 4
@__kstrtab_mISDNipac_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDNipac_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDNipac_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDNipac_init to i32), ptr @__kstrtab_mISDNipac_init, ptr @__kstrtabns_mISDNipac_init }, section "___ksymtab+mISDNipac_init", align 4
@isac_mod_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 1632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015mISDNipac module unloaded\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isac_mod_cleanup\00", [47 x i8] zeroinitializer }, align 32
@isac_mod_cleanup._entry_ptr = internal global ptr @isac_mod_cleanup._entry, section ".printk_index", align 4
@__initcall__kmod_mISDNipac__538_1634_isac_mod_init6 = internal global ptr @isac_mod_init, section ".initcall6.init", align 4
@__exitcall_isac_mod_cleanup = internal global ptr @isac_mod_cleanup, section ".exitcall.exit", align 4
@isacsx_cic_irq.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isacsx_cic_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: ISACX CIR0 %02X\0A\00", [43 x i8] zeroinitializer }, align 32
@isacsx_cic_irq.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.4, ptr @.str.25, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: ph_state change %x->%x\0A\00", [36 x i8] zeroinitializer }, align 32
@ph_command.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ph_command\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: ph_command %x\0A\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@isac_retransmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: tx_skb exist but not busy\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isac_retransmit\00", [16 x i8] zeroinitializer }, align 32
@isac_retransmit._entry_ptr = internal global ptr @isac_retransmit._entry, section ".printk_index", align 4
@isac_retransmit._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: ISAC XDU no TX_BUSY\0A\00", [37 x i8] zeroinitializer }, align 32
@isac_retransmit._entry_ptr.32 = internal global ptr @isac_retransmit._entry.30, section ".printk_index", align 4
@isac_fill_fifo.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isac_fill_fifo\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: %s  %d\0A\00", [20 x i8] zeroinitializer }, align 32
@isac_fill_fifo.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.35, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s dbusytimer running\0A\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"D-send %s %d \00", [18 x i8] zeroinitializer }, align 32
@isac_fill_fifo.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.37, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@isacsx_rme_irq.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isacsx_rme_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: RSTAD %#x, dropped\0A\00", [40 x i8] zeroinitializer }, align 32
@isacsx_rme_irq.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.4, ptr @.str.41, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: dchannel received %d\0A\00", [38 x i8] zeroinitializer }, align 32
@isac_empty_fifo.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.4, ptr @.str.34, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isac_empty_fifo\00", [16 x i8] zeroinitializer }, align 32
@isac_empty_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.42, ptr @.str.4, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: D receive out of memory\0A\00", [33 x i8] zeroinitializer }, align 32
@isac_empty_fifo._entry_ptr = internal global ptr @isac_empty_fifo._entry, section ".printk_index", align 4
@isac_empty_fifo.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.4, ptr @.str.44, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s overrun %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"D-recv %s %d \00", [18 x i8] zeroinitializer }, align 32
@isac_empty_fifo.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.4, ptr @.str.37, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isac_rme_irq.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isac_rme_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: ISAC RDO\0A\00", [18 x i8] zeroinitializer }, align 32
@isac_rme_irq.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.4, ptr @.str.48, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ISAC CRC error\0A\00", [44 x i8] zeroinitializer }, align 32
@isac_cisq_irq.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isac_cisq_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ISAC CIR0 %02X\0A\00", [44 x i8] zeroinitializer }, align 32
@isac_cisq_irq.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.4, ptr @.str.25, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isac_cisq_irq.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.4, ptr @.str.51, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ISAC CIR1 %02X\0A\00", [44 x i8] zeroinitializer }, align 32
@isac_mos_irq.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isac_mos_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ISAC MOSR %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@isac_mos_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.4, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: ISAC MON RX out of memory!\0A\00", [62 x i8] zeroinitializer }, align 32
@isac_mos_irq._entry_ptr = internal global ptr @isac_mos_irq._entry, section ".printk_index", align 4
@isac_mos_irq.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.55, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: ISAC MON RX overflow!\0A\00", [37 x i8] zeroinitializer }, align 32
@isac_mos_irq.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.56, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ISAC MOR0 %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@isac_mos_irq._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.4, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isac_mos_irq._entry_ptr.58 = internal global ptr @isac_mos_irq._entry.57, section ".printk_index", align 4
@isac_mos_irq.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.55, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isac_mos_irq.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.59, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ISAC MOR1 %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@isac_mos_irq._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.52, ptr @.str.4, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: MONITOR 0 received %d but no user\0A\00", [55 x i8] zeroinitializer }, align 32
@isac_mos_irq._entry_ptr.62 = internal global ptr @isac_mos_irq._entry.60, section ".printk_index", align 4
@isac_mos_irq._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.52, ptr @.str.4, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: MONITOR 1 received %d but no user\0A\00", [55 x i8] zeroinitializer }, align 32
@isac_mos_irq._entry_ptr.65 = internal global ptr @isac_mos_irq._entry.63, section ".printk_index", align 4
@isac_mos_irq.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.66, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: ISAC %02x -> MOX0\0A\00", [41 x i8] zeroinitializer }, align 32
@isac_mos_irq.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.67, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: ISAC %02x -> MOX1\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@isac_ph_state_bh.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.4, ptr @.str.69, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isac_ph_state_bh\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: TE newstate %x\0A\00", [44 x i8] zeroinitializer }, align 32
@isac_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&isac->dch.timer)\00", [45 x i8] zeroinitializer }, align 32
@isac_init.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.72, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isac_init\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ISACX STARD %x\0A\00", [44 x i8] zeroinitializer }, align 32
@isac_init.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.73, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ISACX ISTAD %x\0A\00", [44 x i8] zeroinitializer }, align 32
@isac_init.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.74, i8 0, i8 -58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: ISACX ISTA %x\0A\00", [45 x i8] zeroinitializer }, align 32
@isac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.71, ptr @.str.4, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015%s: ISACX Design ID %x\0A\00", [38 x i8] zeroinitializer }, align 32
@isac_init._entry_ptr = internal global ptr @isac_init._entry, section ".printk_index", align 4
@isac_init.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.24, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isac_init.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.76, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: ISAC STAR %x\0A\00", [46 x i8] zeroinitializer }, align 32
@isac_init.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.77, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: ISAC MODE %x\0A\00", [46 x i8] zeroinitializer }, align 32
@isac_init.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.78, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: ISAC ADF2 %x\0A\00", [46 x i8] zeroinitializer }, align 32
@isac_init.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.79, i8 0, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: ISAC ISTA %x\0A\00", [46 x i8] zeroinitializer }, align 32
@isac_init.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.80, i8 0, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: ISAC EXIR %x\0A\00", [46 x i8] zeroinitializer }, align 32
@isac_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.71, ptr @.str.4, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%s: ISAC version (%x): %s\0A\00", [35 x i8] zeroinitializer }, align 32
@isac_init._entry_ptr.83 = internal global ptr @isac_init._entry.81, section ".printk_index", align 4
@ISACVer = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], [16 x i8] zeroinitializer }, align 32
@isac_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.71, ptr @.str.4, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: only support IOM2 mode but adf2=%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@isac_init._entry_ptr.86 = internal global ptr @isac_init._entry.84, section ".printk_index", align 4
@isac_init.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.87, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: ISAC CIR0 %x\0A\00", [46 x i8] zeroinitializer }, align 32
@isac_l1cmd.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str.4, ptr @.str.89, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isac_l1cmd\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: cmd(%x) state(%02x)\0A\00", [39 x i8] zeroinitializer }, align 32
@isac_l1cmd.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str.4, ptr @.str.90, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s unknown command %x\0A\00", [37 x i8] zeroinitializer }, align 32
@dbusy_timer_handler.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.91, ptr @.str.4, ptr @.str.92, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dbusy_timer_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: D-Channel Busy RBCH %02x STAR %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@dbusy_timer_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.4, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: ISAC D-Channel Busy no tx_idx\0A\00", [59 x i8] zeroinitializer }, align 32
@dbusy_timer_handler._entry_ptr = internal global ptr @dbusy_timer_handler._entry, section ".printk_index", align 4
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"2086/2186 V1.1\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2085 B1\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2085 B2\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"2085 V2.3\00", [22 x i8] zeroinitializer }, align 32
@isac_ctrl.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.98, ptr @.str.4, ptr @.str.99, i8 0, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isac_ctrl\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: %s unknown command %x %lx\0A\00", [33 x i8] zeroinitializer }, align 32
@open_dchannel_caller.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.100, ptr @.str.4, ptr @.str.101, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"open_dchannel_caller\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s dev(%d) open from %p\0A\00", [35 x i8] zeroinitializer }, align 32
@ipac_irq.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.4, ptr @.str.103, i8 1, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipac_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: B%1d EXIRB %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@ipac_irq.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.4, ptr @.str.103, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ipac_irq.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.4, ptr @.str.103, i8 1, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ipac_irq.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.4, ptr @.str.104, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: B%1d ISTAB %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@ipac_irq.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.4, ptr @.str.105, i8 1, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: B%1d RFO error\0A\00", [44 x i8] zeroinitializer }, align 32
@ipac_irq.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.4, ptr @.str.106, i8 1, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: B%1d XDU error at len %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ipac_rme.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.107, ptr @.str.4, ptr @.str.108, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipac_rme\00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: B%1d RSTAB %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@ipac_rme._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.4, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015%s: B%1d invalid frame\0A\00", [38 x i8] zeroinitializer }, align 32
@ipac_rme._entry_ptr = internal global ptr @ipac_rme._entry, section ".printk_index", align 4
@ipac_rme._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.107, ptr @.str.4, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015%s: B%1d RDO proto=%x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipac_rme._entry_ptr.112 = internal global ptr @ipac_rme._entry.110, section ".printk_index", align 4
@ipac_rme._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.107, ptr @.str.4, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015%s: B%1d CRC error\0A\00", [42 x i8] zeroinitializer }, align 32
@ipac_rme._entry_ptr.115 = internal global ptr @ipac_rme._entry.113, section ".printk_index", align 4
@ipac_rme.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.107, ptr @.str.4, ptr @.str.116, i8 1, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: B%1d frame to short %d\0A\00", [36 x i8] zeroinitializer }, align 32
@hscx_empty_fifo.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.4, ptr @.str.118, i8 0, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hscx_empty_fifo\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: B%1d %d\0A\00", [19 x i8] zeroinitializer }, align 32
@hscx_empty_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.4, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s.B%d: No bufferspace for %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@hscx_empty_fifo._entry_ptr = internal global ptr @hscx_empty_fifo._entry, section ".printk_index", align 4
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"B%1d-recv %s %d \00", [47 x i8] zeroinitializer }, align 32
@hscx_empty_fifo.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.4, ptr @.str.37, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@waitforCEC.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.121, ptr @.str.4, ptr @.str.122, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"waitforCEC\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: B%1d CEC %d us\0A\00", [44 x i8] zeroinitializer }, align 32
@waitforCEC._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.4, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: B%1d CEC timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@waitforCEC._entry_ptr = internal global ptr @waitforCEC._entry, section ".printk_index", align 4
@hscx_fill_fifo.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.124, ptr @.str.4, ptr @.str.125, i8 0, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hscx_fill_fifo\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: B%1d %d/%d/%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"B%1d-send %s %d \00", [47 x i8] zeroinitializer }, align 32
@hscx_fill_fifo.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.124, ptr @.str.4, ptr @.str.37, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@waitforXFW.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.127, ptr @.str.4, ptr @.str.128, i8 0, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"waitforXFW\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: B%1d XFW %d us\0A\00", [44 x i8] zeroinitializer }, align 32
@waitforXFW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.4, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: B%1d XFW timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@waitforXFW._entry_ptr = internal global ptr @waitforXFW._entry, section ".printk_index", align 4
@ipac_dctrl.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.130, ptr @.str.4, ptr @.str.131, i8 1, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipac_dctrl\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: DCTRL: %x %p\0A\00", [46 x i8] zeroinitializer }, align 32
@ipac_dctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.4, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: cannot get module\0A\00", [39 x i8] zeroinitializer }, align 32
@ipac_dctrl._entry_ptr = internal global ptr @ipac_dctrl._entry, section ".printk_index", align 4
@ipac_dctrl.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.130, ptr @.str.4, ptr @.str.133, i8 1, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: dev(%d) close from %p\0A\00", [37 x i8] zeroinitializer }, align 32
@ipac_dctrl.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.130, ptr @.str.4, ptr @.str.134, i8 1, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: unknown DCTRL command %x\0A\00", [34 x i8] zeroinitializer }, align 32
@channel_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.4, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: unknown CTRL OP %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channel_ctrl\00", [19 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr = internal global ptr @channel_ctrl._entry, section ".printk_index", align 4
@hscx_l2l1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.4, i32 1371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: %s unknown prim(%x,%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hscx_l2l1\00", [22 x i8] zeroinitializer }, align 32
@hscx_l2l1._entry_ptr = internal global ptr @hscx_l2l1._entry, section ".printk_index", align 4
@hscx_mode.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.139, ptr @.str.4, ptr @.str.140, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hscx_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: HSCX %c protocol %x-->%x ch %d\0A\00", [60 x i8] zeroinitializer }, align 32
@hscx_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.4, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: protocol not known %x\0A\00", [35 x i8] zeroinitializer }, align 32
@hscx_mode._entry_ptr = internal global ptr @hscx_mode._entry, section ".printk_index", align 4
@hscx_mode._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.4, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hscx_mode._entry_ptr.143 = internal global ptr @hscx_mode._entry.142, section ".printk_index", align 4
@hscx_mode._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.4, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hscx_mode._entry_ptr.145 = internal global ptr @hscx_mode._entry.144, section ".printk_index", align 4
@hscx_bctrl.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.146, ptr @.str.4, ptr @.str.147, i8 1, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hscx_bctrl\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s cmd:%x %p\0A\00", [46 x i8] zeroinitializer }, align 32
@hscx_bctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.4, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s unknown prim(%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@hscx_bctrl._entry_ptr = internal global ptr @hscx_bctrl._entry, section ".printk_index", align 4
@ipac_init.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.149, ptr @.str.4, ptr @.str.150, i8 1, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipac_init\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: IPAC CONF %02x/%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.4, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s: IPAC Design ID %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@ipac_init._entry_ptr = internal global ptr @ipac_init._entry, section ".printk_index", align 4
@hscx_init.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.152, ptr @.str.4, ptr @.str.153, i8 1, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hscx_init\00", [22 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: HSCX VSTR %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@hscx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.4, i32 1444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: HSCX version %s\0A\00", [41 x i8] zeroinitializer }, align 32
@hscx_init._entry_ptr = internal global ptr @hscx_init._entry, section ".printk_index", align 4
@HSCXVer = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170], [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"A1\00", [29 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"?1\00", [29 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"A2\00", [29 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"?3\00", [29 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"A3\00", [29 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"V2.1\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"?6\00", [29 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"?7\00", [29 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"?8\00", [29 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"?9\00", [29 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"?10\00", [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"?11\00", [28 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"?12\00", [28 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"?13\00", [28 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"?14\00", [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@isac_mod_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.4, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015mISDNipac module version %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isac_mod_init\00", [18 x i8] zeroinitializer }, align 32
@isac_mod_init._entry_ptr = internal global ptr @isac_mod_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 6]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 6]
@__sancov_gen_cov_switch_values.174 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 12, i64 13, i64 15]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 6]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 6]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 38146, i64 39424]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2048]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@__sancov_gen_cov_switch_values.183 = internal global [9 x i64] [i64 7, i64 32, i64 258, i64 514, i64 33538, i64 33794, i64 35330, i64 35586, i64 35842]
@__sancov_gen_cov_switch_values.184 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.185 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 33, i64 34]
@__sancov_gen_cov_switch_values.186 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 33, i64 34]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 33, i64 34]
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 23, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 486, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 492, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 494, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 501, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 510, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 528, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 530, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 533, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1157, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1174, i32 6 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1188, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1202, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1205, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1570, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1632, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 436, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 438, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 36, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 228, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 233, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 153, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 159, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 167, i32 39 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 169, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 457, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 474, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 108, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 113, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 119, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 130, i32 39 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 181, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 187, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 417, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 426, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 246, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 252, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 266, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 270, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 282, i32 5 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 300, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 317, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 335, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 371, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 404, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 100, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 783, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 789, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 791, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 793, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 803, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 815, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 817, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 819, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 821, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 824, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 828, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant [8 x i8] c"ISACVer\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 766, i32 20 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 834, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 847, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 631, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 685, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 723, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 733, i32 5 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 767, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 767, i32 20 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 767, i32 31 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 768, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 618, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 745, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1086, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1111, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1126, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1140, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1032, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1037, i32 5 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1042, i32 5 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1048, i32 5 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1065, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 928, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 939, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 955, i32 27 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 885, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 888, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 985, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1000, i32 27 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 905, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 908, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1534, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1545, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1548, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1556, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1517, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1370, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1214, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1248, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1284, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1320, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1393, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1411, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1467, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1472, i32 4 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1441, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1443, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant [8 x i8] c"HSCXVer\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1423, i32 20 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1424, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1424, i32 8 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1424, i32 14 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1424, i32 20 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1424, i32 26 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1424, i32 32 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1424, i32 40 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1424, i32 46 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1425, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1425, i32 8 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1425, i32 14 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1425, i32 21 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1425, i32 28 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1425, i32 35 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1425, i32 42 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1425, i32 49 }
@___asan_gen_.737 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.743 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.744 = private constant [43 x i8] c"../drivers/isdn/hardware/mISDN/mISDNipac.c\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.744, i32 1625, i32 2 }
@llvm.compiler.used = appending global [228 x ptr] [ptr @__UNIQUE_ID_author457, ptr @__UNIQUE_ID_file459, ptr @__UNIQUE_ID_license460, ptr @__UNIQUE_ID_version458, ptr @__exitcall_isac_mod_cleanup, ptr @__initcall__kmod_mISDNipac__538_1634_isac_mod_init6, ptr @__ksymtab_mISDNipac_init, ptr @__ksymtab_mISDNipac_irq, ptr @__ksymtab_mISDNisac_init, ptr @__ksymtab_mISDNisac_irq, ptr @__modver_attr, ptr @channel_ctrl._entry, ptr @channel_ctrl._entry_ptr, ptr @dbusy_timer_handler._entry, ptr @dbusy_timer_handler._entry_ptr, ptr @hscx_bctrl._entry, ptr @hscx_bctrl._entry_ptr, ptr @hscx_empty_fifo._entry, ptr @hscx_empty_fifo._entry_ptr, ptr @hscx_init._entry, ptr @hscx_init._entry_ptr, ptr @hscx_l2l1._entry, ptr @hscx_l2l1._entry_ptr, ptr @hscx_mode._entry, ptr @hscx_mode._entry.142, ptr @hscx_mode._entry.144, ptr @hscx_mode._entry_ptr, ptr @hscx_mode._entry_ptr.143, ptr @hscx_mode._entry_ptr.145, ptr @ipac_dctrl._entry, ptr @ipac_dctrl._entry_ptr, ptr @ipac_init._entry, ptr @ipac_init._entry_ptr, ptr @ipac_rme._entry, ptr @ipac_rme._entry.110, ptr @ipac_rme._entry.113, ptr @ipac_rme._entry_ptr, ptr @ipac_rme._entry_ptr.112, ptr @ipac_rme._entry_ptr.115, ptr @isac_empty_fifo._entry, ptr @isac_empty_fifo._entry_ptr, ptr @isac_init._entry, ptr @isac_init._entry.81, ptr @isac_init._entry.84, ptr @isac_init._entry_ptr, ptr @isac_init._entry_ptr.83, ptr @isac_init._entry_ptr.86, ptr @isac_mod_cleanup, ptr @isac_mod_cleanup._entry, ptr @isac_mod_cleanup._entry_ptr, ptr @isac_mod_init._entry, ptr @isac_mod_init._entry_ptr, ptr @isac_mos_irq._entry, ptr @isac_mos_irq._entry.57, ptr @isac_mos_irq._entry.60, ptr @isac_mos_irq._entry.63, ptr @isac_mos_irq._entry_ptr, ptr @isac_mos_irq._entry_ptr.58, ptr @isac_mos_irq._entry_ptr.62, ptr @isac_mos_irq._entry_ptr.65, ptr @isac_retransmit._entry, ptr @isac_retransmit._entry.30, ptr @isac_retransmit._entry_ptr, ptr @isac_retransmit._entry_ptr.32, ptr @mISDNipac_init._entry, ptr @mISDNipac_init._entry_ptr, ptr @mISDNipac_irq._entry, ptr @mISDNipac_irq._entry_ptr, ptr @waitforCEC._entry, ptr @waitforCEC._entry_ptr, ptr @waitforXFW._entry, ptr @waitforXFW._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @isac_init.__key, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @ISACVer, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @HSCXVer, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172], section "llvm.metadata"
@0 = internal global [186 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDNipac_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDNipac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_mod_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_retransmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_retransmit._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_empty_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_mos_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_mos_irq._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_mos_irq._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_mos_irq._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ISACVer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbusy_timer_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipac_rme._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipac_rme._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipac_rme._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hscx_empty_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waitforCEC._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waitforXFW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipac_dctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hscx_l2l1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hscx_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hscx_mode._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hscx_mode._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hscx_bctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hscx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HSCXVer to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isac_mod_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mISDNisac_irq(ptr noundef %isac, i8 noundef zeroext %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val)
  %tobool.not = icmp eq i8 %val, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body, !prof !457

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisac_irq.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisac_irq, %if.then11)) #10
          to label %do.end [label %if.then11], !srcloc !458

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %conv = zext i8 %val to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisac_irq.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %type = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %conv127 = zext i8 %val to i32
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %do.end
  %and16 = and i32 %conv127, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then14.if.end19_crit_edge, label %if.then18

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @isacsx_cic_irq(ptr noundef %isac)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then14.if.end19_crit_edge
  %and21 = and i32 %conv127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.return_crit_edge, label %if.then23

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then23:                                        ; preds = %if.end19
  %read_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 5
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 8
  %hw = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %8 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %off, align 4
  %10 = trunc i32 %9 to i8
  %conv24 = add i8 %10, 32
  %call25 = tail call zeroext i8 %5(ptr noundef %7, i8 noundef zeroext %conv24) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisac_irq.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisac_irq, %if.then38)) #10
          to label %do.end42 [label %if.then38], !srcloc !458

if.then38:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %name39 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %11 = ptrtoint ptr %name39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name39, align 8
  %conv40 = zext i8 %call25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisac_irq.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.6, ptr noundef %12, i32 noundef %conv40) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %if.then23
  %conv43 = zext i8 %call25 to i32
  %and44 = and i32 %conv43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.end42.if.end63_crit_edge, label %do.body47

do.end42.if.end63_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.body47:                                        ; preds = %do.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisac_irq.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisac_irq, %if.then59)) #10
          to label %do.end62 [label %if.then59], !srcloc !458

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %name60 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %13 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name60, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisac_irq.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.7, ptr noundef %14) #10
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body47
  tail call fastcc void @isac_retransmit(ptr noundef %isac)
  br label %if.end63

if.end63:                                         ; preds = %do.end62, %do.end42.if.end63_crit_edge
  %and65 = and i32 %conv43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end84_crit_edge, label %do.body68

if.end63.if.end84_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.body68:                                        ; preds = %if.end63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisac_irq.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisac_irq, %if.then80)) #10
          to label %do.end83 [label %if.then80], !srcloc !458

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  %name81 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %15 = ptrtoint ptr %name81 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name81, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisac_irq.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.8, ptr noundef %16) #10
  br label %do.end83

do.end83:                                         ; preds = %if.then80, %do.body68
  tail call fastcc void @isac_retransmit(ptr noundef %isac)
  br label %if.end84

if.end84:                                         ; preds = %do.end83, %if.end63.if.end84_crit_edge
  %and86 = and i32 %conv43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end84.if.end89_crit_edge, label %if.then88

if.end84.if.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then88:                                        ; preds = %if.end84
  %Flags.i = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 1
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then88.if.end.i_crit_edge, label %if.then.i

if.then88.if.end.i_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  %timer.i = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 8
  %call2.i = tail call i32 @del_timer(ptr noundef %timer.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then88.if.end.i_crit_edge
  %tx_skb.i = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 13
  %17 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_skb.i, align 4
  %tobool4.not.i = icmp eq ptr %18, null
  br i1 %tobool4.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %tx_idx.i = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 14
  %19 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_idx.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.i = icmp ult i32 %20, %22
  br i1 %cmp.i, label %land.lhs.true.i.if.end16.sink.split.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i.if.end16.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  tail call void @consume_skb(ptr noundef %18) #10
  %call12.i = tail call i32 @get_next_dframe(ptr noundef %isac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.else.i.if.end89_crit_edge, label %if.else.i.if.end16.sink.split.i_crit_edge

if.else.i.if.end16.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.sink.split.i

if.else.i.if.end89_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.end16.sink.split.i:                            ; preds = %if.else.i.if.end16.sink.split.i_crit_edge, %land.lhs.true.i.if.end16.sink.split.i_crit_edge
  tail call fastcc void @isac_fill_fifo(ptr noundef %isac) #10
  br label %if.end89

if.end89:                                         ; preds = %if.end16.sink.split.i, %if.else.i.if.end89_crit_edge, %if.end84.if.end89_crit_edge
  %and91 = and i32 %conv43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end89.if.end115_crit_edge, label %do.body94

if.end89.if.end115_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

do.body94:                                        ; preds = %if.end89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisac_irq.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisac_irq, %if.then106)) #10
          to label %do.end109 [label %if.then106], !srcloc !458

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #12
  %name107 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %23 = ptrtoint ptr %name107 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name107, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisac_irq.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.9, ptr noundef %24) #10
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %do.body94
  %write_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %25 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg, align 4
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %29 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %off, align 4
  %31 = trunc i32 %30 to i8
  %conv114 = add i8 %31, 33
  tail call void %26(ptr noundef %28, i8 noundef zeroext %conv114, i8 noundef zeroext -128) #10
  br label %if.end115

if.end115:                                        ; preds = %do.end109, %if.end89.if.end115_crit_edge
  %and117 = and i32 %conv43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end115.if.end120_crit_edge, label %if.then119

if.end115.if.end120_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @isacsx_rme_irq(ptr noundef %isac)
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end115.if.end120_crit_edge
  %and122 = and i32 %conv43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end120.return_crit_edge, label %if.then124

if.end120.return_crit_edge:                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @isac_empty_fifo(ptr noundef %isac, i32 noundef 32)
  br label %return

if.else:                                          ; preds = %do.end
  %and128 = and i32 %conv127, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.else.if.end131_crit_edge, label %if.then130

if.else.if.end131_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then130:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @isac_rme_irq(ptr noundef %isac)
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.else.if.end131_crit_edge
  %and133 = and i32 %conv127, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end131.if.end136_crit_edge, label %if.then135

if.end131.if.end136_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then135:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @isac_empty_fifo(ptr noundef %isac, i32 noundef 32)
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end131.if.end136_crit_edge
  %and138 = and i32 %conv127, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end136.if.end141_crit_edge, label %if.then140

if.end136.if.end141_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then140:                                       ; preds = %if.end136
  %Flags.i345 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 1
  %call.i346 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags.i345) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346)
  %tobool.not.i347 = icmp eq i32 %call.i346, 0
  br i1 %tobool.not.i347, label %if.then140.if.end.i353_crit_edge, label %if.then.i350

if.then140.if.end.i353_crit_edge:                 ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i353

if.then.i350:                                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  %timer.i348 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 8
  %call2.i349 = tail call i32 @del_timer(ptr noundef %timer.i348) #10
  br label %if.end.i353

if.end.i353:                                      ; preds = %if.then.i350, %if.then140.if.end.i353_crit_edge
  %tx_skb.i351 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 13
  %32 = ptrtoint ptr %tx_skb.i351 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_skb.i351, align 4
  %tobool4.not.i352 = icmp eq ptr %33, null
  br i1 %tobool4.not.i352, label %if.end.i353.if.else.i360_crit_edge, label %land.lhs.true.i357

if.end.i353.if.else.i360_crit_edge:               ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i360

land.lhs.true.i357:                               ; preds = %if.end.i353
  %tx_idx.i354 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 14
  %34 = ptrtoint ptr %tx_idx.i354 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_idx.i354, align 8
  %len.i355 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 6
  %36 = ptrtoint ptr %len.i355 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i355, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i356 = icmp ult i32 %35, %37
  br i1 %cmp.i356, label %land.lhs.true.i357.if.end16.sink.split.i361_crit_edge, label %land.lhs.true.i357.if.else.i360_crit_edge

land.lhs.true.i357.if.else.i360_crit_edge:        ; preds = %land.lhs.true.i357
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i360

land.lhs.true.i357.if.end16.sink.split.i361_crit_edge: ; preds = %land.lhs.true.i357
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.sink.split.i361

if.else.i360:                                     ; preds = %land.lhs.true.i357.if.else.i360_crit_edge, %if.end.i353.if.else.i360_crit_edge
  tail call void @consume_skb(ptr noundef %33) #10
  %call12.i358 = tail call i32 @get_next_dframe(ptr noundef %isac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i358)
  %tobool13.not.i359 = icmp eq i32 %call12.i358, 0
  br i1 %tobool13.not.i359, label %if.else.i360.if.end141_crit_edge, label %if.else.i360.if.end16.sink.split.i361_crit_edge

if.else.i360.if.end16.sink.split.i361_crit_edge:  ; preds = %if.else.i360
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.sink.split.i361

if.else.i360.if.end141_crit_edge:                 ; preds = %if.else.i360
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.end16.sink.split.i361:                         ; preds = %if.else.i360.if.end16.sink.split.i361_crit_edge, %land.lhs.true.i357.if.end16.sink.split.i361_crit_edge
  tail call fastcc void @isac_fill_fifo(ptr noundef %isac) #10
  br label %if.end141

if.end141:                                        ; preds = %if.end16.sink.split.i361, %if.else.i360.if.end141_crit_edge, %if.end136.if.end141_crit_edge
  %and143 = and i32 %conv127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end141.if.end146_crit_edge, label %if.then145

if.end141.if.end146_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then145:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @isac_cisq_irq(ptr noundef %isac)
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end141.if.end146_crit_edge
  %and148 = and i32 %conv127, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end146.if.end167_crit_edge, label %do.body151

if.end146.if.end167_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

do.body151:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisac_irq.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisac_irq, %if.then163)) #10
          to label %if.end167 [label %if.then163], !srcloc !458

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #12
  %name164 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %38 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisac_irq.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.10, ptr noundef %39) #10
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %do.body151, %if.end146.if.end167_crit_edge
  %and169 = and i32 %conv127, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end167.if.end188_crit_edge, label %do.body172

if.end167.if.end188_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end188

do.body172:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisac_irq.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisac_irq, %if.then184)) #10
          to label %if.end188 [label %if.then184], !srcloc !458

if.then184:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #12
  %name185 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %40 = ptrtoint ptr %name185 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name185, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisac_irq.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.11, ptr noundef %41) #10
  br label %if.end188

if.end188:                                        ; preds = %if.then184, %do.body172, %if.end167.if.end188_crit_edge
  %and190 = and i32 %conv127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end188.return_crit_edge, label %if.then192

if.end188.return_crit_edge:                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then192:                                       ; preds = %if.end188
  %read_reg193 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 5
  %42 = ptrtoint ptr %read_reg193 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_reg193, align 8
  %hw195 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %44 = ptrtoint ptr %hw195 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw195, align 4
  %off196 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %46 = ptrtoint ptr %off196 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %off196, align 4
  %48 = trunc i32 %47 to i8
  %conv198 = add i8 %48, 36
  %call199 = tail call zeroext i8 %43(ptr noundef %45, i8 noundef zeroext %conv198) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisac_irq.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisac_irq, %if.then212)) #10
          to label %do.end216 [label %if.then212], !srcloc !458

if.then212:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #12
  %name213 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %49 = ptrtoint ptr %name213 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name213, align 8
  %conv214 = zext i8 %call199 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisac_irq.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.12, ptr noundef %50, i32 noundef %conv214) #10
  br label %do.end216

do.end216:                                        ; preds = %if.then212, %if.then192
  %conv217 = zext i8 %call199 to i32
  %and218 = and i32 %conv217, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %do.end216.if.end237_crit_edge, label %do.body221

do.end216.if.end237_crit_edge:                    ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237

do.body221:                                       ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisac_irq.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisac_irq, %if.then233)) #10
          to label %if.end237 [label %if.then233], !srcloc !458

if.then233:                                       ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #12
  %name234 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %51 = ptrtoint ptr %name234 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name234, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisac_irq.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.8, ptr noundef %52) #10
  br label %if.end237

if.end237:                                        ; preds = %if.then233, %do.body221, %do.end216.if.end237_crit_edge
  %and239 = and i32 %conv217, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %if.end237.if.end258_crit_edge, label %do.body242

if.end237.if.end258_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end258

do.body242:                                       ; preds = %if.end237
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNisac_irq.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNisac_irq, %if.then254)) #10
          to label %do.end257 [label %if.then254], !srcloc !458

if.then254:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #12
  %name255 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %53 = ptrtoint ptr %name255 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name255, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNisac_irq.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.7, ptr noundef %54) #10
  br label %do.end257

do.end257:                                        ; preds = %if.then254, %do.body242
  tail call fastcc void @isac_retransmit(ptr noundef %isac)
  br label %if.end258

if.end258:                                        ; preds = %do.end257, %if.end237.if.end258_crit_edge
  %and260 = and i32 %conv217, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %if.end258.return_crit_edge, label %if.then262

if.end258.return_crit_edge:                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then262:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @isac_mos_irq(ptr noundef %isac)
  br label %return

return:                                           ; preds = %if.then262, %if.end258.return_crit_edge, %if.end188.return_crit_edge, %if.then124, %if.end120.return_crit_edge, %if.end19.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end188.return_crit_edge ], [ 1, %if.then262 ], [ 1, %if.end258.return_crit_edge ], [ 1, %if.end19.return_crit_edge ], [ 1, %if.then124 ], [ 1, %if.end120.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isacsx_cic_irq(ptr noundef %isac) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 5
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 8
  %hw = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %off, align 4
  %6 = trunc i32 %5 to i8
  %conv = add i8 %6, 46
  %call = tail call zeroext i8 %1(ptr noundef %3, i8 noundef zeroext %conv) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isacsx_cic_irq.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isacsx_cic_irq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !458

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %conv4 = zext i8 %call to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isacsx_cic_irq.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.24, ptr noundef %8, i32 noundef %conv4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv5 = zext i8 %call to i32
  %and = and i32 %conv5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end.if.end31_crit_edge, label %do.body8

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.body8:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isacsx_cic_irq.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isacsx_cic_irq, %if.then20)) #10
          to label %do.end26 [label %if.then20], !srcloc !458

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %name21 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %9 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name21, align 8
  %state = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 26
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state, align 4
  %conv22 = zext i8 %12 to i32
  %13 = lshr i32 %conv5, 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isacsx_cic_irq.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.25, ptr noundef %10, i32 noundef %conv22, i32 noundef %13) #10
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %do.body8
  %14 = lshr i8 %call, 4
  %state30 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 26
  %15 = ptrtoint ptr %state30 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %state30, align 4
  %trunc = trunc i8 %14 to i4
  %16 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc, label %do.end26.isac_ph_state_change.exit_crit_edge [
    i4 1, label %do.end26.sw.bb.i_crit_edge
    i4 6, label %do.end26.sw.bb.i_crit_edge47
  ]

do.end26.sw.bb.i_crit_edge47:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.end26.sw.bb.i_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.end26.isac_ph_state_change.exit_crit_edge:     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %isac_ph_state_change.exit

sw.bb.i:                                          ; preds = %do.end26.sw.bb.i_crit_edge, %do.end26.sw.bb.i_crit_edge47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isacsx_cic_irq, %if.then.i.i)) #10
          to label %ph_command.exit.i [label %if.then.i.i], !srcloc !458

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %17 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %18, i32 noundef 15) #10
  br label %ph_command.exit.i

ph_command.exit.i:                                ; preds = %if.then.i.i, %sw.bb.i
  %type.i.i = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 1
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i.i, align 8
  %and.i.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  %write_reg8.i.i = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %21 = ptrtoint ptr %write_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg8.i.i, align 4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %25 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %off, align 4
  %27 = trunc i32 %26 to i8
  %..i.i = select i1 %tobool3.not.i.i, i8 49, i8 46
  %conv13.i.i = add i8 %..i.i, %27
  %or16.i.i = select i1 %tobool3.not.i.i, i8 63, i8 -2
  tail call void %22(ptr noundef %24, i8 noundef zeroext %conv13.i.i, i8 noundef zeroext %or16.i.i) #10
  br label %isac_ph_state_change.exit

isac_ph_state_change.exit:                        ; preds = %ph_command.exit.i, %do.end26.isac_ph_state_change.exit_crit_edge
  %Flags.i = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %Flags.i) #10
  %workq.i = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %workq.i) #10
  br label %if.end31

if.end31:                                         ; preds = %isac_ph_state_change.exit, %do.end.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isac_retransmit(ptr noundef %isac) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %Flags = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 1
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %timer = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 8
  %call2 = tail call i32 @del_timer(ptr noundef %timer) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %Flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %if.else, label %if.end.if.end30.sink.split.sink.split_crit_edge

if.end.if.end30.sink.split.sink.split_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.sink.split.sink.split

if.else:                                          ; preds = %if.end
  %tx_skb = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 13
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  %tobool10.not = icmp eq ptr %3, null
  %name22 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %4 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name22, align 8
  br i1 %tobool10.not, label %do.end20, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %5) #13
  %call15 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %Flags) #10
  br label %if.end30.sink.split.sink.split

do.end20:                                         ; preds = %if.else
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %5) #13
  %call25 = tail call i32 @get_next_dframe(ptr noundef %isac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.end20.if.end30_crit_edge, label %do.end20.if.end30.sink.split_crit_edge

do.end20.if.end30.sink.split_crit_edge:           ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.sink.split

do.end20.if.end30_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30.sink.split.sink.split:                   ; preds = %do.end, %if.end.if.end30.sink.split.sink.split_crit_edge
  %tx_idx = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 14
  %6 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_idx, align 8
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.end30.sink.split.sink.split, %do.end20.if.end30.sink.split_crit_edge
  tail call fastcc void @isac_fill_fifo(ptr noundef %isac)
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %do.end20.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isacsx_rme_irq(ptr noundef %isac) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 5
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 8
  %hw = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %off, align 4
  %6 = trunc i32 %5 to i8
  %conv = add i8 %6, 40
  %call = tail call zeroext i8 %1(ptr noundef %3, i8 noundef zeroext %conv) #10
  %conv1 = zext i8 %call to i32
  %and = and i32 %conv1, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %and)
  %cmp.not = icmp eq i32 %and, 160
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isacsx_rme_irq.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isacsx_rme_irq, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !458

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isacsx_rme_irq.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.40, ptr noundef %8, i32 noundef %conv1) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %write_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %13 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %off, align 4
  %15 = trunc i32 %14 to i8
  %conv12 = add i8 %15, 33
  tail call void %10(ptr noundef %12, i8 noundef zeroext %conv12, i8 noundef zeroext -128) #10
  %rx_skb = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 9
  %16 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_skb, align 4
  tail call void @consume_skb(ptr noundef %17) #10
  %18 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rx_skb, align 4
  br label %if.end59

if.else:                                          ; preds = %entry
  %19 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg, align 8
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %23 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %off, align 4
  %25 = trunc i32 %24 to i8
  %conv21 = add i8 %25, 38
  %call22 = tail call zeroext i8 %20(ptr noundef %22, i8 noundef zeroext %conv21) #10
  %26 = and i8 %call22, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp25 = icmp eq i8 %26, 0
  %narrow = select i1 %cmp25, i8 32, i8 %26
  %spec.store.select = zext i8 %narrow to i32
  tail call fastcc void @isac_empty_fifo(ptr noundef %isac, i32 noundef %spec.store.select)
  %rx_skb30 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 9
  %27 = ptrtoint ptr %rx_skb30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_skb30, align 4
  %tobool31.not = icmp eq ptr %28, null
  br i1 %tobool31.not, label %if.else.if.end59_crit_edge, label %if.then32

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then32:                                        ; preds = %if.else
  %len = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %sub = add i32 %30, -1
  tail call void @skb_trim(ptr noundef nonnull %28, i32 noundef %sub) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isacsx_rme_irq.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isacsx_rme_irq, %if.then49)) #10
          to label %do.end56 [label %if.then49], !srcloc !458

if.then49:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %name50 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %31 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name50, align 8
  %33 = ptrtoint ptr %rx_skb30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_skb30, align 4
  %len53 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %len53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len53, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isacsx_rme_irq.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.41, ptr noundef %32, i32 noundef %36) #10
  br label %do.end56

do.end56:                                         ; preds = %if.then49, %if.then32
  tail call void @recv_Dchannel(ptr noundef %isac) #10
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %if.else.if.end59_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isac_empty_fifo(ptr nocapture noundef %isac, i32 noundef %count) unnamed_addr #1 align 64 {
entry:
  %pfx = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_empty_fifo.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_empty_fifo, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !458

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_empty_fifo.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.34, ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %count) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rx_skb = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 9
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end21_crit_edge

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then4:                                         ; preds = %do.end
  %maxlen = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 10
  %4 = ptrtoint ptr %maxlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxlen, align 8
  %add.i = add i32 %5, 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end15, label %mI_alloc_skb.exit, !prof !457

mI_alloc_skb.exit:                                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %10 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %rx_skb, align 4
  br label %if.end21

do.end15:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rx_skb, align 4
  %name17 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %12 = ptrtoint ptr %name17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name17, align 8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %13) #13
  %write_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %14 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg, align 4
  %hw = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %18 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %off, align 4
  %20 = trunc i32 %19 to i8
  %conv = add i8 %20, 33
  tail call void %15(ptr noundef %17, i8 noundef zeroext %conv, i8 noundef zeroext -128) #10
  br label %cleanup

if.end21:                                         ; preds = %mI_alloc_skb.exit, %do.end.if.end21_crit_edge
  %21 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %add24 = add i32 %24, %count
  %maxlen26 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 10
  %25 = ptrtoint ptr %maxlen26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxlen26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add24, i32 %26)
  %cmp.not = icmp ult i32 %add24, %26
  br i1 %cmp.not, label %if.end56, label %do.body29

do.body29:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_empty_fifo.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_empty_fifo, %if.then41)) #10
          to label %do.end49 [label %if.then41], !srcloc !458

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %name42 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %27 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name42, align 8
  %29 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_skb, align 4
  %len45 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %len45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len45, align 4
  %add46 = add i32 %32, %count
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_empty_fifo.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.44, ptr noundef %28, ptr noundef nonnull @.str.42, i32 noundef %add46) #10
  br label %do.end49

do.end49:                                         ; preds = %if.then41, %do.body29
  %write_reg50 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %33 = ptrtoint ptr %write_reg50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg50, align 4
  %hw52 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %35 = ptrtoint ptr %hw52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw52, align 4
  %off53 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %37 = ptrtoint ptr %off53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %off53, align 4
  %39 = trunc i32 %38 to i8
  %conv55 = add i8 %39, 33
  tail call void %34(ptr noundef %36, i8 noundef zeroext %conv55, i8 noundef zeroext -128) #10
  br label %cleanup

if.end56:                                         ; preds = %if.end21
  %call59 = tail call ptr @skb_put(ptr noundef %22, i32 noundef %count) #10
  %read_fifo = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 7
  %40 = ptrtoint ptr %read_fifo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_fifo, align 8
  %hw61 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %42 = ptrtoint ptr %hw61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw61, align 4
  %off62 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %44 = ptrtoint ptr %off62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %off62, align 4
  %conv63 = trunc i32 %45 to i8
  tail call void %41(ptr noundef %43, i8 noundef zeroext %conv63, ptr noundef %call59, i32 noundef %count) #10
  %write_reg64 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %46 = ptrtoint ptr %write_reg64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg64, align 4
  %48 = ptrtoint ptr %hw61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw61, align 4
  %50 = ptrtoint ptr %off62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %off62, align 4
  %52 = trunc i32 %51 to i8
  %conv69 = add i8 %52, 33
  tail call void %47(ptr noundef %49, i8 noundef zeroext %conv69, i8 noundef zeroext -128) #10
  %debug = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 15
  %53 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug, align 4
  %and = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool71.not = icmp eq i32 %and, 0
  br i1 %tobool71.not, label %if.end56.cleanup_crit_edge, label %if.then72

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pfx) #10
  %55 = call ptr @memset(ptr %pfx, i32 255, i32 36)
  %name73 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %56 = ptrtoint ptr %name73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name73, align 8
  %call74 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pfx, i32 noundef 35, ptr noundef nonnull @.str.45, ptr noundef %57, i32 noundef %count)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_empty_fifo.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_empty_fifo, %if.then87)) #10
          to label %do.end91 [label %if.then87], !srcloc !458

if.then87:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  call void @print_hex_dump(ptr noundef nonnull @.str.38, ptr noundef nonnull %pfx, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %call59, i32 noundef %count, i1 noundef zeroext true) #10
  br label %do.end91

do.end91:                                         ; preds = %if.then87, %if.then72
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pfx) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %if.end56.cleanup_crit_edge, %do.end49, %do.end15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isac_rme_irq(ptr noundef %isac) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 5
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 8
  %hw = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %off, align 4
  %6 = trunc i32 %5 to i8
  %conv = add i8 %6, 39
  %call = tail call zeroext i8 %1(ptr noundef %3, i8 noundef zeroext %conv) #10
  %conv1 = zext i8 %call to i32
  %and = and i32 %conv1, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cmp.not = icmp eq i32 %and, 32
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and4 = and i32 %conv1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then.if.end11_crit_edge, label %do.body

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_rme_irq.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_rme_irq, %if.then10)) #10
          to label %if.end11 [label %if.then10], !srcloc !458

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_rme_irq.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.47, ptr noundef %8) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.body, %if.then.if.end11_crit_edge
  %and13 = and i32 %conv1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body16, label %if.end11.if.end33_crit_edge

if.end11.if.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.body16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_rme_irq.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_rme_irq, %if.then28)) #10
          to label %if.end33 [label %if.then28], !srcloc !458

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %name29 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %9 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name29, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_rme_irq.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.48, ptr noundef %10) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %do.body16, %if.end11.if.end33_crit_edge
  %write_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %11 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg, align 4
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %15 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %off, align 4
  %17 = trunc i32 %16 to i8
  %conv38 = add i8 %17, 33
  tail call void %12(ptr noundef %14, i8 noundef zeroext %conv38, i8 noundef zeroext -128) #10
  %rx_skb = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 9
  %18 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_skb, align 4
  tail call void @consume_skb(ptr noundef %19) #10
  %20 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rx_skb, align 4
  br label %if.end59

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg, align 8
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %25 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %off, align 4
  %27 = trunc i32 %26 to i8
  %conv47 = add i8 %27, 37
  %call48 = tail call zeroext i8 %22(ptr noundef %24, i8 noundef zeroext %conv47) #10
  %28 = and i8 %call48, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp53 = icmp eq i8 %28, 0
  %spec.store.select = select i1 %cmp53, i8 32, i8 %28
  %conv57 = zext i8 %spec.store.select to i32
  tail call fastcc void @isac_empty_fifo(ptr noundef %isac, i32 noundef %conv57)
  tail call void @recv_Dchannel(ptr noundef %isac) #10
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.end33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isac_cisq_irq(ptr noundef %isac) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 5
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 8
  %hw = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %off, align 4
  %6 = trunc i32 %5 to i8
  %conv = add i8 %6, 49
  %call = tail call zeroext i8 %1(ptr noundef %3, i8 noundef zeroext %conv) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_cisq_irq.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_cisq_irq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !458

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %conv4 = zext i8 %call to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_cisq_irq.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.50, ptr noundef %8, i32 noundef %conv4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv5 = zext i8 %call to i32
  %and = and i32 %conv5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end.if.end33_crit_edge, label %do.body8

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.body8:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_cisq_irq.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_cisq_irq, %if.then20)) #10
          to label %do.end27 [label %if.then20], !srcloc !458

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %name21 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %9 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name21, align 8
  %state = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 26
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state, align 4
  %conv22 = zext i8 %12 to i32
  %13 = lshr i32 %conv5, 2
  %and24 = and i32 %13, 15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_cisq_irq.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.25, ptr noundef %10, i32 noundef %conv22, i32 noundef %and24) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then20, %do.body8
  %14 = lshr i8 %call, 2
  %and30 = and i8 %14, 15
  %state32 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 26
  %15 = ptrtoint ptr %state32 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and30, ptr %state32, align 4
  %trunc = trunc i8 %14 to i4
  %16 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.173)
  switch i4 %trunc, label %do.end27.isac_ph_state_change.exit_crit_edge [
    i4 1, label %do.end27.sw.bb.i_crit_edge
    i4 6, label %do.end27.sw.bb.i_crit_edge89
  ]

do.end27.sw.bb.i_crit_edge89:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.end27.sw.bb.i_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.end27.isac_ph_state_change.exit_crit_edge:     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %isac_ph_state_change.exit

sw.bb.i:                                          ; preds = %do.end27.sw.bb.i_crit_edge, %do.end27.sw.bb.i_crit_edge89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_cisq_irq, %if.then.i.i)) #10
          to label %ph_command.exit.i [label %if.then.i.i], !srcloc !458

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %17 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %18, i32 noundef 15) #10
  br label %ph_command.exit.i

ph_command.exit.i:                                ; preds = %if.then.i.i, %sw.bb.i
  %type.i.i = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 1
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i.i, align 8
  %and.i.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  %write_reg8.i.i = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %21 = ptrtoint ptr %write_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg8.i.i, align 4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %25 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %off, align 4
  %27 = trunc i32 %26 to i8
  %..i.i = select i1 %tobool3.not.i.i, i8 49, i8 46
  %conv13.i.i = add i8 %..i.i, %27
  %or16.i.i = select i1 %tobool3.not.i.i, i8 63, i8 -2
  tail call void %22(ptr noundef %24, i8 noundef zeroext %conv13.i.i, i8 noundef zeroext %or16.i.i) #10
  br label %isac_ph_state_change.exit

isac_ph_state_change.exit:                        ; preds = %ph_command.exit.i, %do.end27.isac_ph_state_change.exit_crit_edge
  %Flags.i = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %Flags.i) #10
  %workq.i = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %workq.i) #10
  br label %if.end33

if.end33:                                         ; preds = %isac_ph_state_change.exit, %do.end.if.end33_crit_edge
  %and35 = and i32 %conv5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end63_crit_edge, label %if.then37

if.end33.if.end63_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_reg, align 8
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %33 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %off, align 4
  %35 = trunc i32 %34 to i8
  %conv43 = add i8 %35, 51
  %call44 = tail call zeroext i8 %30(ptr noundef %32, i8 noundef zeroext %conv43) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_cisq_irq.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_cisq_irq, %if.then57)) #10
          to label %if.end63 [label %if.then57], !srcloc !458

if.then57:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %name58 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %36 = ptrtoint ptr %name58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name58, align 8
  %conv59 = zext i8 %call44 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_cisq_irq.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.51, ptr noundef %37, i32 noundef %conv59) #10
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.then37, %if.end33.if.end63_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isac_mos_irq(ptr noundef %isac) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 5
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 8
  %hw = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %off, align 4
  %6 = trunc i32 %5 to i8
  %conv = add i8 %6, 58
  %call = tail call zeroext i8 %1(ptr noundef %3, i8 noundef zeroext %conv) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_mos_irq.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_mos_irq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !458

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %conv4 = zext i8 %call to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_mos_irq.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.53, ptr noundef %8, i32 noundef %conv4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv5 = zext i8 %call to i32
  %and = and i32 %conv5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end.afterMONR0_crit_edge, label %if.then7

do.end.afterMONR0_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %afterMONR0

if.then7:                                         ; preds = %do.end
  %mon_rx = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 15
  %9 = ptrtoint ptr %mon_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mon_rx, align 8
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.then9, label %if.then7.if.end34_crit_edge

if.then7.if.end34_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then9:                                         ; preds = %if.then7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2592, i32 noundef 32) #14
  %12 = ptrtoint ptr %mon_rx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %mon_rx, align 8
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %do.end17, label %if.else

do.end17:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %name19 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %13 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name19, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %14) #13
  %mocr = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %15 = ptrtoint ptr %mocr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mocr, align 2
  %17 = and i8 %16, -16
  %18 = or i8 %17, 10
  store i8 %18, ptr %mocr, align 2
  %write_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %19 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg, align 4
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %23 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %off, align 4
  %25 = trunc i32 %24 to i8
  %conv31 = add i8 %25, 58
  tail call void %20(ptr noundef %22, i8 noundef zeroext %conv31, i8 noundef zeroext %18) #10
  br label %afterMONR0

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %mon_rxp = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 18
  %26 = ptrtoint ptr %mon_rxp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mon_rxp, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then7.if.end34_crit_edge
  %mon_rxp35 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 18
  %27 = ptrtoint ptr %mon_rxp35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mon_rxp35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %28)
  %cmp = icmp sgt i32 %28, 31
  br i1 %cmp, label %if.then37, label %if.end71

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %mocr38 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %29 = ptrtoint ptr %mocr38 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mocr38, align 2
  %31 = and i8 %30, -16
  %32 = or i8 %31, 10
  store i8 %32, ptr %mocr38, align 2
  %write_reg46 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %33 = ptrtoint ptr %write_reg46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg46, align 4
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %37 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %off, align 4
  %39 = trunc i32 %38 to i8
  %conv51 = add i8 %39, 58
  tail call void %34(ptr noundef %36, i8 noundef zeroext %conv51, i8 noundef zeroext %32) #10
  %40 = ptrtoint ptr %mon_rxp35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %mon_rxp35, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_mos_irq.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_mos_irq, %if.then66)) #10
          to label %afterMONR0 [label %if.then66], !srcloc !458

if.then66:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %name67 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %41 = ptrtoint ptr %name67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name67, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_mos_irq.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.55, ptr noundef %42) #10
  br label %afterMONR0

if.end71:                                         ; preds = %if.end34
  %43 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_reg, align 8
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %47 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %off, align 4
  %49 = trunc i32 %48 to i8
  %conv77 = add i8 %49, 50
  %call78 = tail call zeroext i8 %44(ptr noundef %46, i8 noundef zeroext %conv77) #10
  %50 = ptrtoint ptr %mon_rx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mon_rx, align 8
  %52 = ptrtoint ptr %mon_rxp35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mon_rxp35, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %mon_rxp35, align 4
  %arrayidx = getelementptr i8, ptr %51, i32 %53
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %call78, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_mos_irq.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_mos_irq, %if.then93)) #10
          to label %do.end101 [label %if.then93], !srcloc !458

if.then93:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %name94 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %55 = ptrtoint ptr %name94 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name94, align 8
  %57 = ptrtoint ptr %mon_rx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mon_rx, align 8
  %59 = ptrtoint ptr %mon_rxp35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mon_rxp35, align 4
  %sub = add i32 %60, -1
  %arrayidx97 = getelementptr i8, ptr %58, i32 %sub
  %61 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %62 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_mos_irq.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.56, ptr noundef %56, i32 noundef %conv98) #10
  br label %do.end101

do.end101:                                        ; preds = %if.then93, %if.end71
  %63 = ptrtoint ptr %mon_rxp35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mon_rxp35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp103 = icmp eq i32 %64, 1
  br i1 %cmp103, label %if.then105, label %do.end101.afterMONR0_crit_edge

do.end101.afterMONR0_crit_edge:                   ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %afterMONR0

if.then105:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #12
  %mocr106 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %65 = ptrtoint ptr %mocr106 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mocr106, align 2
  %67 = or i8 %66, 4
  store i8 %67, ptr %mocr106, align 2
  %write_reg110 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %68 = ptrtoint ptr %write_reg110 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_reg110, align 4
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 4
  %72 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %off, align 4
  %74 = trunc i32 %73 to i8
  %conv115 = add i8 %74, 58
  tail call void %69(ptr noundef %71, i8 noundef zeroext %conv115, i8 noundef zeroext %67) #10
  br label %afterMONR0

afterMONR0:                                       ; preds = %if.then105, %do.end101.afterMONR0_crit_edge, %if.then66, %if.then37, %do.end17, %do.end.afterMONR0_crit_edge
  %and120 = and i32 %conv5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %afterMONR0.afterMONR1_crit_edge, label %if.then122

afterMONR0.afterMONR1_crit_edge:                  ; preds = %afterMONR0
  call void @__sanitizer_cov_trace_pc() #12
  br label %afterMONR1

if.then122:                                       ; preds = %afterMONR0
  %mon_rx123 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 15
  %75 = ptrtoint ptr %mon_rx123 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mon_rx123, align 8
  %tobool124.not = icmp eq ptr %76, null
  br i1 %tobool124.not, label %if.then125, label %if.then122.if.end155_crit_edge

if.then122.if.end155_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155

if.then125:                                       ; preds = %if.then122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i794 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 2592, i32 noundef 32) #14
  %78 = ptrtoint ptr %mon_rx123 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i794, ptr %mon_rx123, align 8
  %tobool129.not = icmp eq ptr %call7.i794, null
  br i1 %tobool129.not, label %do.end133, label %if.else152

do.end133:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  %name135 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %79 = ptrtoint ptr %name135 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name135, align 8
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %80) #13
  %mocr137 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %81 = ptrtoint ptr %mocr137 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %mocr137, align 2
  %83 = and i8 %82, 15
  %84 = or i8 %83, -96
  store i8 %84, ptr %mocr137, align 2
  %write_reg145 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %85 = ptrtoint ptr %write_reg145 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_reg145, align 4
  %87 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw, align 4
  %89 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %off, align 4
  %91 = trunc i32 %90 to i8
  %conv150 = add i8 %91, 58
  tail call void %86(ptr noundef %88, i8 noundef zeroext %conv150, i8 noundef zeroext %84) #10
  br label %afterMONR1

if.else152:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  %mon_rxp153 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 18
  %92 = ptrtoint ptr %mon_rxp153 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %mon_rxp153, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.else152, %if.then122.if.end155_crit_edge
  %mon_rxp156 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 18
  %93 = ptrtoint ptr %mon_rxp156 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mon_rxp156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %94)
  %cmp157 = icmp sgt i32 %94, 31
  br i1 %cmp157, label %if.then159, label %if.end193

if.then159:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  %mocr160 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %95 = ptrtoint ptr %mocr160 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %mocr160, align 2
  %97 = and i8 %96, 15
  %98 = or i8 %97, -96
  store i8 %98, ptr %mocr160, align 2
  %write_reg168 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %99 = ptrtoint ptr %write_reg168 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_reg168, align 4
  %101 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw, align 4
  %103 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %off, align 4
  %105 = trunc i32 %104 to i8
  %conv173 = add i8 %105, 58
  tail call void %100(ptr noundef %102, i8 noundef zeroext %conv173, i8 noundef zeroext %98) #10
  %106 = ptrtoint ptr %mon_rxp156 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %mon_rxp156, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_mos_irq.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_mos_irq, %if.then188)) #10
          to label %afterMONR1 [label %if.then188], !srcloc !458

if.then188:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  %name189 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %107 = ptrtoint ptr %name189 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name189, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_mos_irq.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.55, ptr noundef %108) #10
  br label %afterMONR1

if.end193:                                        ; preds = %if.end155
  %109 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read_reg, align 8
  %111 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw, align 4
  %113 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %off, align 4
  %115 = trunc i32 %114 to i8
  %conv199 = add i8 %115, 52
  %call200 = tail call zeroext i8 %110(ptr noundef %112, i8 noundef zeroext %conv199) #10
  %116 = ptrtoint ptr %mon_rx123 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mon_rx123, align 8
  %118 = ptrtoint ptr %mon_rxp156 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mon_rxp156, align 4
  %inc203 = add i32 %119, 1
  store i32 %inc203, ptr %mon_rxp156, align 4
  %arrayidx204 = getelementptr i8, ptr %117, i32 %119
  %120 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %call200, ptr %arrayidx204, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_mos_irq.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_mos_irq, %if.then217)) #10
          to label %do.end226 [label %if.then217], !srcloc !458

if.then217:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  %name218 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %121 = ptrtoint ptr %name218 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name218, align 8
  %123 = ptrtoint ptr %mon_rx123 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mon_rx123, align 8
  %125 = ptrtoint ptr %mon_rxp156 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mon_rxp156, align 4
  %sub221 = add i32 %126, -1
  %arrayidx222 = getelementptr i8, ptr %124, i32 %sub221
  %127 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx222, align 1
  %conv223 = zext i8 %128 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_mos_irq.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.59, ptr noundef %122, i32 noundef %conv223) #10
  br label %do.end226

do.end226:                                        ; preds = %if.then217, %if.end193
  %mocr227 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %129 = ptrtoint ptr %mocr227 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %mocr227, align 2
  %131 = or i8 %130, 64
  store i8 %131, ptr %mocr227, align 2
  %write_reg231 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %132 = ptrtoint ptr %write_reg231 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write_reg231, align 4
  %134 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw, align 4
  %136 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %off, align 4
  %138 = trunc i32 %137 to i8
  %conv236 = add i8 %138, 58
  tail call void %133(ptr noundef %135, i8 noundef zeroext %conv236, i8 noundef zeroext %131) #10
  br label %afterMONR1

afterMONR1:                                       ; preds = %do.end226, %if.then188, %if.then159, %do.end133, %afterMONR0.afterMONR1_crit_edge
  %and240 = and i32 %conv5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %afterMONR1.if.end289_crit_edge, label %if.then242

afterMONR1.if.end289_crit_edge:                   ; preds = %afterMONR1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end289

if.then242:                                       ; preds = %afterMONR1
  %mocr243 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %139 = ptrtoint ptr %mocr243 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %mocr243, align 2
  %141 = and i8 %140, -16
  store i8 %141, ptr %mocr243, align 2
  %write_reg247 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %142 = ptrtoint ptr %write_reg247 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write_reg247, align 4
  %144 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw, align 4
  %146 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %off, align 4
  %148 = trunc i32 %147 to i8
  %conv252 = add i8 %148, 58
  tail call void %143(ptr noundef %145, i8 noundef zeroext %conv252, i8 noundef zeroext %141) #10
  %149 = ptrtoint ptr %mocr243 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %mocr243, align 2
  %151 = or i8 %150, 10
  store i8 %151, ptr %mocr243, align 2
  %152 = ptrtoint ptr %write_reg247 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write_reg247, align 4
  %154 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw, align 4
  %156 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %off, align 4
  %158 = trunc i32 %157 to i8
  %conv263 = add i8 %158, 58
  tail call void %153(ptr noundef %155, i8 noundef zeroext %conv263, i8 noundef zeroext %151) #10
  %monitor = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 9
  %159 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %monitor, align 8
  %tobool265.not = icmp eq ptr %160, null
  br i1 %tobool265.not, label %do.end280, label %if.then266

if.then266:                                       ; preds = %if.then242
  %161 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw, align 4
  %mon_rx270 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 15
  %163 = ptrtoint ptr %mon_rx270 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mon_rx270, align 8
  %mon_rxp271 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 18
  %165 = ptrtoint ptr %mon_rxp271 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %mon_rxp271, align 4
  %call272 = tail call i32 %160(ptr noundef %162, i32 noundef 4096, ptr noundef %164, i32 noundef %166) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %tobool273.not = icmp eq i32 %call272, 0
  br i1 %tobool273.not, label %if.then266.if.end286_crit_edge, label %if.then266.if.end286.sink.split_crit_edge

if.then266.if.end286.sink.split_crit_edge:        ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end286.sink.split

if.then266.if.end286_crit_edge:                   ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end286

do.end280:                                        ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #12
  %name282 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %167 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %name282, align 8
  %mon_rxp283 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 18
  %169 = ptrtoint ptr %mon_rxp283 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mon_rxp283, align 4
  %call284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %168, i32 noundef %170) #13
  %mon_rx285 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 15
  br label %if.end286.sink.split

if.end286.sink.split:                             ; preds = %do.end280, %if.then266.if.end286.sink.split_crit_edge
  %mon_rx270.sink = phi ptr [ %mon_rx285, %do.end280 ], [ %mon_rx270, %if.then266.if.end286.sink.split_crit_edge ]
  %171 = ptrtoint ptr %mon_rx270.sink to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mon_rx270.sink, align 8
  tail call void @kfree(ptr noundef %172) #10
  br label %if.end286

if.end286:                                        ; preds = %if.end286.sink.split, %if.then266.if.end286_crit_edge
  %mon_rx287 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 15
  %173 = ptrtoint ptr %mon_rx287 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %mon_rx287, align 8
  %mon_rxp288 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 18
  %174 = ptrtoint ptr %mon_rxp288 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %mon_rxp288, align 4
  br label %if.end289

if.end289:                                        ; preds = %if.end286, %afterMONR1.if.end289_crit_edge
  %and291 = and i32 %conv5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  br i1 %tobool292.not, label %if.end289.if.end341_crit_edge, label %if.then293

if.end289.if.end341_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end341

if.then293:                                       ; preds = %if.end289
  %mocr294 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %175 = ptrtoint ptr %mocr294 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %mocr294, align 2
  %177 = and i8 %176, 15
  store i8 %177, ptr %mocr294, align 2
  %write_reg298 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %178 = ptrtoint ptr %write_reg298 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write_reg298, align 4
  %180 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw, align 4
  %182 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %off, align 4
  %184 = trunc i32 %183 to i8
  %conv303 = add i8 %184, 58
  tail call void %179(ptr noundef %181, i8 noundef zeroext %conv303, i8 noundef zeroext %177) #10
  %185 = ptrtoint ptr %mocr294 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %mocr294, align 2
  %187 = or i8 %186, -96
  store i8 %187, ptr %mocr294, align 2
  %188 = ptrtoint ptr %write_reg298 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %write_reg298, align 4
  %190 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw, align 4
  %192 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %off, align 4
  %194 = trunc i32 %193 to i8
  %conv314 = add i8 %194, 58
  tail call void %189(ptr noundef %191, i8 noundef zeroext %conv314, i8 noundef zeroext %187) #10
  %monitor316 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 9
  %195 = ptrtoint ptr %monitor316 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %monitor316, align 8
  %tobool317.not = icmp eq ptr %196, null
  br i1 %tobool317.not, label %do.end332, label %if.then318

if.then318:                                       ; preds = %if.then293
  %197 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hw, align 4
  %mon_rx322 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 15
  %199 = ptrtoint ptr %mon_rx322 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mon_rx322, align 8
  %mon_rxp323 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 18
  %201 = ptrtoint ptr %mon_rxp323 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %mon_rxp323, align 4
  %call324 = tail call i32 %196(ptr noundef %198, i32 noundef 4097, ptr noundef %200, i32 noundef %202) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324)
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %if.then318.if.end338_crit_edge, label %if.then318.if.end338.sink.split_crit_edge

if.then318.if.end338.sink.split_crit_edge:        ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end338.sink.split

if.then318.if.end338_crit_edge:                   ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end338

do.end332:                                        ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #12
  %name334 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %203 = ptrtoint ptr %name334 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %name334, align 8
  %mon_rxp335 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 18
  %205 = ptrtoint ptr %mon_rxp335 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %mon_rxp335, align 4
  %call336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %204, i32 noundef %206) #13
  %mon_rx337 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 15
  br label %if.end338.sink.split

if.end338.sink.split:                             ; preds = %do.end332, %if.then318.if.end338.sink.split_crit_edge
  %mon_rx322.sink = phi ptr [ %mon_rx337, %do.end332 ], [ %mon_rx322, %if.then318.if.end338.sink.split_crit_edge ]
  %207 = ptrtoint ptr %mon_rx322.sink to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mon_rx322.sink, align 8
  tail call void @kfree(ptr noundef %208) #10
  br label %if.end338

if.end338:                                        ; preds = %if.end338.sink.split, %if.then318.if.end338_crit_edge
  %mon_rx339 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 15
  %209 = ptrtoint ptr %mon_rx339 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %mon_rx339, align 8
  %mon_rxp340 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 18
  %210 = ptrtoint ptr %mon_rxp340 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %mon_rxp340, align 4
  br label %if.end341

if.end341:                                        ; preds = %if.end338, %if.end289.if.end341_crit_edge
  %and343 = and i32 %conv5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and343)
  %tobool344.not = icmp eq i32 %and343, 0
  br i1 %tobool344.not, label %if.end341.AfterMOX0_crit_edge, label %if.then345

if.end341.AfterMOX0_crit_edge:                    ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #12
  br label %AfterMOX0

if.then345:                                       ; preds = %if.end341
  %mon_tx = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 14
  %211 = ptrtoint ptr %mon_tx to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mon_tx, align 4
  %tobool346.not = icmp eq ptr %212, null
  br i1 %tobool346.not, label %if.then345.if.then355_crit_edge, label %lor.lhs.false

if.then345.if.then355_crit_edge:                  ; preds = %if.then345
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then355

lor.lhs.false:                                    ; preds = %if.then345
  %mon_txc = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 17
  %213 = ptrtoint ptr %mon_txc to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %mon_txc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool347.not = icmp eq i32 %214, 0
  br i1 %tobool347.not, label %lor.lhs.false.if.end420_crit_edge, label %land.lhs.true

lor.lhs.false.if.end420_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end420

land.lhs.true:                                    ; preds = %lor.lhs.false
  %mon_txp = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 16
  %215 = ptrtoint ptr %mon_txp to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %mon_txp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %214)
  %cmp349.not = icmp slt i32 %216, %214
  %tobool6.not.not = xor i1 %tobool6.not, true
  %brmerge = select i1 %cmp349.not, i1 true, i1 %tobool6.not.not
  br i1 %brmerge, label %land.lhs.true402, label %land.lhs.true.if.then355_crit_edge

land.lhs.true.if.then355_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then355

if.then355:                                       ; preds = %land.lhs.true.if.then355_crit_edge, %if.then345.if.then355_crit_edge
  %mocr356 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %217 = ptrtoint ptr %mocr356 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %mocr356, align 2
  %219 = and i8 %218, -16
  store i8 %219, ptr %mocr356, align 2
  %write_reg360 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %220 = ptrtoint ptr %write_reg360 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %write_reg360, align 4
  %222 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hw, align 4
  %224 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %off, align 4
  %226 = trunc i32 %225 to i8
  %conv365 = add i8 %226, 58
  tail call void %221(ptr noundef %223, i8 noundef zeroext %conv365, i8 noundef zeroext %219) #10
  %227 = ptrtoint ptr %mocr356 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %mocr356, align 2
  %229 = or i8 %228, 10
  store i8 %229, ptr %mocr356, align 2
  %230 = ptrtoint ptr %write_reg360 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write_reg360, align 4
  %232 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hw, align 4
  %234 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %off, align 4
  %236 = trunc i32 %235 to i8
  %conv376 = add i8 %236, 58
  tail call void %231(ptr noundef %233, i8 noundef zeroext %conv376, i8 noundef zeroext %229) #10
  %mon_txc378 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 17
  %237 = ptrtoint ptr %mon_txc378 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %mon_txc378, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool379.not = icmp eq i32 %238, 0
  br i1 %tobool379.not, label %if.then355.if.end394_crit_edge, label %land.lhs.true380

if.then355.if.end394_crit_edge:                   ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end394

land.lhs.true380:                                 ; preds = %if.then355
  %mon_txp381 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 16
  %239 = ptrtoint ptr %mon_txp381 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %mon_txp381, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %238)
  %cmp383.not = icmp slt i32 %240, %238
  br i1 %cmp383.not, label %land.lhs.true380.if.end394_crit_edge, label %if.then385

land.lhs.true380.if.end394_crit_edge:             ; preds = %land.lhs.true380
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end394

if.then385:                                       ; preds = %land.lhs.true380
  %monitor386 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 9
  %241 = ptrtoint ptr %monitor386 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %monitor386, align 8
  %tobool387.not = icmp eq ptr %242, null
  br i1 %tobool387.not, label %if.then385.if.end394_crit_edge, label %if.then388

if.then385.if.end394_crit_edge:                   ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end394

if.then388:                                       ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #12
  %243 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %hw, align 4
  %call392 = tail call i32 %242(ptr noundef %244, i32 noundef 8192, ptr noundef null, i32 noundef 0) #10
  br label %if.end394

if.end394:                                        ; preds = %if.then388, %if.then385.if.end394_crit_edge, %land.lhs.true380.if.end394_crit_edge, %if.then355.if.end394_crit_edge
  %245 = ptrtoint ptr %mon_tx to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %mon_tx, align 4
  tail call void @kfree(ptr noundef %246) #10
  %247 = ptrtoint ptr %mon_tx to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr null, ptr %mon_tx, align 4
  %248 = ptrtoint ptr %mon_txc378 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %mon_txc378, align 8
  %mon_txp398 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 16
  %249 = ptrtoint ptr %mon_txp398 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %mon_txp398, align 4
  br label %AfterMOX0

land.lhs.true402:                                 ; preds = %land.lhs.true
  %250 = ptrtoint ptr %mon_txp to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %mon_txp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %214)
  %cmp405.not = icmp slt i32 %251, %214
  br i1 %cmp405.not, label %land.lhs.true402.if.end420_crit_edge, label %if.then407

land.lhs.true402.if.end420_crit_edge:             ; preds = %land.lhs.true402
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end420

if.then407:                                       ; preds = %land.lhs.true402
  %monitor408 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 9
  %252 = ptrtoint ptr %monitor408 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %monitor408, align 8
  %tobool409.not = icmp eq ptr %253, null
  br i1 %tobool409.not, label %if.then407.if.end415_crit_edge, label %if.then410

if.then407.if.end415_crit_edge:                   ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end415

if.then410:                                       ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #12
  %254 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hw, align 4
  %call414 = tail call i32 %253(ptr noundef %255, i32 noundef 8192, ptr noundef null, i32 noundef 0) #10
  br label %if.end415

if.end415:                                        ; preds = %if.then410, %if.then407.if.end415_crit_edge
  %256 = ptrtoint ptr %mon_tx to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %mon_tx, align 4
  tail call void @kfree(ptr noundef %257) #10
  %258 = ptrtoint ptr %mon_tx to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %mon_tx, align 4
  %259 = ptrtoint ptr %mon_txc to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %mon_txc, align 8
  %260 = ptrtoint ptr %mon_txp to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 0, ptr %mon_txp, align 4
  br label %AfterMOX0

if.end420:                                        ; preds = %land.lhs.true402.if.end420_crit_edge, %lor.lhs.false.if.end420_crit_edge
  %write_reg421 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %261 = ptrtoint ptr %write_reg421 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %write_reg421, align 4
  %263 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %hw, align 4
  %265 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %off, align 4
  %267 = trunc i32 %266 to i8
  %conv426 = add i8 %267, 50
  %mon_txp428 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 16
  %268 = ptrtoint ptr %mon_txp428 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %mon_txp428, align 4
  %inc429 = add i32 %269, 1
  store i32 %inc429, ptr %mon_txp428, align 4
  %arrayidx430 = getelementptr i8, ptr %212, i32 %269
  %270 = ptrtoint ptr %arrayidx430 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx430, align 1
  tail call void %262(ptr noundef %264, i8 noundef zeroext %conv426, i8 noundef zeroext %271) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_mos_irq.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_mos_irq, %if.then443)) #10
          to label %AfterMOX0 [label %if.then443], !srcloc !458

if.then443:                                       ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #12
  %name444 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %272 = ptrtoint ptr %name444 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %name444, align 8
  %274 = ptrtoint ptr %mon_tx to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %mon_tx, align 4
  %276 = ptrtoint ptr %mon_txp428 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %mon_txp428, align 4
  %sub447 = add i32 %277, -1
  %arrayidx448 = getelementptr i8, ptr %275, i32 %sub447
  %278 = ptrtoint ptr %arrayidx448 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx448, align 1
  %conv449 = zext i8 %279 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_mos_irq.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.66, ptr noundef %273, i32 noundef %conv449) #10
  br label %AfterMOX0

AfterMOX0:                                        ; preds = %if.then443, %if.end420, %if.end415, %if.end394, %if.end341.AfterMOX0_crit_edge
  %and455 = and i32 %conv5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and455)
  %tobool456.not = icmp eq i32 %and455, 0
  br i1 %tobool456.not, label %AfterMOX0.AfterMOX1_crit_edge, label %if.then457

AfterMOX0.AfterMOX1_crit_edge:                    ; preds = %AfterMOX0
  call void @__sanitizer_cov_trace_pc() #12
  br label %AfterMOX1

if.then457:                                       ; preds = %AfterMOX0
  %mon_tx458 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 14
  %280 = ptrtoint ptr %mon_tx458 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %mon_tx458, align 4
  %tobool459.not = icmp eq ptr %281, null
  br i1 %tobool459.not, label %if.then457.if.then472_crit_edge, label %lor.lhs.false460

if.then457.if.then472_crit_edge:                  ; preds = %if.then457
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then472

lor.lhs.false460:                                 ; preds = %if.then457
  %mon_txc461 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 17
  %282 = ptrtoint ptr %mon_txc461 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %mon_txc461, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool462.not = icmp eq i32 %283, 0
  br i1 %tobool462.not, label %lor.lhs.false460.if.end537_crit_edge, label %land.lhs.true463

lor.lhs.false460.if.end537_crit_edge:             ; preds = %lor.lhs.false460
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end537

land.lhs.true463:                                 ; preds = %lor.lhs.false460
  %mon_txp464 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 16
  %284 = ptrtoint ptr %mon_txp464 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %mon_txp464, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %285, i32 %283)
  %cmp466.not = icmp slt i32 %285, %283
  %tobool121.not.not = xor i1 %tobool121.not, true
  %brmerge787 = select i1 %cmp466.not, i1 true, i1 %tobool121.not.not
  br i1 %brmerge787, label %land.lhs.true519, label %land.lhs.true463.if.then472_crit_edge

land.lhs.true463.if.then472_crit_edge:            ; preds = %land.lhs.true463
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then472

if.then472:                                       ; preds = %land.lhs.true463.if.then472_crit_edge, %if.then457.if.then472_crit_edge
  %mocr473 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %286 = ptrtoint ptr %mocr473 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %mocr473, align 2
  %288 = and i8 %287, 15
  store i8 %288, ptr %mocr473, align 2
  %write_reg477 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %289 = ptrtoint ptr %write_reg477 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %write_reg477, align 4
  %291 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %hw, align 4
  %293 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %off, align 4
  %295 = trunc i32 %294 to i8
  %conv482 = add i8 %295, 58
  tail call void %290(ptr noundef %292, i8 noundef zeroext %conv482, i8 noundef zeroext %288) #10
  %296 = ptrtoint ptr %mocr473 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %mocr473, align 2
  %298 = or i8 %297, -96
  store i8 %298, ptr %mocr473, align 2
  %299 = ptrtoint ptr %write_reg477 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %write_reg477, align 4
  %301 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %hw, align 4
  %303 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %off, align 4
  %305 = trunc i32 %304 to i8
  %conv493 = add i8 %305, 58
  tail call void %300(ptr noundef %302, i8 noundef zeroext %conv493, i8 noundef zeroext %298) #10
  %mon_txc495 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 17
  %306 = ptrtoint ptr %mon_txc495 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %mon_txc495, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %tobool496.not = icmp eq i32 %307, 0
  br i1 %tobool496.not, label %if.then472.if.end511_crit_edge, label %land.lhs.true497

if.then472.if.end511_crit_edge:                   ; preds = %if.then472
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end511

land.lhs.true497:                                 ; preds = %if.then472
  %mon_txp498 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 16
  %308 = ptrtoint ptr %mon_txp498 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %mon_txp498, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %309, i32 %307)
  %cmp500.not = icmp slt i32 %309, %307
  br i1 %cmp500.not, label %land.lhs.true497.if.end511_crit_edge, label %if.then502

land.lhs.true497.if.end511_crit_edge:             ; preds = %land.lhs.true497
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end511

if.then502:                                       ; preds = %land.lhs.true497
  %monitor503 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 9
  %310 = ptrtoint ptr %monitor503 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %monitor503, align 8
  %tobool504.not = icmp eq ptr %311, null
  br i1 %tobool504.not, label %if.then502.if.end511_crit_edge, label %if.then505

if.then502.if.end511_crit_edge:                   ; preds = %if.then502
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end511

if.then505:                                       ; preds = %if.then502
  call void @__sanitizer_cov_trace_pc() #12
  %312 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %hw, align 4
  %call509 = tail call i32 %311(ptr noundef %313, i32 noundef 8193, ptr noundef null, i32 noundef 0) #10
  br label %if.end511

if.end511:                                        ; preds = %if.then505, %if.then502.if.end511_crit_edge, %land.lhs.true497.if.end511_crit_edge, %if.then472.if.end511_crit_edge
  %314 = ptrtoint ptr %mon_tx458 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %mon_tx458, align 4
  tail call void @kfree(ptr noundef %315) #10
  %316 = ptrtoint ptr %mon_tx458 to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr null, ptr %mon_tx458, align 4
  %317 = ptrtoint ptr %mon_txc495 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 0, ptr %mon_txc495, align 8
  %mon_txp515 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 16
  %318 = ptrtoint ptr %mon_txp515 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 0, ptr %mon_txp515, align 4
  br label %AfterMOX1

land.lhs.true519:                                 ; preds = %land.lhs.true463
  %319 = ptrtoint ptr %mon_txp464 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %mon_txp464, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %320, i32 %283)
  %cmp522.not = icmp slt i32 %320, %283
  br i1 %cmp522.not, label %land.lhs.true519.if.end537_crit_edge, label %if.then524

land.lhs.true519.if.end537_crit_edge:             ; preds = %land.lhs.true519
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end537

if.then524:                                       ; preds = %land.lhs.true519
  %monitor525 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 9
  %321 = ptrtoint ptr %monitor525 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %monitor525, align 8
  %tobool526.not = icmp eq ptr %322, null
  br i1 %tobool526.not, label %if.then524.if.end532_crit_edge, label %if.then527

if.then524.if.end532_crit_edge:                   ; preds = %if.then524
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end532

if.then527:                                       ; preds = %if.then524
  call void @__sanitizer_cov_trace_pc() #12
  %323 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %hw, align 4
  %call531 = tail call i32 %322(ptr noundef %324, i32 noundef 8193, ptr noundef null, i32 noundef 0) #10
  br label %if.end532

if.end532:                                        ; preds = %if.then527, %if.then524.if.end532_crit_edge
  %325 = ptrtoint ptr %mon_tx458 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %mon_tx458, align 4
  tail call void @kfree(ptr noundef %326) #10
  %327 = ptrtoint ptr %mon_tx458 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr null, ptr %mon_tx458, align 4
  %328 = ptrtoint ptr %mon_txc461 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %mon_txc461, align 8
  %329 = ptrtoint ptr %mon_txp464 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %mon_txp464, align 4
  br label %AfterMOX1

if.end537:                                        ; preds = %land.lhs.true519.if.end537_crit_edge, %lor.lhs.false460.if.end537_crit_edge
  %write_reg538 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %330 = ptrtoint ptr %write_reg538 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %write_reg538, align 4
  %332 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %hw, align 4
  %334 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %off, align 4
  %336 = trunc i32 %335 to i8
  %conv543 = add i8 %336, 52
  %mon_txp545 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 16
  %337 = ptrtoint ptr %mon_txp545 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %mon_txp545, align 4
  %inc546 = add i32 %338, 1
  store i32 %inc546, ptr %mon_txp545, align 4
  %arrayidx547 = getelementptr i8, ptr %281, i32 %338
  %339 = ptrtoint ptr %arrayidx547 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx547, align 1
  tail call void %331(ptr noundef %333, i8 noundef zeroext %conv543, i8 noundef zeroext %340) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_mos_irq.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_mos_irq, %if.then560)) #10
          to label %AfterMOX1 [label %if.then560], !srcloc !458

if.then560:                                       ; preds = %if.end537
  call void @__sanitizer_cov_trace_pc() #12
  %name561 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %341 = ptrtoint ptr %name561 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %name561, align 8
  %343 = ptrtoint ptr %mon_tx458 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %mon_tx458, align 4
  %345 = ptrtoint ptr %mon_txp545 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %mon_txp545, align 4
  %sub564 = add i32 %346, -1
  %arrayidx565 = getelementptr i8, ptr %344, i32 %sub564
  %347 = ptrtoint ptr %arrayidx565 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx565, align 1
  %conv566 = zext i8 %348 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_mos_irq.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.67, ptr noundef %342, i32 noundef %conv566) #10
  br label %AfterMOX1

AfterMOX1:                                        ; preds = %if.then560, %if.end537, %if.end532, %if.end511, %AfterMOX0.AfterMOX1_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mISDNisac_init(ptr noundef %isac, ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mISDN_initdchannel(ptr noundef %isac, i32 noundef 300, ptr noundef nonnull @isac_ph_state_bh) #10
  %hw2 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hw, ptr %hw2, align 4
  %send = getelementptr inbounds %struct.mISDNchannel, ptr %isac, i32 0, i32 7
  %1 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @isac_l1hw, ptr %send, align 8
  %init = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 11
  %2 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @isac_init, ptr %init, align 8
  %release = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 10
  %3 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @isac_release, ptr %release, align 4
  %ctrl = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 12
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @isac_ctrl, ptr %ctrl, align 4
  %open = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 13
  %5 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @open_dchannel, ptr %open, align 8
  %Dprotocols = getelementptr inbounds %struct.mISDNdevice, ptr %isac, i32 0, i32 2
  %6 = ptrtoint ptr %Dprotocols to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %Dprotocols, align 8
  %nrbchan = getelementptr inbounds %struct.mISDNdevice, ptr %isac, i32 0, i32 4
  %7 = ptrtoint ptr %nrbchan to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %nrbchan, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initdchannel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isac_ph_state_bh(ptr nocapture noundef %dch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 26
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %1, label %entry.do.body_crit_edge [
    i8 1, label %entry.sw.bb_crit_edge
    i8 6, label %entry.sw.bb_crit_edge65
    i8 15, label %sw.bb2
    i8 0, label %entry.sw.bb6_crit_edge
    i8 5, label %entry.sw.bb6_crit_edge66
    i8 7, label %sw.bb10
    i8 4, label %sw.bb14
    i8 8, label %sw.bb23
    i8 12, label %sw.bb27
    i8 13, label %sw.bb31
  ]

entry.sw.bb6_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.sw.bb_crit_edge65:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge65
  %state1 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state1, align 4
  br label %do.body.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state3 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %4 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %state3, align 4
  br label %do.body.sink.split

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge66
  %state7 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %5 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %state7, align 4
  br label %do.body.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state11 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %6 = ptrtoint ptr %state11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %state11, align 4
  br label %do.body.sink.split

sw.bb14:                                          ; preds = %entry
  %state15 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %7 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp = icmp ult i32 %8, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %state15, align 4
  br label %do.body.sink.split

if.else:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %state15, align 4
  br label %do.body.sink.split

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state24 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %11 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %state24, align 4
  br label %do.body.sink.split

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state28 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %12 = ptrtoint ptr %state28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %state28, align 4
  br label %do.body.sink.split

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state32 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %13 = ptrtoint ptr %state32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %state32, align 4
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %sw.bb31, %sw.bb27, %sw.bb23, %if.else, %if.then, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb
  %.sink64 = phi i32 [ 36866, %sw.bb ], [ 37890, %sw.bb2 ], [ 37378, %sw.bb6 ], [ 37122, %sw.bb10 ], [ 33282, %sw.bb23 ], [ 34050, %sw.bb27 ], [ 34306, %sw.bb31 ], [ 34562, %if.else ], [ 34818, %if.then ]
  %l1 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %14 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %l1, align 8
  %call = tail call i32 @l1_event(ptr noundef %15, i32 noundef %.sink64) #10
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_ph_state_bh.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_ph_state_bh, %if.then39)) #10
          to label %do.end [label %if.then39], !srcloc !458

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 3
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 8
  %state40 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %18 = ptrtoint ptr %state40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state40, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_ph_state_bh.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.69, ptr noundef %17, i32 noundef %19) #10
  br label %do.end

do.end:                                           ; preds = %if.then39, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isac_l1hw(ptr noundef %ch, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cb, align 1
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 8193, label %do.body7
    i32 257, label %sw.bb18
    i32 513, label %sw.bb21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body7:                                         ; preds = %entry
  %hwlock = getelementptr inbounds %struct.isac_hw, ptr %ch, i32 0, i32 4
  %3 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwlock, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %call12 = tail call i32 @dchannel_senddata(ptr noundef %ch, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %id15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %id15 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %id15, align 1
  tail call fastcc void @isac_fill_fifo(ptr noundef %ch)
  %7 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call9) #10
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 24578, i32 noundef %6, ptr noundef null) #10
  br label %cleanup

if.else:                                          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call9) #10
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %l1 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 5
  %11 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %l1, align 8
  %call20 = tail call i32 @l1_event(ptr noundef %12, i32 noundef 257) #10
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %Flags = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 1
  %call22 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %Flags) #10
  %l123 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 5
  %13 = ptrtoint ptr %l123 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %l123, align 8
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %cb, align 1
  %call25 = tail call i32 @l1_event(ptr noundef %14, i32 noundef %16) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb18
  %ret.1 = phi i32 [ %call25, %sw.bb21 ], [ %call20, %sw.bb18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool.not = icmp eq i32 %ret.1, 0
  br i1 %tobool.not, label %if.then26, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %sw.epilog.cleanup_crit_edge, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ %call12, %if.else ], [ 0, %if.then26 ], [ %ret.1, %sw.epilog.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isac_init(ptr noundef %isac) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %l1 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 5
  %0 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @create_l1(ptr noundef %isac, ptr noundef nonnull @isac_l1cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %mon_tx = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 14
  %2 = ptrtoint ptr %mon_tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mon_tx, align 4
  %mon_rx = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 15
  %3 = ptrtoint ptr %mon_rx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %mon_rx, align 8
  %timer = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @dbusy_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.70, ptr noundef nonnull @isac_init.__key) #10
  %mocr = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 24
  %4 = ptrtoint ptr %mocr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -86, ptr %mocr, align 2
  %type = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 8
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %write_reg152 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %7 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg152, align 4
  %hw154 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %9 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw154, align 4
  %off155 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %11 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %off155, align 4
  %13 = trunc i32 %12 to i8
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  %conv = add i8 %13, 96
  tail call void %8(ptr noundef %10, i8 noundef zeroext %conv, i8 noundef zeroext -1) #10
  %read_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 5
  %14 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg, align 8
  %16 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw154, align 4
  %18 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %off155, align 4
  %20 = trunc i32 %19 to i8
  %conv13 = add i8 %20, 33
  %call14 = tail call zeroext i8 %15(ptr noundef %17, i8 noundef zeroext %conv13) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_init.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then20)) #10
          to label %do.end24 [label %if.then20], !srcloc !458

if.then20:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 8
  %conv21 = zext i8 %call14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_init.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.72, ptr noundef %22, i32 noundef %conv21) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %if.then7
  %23 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_reg, align 8
  %25 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw154, align 4
  %27 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %off155, align 4
  %29 = trunc i32 %28 to i8
  %conv30 = add i8 %29, 32
  %call31 = tail call zeroext i8 %24(ptr noundef %26, i8 noundef zeroext %conv30) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_init.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then44)) #10
          to label %do.end49 [label %if.then44], !srcloc !458

if.then44:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  %name45 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %30 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name45, align 8
  %conv46 = zext i8 %call31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_init.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.73, ptr noundef %31, i32 noundef %conv46) #10
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.end24
  %32 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_reg, align 8
  %34 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw154, align 4
  %36 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %off155, align 4
  %38 = trunc i32 %37 to i8
  %conv55 = add i8 %38, 96
  %call56 = tail call zeroext i8 %33(ptr noundef %35, i8 noundef zeroext %conv55) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_init.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then69)) #10
          to label %do.end74 [label %if.then69], !srcloc !458

if.then69:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  %name70 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %39 = ptrtoint ptr %name70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name70, align 8
  %conv71 = zext i8 %call56 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_init.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.74, ptr noundef %40, i32 noundef %conv71) #10
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %do.end49
  %41 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg152, align 4
  %43 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw154, align 4
  %45 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %off155, align 4
  %47 = trunc i32 %46 to i8
  %conv80 = add i8 %47, 48
  tail call void %42(ptr noundef %44, i8 noundef zeroext %conv80, i8 noundef zeroext 0) #10
  %48 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg152, align 4
  %50 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw154, align 4
  %52 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %off155, align 4
  %54 = trunc i32 %53 to i8
  %conv86 = add i8 %54, 50
  tail call void %49(ptr noundef %51, i8 noundef zeroext %conv86, i8 noundef zeroext 0) #10
  %55 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg152, align 4
  %57 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw154, align 4
  %59 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %off155, align 4
  %61 = trunc i32 %60 to i8
  %conv92 = add i8 %61, 34
  tail call void %56(ptr noundef %58, i8 noundef zeroext %conv92, i8 noundef zeroext -55) #10
  %62 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_reg, align 8
  %64 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw154, align 4
  %66 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %off155, align 4
  %68 = trunc i32 %67 to i8
  %conv98 = add i8 %68, 100
  %call99 = tail call zeroext i8 %63(ptr noundef %65, i8 noundef zeroext %conv98) #10
  %debug = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 15
  %69 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %debug, align 4
  %and101 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.end74.if.end112_crit_edge, label %do.end106

do.end74.if.end112_crit_edge:                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

do.end106:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  %name108 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %71 = ptrtoint ptr %name108 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name108, align 8
  %73 = and i8 %call99, 63
  %and110 = zext i8 %73 to i32
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %72, i32 noundef %and110) #13
  br label %if.end112

if.end112:                                        ; preds = %do.end106, %do.end74.if.end112_crit_edge
  %74 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_reg, align 8
  %76 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw154, align 4
  %78 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %off155, align 4
  %80 = trunc i32 %79 to i8
  %conv118 = add i8 %80, 46
  %call119 = tail call zeroext i8 %75(ptr noundef %77, i8 noundef zeroext %conv118) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_init.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then132)) #10
          to label %do.end137 [label %if.then132], !srcloc !458

if.then132:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %name133 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %81 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name133, align 8
  %conv134 = zext i8 %call119 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_init.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.24, ptr noundef %82, i32 noundef %conv134) #10
  br label %do.end137

do.end137:                                        ; preds = %if.then132, %if.end112
  %83 = lshr i8 %call119, 4
  %state = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 26
  %84 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %state, align 4
  %trunc = trunc i8 %83 to i4
  %85 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.176)
  switch i4 %trunc, label %do.end137.isac_ph_state_change.exit_crit_edge [
    i4 1, label %do.end137.sw.bb.i_crit_edge
    i4 6, label %do.end137.sw.bb.i_crit_edge619
  ]

do.end137.sw.bb.i_crit_edge619:                   ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.end137.sw.bb.i_crit_edge:                      ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.end137.isac_ph_state_change.exit_crit_edge:    ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %isac_ph_state_change.exit

sw.bb.i:                                          ; preds = %do.end137.sw.bb.i_crit_edge, %do.end137.sw.bb.i_crit_edge619
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then.i.i)) #10
          to label %ph_command.exit.i [label %if.then.i.i], !srcloc !458

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %86 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name.i.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %87, i32 noundef 15) #10
  br label %ph_command.exit.i

ph_command.exit.i:                                ; preds = %if.then.i.i, %sw.bb.i
  %88 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type, align 8
  %and.i.i = and i32 %89, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  %90 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_reg152, align 4
  %92 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw154, align 4
  %94 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %off155, align 4
  %96 = trunc i32 %95 to i8
  %..i.i = select i1 %tobool3.not.i.i, i8 49, i8 46
  %conv13.i.i = add i8 %..i.i, %96
  %or16.i.i = select i1 %tobool3.not.i.i, i8 63, i8 -2
  tail call void %91(ptr noundef %93, i8 noundef zeroext %conv13.i.i, i8 noundef zeroext %or16.i.i) #10
  br label %isac_ph_state_change.exit

isac_ph_state_change.exit:                        ; preds = %ph_command.exit.i, %do.end137.isac_ph_state_change.exit_crit_edge
  %Flags.i = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %Flags.i) #10
  %workq.i = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %97 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %97, ptr noundef %workq.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then.i)) #10
          to label %ph_command.exit [label %if.then.i], !srcloc !458

if.then.i:                                        ; preds = %isac_ph_state_change.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %98 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %99, i32 noundef 1) #10
  br label %ph_command.exit

ph_command.exit:                                  ; preds = %if.then.i, %isac_ph_state_change.exit
  %100 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %type, align 8
  %and.i = and i32 %101, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %102 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write_reg152, align 4
  %104 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw154, align 4
  %106 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %off155, align 4
  %108 = trunc i32 %107 to i8
  %..i = select i1 %tobool3.not.i, i8 49, i8 46
  %conv13.i = add i8 %..i, %108
  %or16.i = select i1 %tobool3.not.i, i8 7, i8 30
  tail call void %103(ptr noundef %105, i8 noundef zeroext %conv13.i, i8 noundef zeroext %or16.i) #10
  %109 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_reg152, align 4
  %111 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw154, align 4
  %113 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %off155, align 4
  %115 = trunc i32 %114 to i8
  %conv145 = add i8 %115, 96
  tail call void %110(ptr noundef %112, i8 noundef zeroext %conv145, i8 noundef zeroext 44) #10
  %116 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write_reg152, align 4
  %118 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw154, align 4
  %120 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %off155, align 4
  %122 = trunc i32 %121 to i8
  %conv151 = add i8 %122, 32
  tail call void %117(ptr noundef %119, i8 noundef zeroext %conv151, i8 noundef zeroext 0) #10
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %conv157 = add i8 %13, 32
  tail call void %8(ptr noundef %10, i8 noundef zeroext %conv157, i8 noundef zeroext -1) #10
  %read_reg158 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 5
  %123 = ptrtoint ptr %read_reg158 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read_reg158, align 8
  %125 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw154, align 4
  %127 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %off155, align 4
  %129 = trunc i32 %128 to i8
  %conv163 = add i8 %129, 33
  %call164 = tail call zeroext i8 %124(ptr noundef %126, i8 noundef zeroext %conv163) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_init.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then177)) #10
          to label %do.end182 [label %if.then177], !srcloc !458

if.then177:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name178 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %130 = ptrtoint ptr %name178 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %name178, align 8
  %conv179 = zext i8 %call164 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_init.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.76, ptr noundef %131, i32 noundef %conv179) #10
  br label %do.end182

do.end182:                                        ; preds = %if.then177, %if.else
  %132 = ptrtoint ptr %read_reg158 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read_reg158, align 8
  %134 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw154, align 4
  %136 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %off155, align 4
  %138 = trunc i32 %137 to i8
  %conv188 = add i8 %138, 34
  %call189 = tail call zeroext i8 %133(ptr noundef %135, i8 noundef zeroext %conv188) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_init.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then202)) #10
          to label %do.end207 [label %if.then202], !srcloc !458

if.then202:                                       ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #12
  %name203 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %139 = ptrtoint ptr %name203 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %name203, align 8
  %conv204 = zext i8 %call189 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_init.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.77, ptr noundef %140, i32 noundef %conv204) #10
  br label %do.end207

do.end207:                                        ; preds = %if.then202, %do.end182
  %141 = ptrtoint ptr %read_reg158 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read_reg158, align 8
  %143 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hw154, align 4
  %145 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %off155, align 4
  %147 = trunc i32 %146 to i8
  %conv213 = add i8 %147, 57
  %call214 = tail call zeroext i8 %142(ptr noundef %144, i8 noundef zeroext %conv213) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_init.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then227)) #10
          to label %do.end232 [label %if.then227], !srcloc !458

if.then227:                                       ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #12
  %name228 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %148 = ptrtoint ptr %name228 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name228, align 8
  %conv229 = zext i8 %call214 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_init.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.78, ptr noundef %149, i32 noundef %conv229) #10
  br label %do.end232

do.end232:                                        ; preds = %if.then227, %do.end207
  %150 = ptrtoint ptr %read_reg158 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read_reg158, align 8
  %152 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw154, align 4
  %154 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %off155, align 4
  %156 = trunc i32 %155 to i8
  %conv238 = add i8 %156, 32
  %call239 = tail call zeroext i8 %151(ptr noundef %153, i8 noundef zeroext %conv238) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_init.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then252)) #10
          to label %do.end257 [label %if.then252], !srcloc !458

if.then252:                                       ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #12
  %name253 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %157 = ptrtoint ptr %name253 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %name253, align 8
  %conv254 = zext i8 %call239 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_init.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.79, ptr noundef %158, i32 noundef %conv254) #10
  br label %do.end257

do.end257:                                        ; preds = %if.then252, %do.end232
  %159 = and i8 %call239, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool260.not = icmp eq i8 %159, 0
  br i1 %tobool260.not, label %do.end257.if.end287_crit_edge, label %if.then261

do.end257.if.end287_crit_edge:                    ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end287

if.then261:                                       ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %read_reg158 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read_reg158, align 8
  %162 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw154, align 4
  %164 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %off155, align 4
  %166 = trunc i32 %165 to i8
  %conv267 = add i8 %166, 36
  %call268 = tail call zeroext i8 %161(ptr noundef %163, i8 noundef zeroext %conv267) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_init.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then281)) #10
          to label %if.end287 [label %if.then281], !srcloc !458

if.then281:                                       ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #12
  %name282 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %167 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %name282, align 8
  %conv283 = zext i8 %call268 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_init.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.80, ptr noundef %168, i32 noundef %conv283) #10
  br label %if.end287

if.end287:                                        ; preds = %if.then281, %if.then261, %do.end257.if.end287_crit_edge
  %169 = ptrtoint ptr %read_reg158 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %read_reg158, align 8
  %171 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw154, align 4
  %173 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %off155, align 4
  %175 = trunc i32 %174 to i8
  %conv293 = add i8 %175, 42
  %call294 = tail call zeroext i8 %170(ptr noundef %172, i8 noundef zeroext %conv293) #10
  %debug296 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 15
  %176 = ptrtoint ptr %debug296 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %debug296, align 4
  %and297 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297)
  %tobool298.not = icmp eq i32 %and297, 0
  br i1 %tobool298.not, label %if.end287.if.end310_crit_edge, label %do.end302

if.end287.if.end310_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end310

do.end302:                                        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #12
  %name304 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %178 = ptrtoint ptr %name304 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %name304, align 8
  %conv305 = zext i8 %call294 to i32
  %180 = lshr i32 %conv305, 5
  %and308 = and i32 %180, 3
  %arrayidx = getelementptr [4 x ptr], ptr @ISACVer, i32 0, i32 %and308
  %181 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx, align 4
  %call309 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %179, i32 noundef %conv305, ptr noundef %182) #13
  br label %if.end310

if.end310:                                        ; preds = %do.end302, %if.end287.if.end310_crit_edge
  %183 = lshr i8 %call294, 5
  %184 = and i8 %183, 3
  %and313 = zext i8 %184 to i32
  %185 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %type, align 8
  %or = or i32 %186, %and313
  store i32 %or, ptr %type, align 8
  %adf2 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 25
  %187 = ptrtoint ptr %adf2 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %adf2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool315.not = icmp eq i8 %188, 0
  br i1 %tobool315.not, label %if.then316, label %if.end310.if.end318_crit_edge

if.end310.if.end318_crit_edge:                    ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end318

if.then316:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %adf2 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 -128, ptr %adf2, align 1
  br label %if.end318

if.end318:                                        ; preds = %if.then316, %if.end310.if.end318_crit_edge
  %190 = ptrtoint ptr %adf2 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %adf2, align 1
  %conv320 = zext i8 %191 to i32
  %and321 = and i32 %conv320, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and321)
  %tobool322.not = icmp eq i32 %and321, 0
  br i1 %tobool322.not, label %do.end326, label %if.end332

do.end326:                                        ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #12
  %name328 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %192 = ptrtoint ptr %name328 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %name328, align 8
  %call331 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %193, i32 noundef %conv320) #13
  tail call void @isac_release(ptr noundef %isac)
  br label %cleanup

if.end332:                                        ; preds = %if.end318
  %194 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write_reg152, align 4
  %196 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hw154, align 4
  %198 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %off155, align 4
  %200 = trunc i32 %199 to i8
  %conv338 = add i8 %200, 57
  tail call void %195(ptr noundef %197, i8 noundef zeroext %conv338, i8 noundef zeroext %191) #10
  %201 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write_reg152, align 4
  %203 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hw154, align 4
  %205 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %off155, align 4
  %207 = trunc i32 %206 to i8
  %conv345 = add i8 %207, 59
  tail call void %202(ptr noundef %204, i8 noundef zeroext %conv345, i8 noundef zeroext 47) #10
  %208 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write_reg152, align 4
  %210 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hw154, align 4
  %212 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %off155, align 4
  %214 = trunc i32 %213 to i8
  %conv351 = add i8 %214, 48
  tail call void %209(ptr noundef %211, i8 noundef zeroext %conv351, i8 noundef zeroext 0) #10
  %215 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %write_reg152, align 4
  %217 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hw154, align 4
  %219 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %off155, align 4
  %221 = trunc i32 %220 to i8
  %conv357 = add i8 %221, 55
  tail call void %216(ptr noundef %218, i8 noundef zeroext %conv357, i8 noundef zeroext 112) #10
  %222 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %write_reg152, align 4
  %224 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hw154, align 4
  %226 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %off155, align 4
  %228 = trunc i32 %227 to i8
  %conv363 = add i8 %228, 34
  tail call void %223(ptr noundef %225, i8 noundef zeroext %conv363, i8 noundef zeroext -55) #10
  %229 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %write_reg152, align 4
  %231 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hw154, align 4
  %233 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %off155, align 4
  %235 = trunc i32 %234 to i8
  %conv369 = add i8 %235, 35
  tail call void %230(ptr noundef %232, i8 noundef zeroext %conv369, i8 noundef zeroext 0) #10
  %236 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %write_reg152, align 4
  %238 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %hw154, align 4
  %240 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %off155, align 4
  %242 = trunc i32 %241 to i8
  %conv375 = add i8 %242, 56
  tail call void %237(ptr noundef %239, i8 noundef zeroext %conv375, i8 noundef zeroext 0) #10
  %243 = ptrtoint ptr %read_reg158 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %read_reg158, align 8
  %245 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %hw154, align 4
  %247 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %off155, align 4
  %249 = trunc i32 %248 to i8
  %conv381 = add i8 %249, 49
  %call382 = tail call zeroext i8 %244(ptr noundef %246, i8 noundef zeroext %conv381) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_init.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then395)) #10
          to label %do.end400 [label %if.then395], !srcloc !458

if.then395:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #12
  %name396 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %250 = ptrtoint ptr %name396 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %name396, align 8
  %conv397 = zext i8 %call382 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_init.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.87, ptr noundef %251, i32 noundef %conv397) #10
  br label %do.end400

do.end400:                                        ; preds = %if.then395, %if.end332
  %252 = lshr i8 %call382, 2
  %253 = and i8 %252, 15
  %state405 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 26
  %254 = ptrtoint ptr %state405 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %253, ptr %state405, align 4
  %trunc618 = trunc i8 %252 to i4
  %255 = zext i4 %trunc618 to i64
  call void @__sanitizer_cov_trace_switch(i64 %255, ptr @__sancov_gen_cov_switch_values.177)
  switch i4 %trunc618, label %do.end400.isac_ph_state_change.exit592_crit_edge [
    i4 1, label %do.end400.sw.bb.i575_crit_edge
    i4 6, label %do.end400.sw.bb.i575_crit_edge620
  ]

do.end400.sw.bb.i575_crit_edge620:                ; preds = %do.end400
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i575

do.end400.sw.bb.i575_crit_edge:                   ; preds = %do.end400
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i575

do.end400.isac_ph_state_change.exit592_crit_edge: ; preds = %do.end400
  call void @__sanitizer_cov_trace_pc() #12
  br label %isac_ph_state_change.exit592

sw.bb.i575:                                       ; preds = %do.end400.sw.bb.i575_crit_edge, %do.end400.sw.bb.i575_crit_edge620
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then.i.i577)) #10
          to label %ph_command.exit.i587 [label %if.then.i.i577], !srcloc !458

if.then.i.i577:                                   ; preds = %sw.bb.i575
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i576 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %256 = ptrtoint ptr %name.i.i576 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %name.i.i576, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %257, i32 noundef 15) #10
  br label %ph_command.exit.i587

ph_command.exit.i587:                             ; preds = %if.then.i.i577, %sw.bb.i575
  %258 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %type, align 8
  %and.i.i579 = and i32 %259, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i579)
  %tobool3.not.i.i580 = icmp eq i32 %and.i.i579, 0
  %260 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write_reg152, align 4
  %262 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %hw154, align 4
  %264 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %off155, align 4
  %266 = trunc i32 %265 to i8
  %..i.i584 = select i1 %tobool3.not.i.i580, i8 49, i8 46
  %conv13.i.i585 = add i8 %..i.i584, %266
  %or16.i.i586 = select i1 %tobool3.not.i.i580, i8 63, i8 -2
  tail call void %261(ptr noundef %263, i8 noundef zeroext %conv13.i.i585, i8 noundef zeroext %or16.i.i586) #10
  br label %isac_ph_state_change.exit592

isac_ph_state_change.exit592:                     ; preds = %ph_command.exit.i587, %do.end400.isac_ph_state_change.exit592_crit_edge
  %Flags.i588 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 1
  %call.i589 = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %Flags.i588) #10
  %workq.i590 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %267 = load ptr, ptr @system_wq, align 4
  %call.i.i.i591 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %267, ptr noundef %workq.i590) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_init, %if.then.i594)) #10
          to label %ph_command.exit607 [label %if.then.i594], !srcloc !458

if.then.i594:                                     ; preds = %isac_ph_state_change.exit592
  call void @__sanitizer_cov_trace_pc() #12
  %name.i593 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %268 = ptrtoint ptr %name.i593 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %name.i593, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %269, i32 noundef 1) #10
  br label %ph_command.exit607

ph_command.exit607:                               ; preds = %if.then.i594, %isac_ph_state_change.exit592
  %270 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %type, align 8
  %and.i596 = and i32 %271, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i596)
  %tobool3.not.i597 = icmp eq i32 %and.i596, 0
  %272 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %write_reg152, align 4
  %274 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %hw154, align 4
  %276 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %off155, align 4
  %278 = trunc i32 %277 to i8
  %..i601 = select i1 %tobool3.not.i597, i8 49, i8 46
  %conv13.i604 = add i8 %..i601, %278
  %or16.i606 = select i1 %tobool3.not.i597, i8 7, i8 30
  tail call void %273(ptr noundef %275, i8 noundef zeroext %conv13.i604, i8 noundef zeroext %or16.i606) #10
  %279 = ptrtoint ptr %write_reg152 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %write_reg152, align 4
  %281 = ptrtoint ptr %hw154 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %hw154, align 4
  %283 = ptrtoint ptr %off155 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %off155, align 4
  %285 = trunc i32 %284 to i8
  %conv411 = add i8 %285, 32
  tail call void %280(ptr noundef %282, i8 noundef zeroext %conv411, i8 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %ph_command.exit607, %do.end326, %ph_command.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end326 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %ph_command.exit607 ], [ 0, %ph_command.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isac_release(ptr noundef %isac) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end10.sink.split_crit_edge

entry.if.end10.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else.if.end10_crit_edge, label %if.else.if.end10.sink.split_crit_edge

if.else.if.end10.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.sink.split

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10.sink.split:                              ; preds = %if.else.if.end10.sink.split_crit_edge, %entry.if.end10.sink.split_crit_edge
  %.sink51 = phi i8 [ 96, %entry.if.end10.sink.split_crit_edge ], [ 32, %if.else.if.end10.sink.split_crit_edge ]
  %write_reg4 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %2 = ptrtoint ptr %write_reg4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg4, align 4
  %hw6 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %4 = ptrtoint ptr %hw6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw6, align 4
  %off7 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %6 = ptrtoint ptr %off7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %off7, align 4
  %8 = trunc i32 %7 to i8
  %conv9 = add i8 %.sink51, %8
  tail call void %3(ptr noundef %5, i8 noundef zeroext %conv9, i8 noundef zeroext -1) #10
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge
  %function = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 8, i32 2
  %9 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %function, align 4
  %cmp12.not = icmp eq ptr %10, null
  br i1 %cmp12.not, label %if.end10.if.end20_crit_edge, label %if.then14

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %timer = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 8
  %call = tail call i32 @del_timer(ptr noundef %timer) #10
  %11 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %function, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end10.if.end20_crit_edge
  %mon_rx = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 15
  %12 = ptrtoint ptr %mon_rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mon_rx, align 8
  tail call void @kfree(ptr noundef %13) #10
  %14 = ptrtoint ptr %mon_rx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mon_rx, align 8
  %mon_tx = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 14
  %15 = ptrtoint ptr %mon_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mon_tx, align 4
  tail call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %mon_tx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %mon_tx, align 4
  %l1 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 5
  %18 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %l1, align 8
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %if.end20.if.end29_crit_edge, label %if.then25

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 @l1_event(ptr noundef nonnull %19, i32 noundef 512) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end20.if.end29_crit_edge
  %call31 = tail call i32 @mISDN_freedchannel(ptr noundef %isac) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isac_ctrl(ptr nocapture noundef readonly %isac, i32 noundef %cmd, i32 noundef %para) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %cmd, label %do.body41 [
    i32 38146, label %do.body1
    i32 39424, label %sw.bb36
  ]

do.body1:                                         ; preds = %entry
  %hwlock = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 4
  %1 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwlock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %type = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %do.body1.if.end34_crit_edge

do.body1.if.end34_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %and5 = and i32 %para, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and10 = and i32 %para, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %spec.select71 = select i1 %tobool11.not, i8 0, i8 3
  %5 = and i32 %para, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  %tl.0 = select i1 %tobool6.not, i8 %spec.select71, i8 12
  %write_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  %hw = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %11 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %off, align 4
  %13 = trunc i32 %12 to i8
  %conv17 = add i8 %13, 48
  tail call void %8(ptr noundef %10, i8 noundef zeroext %conv17, i8 noundef zeroext %tl.0) #10
  %14 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %18 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %off, align 4
  %20 = trunc i32 %19 to i8
  %conv32 = add i8 %20, 56
  %. = select i1 %6, i8 0, i8 8
  tail call void %15(ptr noundef %17, i8 noundef zeroext %conv32, i8 noundef zeroext %.) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then, %do.body1.if.end34_crit_edge
  %21 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call2) #10
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %l1 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 5
  %23 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %l1, align 8
  %and38 = and i32 %para, 255
  %or39 = or i32 %and38, 39424
  %call40 = tail call i32 @l1_event(ptr noundef %24, i32 noundef %or39) #10
  br label %sw.epilog

do.body41:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_ctrl.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_ctrl, %if.then47)) #10
          to label %sw.epilog [label %if.then47], !srcloc !458

if.then47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_ctrl.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.99, ptr noundef %26, ptr noundef nonnull @.str.98, i32 noundef %cmd, i32 noundef %para) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then47, %do.body41, %sw.bb36, %if.end34
  %ret.0 = phi i32 [ %call40, %sw.bb36 ], [ 0, %if.end34 ], [ -1, %if.then47 ], [ -1, %do.body41 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_dchannel(ptr noundef %isac, ptr nocapture noundef %rq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call fastcc i32 @open_dchannel_caller(ptr noundef %isac, ptr noundef %rq, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mISDNipac_irq(ptr noundef %ipac, i32 noundef %maxloop) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %maxloop, 1
  %type = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %read_reg = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 7
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 4
  %hw = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 3
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %call = tail call zeroext i8 %3(ptr noundef %5, i8 noundef zeroext 96) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool2.not366 = icmp eq i8 %call, 0
  br i1 %tobool2.not366, label %if.then.if.end220_crit_edge, label %land.rhs.lr.ph

if.then.if.end220_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

land.rhs.lr.ph:                                   ; preds = %if.then
  %name = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 2
  %hscx = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 1
  %arrayidx20 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end28.land.rhs_crit_edge, %land.rhs.lr.ph
  %cnt.0368 = phi i32 [ %add, %land.rhs.lr.ph ], [ %dec, %if.end28.land.rhs_crit_edge ]
  %ista.0367 = phi i8 [ %call, %land.rhs.lr.ph ], [ %call31, %if.end28.land.rhs_crit_edge ]
  %conv369 = zext i8 %ista.0367 to i32
  %dec = add i32 %cnt.0368, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %land.rhs.if.end220_crit_edge, label %do.body

land.rhs.if.end220_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

do.body:                                          ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNipac_irq.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNipac_irq, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !458

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNipac_irq.__UNIQUE_ID_ddebug524, ptr noundef nonnull @.str.14, ptr noundef %7, i32 noundef %conv369) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %and11 = and i32 %conv369, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end.if.end14_crit_edge, label %if.then13

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ipac_irq(ptr noundef %hscx, i8 noundef zeroext %ista.0367)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.end.if.end14_crit_edge
  %and16 = and i32 %conv369, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end21_crit_edge, label %if.then18

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ipac_irq(ptr noundef %arrayidx20, i8 noundef zeroext %ista.0367)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14.if.end21_crit_edge
  %and23 = and i32 %conv369, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end28_crit_edge, label %if.then25

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 @mISDNisac_irq(ptr noundef %ipac, i8 noundef zeroext %ista.0367)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end21.if.end28_crit_edge
  %8 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg, align 4
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %call31 = tail call zeroext i8 %9(ptr noundef %11, i8 noundef zeroext 96) #10
  %tobool2.not = icmp eq i8 %call31, 0
  br i1 %tobool2.not, label %if.end28.if.end220_crit_edge, label %if.end28.land.rhs_crit_edge

if.end28.land.rhs_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end28.if.end220_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

if.else:                                          ; preds = %entry
  %and33 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else141, label %if.then35

if.then35:                                        ; preds = %if.else
  %read_reg36 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 7
  %12 = ptrtoint ptr %read_reg36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg36, align 4
  %hw37 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 3
  %14 = ptrtoint ptr %hw37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw37, align 4
  %call38 = tail call zeroext i8 %13(ptr noundef %15, i8 noundef zeroext -63) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call38)
  %tobool41.not373 = icmp eq i8 %call38, 0
  br i1 %tobool41.not373, label %if.then35.if.end220_crit_edge, label %land.rhs42.lr.ph

if.then35.if.end220_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

land.rhs42.lr.ph:                                 ; preds = %if.then35
  %name60 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 2
  %read_reg69 = getelementptr inbounds %struct.isac_hw, ptr %ipac, i32 0, i32 5
  %hw70 = getelementptr inbounds %struct.dchannel, ptr %ipac, i32 0, i32 6
  %off = getelementptr inbounds %struct.isac_hw, ptr %ipac, i32 0, i32 2
  %hscx127 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 1
  %arrayidx135 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1
  br label %land.rhs42

land.rhs42:                                       ; preds = %if.end136.land.rhs42_crit_edge, %land.rhs42.lr.ph
  %cnt.1376 = phi i32 [ %add, %land.rhs42.lr.ph ], [ %dec43, %if.end136.land.rhs42_crit_edge ]
  %ista.1374 = phi i8 [ %call38, %land.rhs42.lr.ph ], [ %call139, %if.end136.land.rhs42_crit_edge ]
  %conv40377 = zext i8 %ista.1374 to i32
  %dec43 = add i32 %cnt.1376, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec43)
  %tobool44.not = icmp eq i32 %dec43, 0
  br i1 %tobool44.not, label %land.rhs42.if.end220_crit_edge, label %do.body47

land.rhs42.if.end220_crit_edge:                   ; preds = %land.rhs42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

do.body47:                                        ; preds = %land.rhs42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNipac_irq.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNipac_irq, %if.then59)) #10
          to label %do.end64 [label %if.then59], !srcloc !458

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name60, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNipac_irq.__UNIQUE_ID_ddebug525, ptr noundef nonnull @.str.14, ptr noundef %17, i32 noundef %conv40377) #10
  br label %do.end64

do.end64:                                         ; preds = %if.then59, %do.body47
  %and66 = and i32 %conv40377, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.end64.if.end122_crit_edge, label %if.then68

do.end64.if.end122_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then68:                                        ; preds = %do.end64
  %18 = ptrtoint ptr %read_reg69 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg69, align 8
  %20 = ptrtoint ptr %hw70 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw70, align 4
  %22 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %off, align 4
  %24 = trunc i32 %23 to i8
  %conv72 = add i8 %24, 32
  %call73 = tail call zeroext i8 %19(ptr noundef %21, i8 noundef zeroext %conv72) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNipac_irq.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNipac_irq, %if.then86)) #10
          to label %do.end91 [label %if.then86], !srcloc !458

if.then86:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name60, align 8
  %conv88 = zext i8 %call73 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNipac_irq.__UNIQUE_ID_ddebug526, ptr noundef nonnull @.str.6, ptr noundef %26, i32 noundef %conv88) #10
  br label %do.end91

do.end91:                                         ; preds = %if.then86, %if.then68
  %27 = and i8 %call73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool94.not = icmp eq i8 %27, 0
  br i1 %tobool94.not, label %do.end91.if.end113_crit_edge, label %do.body96

do.end91.if.end113_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

do.body96:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNipac_irq.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNipac_irq, %if.then108)) #10
          to label %if.end113 [label %if.then108], !srcloc !458

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name60, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNipac_irq.__UNIQUE_ID_ddebug527, ptr noundef nonnull @.str.15, ptr noundef %29) #10
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %do.body96, %do.end91.if.end113_crit_edge
  %and115 = lshr i8 %ista.1374, 4
  %30 = and i8 %and115, 1
  %31 = or i8 %call73, %30
  %call121 = tail call i32 @mISDNisac_irq(ptr noundef %ipac, i8 noundef zeroext %31)
  br label %if.end122

if.end122:                                        ; preds = %if.end113, %do.end64.if.end122_crit_edge
  %and124 = and i32 %conv40377, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end122.if.end129_crit_edge, label %if.then126

if.end122.if.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ipac_irq(ptr noundef %hscx127, i8 noundef zeroext %ista.1374)
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.end122.if.end129_crit_edge
  %and131 = and i32 %conv40377, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end129.if.end136_crit_edge, label %if.then133

if.end129.if.end136_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ipac_irq(ptr noundef %arrayidx135, i8 noundef zeroext %ista.1374)
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %if.end129.if.end136_crit_edge
  %32 = ptrtoint ptr %read_reg36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_reg36, align 4
  %34 = ptrtoint ptr %hw37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw37, align 4
  %call139 = tail call zeroext i8 %33(ptr noundef %35, i8 noundef zeroext -63) #10
  %tobool41.not = icmp eq i8 %call139, 0
  br i1 %tobool41.not, label %if.end136.if.end220_crit_edge, label %if.end136.land.rhs42_crit_edge

if.end136.land.rhs42_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs42

if.end136.if.end220_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

if.else141:                                       ; preds = %if.else
  %and143 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.else141.if.end220_crit_edge, label %while.cond146.preheader

if.else141.if.end220_crit_edge:                   ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

while.cond146.preheader:                          ; preds = %if.else141
  %read_reg150 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 7
  %hw151 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 3
  %arrayidx153 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1
  %off154 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 3
  %name172 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 2
  %read_reg182 = getelementptr inbounds %struct.isac_hw, ptr %ipac, i32 0, i32 5
  %hw184 = getelementptr inbounds %struct.dchannel, ptr %ipac, i32 0, i32 6
  %off185 = getelementptr inbounds %struct.isac_hw, ptr %ipac, i32 0, i32 2
  br label %while.cond146

while.cond146:                                    ; preds = %if.end210.while.cond146_crit_edge, %while.cond146.preheader
  %cnt.2 = phi i32 [ %dec147, %if.end210.while.cond146_crit_edge ], [ %add, %while.cond146.preheader ]
  %dec147 = add i32 %cnt.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec147)
  %tobool148.not = icmp eq i32 %dec147, 0
  br i1 %tobool148.not, label %while.cond146.if.end220_crit_edge, label %while.body149

while.cond146.if.end220_crit_edge:                ; preds = %while.cond146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

while.body149:                                    ; preds = %while.cond146
  %36 = ptrtoint ptr %read_reg150 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_reg150, align 4
  %38 = ptrtoint ptr %hw151 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw151, align 4
  %40 = ptrtoint ptr %off154 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %off154, align 1
  %add156 = add i8 %41, 32
  %call158 = tail call zeroext i8 %37(ptr noundef %39, i8 noundef zeroext %add156) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNipac_irq.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNipac_irq, %if.then171)) #10
          to label %do.end176 [label %if.then171], !srcloc !458

if.then171:                                       ; preds = %while.body149
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %name172 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name172, align 8
  %conv173 = zext i8 %call158 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNipac_irq.__UNIQUE_ID_ddebug528, ptr noundef nonnull @.str.16, ptr noundef %43, i32 noundef %conv173) #10
  br label %do.end176

do.end176:                                        ; preds = %if.then171, %while.body149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call158)
  %tobool177.not = icmp eq i8 %call158, 0
  br i1 %tobool177.not, label %do.end176.if.end181_crit_edge, label %if.then178

do.end176.if.end181_crit_edge:                    ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end181

if.then178:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ipac_irq(ptr noundef %arrayidx153, i8 noundef zeroext %call158)
  br label %if.end181

if.end181:                                        ; preds = %if.then178, %do.end176.if.end181_crit_edge
  %44 = ptrtoint ptr %read_reg182 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_reg182, align 8
  %46 = ptrtoint ptr %hw184 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw184, align 4
  %48 = ptrtoint ptr %off185 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %off185, align 4
  %50 = trunc i32 %49 to i8
  %conv187 = add i8 %50, 32
  %call188 = tail call zeroext i8 %45(ptr noundef %47, i8 noundef zeroext %conv187) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNipac_irq.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNipac_irq, %if.then201)) #10
          to label %do.end206 [label %if.then201], !srcloc !458

if.then201:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %name172 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name172, align 8
  %conv203 = zext i8 %call188 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNipac_irq.__UNIQUE_ID_ddebug529, ptr noundef nonnull @.str.6, ptr noundef %52, i32 noundef %conv203) #10
  br label %do.end206

do.end206:                                        ; preds = %if.then201, %if.end181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call188)
  %tobool207.not = icmp eq i8 %call188, 0
  br i1 %tobool207.not, label %do.end206.if.end210_crit_edge, label %if.then208

do.end206.if.end210_crit_edge:                    ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

if.then208:                                       ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #12
  %call209 = tail call i32 @mISDNisac_irq(ptr noundef %ipac, i8 noundef zeroext %call188)
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %do.end206.if.end210_crit_edge
  %or213334 = or i8 %call188, %call158
  %cmp = icmp eq i8 %or213334, 0
  br i1 %cmp, label %if.end210.if.end220_crit_edge, label %if.end210.while.cond146_crit_edge

if.end210.while.cond146_crit_edge:                ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond146

if.end210.if.end220_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

if.end220:                                        ; preds = %if.end210.if.end220_crit_edge, %while.cond146.if.end220_crit_edge, %if.else141.if.end220_crit_edge, %if.end136.if.end220_crit_edge, %land.rhs42.if.end220_crit_edge, %if.then35.if.end220_crit_edge, %if.end28.if.end220_crit_edge, %land.rhs.if.end220_crit_edge, %if.then.if.end220_crit_edge
  %cnt.3 = phi i32 [ %add, %if.else141.if.end220_crit_edge ], [ %add, %if.then35.if.end220_crit_edge ], [ %add, %if.then.if.end220_crit_edge ], [ 0, %while.cond146.if.end220_crit_edge ], [ %dec147, %if.end210.if.end220_crit_edge ], [ 0, %land.rhs42.if.end220_crit_edge ], [ %dec43, %if.end136.if.end220_crit_edge ], [ %dec, %if.end28.if.end220_crit_edge ], [ 0, %land.rhs.if.end220_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.3, i32 %maxloop)
  %cmp221 = icmp sgt i32 %cnt.3, %maxloop
  br i1 %cmp221, label %if.end220.cleanup_crit_edge, label %if.end224

if.end220.cleanup_crit_edge:                      ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end224:                                        ; preds = %if.end220
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.3, i32 %maxloop)
  %cmp225 = icmp slt i32 %cnt.3, %maxloop
  br i1 %cmp225, label %do.body228, label %if.end224.if.end246_crit_edge

if.end224.if.end246_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end246

do.body228:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mISDNipac_irq.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mISDNipac_irq, %if.then240)) #10
          to label %if.end246 [label %if.then240], !srcloc !458

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #12
  %name241 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 2
  %53 = ptrtoint ptr %name241 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name241, align 8
  %sub = sub i32 %maxloop, %cnt.3
  %55 = tail call i32 @llvm.read_register.i32(metadata !447) #10
  %and.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mISDNipac_irq.__UNIQUE_ID_ddebug530, ptr noundef nonnull @.str.17, ptr noundef %54, i32 noundef %sub, i32 noundef %58) #10
  br label %if.end246

if.end246:                                        ; preds = %if.then240, %do.body228, %if.end224.if.end246_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxloop)
  %tobool247.not = icmp ne i32 %maxloop, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.3)
  %tobool248.not = icmp eq i32 %cnt.3, 0
  %or.cond = select i1 %tobool247.not, i1 %tobool248.not, i1 false
  br i1 %or.cond, label %do.end252, label %if.end246.cleanup_crit_edge

if.end246.cleanup_crit_edge:                      ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end252:                                        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #12
  %name254 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 2
  %59 = ptrtoint ptr %name254 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name254, align 8
  %61 = tail call i32 @llvm.read_register.i32(metadata !447) #10
  %and.i353 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i353 to ptr
  %cpu256 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu256 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu256, align 4
  %call257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %60, i32 noundef %maxloop, i32 noundef %64) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end252, %if.end246.cleanup_crit_edge, %if.end220.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end220.cleanup_crit_edge ], [ 1, %do.end252 ], [ 1, %if.end246.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipac_irq(ptr noundef %hx, i8 noundef zeroext %ista) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 1
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %type = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %read_reg = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %hw = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 3
  %8 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off, align 1
  %call = tail call zeroext i8 %5(ptr noundef %7, i8 noundef zeroext %9) #10
  br label %if.end145

if.else:                                          ; preds = %entry
  %and6 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else45, label %if.then8

if.then8:                                         ; preds = %if.else
  %read_reg10 = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %read_reg10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg10, align 4
  %hw12 = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %hw12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw12, align 4
  %off13 = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 3
  %14 = ptrtoint ptr %off13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %off13, align 1
  %add15 = add i8 %15, 32
  %call17 = tail call zeroext i8 %11(ptr noundef %13, i8 noundef zeroext %add15) #10
  %nr = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %and18 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %conv21 = select i1 %tobool19.not, i32 1, i32 4
  %conv22 = zext i8 %ista to i32
  %and23 = and i32 %conv21, %conv22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then8.if.end145_crit_edge, label %if.then25

if.then8.if.end145_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then25:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip, align 4
  %read_reg27 = getelementptr inbounds %struct.ipac_hw, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %read_reg27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_reg27, align 4
  %hw29 = getelementptr inbounds %struct.ipac_hw, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %hw29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw29, align 4
  %24 = ptrtoint ptr %off13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %off13, align 1
  %add32 = add i8 %25, 36
  %call34 = tail call zeroext i8 %21(ptr noundef %23, i8 noundef zeroext %add32) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_irq.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_irq, %if.then39)) #10
          to label %if.end145 [label %if.then39], !srcloc !458

if.then39:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ip, align 4
  %name = getelementptr inbounds %struct.ipac_hw, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 8
  %30 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr, align 4
  %conv43 = zext i8 %call34 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_irq.__UNIQUE_ID_ddebug518, ptr noundef nonnull @.str.103, ptr noundef %29, i32 noundef %31, i32 noundef %conv43) #10
  br label %if.end145

if.else45:                                        ; preds = %if.else
  %nr47 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %32 = ptrtoint ptr %nr47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr47, align 4
  %and48 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else95, label %if.then50

if.then50:                                        ; preds = %if.else45
  %conv51 = zext i8 %ista to i32
  %and52 = and i32 %conv51, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then50.if.end56_crit_edge, label %if.then54

if.then50.if.end56_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %hscx = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 1
  tail call fastcc void @ipac_irq(ptr noundef %hscx, i8 noundef zeroext %ista)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.then50.if.end56_crit_edge
  %and58 = and i32 %conv51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end56.if.end91_crit_edge, label %if.then60

if.end56.if.end91_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ip, align 4
  %read_reg62 = getelementptr inbounds %struct.ipac_hw, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %read_reg62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_reg62, align 4
  %hw64 = getelementptr inbounds %struct.ipac_hw, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %hw64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw64, align 4
  %off65 = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 3
  %40 = ptrtoint ptr %off65 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %off65, align 1
  %add67 = add i8 %41, 36
  %call69 = tail call zeroext i8 %37(ptr noundef %39, i8 noundef zeroext %add67) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_irq.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_irq, %if.then82)) #10
          to label %if.end91 [label %if.then82], !srcloc !458

if.then82:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ip, align 4
  %name84 = getelementptr inbounds %struct.ipac_hw, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %name84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name84, align 8
  %46 = ptrtoint ptr %nr47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr47, align 4
  %conv87 = zext i8 %call69 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_irq.__UNIQUE_ID_ddebug519, ptr noundef nonnull @.str.103, ptr noundef %45, i32 noundef %47, i32 noundef %conv87) #10
  br label %if.end91

if.end91:                                         ; preds = %if.then82, %if.then60, %if.end56.if.end91_crit_edge
  %exirb.0 = phi i8 [ %call69, %if.then82 ], [ 0, %if.end56.if.end91_crit_edge ], [ %call69, %if.then60 ]
  %and93 = and i8 %ista, -8
  br label %if.end145

if.else95:                                        ; preds = %if.else45
  %read_reg97 = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %read_reg97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_reg97, align 4
  %hw99 = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %hw99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw99, align 4
  %off100 = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 3
  %52 = ptrtoint ptr %off100 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %off100, align 1
  %add102 = add i8 %53, 32
  %call104 = tail call zeroext i8 %49(ptr noundef %51, i8 noundef zeroext %add102) #10
  %54 = and i8 %ista, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool107.not = icmp eq i8 %54, 0
  br i1 %tobool107.not, label %if.else95.if.end139_crit_edge, label %if.then108

if.else95.if.end139_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then108:                                       ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ip, align 4
  %read_reg110 = getelementptr inbounds %struct.ipac_hw, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %read_reg110 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_reg110, align 4
  %hw112 = getelementptr inbounds %struct.ipac_hw, ptr %56, i32 0, i32 3
  %59 = ptrtoint ptr %hw112 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw112, align 4
  %61 = ptrtoint ptr %off100 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %off100, align 1
  %add115 = add i8 %62, 36
  %call117 = tail call zeroext i8 %58(ptr noundef %60, i8 noundef zeroext %add115) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_irq.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_irq, %if.then130)) #10
          to label %if.end139 [label %if.then130], !srcloc !458

if.then130:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ip, align 4
  %name132 = getelementptr inbounds %struct.ipac_hw, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %name132 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name132, align 8
  %67 = ptrtoint ptr %nr47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr47, align 4
  %conv135 = zext i8 %call117 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_irq.__UNIQUE_ID_ddebug520, ptr noundef nonnull @.str.103, ptr noundef %66, i32 noundef %68, i32 noundef %conv135) #10
  br label %if.end139

if.end139:                                        ; preds = %if.then130, %if.then108, %if.else95.if.end139_crit_edge
  %exirb.1 = phi i8 [ %call117, %if.then130 ], [ 0, %if.else95.if.end139_crit_edge ], [ %call117, %if.then108 ]
  %69 = and i8 %call104, -8
  br label %if.end145

if.end145:                                        ; preds = %if.end139, %if.end91, %if.then39, %if.then25, %if.then8.if.end145_crit_edge, %if.then
  %exirb.2 = phi i8 [ 0, %if.then ], [ %call34, %if.then39 ], [ 0, %if.then8.if.end145_crit_edge ], [ %exirb.0, %if.end91 ], [ %exirb.1, %if.end139 ], [ %call34, %if.then25 ]
  %istab.0 = phi i8 [ %call, %if.then ], [ %call17, %if.then39 ], [ %call17, %if.then8.if.end145_crit_edge ], [ %and93, %if.end91 ], [ %69, %if.end139 ], [ %call17, %if.then25 ]
  %and147 = lshr i8 %exirb.2, 4
  %70 = and i8 %and147, 4
  %71 = or i8 %70, %istab.0
  %72 = shl i8 %exirb.2, 1
  %73 = and i8 %72, 32
  %74 = or i8 %71, %73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_irq.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_irq, %if.then173)) #10
          to label %do.end181 [label %if.then173], !srcloc !458

if.then173:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ip, align 4
  %name175 = getelementptr inbounds %struct.ipac_hw, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %name175 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name175, align 8
  %nr177 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %79 = ptrtoint ptr %nr177 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nr177, align 4
  %conv178 = zext i8 %74 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_irq.__UNIQUE_ID_ddebug521, ptr noundef nonnull @.str.104, ptr noundef %78, i32 noundef %80, i32 noundef %conv178) #10
  br label %do.end181

do.end181:                                        ; preds = %if.then173, %if.end145
  %Flags = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 2
  %81 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %Flags, align 4
  %83 = and i32 %82, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool184.not = icmp eq i32 %83, 0
  br i1 %tobool184.not, label %do.end181.cleanup_crit_edge, label %if.end186

do.end181.cleanup_crit_edge:                      ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end186:                                        ; preds = %do.end181
  %conv187 = zext i8 %74 to i32
  %and188 = and i32 %conv187, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.end186.if.end191_crit_edge, label %if.then190

if.end186.if.end191_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.then190:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ipac_rme(ptr noundef %hx)
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.end186.if.end191_crit_edge
  %and193 = and i32 %conv187, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.end191.if.end203_crit_edge, label %if.then195

if.end191.if.end203_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then195:                                       ; preds = %if.end191
  %fifo_size = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 2
  %84 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %fifo_size, align 4
  tail call fastcc void @hscx_empty_fifo(ptr noundef %hx, i8 noundef zeroext %85)
  %86 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %Flags, align 4
  %88 = and i32 %87, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool199.not = icmp eq i32 %88, 0
  br i1 %tobool199.not, label %if.then195.if.end203_crit_edge, label %if.then200

if.then195.if.end203_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then200:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @recv_Bchannel(ptr noundef %hx, i32 noundef 0, i1 noundef zeroext false) #10
  br label %if.end203

if.end203:                                        ; preds = %if.then200, %if.then195.if.end203_crit_edge, %if.end191.if.end203_crit_edge
  %and205 = and i32 %conv187, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.end203.if.end228_crit_edge, label %do.body208

if.end203.if.end228_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

do.body208:                                       ; preds = %if.end203
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_irq.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_irq, %if.then220)) #10
          to label %do.end227 [label %if.then220], !srcloc !458

if.then220:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ip, align 4
  %name222 = getelementptr inbounds %struct.ipac_hw, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %name222 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name222, align 8
  %nr224 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %93 = ptrtoint ptr %nr224 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nr224, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_irq.__UNIQUE_ID_ddebug522, ptr noundef nonnull @.str.105, ptr noundef %92, i32 noundef %94) #10
  br label %do.end227

do.end227:                                        ; preds = %if.then220, %do.body208
  tail call fastcc void @hscx_cmdr(ptr noundef %hx, i8 noundef zeroext 64)
  br label %if.end228

if.end228:                                        ; preds = %do.end227, %if.end203.if.end228_crit_edge
  %and230 = and i32 %conv187, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.end228.if.end233_crit_edge, label %if.then232

if.end228.if.end233_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end233

if.then232:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hscx_xpr(ptr noundef %hx)
  br label %if.end233

if.end233:                                        ; preds = %if.then232, %if.end228.if.end233_crit_edge
  %and235 = and i32 %conv187, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  br i1 %tobool236.not, label %if.end233.cleanup_crit_edge, label %if.then237

if.end233.cleanup_crit_edge:                      ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then237:                                       ; preds = %if.end233
  %95 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %Flags, align 4
  %97 = and i32 %96, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool241.not = icmp eq i32 %97, 0
  br i1 %tobool241.not, label %do.body253, label %if.then242

if.then242:                                       ; preds = %if.then237
  %98 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %Flags, align 4
  %100 = and i32 %99, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool246.not = icmp eq i32 %100, 0
  br i1 %tobool246.not, label %if.then242.if.end251_crit_edge, label %if.then247

if.then242.if.end251_crit_edge:                   ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251

if.then247:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #12
  %call250 = tail call i32 @_test_and_set_bit(i32 noundef 27, ptr noundef %Flags) #10
  br label %if.end251

if.end251:                                        ; preds = %if.then247, %if.then242.if.end251_crit_edge
  tail call fastcc void @hscx_xpr(ptr noundef %hx)
  br label %cleanup

do.body253:                                       ; preds = %if.then237
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_irq.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_irq, %if.then265)) #10
          to label %do.end273 [label %if.then265], !srcloc !458

if.then265:                                       ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ip, align 4
  %name267 = getelementptr inbounds %struct.ipac_hw, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %name267 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name267, align 8
  %nr269 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %105 = ptrtoint ptr %nr269 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nr269, align 4
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 20
  %107 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_irq.__UNIQUE_ID_ddebug523, ptr noundef nonnull @.str.106, ptr noundef %104, i32 noundef %106, i32 noundef %108) #10
  br label %do.end273

do.end273:                                        ; preds = %if.then265, %do.body253
  %tx_idx275 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 20
  %109 = ptrtoint ptr %tx_idx275 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %tx_idx275, align 4
  tail call fastcc void @hscx_cmdr(ptr noundef %hx, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %do.end273, %if.end251, %if.end233.cleanup_crit_edge, %do.end181.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mISDNipac_init(ptr noundef %ipac, ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 3
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hw, ptr %hw1, align 4
  %debug = getelementptr inbounds %struct.dchannel, ptr %ipac, i32 0, i32 15
  %1 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 2
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  %type = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 6
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %4, i32 noundef %6) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %type2 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 6
  %7 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type2, align 8
  %and3 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.end.if.end56_crit_edge

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else:                                          ; preds = %if.end
  %and17 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else34, label %if.else.if.end56_crit_edge

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else34:                                        ; preds = %if.else
  %and36 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else34.cleanup_crit_edge, label %if.else34.if.end56_crit_edge

if.else34.if.end56_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %if.else34.if.end56_crit_edge, %if.else.if.end56_crit_edge, %if.end.if.end56_crit_edge
  %.sink181 = phi i32 [ 16, %if.end.if.end56_crit_edge ], [ 48, %if.else.if.end56_crit_edge ], [ 192, %if.else34.if.end56_crit_edge ]
  %.sink180 = phi i8 [ 0, %if.end.if.end56_crit_edge ], [ 0, %if.else.if.end56_crit_edge ], [ 112, %if.else34.if.end56_crit_edge ]
  %.sink179 = phi i8 [ 64, %if.end.if.end56_crit_edge ], [ 64, %if.else.if.end56_crit_edge ], [ -128, %if.else34.if.end56_crit_edge ]
  %.sink178 = phi i8 [ 32, %if.end.if.end56_crit_edge ], [ 64, %if.else.if.end56_crit_edge ], [ 64, %if.else34.if.end56_crit_edge ]
  %type21 = getelementptr inbounds %struct.isac_hw, ptr %ipac, i32 0, i32 1
  %9 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink181, ptr %type21, align 8
  %off24 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %off24 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink180, ptr %off24, align 1
  %off27 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 3
  %11 = ptrtoint ptr %off27 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink179, ptr %off27, align 1
  %fifo_size30 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %fifo_size30 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink178, ptr %fifo_size30, align 8
  %fifo_size33 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %fifo_size33 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink178, ptr %fifo_size33, align 4
  %call.i = tail call i32 @mISDN_initdchannel(ptr noundef %ipac, i32 noundef 300, ptr noundef nonnull @isac_ph_state_bh) #10
  %hw2.i = getelementptr inbounds %struct.dchannel, ptr %ipac, i32 0, i32 6
  %14 = ptrtoint ptr %hw2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %hw, ptr %hw2.i, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %ipac, i32 0, i32 7
  %15 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @isac_l1hw, ptr %send.i, align 8
  %init.i = getelementptr inbounds %struct.isac_hw, ptr %ipac, i32 0, i32 11
  %16 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @isac_init, ptr %init.i, align 8
  %release.i = getelementptr inbounds %struct.isac_hw, ptr %ipac, i32 0, i32 10
  %17 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @isac_release, ptr %release.i, align 4
  %ctrl.i = getelementptr inbounds %struct.isac_hw, ptr %ipac, i32 0, i32 12
  %18 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @isac_ctrl, ptr %ctrl.i, align 4
  %open.i = getelementptr inbounds %struct.isac_hw, ptr %ipac, i32 0, i32 13
  %19 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @open_dchannel, ptr %open.i, align 8
  %Dprotocols.i = getelementptr inbounds %struct.mISDNdevice, ptr %ipac, i32 0, i32 2
  %20 = ptrtoint ptr %Dprotocols.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %Dprotocols.i, align 8
  %nrbchan.i = getelementptr inbounds %struct.mISDNdevice, ptr %ipac, i32 0, i32 4
  %21 = ptrtoint ptr %nrbchan.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %nrbchan.i, align 8
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %ipac, i32 0, i32 9
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ipac_dctrl, ptr %ctrl, align 8
  %channelmap = getelementptr inbounds %struct.mISDNdevice, ptr %ipac, i32 0, i32 5
  %bchannels = getelementptr inbounds %struct.mISDNdevice, ptr %ipac, i32 0, i32 6
  %arrayidx64 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0
  %nr = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %nr, align 4
  %24 = ptrtoint ptr %channelmap to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %channelmap, align 1
  %conv1.i = or i8 %25, 2
  store i8 %conv1.i, ptr %channelmap, align 1
  %26 = ptrtoint ptr %bchannels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bchannels, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx64, ptr noundef %bchannels, ptr noundef %27) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end56.list_add.exit_crit_edge

if.end56.list_add.exit_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx64, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %arrayidx64, align 4
  %prev3.i.i = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %bchannels, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %bchannels to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx64, ptr %bchannels, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end56.list_add.exit_crit_edge
  %fifo_size84 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 2
  %32 = ptrtoint ptr %fifo_size84 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fifo_size84, align 4
  %conv85 = zext i8 %33 to i16
  %call86 = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx64, i16 noundef zeroext 2056, i16 noundef zeroext %conv85) #10
  %nr94 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %nr94 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %nr94, align 4
  %send = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 0, i32 0, i32 7
  %35 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @hscx_l2l1, ptr %send, align 4
  %ctrl105 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 0, i32 0, i32 9
  %36 = ptrtoint ptr %ctrl105 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @hscx_bctrl, ptr %ctrl105, align 4
  %hw110 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 0, i32 5
  %37 = ptrtoint ptr %hw110 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %hw, ptr %hw110, align 4
  %ip = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ipac, ptr %ip, align 4
  %slot = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 4
  %39 = ptrtoint ptr %slot to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 47, ptr %slot, align 2
  %arrayidx64.1 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1
  %nr.1 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %nr.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %nr.1, align 4
  %41 = ptrtoint ptr %channelmap to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %channelmap, align 1
  %conv1.i.1 = or i8 %42, 4
  store i8 %conv1.i.1, ptr %channelmap, align 1
  %43 = ptrtoint ptr %bchannels to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bchannels, align 4
  %call.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx64.1, ptr noundef %bchannels, ptr noundef %44) #10
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add.exit.list_add.exit.1_crit_edge

list_add.exit.list_add.exit.1_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.1

if.end.i.i.1:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.1 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx64.1, ptr %prev1.i.i.1, align 4
  %46 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %arrayidx64.1, align 4
  %prev3.i.i.1 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %bchannels, ptr %prev3.i.i.1, align 4
  %48 = ptrtoint ptr %bchannels to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %arrayidx64.1, ptr %bchannels, align 4
  br label %list_add.exit.1

list_add.exit.1:                                  ; preds = %if.end.i.i.1, %list_add.exit.list_add.exit.1_crit_edge
  %fifo_size84.1 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 2
  %49 = ptrtoint ptr %fifo_size84.1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fifo_size84.1, align 4
  %conv85.1 = zext i8 %50 to i16
  %call86.1 = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx64.1, i16 noundef zeroext 2056, i16 noundef zeroext %conv85.1) #10
  %nr94.1 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2
  %51 = ptrtoint ptr %nr94.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %nr94.1, align 4
  %send.1 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 0, i32 0, i32 7
  %52 = ptrtoint ptr %send.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @hscx_l2l1, ptr %send.1, align 4
  %ctrl105.1 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 0, i32 0, i32 9
  %53 = ptrtoint ptr %ctrl105.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @hscx_bctrl, ptr %ctrl105.1, align 4
  %hw110.1 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 0, i32 5
  %54 = ptrtoint ptr %hw110.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %hw, ptr %hw110.1, align 4
  %ip.1 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 1
  %55 = ptrtoint ptr %ip.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ipac, ptr %ip.1, align 4
  %slot.1 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1, i32 4
  %56 = ptrtoint ptr %slot.1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %slot.1, align 2
  %init = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 12
  %57 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ipac_init, ptr %init, align 8
  %release = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 11
  %58 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @free_ipac, ptr %release, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.1, %if.else34.cleanup_crit_edge
  %retval.0 = phi i32 [ 6, %list_add.exit.1 ], [ 0, %if.else34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipac_dctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_dctrl.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_dctrl, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !458

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.ipac_hw, ptr %ch, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_dctrl.__UNIQUE_ID_ddebug535, ptr noundef nonnull @.str.131, ptr noundef %1, i32 noundef %cmd, ptr noundef %arg) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %cmd, label %do.body51 [
    i32 256, label %sw.bb
    i32 512, label %do.body30
    i32 768, label %sw.bb49
  ]

sw.bb:                                            ; preds = %do.end
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.end16, label %if.else

if.else:                                          ; preds = %sw.bb
  %channel.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %channel.i, align 1
  %7 = add i8 %6, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %7)
  %8 = icmp ult i8 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7.i = icmp eq i32 %4, 0
  %or.cond = select i1 %8, i1 true, i1 %cmp7.i
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.end10.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.else
  %conv.i = zext i8 %6 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.ipac_hw, ptr %ch, i32 0, i32 1, i32 %sub.i
  %Flags.i = getelementptr inbounds %struct.bchannel, ptr %arrayidx.i, i32 0, i32 2
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %Flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end16.thread102, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.thread102:                               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %Flags.i) #10
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arg, align 4
  %protocol20.i = getelementptr inbounds %struct.mISDNchannel, ptr %arrayidx.i, i32 0, i32 1
  %11 = ptrtoint ptr %protocol20.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %protocol20.i, align 4
  %ch22.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %12 = ptrtoint ptr %ch22.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %ch22.i, align 4
  br label %if.end19

if.end16:                                         ; preds = %sw.bb
  %13 = tail call ptr @llvm.returnaddress(i32 0)
  %call14 = tail call fastcc i32 @open_dchannel_caller(ptr noundef %ch, ptr noundef %arg, ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool17.not = icmp eq i32 %call14, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %if.end16.if.end19_crit_edge, %if.end16.thread102
  %owner = getelementptr inbounds %struct.ipac_hw, ptr %ch, i32 0, i32 5
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner, align 4
  %call20 = tail call zeroext i1 @try_module_get(ptr noundef %15) #10
  br i1 %call20, label %if.end19.cleanup_crit_edge, label %do.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %name26 = getelementptr inbounds %struct.ipac_hw, ptr %ch, i32 0, i32 2
  %16 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name26, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %17) #13
  br label %cleanup

do.body30:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_dctrl.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_dctrl, %if.then42)) #10
          to label %do.end47 [label %if.then42], !srcloc !458

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %name43 = getelementptr inbounds %struct.ipac_hw, ptr %ch, i32 0, i32 2
  %18 = ptrtoint ptr %name43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name43, align 8
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %ch, i32 0, i32 1
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %22 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_dctrl.__UNIQUE_ID_ddebug536, ptr noundef nonnull @.str.133, ptr noundef %19, i32 noundef %21, ptr noundef %22) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %do.body30
  %owner48 = getelementptr inbounds %struct.ipac_hw, ptr %ch, i32 0, i32 5
  %23 = ptrtoint ptr %owner48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %owner48, align 4
  tail call void @module_put(ptr noundef %24) #10
  br label %cleanup

sw.bb49:                                          ; preds = %do.end
  %25 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arg, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %26, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2048, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2049, ptr %arg, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb49
  %channel.i96 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 1
  %29 = ptrtoint ptr %channel.i96 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %31 = icmp ugt i32 %30, 3
  br i1 %31, label %sw.bb2.i.cleanup_crit_edge, label %if.end.i98

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i98:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl.i = getelementptr inbounds %struct.ipac_hw, ptr %ch, i32 0, i32 13
  %32 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl.i, align 4
  %call.i97 = tail call i32 %33(ptr noundef %ch, i32 noundef 38146, i32 noundef %30) #10
  br label %cleanup

sw.bb6.i:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl7.i = getelementptr inbounds %struct.isac_hw, ptr %ch, i32 0, i32 12
  %34 = ptrtoint ptr %ctrl7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl7.i, align 4
  %p1.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 2
  %36 = ptrtoint ptr %p1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p1.i, align 4
  %call9.i = tail call i32 %35(ptr noundef %ch, i32 noundef 39424, i32 noundef %37) #10
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.ipac_hw, ptr %ch, i32 0, i32 2
  %38 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name.i, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %39, i32 noundef %26) #13
  br label %cleanup

do.body51:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_dctrl.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_dctrl, %if.then63)) #10
          to label %cleanup [label %if.then63], !srcloc !458

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %name64 = getelementptr inbounds %struct.ipac_hw, ptr %ch, i32 0, i32 2
  %40 = ptrtoint ptr %name64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name64, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_dctrl.__UNIQUE_ID_ddebug537, ptr noundef nonnull @.str.134, ptr noundef %41, i32 noundef %cmd) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.body51, %do.end.i, %sw.bb6.i, %if.end.i98, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i, %do.end47, %do.end24, %if.end19.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then63 ], [ 0, %do.end47 ], [ %call14, %if.end16.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %do.end24 ], [ -22, %do.end.i ], [ %call9.i, %sw.bb6.i ], [ %call.i97, %if.end.i98 ], [ 0, %sw.bb.i ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -22, %do.body51 ], [ -16, %if.end10.i.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initbchannel(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hscx_l2l1(ptr noundef %ch, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cb, align 1
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %1, label %do.end60 [
    i32 8193, label %do.body4
    i32 257, label %do.body16
    i32 513, label %do.body41
  ]

do.body4:                                         ; preds = %entry
  %ip = getelementptr inbounds %struct.hscx_hw, ptr %ch, i32 0, i32 1
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip, align 4
  %hwlock = getelementptr inbounds %struct.ipac_hw, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwlock, align 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  %call9 = tail call i32 @bchannel_senddata(ptr noundef %ch, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %do.body4.if.end_crit_edge

do.body4.if.end_crit_edge:                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hscx_fill_fifo(ptr noundef %ch)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body4.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %call9, %do.body4.if.end_crit_edge ]
  %7 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ip, align 4
  %hwlock13 = getelementptr inbounds %struct.ipac_hw, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %hwlock13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwlock13, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call6) #10
  br label %cleanup

do.body16:                                        ; preds = %entry
  %ip22 = getelementptr inbounds %struct.hscx_hw, ptr %ch, i32 0, i32 1
  %11 = ptrtoint ptr %ip22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ip22, align 4
  %hwlock23 = getelementptr inbounds %struct.ipac_hw, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %hwlock23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwlock23, align 8
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #10
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call30 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %if.then31, label %do.body16.if.end33_crit_edge

do.body16.if.end33_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then31:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %protocol, align 4
  %call32 = tail call fastcc i32 @hscx_mode(ptr noundef %ch, i32 noundef %16)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %do.body16.if.end33_crit_edge
  %ret.1 = phi i32 [ %call32, %if.then31 ], [ 0, %do.body16.if.end33_crit_edge ]
  %17 = ptrtoint ptr %ip22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ip22, align 4
  %hwlock35 = getelementptr inbounds %struct.ipac_hw, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %hwlock35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwlock35, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool36.not = icmp eq i32 %ret.1, 0
  br i1 %tobool36.not, label %if.then37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %if.end33
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %21 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then37.if.then66_crit_edge, label %if.end.i

if.then37.if.then66_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.end.i:                                         ; preds = %if.then37
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.then66_crit_edge, label %if.end3.i, !prof !457

if.end.i.if.then66_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %26, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %29 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %recv.i, align 4
  %31 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %30(ptr noundef %32, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.if.then66_crit_edge, label %if.end3.i.if.then66.sink.split_crit_edge

if.end3.i.if.then66.sink.split_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66.sink.split

if.end3.i.if.then66_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

do.body41:                                        ; preds = %entry
  %ip47 = getelementptr inbounds %struct.hscx_hw, ptr %ch, i32 0, i32 1
  %33 = ptrtoint ptr %ip47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ip47, align 4
  %hwlock48 = getelementptr inbounds %struct.ipac_hw, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %hwlock48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hwlock48, align 8
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #10
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #10
  %call55 = tail call fastcc i32 @hscx_mode(ptr noundef %ch, i32 noundef 0)
  %37 = ptrtoint ptr %ip47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ip47, align 4
  %hwlock57 = getelementptr inbounds %struct.ipac_hw, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %hwlock57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hwlock57, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %call50) #10
  %peer.i97 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %41 = ptrtoint ptr %peer.i97 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %peer.i97, align 4
  %tobool.not.i98 = icmp eq ptr %42, null
  br i1 %tobool.not.i98, label %do.body41.if.then66_crit_edge, label %if.end.i101

do.body41.if.then66_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.end.i101:                                      ; preds = %do.body41
  %call.i.i.i.i99 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i100 = icmp eq ptr %call.i.i.i.i99, null
  br i1 %tobool.not.i.i.i100, label %if.end.i101.if.then66_crit_edge, label %if.end3.i111, !prof !457

if.end.i101.if.then66_crit_edge:                  ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.end3.i111:                                     ; preds = %if.end.i101
  %data.i.i.i.i102 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i99, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i.i102, align 4
  %add.ptr.i.i.i.i103 = getelementptr i8, ptr %44, i32 8
  store ptr %add.ptr.i.i.i.i103, ptr %data.i.i.i.i102, align 4
  %tail.i.i.i.i104 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i99, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i.i104, align 8
  %add.ptr1.i.i.i.i105 = getelementptr i8, ptr %46, i32 8
  store ptr %add.ptr1.i.i.i.i105, ptr %tail.i.i.i.i104, align 8
  %cb.i.i106 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i99, i32 0, i32 3
  %47 = ptrtoint ptr %cb.i.i106 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 514, ptr %cb.i.i106, align 1
  %id6.i.i107 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i99, i32 0, i32 3, i32 4
  %48 = ptrtoint ptr %id6.i.i107 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 65535, ptr %id6.i.i107, align 1
  %recv.i108 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %49 = ptrtoint ptr %recv.i108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %recv.i108, align 4
  %51 = ptrtoint ptr %peer.i97 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %peer.i97, align 4
  %call5.i109 = tail call i32 %50(ptr noundef %52, ptr noundef nonnull %call.i.i.i.i99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i109)
  %tobool6.not.i110 = icmp eq i32 %call5.i109, 0
  br i1 %tobool6.not.i110, label %if.end3.i111.if.then66_crit_edge, label %if.end3.i111.if.then66.sink.split_crit_edge

if.end3.i111.if.then66.sink.split_crit_edge:      ; preds = %if.end3.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66.sink.split

if.end3.i111.if.then66_crit_edge:                 ; preds = %if.end3.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

do.end60:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ip62 = getelementptr inbounds %struct.hscx_hw, ptr %ch, i32 0, i32 1
  %53 = ptrtoint ptr %ip62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ip62, align 4
  %name = getelementptr inbounds %struct.ipac_hw, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name, align 8
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %id, align 1
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %56, ptr noundef nonnull @.str.138, i32 noundef %1, i32 noundef %58) #13
  br label %cleanup

if.then66.sink.split:                             ; preds = %if.end3.i111.if.then66.sink.split_crit_edge, %if.end3.i.if.then66.sink.split_crit_edge
  %call.i.i.i.i.sink = phi ptr [ %call.i.i.i.i, %if.end3.i.if.then66.sink.split_crit_edge ], [ %call.i.i.i.i99, %if.end3.i111.if.then66.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.sink) #10
  br label %if.then66

if.then66:                                        ; preds = %if.then66.sink.split, %if.end3.i111.if.then66_crit_edge, %if.end.i101.if.then66_crit_edge, %do.body41.if.then66_crit_edge, %if.end3.i.if.then66_crit_edge, %if.end.i.if.then66_crit_edge, %if.then37.if.then66_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %do.end60, %if.end33.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ 0, %if.then66 ], [ -22, %do.end60 ], [ %ret.1, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hscx_bctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hscx_bctrl.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hscx_bctrl, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !458

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ip = getelementptr inbounds %struct.hscx_hw, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %name = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hscx_bctrl.__UNIQUE_ID_ddebug532, ptr noundef nonnull @.str.147, ptr noundef %3, ptr noundef nonnull @.str.146, i32 noundef %cmd, ptr noundef %arg) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %cmd, label %do.end27 [
    i32 512, label %sw.bb
    i32 768, label %sw.bb23
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %Flags) #10
  %workq = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 3
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %workq) #10
  %ip12 = getelementptr inbounds %struct.hscx_hw, ptr %ch, i32 0, i32 1
  %5 = ptrtoint ptr %ip12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip12, align 4
  %hwlock = getelementptr inbounds %struct.ipac_hw, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwlock, align 8
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #10
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #10
  %call19 = tail call fastcc i32 @hscx_mode(ptr noundef %ch, i32 noundef 0)
  %9 = ptrtoint ptr %ip12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ip12, align 4
  %hwlock21 = getelementptr inbounds %struct.ipac_hw, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %hwlock21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwlock21, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call14) #10
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %protocol, align 4
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %14 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %peer, align 4
  %15 = ptrtoint ptr %ip12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ip12, align 4
  %owner = getelementptr inbounds %struct.ipac_hw, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %18) #10
  br label %sw.epilog

sw.bb23:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @mISDN_ctrl_bchannel(ptr noundef %ch, ptr noundef %arg) #10
  br label %sw.epilog

do.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %ip29 = getelementptr inbounds %struct.hscx_hw, ptr %ch, i32 0, i32 1
  %19 = ptrtoint ptr %ip29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ip29, align 4
  %name30 = getelementptr inbounds %struct.ipac_hw, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %name30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name30, align 8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %22, ptr noundef nonnull @.str.146, i32 noundef %cmd) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end27, %sw.bb23, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end27 ], [ %call.i, %sw.bb23 ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipac_init(ptr noundef %ipac) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hscx = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 1
  tail call fastcc void @hscx_init(ptr noundef %hscx)
  %arrayidx2 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1
  tail call fastcc void @hscx_init(ptr noundef %arrayidx2)
  %read_reg = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 7
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 4
  %hw = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 3
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %call = tail call zeroext i8 %3(ptr noundef %5, i8 noundef zeroext -62) #10
  br label %if.end41

if.else:                                          ; preds = %entry
  %and4 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end41_crit_edge, label %if.then6

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then6:                                         ; preds = %if.else
  %hscx7 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 1
  tail call fastcc void @hscx_init(ptr noundef %hscx7)
  %arrayidx10 = getelementptr %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 1
  tail call fastcc void @hscx_init(ptr noundef %arrayidx10)
  %write_reg = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 8
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 8
  %hw11 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 3
  %8 = ptrtoint ptr %hw11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw11, align 4
  tail call void %7(ptr noundef %9, i8 noundef zeroext -63, i8 noundef zeroext -64) #10
  %read_reg12 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 7
  %10 = ptrtoint ptr %read_reg12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg12, align 4
  %12 = ptrtoint ptr %hw11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw11, align 4
  %call14 = tail call zeroext i8 %11(ptr noundef %13, i8 noundef zeroext -64) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_init.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_init, %if.then19)) #10
          to label %do.end [label %if.then19], !srcloc !458

if.then19:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 2
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  %conv = zext i8 %call14 to i32
  %conf = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 14
  %16 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %conf, align 8
  %conv20 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_init.__UNIQUE_ID_ddebug534, ptr noundef nonnull @.str.150, ptr noundef %15, i32 noundef %conv, i32 noundef %conv20) #10
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.then6
  %18 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg, align 8
  %20 = ptrtoint ptr %hw11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw11, align 4
  %conf23 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 14
  %22 = ptrtoint ptr %conf23 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %conf23, align 8
  tail call void %19(ptr noundef %21, i8 noundef zeroext -64, i8 noundef zeroext %23) #10
  %24 = ptrtoint ptr %read_reg12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg12, align 4
  %26 = ptrtoint ptr %hw11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw11, align 4
  %call26 = tail call zeroext i8 %25(ptr noundef %27, i8 noundef zeroext -62) #10
  %debug = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 1, i32 0, i32 0, i32 21
  %28 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug, align 8
  %and29 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end.if.end41_crit_edge, label %do.end34

do.end.if.end41_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end34:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %name36 = getelementptr inbounds %struct.ipac_hw, ptr %ipac, i32 0, i32 2
  %30 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name36, align 8
  %conv37 = zext i8 %call26 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %31, i32 noundef %conv37) #13
  br label %if.end41

if.end41:                                         ; preds = %do.end34, %do.end.if.end41_crit_edge, %if.else.if.end41_crit_edge, %if.then
  %call42 = tail call i32 @isac_init(ptr noundef %ipac)
  ret i32 %call42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_ipac(ptr noundef %ipac) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @isac_release(ptr noundef %ipac)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isac_mod_cleanup() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isac_mod_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.2) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isac_fill_fifo(ptr noundef %isac) unnamed_addr #1 align 64 {
entry:
  %pfx = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 13
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %tx_idx = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 14
  %4 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_idx, align 8
  %sub = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp6 = icmp ugt i32 %sub, 32
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_fill_fifo.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_fill_fifo, %if.then12)) #10
          to label %do.end [label %if.then12], !srcloc !458

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_fill_fifo.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.34, ptr noundef %8, ptr noundef nonnull @.str.33, i32 noundef %6) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end5
  %9 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_idx, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %add = add i32 %14, %6
  store i32 %add, ptr %tx_idx, align 8
  %write_fifo = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 8
  %15 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_fifo, align 4
  %hw = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 6
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 2
  %19 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %off, align 4
  %conv = trunc i32 %20 to i8
  tail call void %16(ptr noundef %18, i8 noundef zeroext %conv, ptr noundef %add.ptr, i32 noundef %6) #10
  %write_reg = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 6
  %21 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg, align 4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %25 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %off, align 4
  %27 = trunc i32 %26 to i8
  %conv25 = add i8 %27, 33
  %conv27 = select i1 %cmp6, i8 8, i8 10
  tail call void %22(ptr noundef %24, i8 noundef zeroext %conv25, i8 noundef zeroext %conv27) #10
  %Flags = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 1
  %call29 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %Flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end.if.end51_crit_edge, label %do.body32

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.body32:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_fill_fifo.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_fill_fifo, %if.then44)) #10
          to label %do.end48 [label %if.then44], !srcloc !458

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %name45 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %28 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name45, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_fill_fifo.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.35, ptr noundef %29, ptr noundef nonnull @.str.33) #10
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %do.body32
  %timer = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 8
  %call50 = tail call i32 @del_timer(ptr noundef %timer) #10
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %do.end.if.end51_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add52 = add i32 %30, 8
  %timer54 = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 8
  %expires = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add52, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer54) #10
  %debug = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 15
  %32 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug, align 4
  %and = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %if.end51.cleanup_crit_edge, label %if.then59

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then59:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pfx) #10
  %34 = call ptr @memset(ptr %pfx, i32 255, i32 36)
  %name60 = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %35 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name60, align 8
  %call61 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pfx, i32 noundef 35, ptr noundef nonnull @.str.36, ptr noundef %36, i32 noundef %6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_fill_fifo.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_fill_fifo, %if.then74)) #10
          to label %do.end78 [label %if.then74], !srcloc !458

if.then74:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  call void @print_hex_dump(ptr noundef nonnull @.str.38, ptr noundef nonnull %pfx, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %6, i1 noundef zeroext true) #10
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %if.then59
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pfx) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end51.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_dframe(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Dchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l1_event(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_ch_frame(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_l1(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isac_l1cmd(ptr noundef %dch, i32 noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_l1cmd.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_l1cmd, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !458

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %state = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 26
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_l1cmd.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.89, ptr noundef %1, i32 noundef %cmd, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %cmd, label %do.body109 [
    i32 33538, label %do.body5
    i32 33794, label %do.body17
    i32 35330, label %do.body33
    i32 35842, label %sw.bb67
    i32 35586, label %do.body87
    i32 258, label %sw.bb101
    i32 514, label %sw.bb104
  ]

do.body5:                                         ; preds = %do.end
  %hwlock = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 4
  %5 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwlock, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_l1cmd, %if.then.i)) #10
          to label %ph_command.exit [label %if.then.i], !srcloc !458

if.then.i:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 3
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %8, i32 noundef 8) #10
  br label %ph_command.exit

ph_command.exit:                                  ; preds = %if.then.i, %do.body5
  %type.i = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 8
  %and.i = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %write_reg8.i = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 6
  %11 = ptrtoint ptr %write_reg8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg8.i, align 4
  %hw10.i = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %13 = ptrtoint ptr %hw10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw10.i, align 4
  %off11.i = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 2
  %15 = ptrtoint ptr %off11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %off11.i, align 4
  %17 = trunc i32 %16 to i8
  %..i = select i1 %tobool3.not.i, i8 49, i8 46
  %conv13.i = add i8 %..i, %17
  %or16.i = select i1 %tobool3.not.i, i8 35, i8 -114
  tail call void %12(ptr noundef %14, i8 noundef zeroext %conv13.i, i8 noundef zeroext %or16.i) #10
  %18 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call9) #10
  br label %cleanup

do.body17:                                        ; preds = %do.end
  %hwlock23 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 4
  %20 = ptrtoint ptr %hwlock23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwlock23, align 4
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_l1cmd, %if.then.i173)) #10
          to label %ph_command.exit186 [label %if.then.i173], !srcloc !458

if.then.i173:                                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %name.i172 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 3
  %22 = ptrtoint ptr %name.i172 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i172, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %23, i32 noundef 9) #10
  br label %ph_command.exit186

ph_command.exit186:                               ; preds = %if.then.i173, %do.body17
  %type.i174 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 1
  %24 = ptrtoint ptr %type.i174 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i174, align 8
  %and.i175 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool3.not.i176 = icmp eq i32 %and.i175, 0
  %write_reg8.i177 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 6
  %26 = ptrtoint ptr %write_reg8.i177 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg8.i177, align 4
  %hw10.i178 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %28 = ptrtoint ptr %hw10.i178 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw10.i178, align 4
  %off11.i179 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 2
  %30 = ptrtoint ptr %off11.i179 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %off11.i179, align 4
  %32 = trunc i32 %31 to i8
  %..i180 = select i1 %tobool3.not.i176, i8 49, i8 46
  %conv13.i183 = add i8 %..i180, %32
  %or16.i185 = select i1 %tobool3.not.i176, i8 39, i8 -98
  tail call void %27(ptr noundef %29, i8 noundef zeroext %conv13.i183, i8 noundef zeroext %or16.i185) #10
  %33 = ptrtoint ptr %hwlock23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwlock23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %call25) #10
  br label %cleanup

do.body33:                                        ; preds = %do.end
  %hwlock39 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 4
  %35 = ptrtoint ptr %hwlock39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hwlock39, align 4
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #10
  %state46 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 26
  %37 = ptrtoint ptr %state46 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %state46, align 4
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.184)
  switch i8 %38, label %if.else [
    i8 6, label %do.body33.if.then64_crit_edge
    i8 0, label %do.body33.if.then64_crit_edge247
    i8 5, label %do.body33.if.then64_crit_edge248
    i8 1, label %do.body33.if.then64_crit_edge249
  ]

do.body33.if.then64_crit_edge249:                 ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

do.body33.if.then64_crit_edge248:                 ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

do.body33.if.then64_crit_edge247:                 ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

do.body33.if.then64_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %do.body33.if.then64_crit_edge, %do.body33.if.then64_crit_edge247, %do.body33.if.then64_crit_edge248, %do.body33.if.then64_crit_edge249
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_l1cmd, %if.then.i188)) #10
          to label %ph_command.exit199 [label %if.then.i188], !srcloc !458

if.then.i188:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %name.i187 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 3
  %40 = ptrtoint ptr %name.i187 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name.i187, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %41, i32 noundef 0) #10
  br label %ph_command.exit199

ph_command.exit199:                               ; preds = %if.then.i188, %if.then64
  %type.i189 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 1
  %42 = ptrtoint ptr %type.i189 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type.i189, align 8
  %and.i190 = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %tobool3.not.i191 = icmp eq i32 %and.i190, 0
  %write_reg8.i192 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 6
  %44 = ptrtoint ptr %write_reg8.i192 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_reg8.i192, align 4
  %hw10.i193 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %46 = ptrtoint ptr %hw10.i193 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw10.i193, align 4
  %off11.i194 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 2
  %48 = ptrtoint ptr %off11.i194 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %off11.i194, align 4
  %50 = trunc i32 %49 to i8
  %..i195 = select i1 %tobool3.not.i191, i8 49, i8 46
  %.32.i197 = select i1 %tobool3.not.i191, i8 3, i8 14
  %conv13.i198 = add i8 %..i195, %50
  tail call void %45(ptr noundef %47, i8 noundef zeroext %conv13.i198, i8 noundef zeroext %.32.i197) #10
  br label %if.end65

if.else:                                          ; preds = %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_l1cmd, %if.then.i201)) #10
          to label %ph_command.exit214 [label %if.then.i201], !srcloc !458

if.then.i201:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name.i200 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 3
  %51 = ptrtoint ptr %name.i200 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name.i200, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %52, i32 noundef 1) #10
  br label %ph_command.exit214

ph_command.exit214:                               ; preds = %if.then.i201, %if.else
  %type.i202 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 1
  %53 = ptrtoint ptr %type.i202 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type.i202, align 8
  %and.i203 = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i203)
  %tobool3.not.i204 = icmp eq i32 %and.i203, 0
  %write_reg8.i205 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 6
  %55 = ptrtoint ptr %write_reg8.i205 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg8.i205, align 4
  %hw10.i206 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %57 = ptrtoint ptr %hw10.i206 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw10.i206, align 4
  %off11.i207 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 2
  %59 = ptrtoint ptr %off11.i207 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %off11.i207, align 4
  %61 = trunc i32 %60 to i8
  %..i208 = select i1 %tobool3.not.i204, i8 49, i8 46
  %conv13.i211 = add i8 %..i208, %61
  %or16.i213 = select i1 %tobool3.not.i204, i8 7, i8 30
  tail call void %56(ptr noundef %58, i8 noundef zeroext %conv13.i211, i8 noundef zeroext %or16.i213) #10
  br label %if.end65

if.end65:                                         ; preds = %ph_command.exit214, %ph_command.exit199
  %62 = ptrtoint ptr %hwlock39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hwlock39, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %63, i32 noundef %call41) #10
  br label %cleanup

sw.bb67:                                          ; preds = %do.end
  %squeue = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 11
  tail call void @skb_queue_purge(ptr noundef %squeue) #10
  %tx_skb = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 13
  %64 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_skb, align 4
  %tobool68.not = icmp eq ptr %65, null
  br i1 %tobool68.not, label %sw.bb67.if.end72_crit_edge, label %if.then69

sw.bb67.if.end72_crit_edge:                       ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then69:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %65) #10
  %66 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %sw.bb67.if.end72_crit_edge
  %tx_idx = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 14
  %67 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %tx_idx, align 8
  %rx_skb = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 9
  %68 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_skb, align 4
  %tobool73.not = icmp eq ptr %69, null
  br i1 %tobool73.not, label %if.end72.if.end77_crit_edge, label %if.then74

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %69) #10
  %70 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %rx_skb, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end72.if.end77_crit_edge
  %Flags = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call78 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %Flags) #10
  %call80 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end77.cleanup_crit_edge, label %if.then82

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %timer = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 8
  %call83 = tail call i32 @del_timer(ptr noundef %timer) #10
  br label %cleanup

do.body87:                                        ; preds = %do.end
  %hwlock93 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 4
  %71 = ptrtoint ptr %hwlock93 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hwlock93, align 4
  %call95 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %72) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_l1cmd, %if.then.i216)) #10
          to label %ph_command.exit227 [label %if.then.i216], !srcloc !458

if.then.i216:                                     ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  %name.i215 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 3
  %73 = ptrtoint ptr %name.i215 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name.i215, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.27, ptr noundef %74, i32 noundef 0) #10
  br label %ph_command.exit227

ph_command.exit227:                               ; preds = %if.then.i216, %do.body87
  %type.i217 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 1
  %75 = ptrtoint ptr %type.i217 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %type.i217, align 8
  %and.i218 = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i218)
  %tobool3.not.i219 = icmp eq i32 %and.i218, 0
  %write_reg8.i220 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 6
  %77 = ptrtoint ptr %write_reg8.i220 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_reg8.i220, align 4
  %hw10.i221 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %79 = ptrtoint ptr %hw10.i221 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw10.i221, align 4
  %off11.i222 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 2
  %81 = ptrtoint ptr %off11.i222 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %off11.i222, align 4
  %83 = trunc i32 %82 to i8
  %..i223 = select i1 %tobool3.not.i219, i8 49, i8 46
  %.32.i225 = select i1 %tobool3.not.i219, i8 3, i8 14
  %conv13.i226 = add i8 %..i223, %83
  tail call void %78(ptr noundef %80, i8 noundef zeroext %conv13.i226, i8 noundef zeroext %.32.i225) #10
  %84 = ptrtoint ptr %hwlock93 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hwlock93, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %85, i32 noundef %call95) #10
  br label %cleanup

sw.bb101:                                         ; preds = %do.end
  %Flags102 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call103 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags102) #10
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %86 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %87, null
  br i1 %tobool.not.i, label %sw.bb101.cleanup_crit_edge, label %if.end.i

sw.bb101.cleanup_crit_edge:                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb101
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i, !prof !457

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %88 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %89, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %90 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %91, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %93 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %94 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %recv.i, align 4
  %96 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %95(ptr noundef %97, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.cleanup_crit_edge, label %if.then7.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #10
  br label %cleanup

sw.bb104:                                         ; preds = %do.end
  %Flags105 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call106 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags105) #10
  %peer.i228 = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %98 = ptrtoint ptr %peer.i228 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %peer.i228, align 4
  %tobool.not.i229 = icmp eq ptr %99, null
  br i1 %tobool.not.i229, label %sw.bb104.cleanup_crit_edge, label %if.end.i232

sw.bb104.cleanup_crit_edge:                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i232:                                      ; preds = %sw.bb104
  %call.i.i.i.i230 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i231 = icmp eq ptr %call.i.i.i.i230, null
  br i1 %tobool.not.i.i.i231, label %if.end.i232.cleanup_crit_edge, label %if.end3.i242, !prof !457

if.end.i232.cleanup_crit_edge:                    ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i242:                                     ; preds = %if.end.i232
  %data.i.i.i.i233 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i230, i32 0, i32 19
  %100 = ptrtoint ptr %data.i.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i.i.i233, align 4
  %add.ptr.i.i.i.i234 = getelementptr i8, ptr %101, i32 8
  store ptr %add.ptr.i.i.i.i234, ptr %data.i.i.i.i233, align 4
  %tail.i.i.i.i235 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i230, i32 0, i32 16
  %102 = ptrtoint ptr %tail.i.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tail.i.i.i.i235, align 8
  %add.ptr1.i.i.i.i236 = getelementptr i8, ptr %103, i32 8
  store ptr %add.ptr1.i.i.i.i236, ptr %tail.i.i.i.i235, align 8
  %cb.i.i237 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i230, i32 0, i32 3
  %104 = ptrtoint ptr %cb.i.i237 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 514, ptr %cb.i.i237, align 1
  %id6.i.i238 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i230, i32 0, i32 3, i32 4
  %105 = ptrtoint ptr %id6.i.i238 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 65535, ptr %id6.i.i238, align 1
  %recv.i239 = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %106 = ptrtoint ptr %recv.i239 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %recv.i239, align 4
  %108 = ptrtoint ptr %peer.i228 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %peer.i228, align 4
  %call5.i240 = tail call i32 %107(ptr noundef %109, ptr noundef nonnull %call.i.i.i.i230) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i240)
  %tobool6.not.i241 = icmp eq i32 %call5.i240, 0
  br i1 %tobool6.not.i241, label %if.end3.i242.cleanup_crit_edge, label %if.then7.i243

if.end3.i242.cleanup_crit_edge:                   ; preds = %if.end3.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.i243:                                    ; preds = %if.end3.i242
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i230) #10
  br label %cleanup

do.body109:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isac_l1cmd.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isac_l1cmd, %if.then121)) #10
          to label %cleanup [label %if.then121], !srcloc !458

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #12
  %name122 = getelementptr inbounds %struct.isac_hw, ptr %dch, i32 0, i32 3
  %110 = ptrtoint ptr %name122 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name122, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @isac_l1cmd.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.90, ptr noundef %111, ptr noundef nonnull @.str.88, i32 noundef %cmd) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %do.body109, %if.then7.i243, %if.end3.i242.cleanup_crit_edge, %if.end.i232.cleanup_crit_edge, %sw.bb104.cleanup_crit_edge, %if.then7.i, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb101.cleanup_crit_edge, %ph_command.exit227, %if.then82, %if.end77.cleanup_crit_edge, %if.end65, %ph_command.exit186, %ph_command.exit
  %retval.0 = phi i32 [ -1, %if.then121 ], [ 0, %if.end77.cleanup_crit_edge ], [ 0, %if.then82 ], [ 0, %ph_command.exit227 ], [ 0, %if.end65 ], [ 0, %ph_command.exit186 ], [ 0, %ph_command.exit ], [ 0, %sw.bb101.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ], [ 0, %if.then7.i ], [ 0, %sw.bb104.cleanup_crit_edge ], [ 0, %if.end.i232.cleanup_crit_edge ], [ 0, %if.end3.i242.cleanup_crit_edge ], [ 0, %if.then7.i243 ], [ -1, %do.body109 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbusy_timer_handler(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %Flags = getelementptr i8, ptr %t, i32 -68
  %0 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %Flags, align 4
  %2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end56_crit_edge, label %do.body1

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

do.body1:                                         ; preds = %entry
  %hwlock = getelementptr i8, ptr %t, i32 208
  %3 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwlock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %read_reg = getelementptr i8, ptr %t, i32 212
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 8
  %hw = getelementptr i8, ptr %t, i32 -8
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %off = getelementptr i8, ptr %t, i32 200
  %9 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %off, align 4
  %11 = trunc i32 %10 to i8
  %conv8 = add i8 %11, 42
  %call9 = tail call zeroext i8 %6(ptr noundef %8, i8 noundef zeroext %conv8) #10
  %conv10 = zext i8 %call9 to i32
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 8
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %16 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %off, align 4
  %18 = trunc i32 %17 to i8
  %conv16 = add i8 %18, 33
  %call17 = tail call zeroext i8 %13(ptr noundef %15, i8 noundef zeroext %conv16) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbusy_timer_handler.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbusy_timer_handler, %if.then25)) #10
          to label %do.end27 [label %if.then25], !srcloc !458

if.then25:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %conv18 = zext i8 %call17 to i32
  %name = getelementptr i8, ptr %t, i32 204
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dbusy_timer_handler.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.92, ptr noundef %20, i32 noundef %conv10, i32 noundef %conv18) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then25, %do.body1
  %and = and i32 %conv10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %Flags) #10
  br label %if.end54

if.else:                                          ; preds = %do.end27
  %call35 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags) #10
  %tx_idx = getelementptr i8, ptr %t, i32 172
  %21 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37.not = icmp eq i32 %22, 0
  br i1 %tobool37.not, label %do.end44, label %if.then38

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tx_idx, align 8
  br label %if.end48

do.end44:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name46 = getelementptr i8, ptr %t, i32 204
  %24 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name46, align 8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %25) #13
  br label %if.end48

if.end48:                                         ; preds = %do.end44, %if.then38
  %write_reg = getelementptr i8, ptr %t, i32 216
  %26 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg, align 4
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %30 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %off, align 4
  %32 = trunc i32 %31 to i8
  %conv53 = add i8 %32, 33
  tail call void %27(ptr noundef %29, i8 noundef zeroext %conv53, i8 noundef zeroext 1) #10
  br label %if.end54

if.end54:                                         ; preds = %if.end48, %if.then29
  %33 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %call4) #10
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %entry.if.end56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_freedchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @open_dchannel_caller(ptr noundef %isac, ptr nocapture noundef %rq, ptr noundef %caller) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @open_dchannel_caller.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@open_dchannel_caller, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !458

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.isac_hw, ptr %isac, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %isac, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @open_dchannel_caller.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.101, ptr noundef %1, ptr noundef nonnull @.str.100, i32 noundef %3, ptr noundef %caller) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end4, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end4:                                          ; preds = %do.end
  %channel = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp5 = icmp eq i8 %7, 1
  br i1 %cmp5, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end8:                                          ; preds = %if.end4
  %ch = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 2
  %8 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %isac, ptr %ch, align 4
  %protocol13 = getelementptr inbounds %struct.mISDNchannel, ptr %isac, i32 0, i32 1
  %9 = ptrtoint ptr %protocol13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %protocol13, align 4
  %state = getelementptr inbounds %struct.dchannel, ptr %isac, i32 0, i32 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp15 = icmp eq i32 %11, 7
  br i1 %cmp15, label %if.then17, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then17:                                        ; preds = %if.end8
  %12 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch, align 4
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then17.return_crit_edge, label %if.end.i

if.then17.return_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %if.then17
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.return_crit_edge, label %if.end3.i, !prof !457

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %19, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %13, i32 0, i32 8
  %22 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %recv.i, align 4
  %24 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %23(ptr noundef %25, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.return_crit_edge, label %if.then7.i

if.end3.i.return_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #10
  br label %return

return:                                           ; preds = %if.then7.i, %if.end3.i.return_crit_edge, %if.end.i.return_crit_edge, %if.then17.return_crit_edge, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %do.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.return_crit_edge ], [ -22, %if.end4.return_crit_edge ], [ 0, %if.end8.return_crit_edge ], [ 0, %if.then17.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ 0, %if.end3.i.return_crit_edge ], [ 0, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipac_rme(ptr noundef %hx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 1
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %type = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %read_reg5 = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %read_reg5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg5, align 4
  %hw7 = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %hw7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw7, align 4
  %off8 = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 3
  %8 = ptrtoint ptr %off8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off8, align 1
  %. = select i1 %tobool.not, i8 39, i8 8
  %add = add i8 %9, %.
  %call = tail call zeroext i8 %5(ptr noundef %7, i8 noundef zeroext %add) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_rme.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_rme, %if.then17)) #10
          to label %do.end [label %if.then17], !srcloc !458

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 4
  %name = getelementptr inbounds %struct.ipac_hw, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 8
  %nr = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %14 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr, align 4
  %conv19 = zext i8 %call to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_rme.__UNIQUE_ID_ddebug516, ptr noundef nonnull @.str.108, ptr noundef %13, i32 noundef %15, i32 noundef %conv19) #10
  br label %do.end

do.end:                                           ; preds = %if.then17, %entry
  %conv21 = zext i8 %call to i32
  %and22 = and i32 %conv21, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %and22)
  %cmp.not = icmp eq i32 %and22, 160
  br i1 %cmp.not, label %if.end85, label %if.then24

if.then24:                                        ; preds = %do.end
  %and26 = and i32 %conv21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %if.then24.if.end43_crit_edge

if.then24.if.end43_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then28:                                        ; preds = %if.then24
  %debug = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 21
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  %and30 = and i32 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then28.if.end43_crit_edge, label %do.end35

if.then28.if.end43_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.end35:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip, align 4
  %name38 = getelementptr inbounds %struct.ipac_hw, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %name38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name38, align 8
  %nr40 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %22 = ptrtoint ptr %nr40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr40, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %21, i32 noundef %23) #13
  br label %if.end43

if.end43:                                         ; preds = %do.end35, %if.then28.if.end43_crit_edge, %if.then24.if.end43_crit_edge
  %and45 = and i32 %conv21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end64_crit_edge, label %if.then47

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then47:                                        ; preds = %if.end43
  %debug49 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 21
  %24 = ptrtoint ptr %debug49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug49, align 4
  %and50 = and i32 %25, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then47.if.end64_crit_edge, label %do.end55

if.then47.if.end64_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.end55:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ip, align 4
  %name58 = getelementptr inbounds %struct.ipac_hw, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %name58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name58, align 8
  %nr60 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %30 = ptrtoint ptr %nr60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr60, align 4
  %state = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 4
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %29, i32 noundef %31, i32 noundef %33) #13
  br label %if.end64

if.end64:                                         ; preds = %do.end55, %if.then47.if.end64_crit_edge, %if.end43.if.end64_crit_edge
  %and66 = and i32 %conv21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then68, label %if.end64.if.end84_crit_edge

if.end64.if.end84_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then68:                                        ; preds = %if.end64
  %debug70 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 21
  %34 = ptrtoint ptr %debug70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug70, align 4
  %and71 = and i32 %35, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.then68.if.end84_crit_edge, label %do.end76

if.then68.if.end84_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end76:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ip, align 4
  %name79 = getelementptr inbounds %struct.ipac_hw, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %name79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name79, align 8
  %nr81 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %40 = ptrtoint ptr %nr81 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr81, align 4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %39, i32 noundef %41) #13
  br label %if.end84

if.end84:                                         ; preds = %do.end76, %if.then68.if.end84_crit_edge, %if.end64.if.end84_crit_edge
  tail call fastcc void @hscx_cmdr(ptr noundef %hx, i8 noundef zeroext -128)
  br label %cleanup

if.end85:                                         ; preds = %do.end
  %42 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ip, align 4
  %type87 = getelementptr inbounds %struct.ipac_hw, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %type87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type87, align 8
  %and88 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %read_reg103 = getelementptr inbounds %struct.ipac_hw, ptr %43, i32 0, i32 7
  %46 = ptrtoint ptr %read_reg103 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_reg103, align 4
  %hw105 = getelementptr inbounds %struct.ipac_hw, ptr %43, i32 0, i32 3
  %48 = ptrtoint ptr %hw105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw105, align 4
  %off106 = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 3
  %50 = ptrtoint ptr %off106 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %off106, align 1
  %.217 = select i1 %tobool89.not, i8 37, i8 6
  %add108 = add i8 %51, %.217
  %call110 = tail call zeroext i8 %47(ptr noundef %49, i8 noundef zeroext %add108) #10
  %count.0 = zext i8 %call110 to i32
  %fifo_size = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 2
  %52 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fifo_size, align 4
  %conv113 = zext i8 %53 to i32
  %sub = add nuw nsw i32 %conv113, 255
  %and114 = and i32 %sub, %count.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %cmp115 = icmp eq i32 %and114, 0
  %spec.select = select i1 %cmp115, i32 %conv113, i32 %and114
  %conv121 = trunc i32 %spec.select to i8
  tail call fastcc void @hscx_empty_fifo(ptr noundef %hx, i8 noundef zeroext %conv121)
  %rx_skb = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 9
  %54 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_skb, align 4
  %tobool123.not = icmp eq ptr %55, null
  br i1 %tobool123.not, label %if.end85.cleanup_crit_edge, label %if.end125

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end125:                                        ; preds = %if.end85
  %len = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp128 = icmp ult i32 %57, 2
  br i1 %cmp128, label %do.body131, label %if.else156

do.body131:                                       ; preds = %if.end125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipac_rme.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipac_rme, %if.then143)) #10
          to label %do.end153 [label %if.then143], !srcloc !458

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ip, align 4
  %name145 = getelementptr inbounds %struct.ipac_hw, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %name145 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name145, align 8
  %nr147 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %62 = ptrtoint ptr %nr147 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr147, align 4
  %64 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_skb, align 4
  %len150 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %len150 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len150, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipac_rme.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.116, ptr noundef %61, i32 noundef %63, i32 noundef %67) #10
  br label %do.end153

do.end153:                                        ; preds = %if.then143, %do.body131
  %68 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_skb, align 4
  tail call void @skb_trim(ptr noundef %69, i32 noundef 0) #10
  br label %cleanup

if.else156:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %sub162 = add i32 %57, -1
  tail call void @skb_trim(ptr noundef nonnull %55, i32 noundef %sub162) #10
  tail call void @recv_Bchannel(ptr noundef %hx, i32 noundef 0, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else156, %do.end153, %if.end85.cleanup_crit_edge, %if.end84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hscx_empty_fifo(ptr noundef %hscx, i8 noundef zeroext %count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hscx_empty_fifo.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hscx_empty_fifo, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !458

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ip = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 1
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %name = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %nr = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 1
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %conv = zext i8 %count to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hscx_empty_fifo.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.118, ptr noundef %3, i32 noundef %5, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %Flags = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %6 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %Flags, align 4
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %conv11 = zext i8 %count to i32
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dropcnt = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 25
  %9 = ptrtoint ptr %dropcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dropcnt, align 4
  %add = add i32 %10, %conv11
  store i32 %add, ptr %dropcnt, align 4
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext -128)
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %call12 = tail call i32 @bchannel_get_rxbuf(ptr noundef %hscx, i32 noundef %conv11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.then14, label %if.end31

if.then14:                                        ; preds = %if.end9
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext -128)
  %rx_skb = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 9
  %11 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_skb, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %if.then14.do.end23_crit_edge, label %if.then17

if.then14.do.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_trim(ptr noundef nonnull %12, i32 noundef 0) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %if.then14.do.end23_crit_edge
  %ip25 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 1
  %13 = ptrtoint ptr %ip25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ip25, align 4
  %name26 = getelementptr inbounds %struct.ipac_hw, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name26, align 8
  %nr28 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 1
  %17 = ptrtoint ptr %nr28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr28, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %16, i32 noundef %18, i32 noundef %conv11) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end9
  %rx_skb33 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 9
  %19 = ptrtoint ptr %rx_skb33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_skb33, align 4
  %call35 = tail call ptr @skb_put(ptr noundef %20, i32 noundef %conv11) #10
  %ip36 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 1
  %21 = ptrtoint ptr %ip36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ip36, align 4
  %type = getelementptr inbounds %struct.ipac_hw, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 8
  %and = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  %read_fifo46 = getelementptr inbounds %struct.ipac_hw, ptr %22, i32 0, i32 9
  %25 = ptrtoint ptr %read_fifo46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_fifo46, align 4
  %hw48 = getelementptr inbounds %struct.ipac_hw, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %hw48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw48, align 4
  %off49 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 3
  %29 = ptrtoint ptr %off49 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %off49, align 1
  %add42 = add i8 %30, 10
  %.sink = select i1 %tobool37.not, i8 %30, i8 %add42
  tail call void %26(ptr noundef %28, i8 noundef zeroext %.sink, ptr noundef %call35, i32 noundef %conv11) #10
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext -128)
  %debug = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 21
  %31 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug, align 4
  %and53 = and i32 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end31.cleanup_crit_edge, label %if.then55

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then55:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %log = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 5
  %nr57 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 1
  %33 = ptrtoint ptr %nr57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr57, align 4
  %35 = ptrtoint ptr %ip36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ip36, align 4
  %name59 = getelementptr inbounds %struct.ipac_hw, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %name59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name59, align 8
  %call61 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log, i32 noundef 64, ptr noundef nonnull @.str.120, i32 noundef %34, ptr noundef %38, i32 noundef %conv11)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hscx_empty_fifo.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hscx_empty_fifo, %if.then74)) #10
          to label %cleanup [label %if.then74], !srcloc !458

if.then74:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.38, ptr noundef %log, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %call35, i32 noundef %conv11, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %if.then55, %if.end31.cleanup_crit_edge, %do.end23, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Bchannel(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hscx_cmdr(ptr nocapture noundef readonly %hx, i8 noundef zeroext %cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 1
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %type = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %write_reg = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 8
  %hw = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 3
  %8 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off, align 1
  %add = add i8 %9, 1
  tail call void %5(ptr noundef %7, i8 noundef zeroext %add, i8 noundef zeroext %cmd) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %off.i = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.else
  %to.046.i = phi i8 [ 50, %if.else ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 4
  %read_reg.i = getelementptr inbounds %struct.ipac_hw, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 4
  %hw.i = getelementptr inbounds %struct.ipac_hw, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 4
  %16 = ptrtoint ptr %off.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %off.i, align 1
  %add.i = add i8 %17, 33
  %call.i = tail call zeroext i8 %13(ptr noundef %15, i8 noundef zeroext %add.i) #10
  %18 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not.i = icmp eq i8 %18, 0
  br i1 %tobool4.not.i, label %while.end.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #10
  %dec.i = add nsw i8 %to.046.i, -1
  %tobool.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

while.end.i:                                      ; preds = %while.body.i
  %conv5.i = zext i8 %to.046.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %to.046.i)
  %cmp.i = icmp ult i8 %to.046.i, 50
  br i1 %cmp.i, label %while.end.i.do.body.i_crit_edge, label %while.end.i.waitforCEC.exit_crit_edge

while.end.i.waitforCEC.exit_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %waitforCEC.exit

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %conv541.i = phi i32 [ %conv5.i, %while.end.i.do.body.i_crit_edge ], [ 0, %if.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @waitforCEC.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hscx_cmdr, %if.then12.i)) #10
          to label %if.end16.i [label %if.then12.i], !srcloc !458

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ip, align 4
  %name.i = getelementptr inbounds %struct.ipac_hw, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 8
  %nr.i = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %24 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr.i, align 4
  %sub.i = sub nsw i32 50, %conv541.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @waitforCEC.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.122, ptr noundef %23, i32 noundef %25, i32 noundef %sub.i) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %do.body.i
  br i1 %tobool4.not.i, label %if.end16.i.waitforCEC.exit_crit_edge, label %do.end21.i

if.end16.i.waitforCEC.exit_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %waitforCEC.exit

do.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ip, align 4
  %name24.i = getelementptr inbounds %struct.ipac_hw, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %name24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name24.i, align 8
  %nr26.i = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 1
  %30 = ptrtoint ptr %nr26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr26.i, align 4
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %29, i32 noundef %31) #13
  br label %waitforCEC.exit

waitforCEC.exit:                                  ; preds = %do.end21.i, %if.end16.i.waitforCEC.exit_crit_edge, %while.end.i.waitforCEC.exit_crit_edge
  %32 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ip, align 4
  %write_reg5 = getelementptr inbounds %struct.ipac_hw, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %write_reg5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg5, align 8
  %hw7 = getelementptr inbounds %struct.ipac_hw, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %hw7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw7, align 4
  %38 = ptrtoint ptr %off.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %off.i, align 1
  %add10 = add i8 %39, 33
  tail call void %35(ptr noundef %37, i8 noundef zeroext %add10, i8 noundef zeroext %cmd) #10
  br label %if.end

if.end:                                           ; preds = %waitforCEC.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hscx_xpr(ptr noundef %hx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 17
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 20
  %2 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_idx, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hscx_fill_fifo(ptr noundef %hx)
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @consume_skb(ptr noundef %1) #10
  %call = tail call i32 @get_next_bframe(ptr noundef %hx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hscx_fill_fifo(ptr noundef %hx)
  %Flags = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 2
  %call10 = tail call i32 @_test_and_clear_bit(i32 noundef 27, ptr noundef %Flags) #10
  br label %if.end18

if.else11:                                        ; preds = %if.else
  %Flags13 = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 2
  %6 = ptrtoint ptr %Flags13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %Flags13, align 4
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %if.else11.if.end18_crit_edge, label %if.then16

if.else11.if.end18_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hscx_fill_fifo(ptr noundef %hx)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.else11.if.end18_crit_edge, %if.then8, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_get_rxbuf(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hscx_fill_fifo(ptr noundef %hscx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 17
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %Flags = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %2 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %Flags, align 4
  %4 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_size = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 2
  %5 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fifo_size, align 4
  %conv = zext i8 %6 to i32
  %log = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 5
  %fill = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 8
  %7 = ptrtoint ptr %fill to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fill, align 4
  %9 = zext i8 %8 to i32
  %10 = call ptr @memset(ptr %log, i32 %9, i32 %conv)
  br label %if.end42

if.else:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 20
  %13 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_idx, align 4
  %sub = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.else
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %14
  %Flags17 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %17 = ptrtoint ptr %Flags17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %Flags17, align 4
  %19 = lshr i32 %18, 12
  %.lobit = and i32 %19, 1
  %fifo_size20 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 2
  %20 = ptrtoint ptr %fifo_size20 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fifo_size20, align 4
  %conv21 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv21)
  %cmp22 = icmp ugt i32 %sub, %conv21
  %spec.select = select i1 %cmp22, i32 1, i32 %.lobit
  %22 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv21)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hscx_fill_fifo.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hscx_fill_fifo, %if.then32)) #10
          to label %do.end [label %if.then32], !srcloc !458

if.then32:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %ip = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 1
  %23 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ip, align 4
  %name = getelementptr inbounds %struct.ipac_hw, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 8
  %nr = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 1
  %27 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr, align 4
  %29 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_idx, align 4
  %31 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_skb, align 4
  %len38 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %len38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len38, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hscx_fill_fifo.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.125, ptr noundef %26, i32 noundef %28, i32 noundef %22, i32 noundef %30, i32 noundef %34) #10
  br label %do.end

do.end:                                           ; preds = %if.then32, %if.end11
  %35 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_idx, align 4
  %add = add i32 %36, %22
  store i32 %add, ptr %tx_idx, align 4
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.end
  %p.0 = phi ptr [ %add.ptr, %do.end ], [ %log, %if.end ]
  %more.1 = phi i32 [ %spec.select, %do.end ], [ 1, %if.end ]
  %count.1 = phi i32 [ %22, %do.end ], [ %conv, %if.end ]
  %ip43 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 1
  %37 = ptrtoint ptr %ip43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ip43, align 4
  %type = getelementptr inbounds %struct.ipac_hw, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 8
  %and = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.else51, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %write_fifo = getelementptr inbounds %struct.ipac_hw, ptr %38, i32 0, i32 10
  %41 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_fifo, align 8
  %hw = getelementptr inbounds %struct.ipac_hw, ptr %38, i32 0, i32 3
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 3
  %45 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %off, align 1
  %add49 = add i8 %46, 10
  tail call void %42(ptr noundef %44, i8 noundef zeroext %add49, ptr noundef %p.0, i32 noundef %count.1) #10
  br label %if.end57

if.else51:                                        ; preds = %if.end42
  %off.i = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.else51
  %to.047.i = phi i8 [ 50, %if.else51 ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %47 = ptrtoint ptr %ip43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ip43, align 4
  %read_reg.i = getelementptr inbounds %struct.ipac_hw, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_reg.i, align 4
  %hw.i = getelementptr inbounds %struct.ipac_hw, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw.i, align 4
  %53 = ptrtoint ptr %off.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %off.i, align 1
  %add.i = add i8 %54, 33
  %call.i = tail call zeroext i8 %50(ptr noundef %52, i8 noundef zeroext %add.i) #10
  %55 = and i8 %call.i, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %55)
  %cmp.i = icmp eq i8 %55, 64
  br i1 %cmp.i, label %while.end.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #10
  %dec.i = add nsw i8 %to.047.i, -1
  %tobool.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

while.end.i:                                      ; preds = %while.body.i
  %conv5.i = zext i8 %to.047.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %to.047.i)
  %cmp6.i = icmp ult i8 %to.047.i, 50
  br i1 %cmp6.i, label %while.end.i.do.body.i_crit_edge, label %while.end.i.waitforXFW.exit_crit_edge

while.end.i.waitforXFW.exit_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %waitforXFW.exit

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %conv542.i = phi i32 [ %conv5.i, %while.end.i.do.body.i_crit_edge ], [ 0, %if.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @waitforXFW.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hscx_fill_fifo, %if.then13.i)) #10
          to label %if.end17.i [label %if.then13.i], !srcloc !458

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %ip43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ip43, align 4
  %name.i = getelementptr inbounds %struct.ipac_hw, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name.i, align 8
  %nr.i = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 1
  %61 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr.i, align 4
  %sub.i = sub nsw i32 50, %conv542.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @waitforXFW.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.128, ptr noundef %60, i32 noundef %62, i32 noundef %sub.i) #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %do.body.i
  br i1 %cmp.i, label %if.end17.i.waitforXFW.exit_crit_edge, label %do.end22.i

if.end17.i.waitforXFW.exit_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %waitforXFW.exit

do.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %ip43 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ip43, align 4
  %name25.i = getelementptr inbounds %struct.ipac_hw, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %name25.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name25.i, align 8
  %nr27.i = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 1
  %67 = ptrtoint ptr %nr27.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr27.i, align 4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %66, i32 noundef %68) #13
  br label %waitforXFW.exit

waitforXFW.exit:                                  ; preds = %do.end22.i, %if.end17.i.waitforXFW.exit_crit_edge, %while.end.i.waitforXFW.exit_crit_edge
  %69 = ptrtoint ptr %ip43 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ip43, align 4
  %write_fifo53 = getelementptr inbounds %struct.ipac_hw, ptr %70, i32 0, i32 10
  %71 = ptrtoint ptr %write_fifo53 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_fifo53, align 8
  %hw55 = getelementptr inbounds %struct.ipac_hw, ptr %70, i32 0, i32 3
  %73 = ptrtoint ptr %hw55 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw55, align 4
  %75 = ptrtoint ptr %off.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %off.i, align 1
  tail call void %72(ptr noundef %74, i8 noundef zeroext %76, ptr noundef %p.0, i32 noundef %count.1) #10
  br label %if.end57

if.end57:                                         ; preds = %waitforXFW.exit, %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %more.1)
  %tobool58.not = icmp eq i32 %more.1, 0
  %conv60 = select i1 %tobool58.not, i8 10, i8 8
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext %conv60)
  %77 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_skb, align 4
  %tobool63.not = icmp eq ptr %78, null
  br i1 %tobool63.not, label %if.end57.cleanup_crit_edge, label %land.lhs.true

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end57
  %debug = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 21
  %79 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %debug, align 4
  %and65 = and i32 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %land.lhs.true.cleanup_crit_edge, label %if.then67

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %log68 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 5
  %nr71 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 1
  %81 = ptrtoint ptr %nr71 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr71, align 4
  %83 = ptrtoint ptr %ip43 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ip43, align 4
  %name73 = getelementptr inbounds %struct.ipac_hw, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %name73 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name73, align 8
  %call74 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log68, i32 noundef 64, ptr noundef nonnull @.str.126, i32 noundef %82, ptr noundef %86, i32 noundef %count.1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hscx_fill_fifo.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hscx_fill_fifo, %if.then87)) #10
          to label %cleanup [label %if.then87], !srcloc !458

if.then87:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.38, ptr noundef %log68, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %p.0, i32 noundef %count.1, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.then67, %land.lhs.true.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_bframe(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hscx_mode(ptr noundef %hscx, i32 noundef %bprotocol) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hscx_mode.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hscx_mode, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !458

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ip = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 1
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %name = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %nr = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 1
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %add = add i32 %5, 64
  %state = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hscx_mode.__UNIQUE_ID_ddebug531, ptr noundef nonnull @.str.140, ptr noundef %3, i32 noundef %add, i32 noundef %7, i32 noundef %bprotocol, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ip6 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 1
  %8 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip6, align 4
  %type = getelementptr inbounds %struct.ipac_hw, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 8
  %and = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else118, label %if.then8

if.then8:                                         ; preds = %do.end
  %nr10 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 1
  %12 = ptrtoint ptr %nr10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr10, align 4
  %and11 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %write_reg21 = getelementptr inbounds %struct.ipac_hw, ptr %9, i32 0, i32 8
  %14 = ptrtoint ptr %write_reg21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg21, align 8
  %hw23 = getelementptr inbounds %struct.ipac_hw, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %hw23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw23, align 4
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %15(ptr noundef %17, i8 noundef zeroext 72, i8 noundef zeroext -128) #10
  br label %if.end28

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %15(ptr noundef %17, i8 noundef zeroext 74, i8 noundef zeroext -127) #10
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then13
  %.sink636 = phi i8 [ 82, %if.else ], [ 81, %if.then13 ]
  %18 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip6, align 4
  %write_reg25 = getelementptr inbounds %struct.ipac_hw, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %write_reg25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg25, align 8
  %hw27 = getelementptr inbounds %struct.ipac_hw, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %hw27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw27, align 4
  tail call void %21(ptr noundef %23, i8 noundef zeroext %.sink636, i8 noundef zeroext -120) #10
  %24 = zext i32 %bprotocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %bprotocol, label %do.end113 [
    i32 0, label %sw.bb
    i32 33, label %sw.bb56
    i32 34, label %sw.bb84
  ]

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ip6, align 4
  %write_reg30 = getelementptr inbounds %struct.ipac_hw, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %write_reg30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg30, align 8
  %hw32 = getelementptr inbounds %struct.ipac_hw, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %hw32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw32, align 4
  %off = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 3
  %31 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %off, align 1
  %add33 = add i8 %32, 2
  tail call void %28(ptr noundef %30, i8 noundef zeroext %add33, i8 noundef zeroext -64) #10
  %33 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ip6, align 4
  %write_reg36 = getelementptr inbounds %struct.ipac_hw, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %write_reg36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg36, align 8
  %hw38 = getelementptr inbounds %struct.ipac_hw, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %hw38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw38, align 4
  %39 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %off, align 1
  %add41 = add i8 %40, 3
  tail call void %36(ptr noundef %38, i8 noundef zeroext %add41, i8 noundef zeroext 48) #10
  %41 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ip6, align 4
  %write_reg44 = getelementptr inbounds %struct.ipac_hw, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %write_reg44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg44, align 8
  %hw46 = getelementptr inbounds %struct.ipac_hw, ptr %42, i32 0, i32 3
  %45 = ptrtoint ptr %hw46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw46, align 4
  %47 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %off, align 1
  tail call void %44(ptr noundef %46, i8 noundef zeroext %48, i8 noundef zeroext -1) #10
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext 65)
  %Flags = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %call52 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %Flags) #10
  %call55 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %Flags) #10
  br label %if.end454

sw.bb56:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ip6, align 4
  %write_reg58 = getelementptr inbounds %struct.ipac_hw, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %write_reg58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_reg58, align 8
  %hw60 = getelementptr inbounds %struct.ipac_hw, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %hw60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw60, align 4
  %off61 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 3
  %55 = ptrtoint ptr %off61 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %off61, align 1
  %add63 = add i8 %56, 2
  tail call void %52(ptr noundef %54, i8 noundef zeroext %add63, i8 noundef zeroext -120) #10
  %57 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ip6, align 4
  %write_reg66 = getelementptr inbounds %struct.ipac_hw, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %write_reg66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_reg66, align 8
  %hw68 = getelementptr inbounds %struct.ipac_hw, ptr %58, i32 0, i32 3
  %61 = ptrtoint ptr %hw68 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw68, align 4
  %63 = ptrtoint ptr %off61 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %off61, align 1
  %add71 = add i8 %64, 3
  tail call void %60(ptr noundef %62, i8 noundef zeroext %add71, i8 noundef zeroext 0) #10
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext 65)
  %65 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ip6, align 4
  %write_reg74 = getelementptr inbounds %struct.ipac_hw, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %write_reg74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_reg74, align 8
  %hw76 = getelementptr inbounds %struct.ipac_hw, ptr %66, i32 0, i32 3
  %69 = ptrtoint ptr %hw76 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw76, align 4
  %71 = ptrtoint ptr %off61 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %off61, align 1
  tail call void %68(ptr noundef %70, i8 noundef zeroext %72, i8 noundef zeroext 11) #10
  %Flags82 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %call83 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %Flags82) #10
  br label %if.end454

sw.bb84:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ip6, align 4
  %write_reg86 = getelementptr inbounds %struct.ipac_hw, ptr %74, i32 0, i32 8
  %75 = ptrtoint ptr %write_reg86 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_reg86, align 8
  %hw88 = getelementptr inbounds %struct.ipac_hw, ptr %74, i32 0, i32 3
  %77 = ptrtoint ptr %hw88 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw88, align 4
  %off89 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 3
  %79 = ptrtoint ptr %off89 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %off89, align 1
  %add91 = add i8 %80, 2
  tail call void %76(ptr noundef %78, i8 noundef zeroext %add91, i8 noundef zeroext -64) #10
  %81 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ip6, align 4
  %write_reg94 = getelementptr inbounds %struct.ipac_hw, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %write_reg94 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write_reg94, align 8
  %hw96 = getelementptr inbounds %struct.ipac_hw, ptr %82, i32 0, i32 3
  %85 = ptrtoint ptr %hw96 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw96, align 4
  %87 = ptrtoint ptr %off89 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %off89, align 1
  %add99 = add i8 %88, 3
  tail call void %84(ptr noundef %86, i8 noundef zeroext %add99, i8 noundef zeroext 0) #10
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext 65)
  %89 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ip6, align 4
  %write_reg102 = getelementptr inbounds %struct.ipac_hw, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %write_reg102 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_reg102, align 8
  %hw104 = getelementptr inbounds %struct.ipac_hw, ptr %90, i32 0, i32 3
  %93 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw104, align 4
  %95 = ptrtoint ptr %off89 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %off89, align 1
  tail call void %92(ptr noundef %94, i8 noundef zeroext %96, i8 noundef zeroext 11) #10
  %Flags110 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %call111 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %Flags110) #10
  br label %if.end454

do.end113:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ip6, align 4
  %name116 = getelementptr inbounds %struct.ipac_hw, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %name116 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name116, align 8
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %100, i32 noundef %bprotocol) #13
  br label %return

if.else118:                                       ; preds = %do.end
  %and121 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.else284, label %if.then123

if.then123:                                       ; preds = %if.else118
  %write_reg125 = getelementptr inbounds %struct.ipac_hw, ptr %9, i32 0, i32 8
  %101 = ptrtoint ptr %write_reg125 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_reg125, align 8
  %hw127 = getelementptr inbounds %struct.ipac_hw, ptr %9, i32 0, i32 3
  %103 = ptrtoint ptr %hw127 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw127, align 4
  %off128 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 3
  %105 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %off128, align 1
  %add130 = add i8 %106, 47
  tail call void %102(ptr noundef %104, i8 noundef zeroext %add130, i8 noundef zeroext -126) #10
  %107 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ip6, align 4
  %write_reg133 = getelementptr inbounds %struct.ipac_hw, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %write_reg133 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_reg133, align 8
  %hw135 = getelementptr inbounds %struct.ipac_hw, ptr %108, i32 0, i32 3
  %111 = ptrtoint ptr %hw135 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw135, align 4
  %113 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %off128, align 1
  %add138 = add i8 %114, 44
  tail call void %110(ptr noundef %112, i8 noundef zeroext %add138, i8 noundef zeroext 48) #10
  %115 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ip6, align 4
  %write_reg141 = getelementptr inbounds %struct.ipac_hw, ptr %116, i32 0, i32 8
  %117 = ptrtoint ptr %write_reg141 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write_reg141, align 8
  %hw143 = getelementptr inbounds %struct.ipac_hw, ptr %116, i32 0, i32 3
  %119 = ptrtoint ptr %hw143 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw143, align 4
  %121 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %off128, align 1
  %add146 = add i8 %122, 50
  tail call void %118(ptr noundef %120, i8 noundef zeroext %add146, i8 noundef zeroext 7) #10
  %123 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ip6, align 4
  %write_reg149 = getelementptr inbounds %struct.ipac_hw, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %write_reg149 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write_reg149, align 8
  %hw151 = getelementptr inbounds %struct.ipac_hw, ptr %124, i32 0, i32 3
  %127 = ptrtoint ptr %hw151 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hw151, align 4
  %129 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %off128, align 1
  %add154 = add i8 %130, 51
  tail call void %126(ptr noundef %128, i8 noundef zeroext %add154, i8 noundef zeroext 7) #10
  %131 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ip6, align 4
  %write_reg157 = getelementptr inbounds %struct.ipac_hw, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %write_reg157 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write_reg157, align 8
  %hw159 = getelementptr inbounds %struct.ipac_hw, ptr %132, i32 0, i32 3
  %135 = ptrtoint ptr %hw159 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw159, align 4
  %137 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %off128, align 1
  %add162 = add i8 %138, 48
  %slot = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 4
  %139 = ptrtoint ptr %slot to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %slot, align 2
  tail call void %134(ptr noundef %136, i8 noundef zeroext %add162, i8 noundef zeroext %140) #10
  %141 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ip6, align 4
  %write_reg165 = getelementptr inbounds %struct.ipac_hw, ptr %142, i32 0, i32 8
  %143 = ptrtoint ptr %write_reg165 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write_reg165, align 8
  %hw167 = getelementptr inbounds %struct.ipac_hw, ptr %142, i32 0, i32 3
  %145 = ptrtoint ptr %hw167 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw167, align 4
  %147 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %off128, align 1
  %add170 = add i8 %148, 49
  %149 = ptrtoint ptr %slot to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %slot, align 2
  tail call void %144(ptr noundef %146, i8 noundef zeroext %add170, i8 noundef zeroext %150) #10
  %151 = zext i32 %bprotocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %bprotocol, label %do.end278 [
    i32 0, label %sw.bb173
    i32 33, label %sw.bb220
    i32 34, label %sw.bb248
  ]

sw.bb173:                                         ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ip6, align 4
  %write_reg175 = getelementptr inbounds %struct.ipac_hw, ptr %153, i32 0, i32 8
  %154 = ptrtoint ptr %write_reg175 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write_reg175, align 8
  %hw177 = getelementptr inbounds %struct.ipac_hw, ptr %153, i32 0, i32 3
  %156 = ptrtoint ptr %hw177 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw177, align 4
  %158 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %off128, align 1
  %add180 = add i8 %159, 48
  tail call void %155(ptr noundef %157, i8 noundef zeroext %add180, i8 noundef zeroext 31) #10
  %160 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ip6, align 4
  %write_reg183 = getelementptr inbounds %struct.ipac_hw, ptr %161, i32 0, i32 8
  %162 = ptrtoint ptr %write_reg183 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write_reg183, align 8
  %hw185 = getelementptr inbounds %struct.ipac_hw, ptr %161, i32 0, i32 3
  %164 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw185, align 4
  %166 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %off128, align 1
  %add188 = add i8 %167, 49
  tail call void %163(ptr noundef %165, i8 noundef zeroext %add188, i8 noundef zeroext 31) #10
  %168 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ip6, align 4
  %write_reg191 = getelementptr inbounds %struct.ipac_hw, ptr %169, i32 0, i32 8
  %170 = ptrtoint ptr %write_reg191 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write_reg191, align 8
  %hw193 = getelementptr inbounds %struct.ipac_hw, ptr %169, i32 0, i32 3
  %172 = ptrtoint ptr %hw193 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hw193, align 4
  %174 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %off128, align 1
  %add196 = add i8 %175, 34
  tail call void %171(ptr noundef %173, i8 noundef zeroext %add196, i8 noundef zeroext -124) #10
  %176 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ip6, align 4
  %write_reg199 = getelementptr inbounds %struct.ipac_hw, ptr %177, i32 0, i32 8
  %178 = ptrtoint ptr %write_reg199 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write_reg199, align 8
  %hw201 = getelementptr inbounds %struct.ipac_hw, ptr %177, i32 0, i32 3
  %180 = ptrtoint ptr %hw201 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw201, align 4
  %182 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %off128, align 1
  %add204 = add i8 %183, 47
  tail call void %179(ptr noundef %181, i8 noundef zeroext %add204, i8 noundef zeroext -126) #10
  %184 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ip6, align 4
  %write_reg207 = getelementptr inbounds %struct.ipac_hw, ptr %185, i32 0, i32 8
  %186 = ptrtoint ptr %write_reg207 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write_reg207, align 8
  %hw209 = getelementptr inbounds %struct.ipac_hw, ptr %185, i32 0, i32 3
  %188 = ptrtoint ptr %hw209 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hw209, align 4
  %190 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %off128, align 1
  %add212 = add i8 %191, 32
  tail call void %187(ptr noundef %189, i8 noundef zeroext %add212, i8 noundef zeroext -1) #10
  %Flags215 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %call216 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %Flags215) #10
  %call219 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %Flags215) #10
  br label %if.end454

sw.bb220:                                         ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  %192 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ip6, align 4
  %write_reg222 = getelementptr inbounds %struct.ipac_hw, ptr %193, i32 0, i32 8
  %194 = ptrtoint ptr %write_reg222 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write_reg222, align 8
  %hw224 = getelementptr inbounds %struct.ipac_hw, ptr %193, i32 0, i32 3
  %196 = ptrtoint ptr %hw224 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hw224, align 4
  %198 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %off128, align 1
  %add227 = add i8 %199, 34
  tail call void %195(ptr noundef %197, i8 noundef zeroext %add227, i8 noundef zeroext -28) #10
  %200 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ip6, align 4
  %write_reg230 = getelementptr inbounds %struct.ipac_hw, ptr %201, i32 0, i32 8
  %202 = ptrtoint ptr %write_reg230 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %write_reg230, align 8
  %hw232 = getelementptr inbounds %struct.ipac_hw, ptr %201, i32 0, i32 3
  %204 = ptrtoint ptr %hw232 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hw232, align 4
  %206 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %off128, align 1
  %add235 = add i8 %207, 47
  tail call void %203(ptr noundef %205, i8 noundef zeroext %add235, i8 noundef zeroext -126) #10
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext 65)
  %208 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ip6, align 4
  %write_reg238 = getelementptr inbounds %struct.ipac_hw, ptr %209, i32 0, i32 8
  %210 = ptrtoint ptr %write_reg238 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write_reg238, align 8
  %hw240 = getelementptr inbounds %struct.ipac_hw, ptr %209, i32 0, i32 3
  %212 = ptrtoint ptr %hw240 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hw240, align 4
  %214 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %off128, align 1
  %add243 = add i8 %215, 32
  tail call void %211(ptr noundef %213, i8 noundef zeroext %add243, i8 noundef zeroext 0) #10
  %Flags246 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %call247 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %Flags246) #10
  br label %if.end454

sw.bb248:                                         ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  %216 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ip6, align 4
  %write_reg250 = getelementptr inbounds %struct.ipac_hw, ptr %217, i32 0, i32 8
  %218 = ptrtoint ptr %write_reg250 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %write_reg250, align 8
  %hw252 = getelementptr inbounds %struct.ipac_hw, ptr %217, i32 0, i32 3
  %220 = ptrtoint ptr %hw252 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hw252, align 4
  %222 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %off128, align 1
  %add255 = add i8 %223, 34
  tail call void %219(ptr noundef %221, i8 noundef zeroext %add255, i8 noundef zeroext -116) #10
  %224 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ip6, align 4
  %write_reg258 = getelementptr inbounds %struct.ipac_hw, ptr %225, i32 0, i32 8
  %226 = ptrtoint ptr %write_reg258 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %write_reg258, align 8
  %hw260 = getelementptr inbounds %struct.ipac_hw, ptr %225, i32 0, i32 3
  %228 = ptrtoint ptr %hw260 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %hw260, align 4
  %230 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %off128, align 1
  %add263 = add i8 %231, 47
  tail call void %227(ptr noundef %229, i8 noundef zeroext %add263, i8 noundef zeroext -118) #10
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext 65)
  %232 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ip6, align 4
  %write_reg266 = getelementptr inbounds %struct.ipac_hw, ptr %233, i32 0, i32 8
  %234 = ptrtoint ptr %write_reg266 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write_reg266, align 8
  %hw268 = getelementptr inbounds %struct.ipac_hw, ptr %233, i32 0, i32 3
  %236 = ptrtoint ptr %hw268 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %hw268, align 4
  %238 = ptrtoint ptr %off128 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %off128, align 1
  %add271 = add i8 %239, 32
  tail call void %235(ptr noundef %237, i8 noundef zeroext %add271, i8 noundef zeroext 0) #10
  %Flags274 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %call275 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %Flags274) #10
  br label %if.end454

do.end278:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  %240 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ip6, align 4
  %name281 = getelementptr inbounds %struct.ipac_hw, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %name281 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %name281, align 8
  %call282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %243, i32 noundef %bprotocol) #13
  br label %return

if.else284:                                       ; preds = %if.else118
  %and287 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and287)
  %tobool288.not = icmp eq i32 %and287, 0
  br i1 %tobool288.not, label %if.else284.return_crit_edge, label %if.then289

if.else284.return_crit_edge:                      ; preds = %if.else284
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then289:                                       ; preds = %if.else284
  %write_reg291 = getelementptr inbounds %struct.ipac_hw, ptr %9, i32 0, i32 8
  %244 = ptrtoint ptr %write_reg291 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write_reg291, align 8
  %hw293 = getelementptr inbounds %struct.ipac_hw, ptr %9, i32 0, i32 3
  %246 = ptrtoint ptr %hw293 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hw293, align 4
  %off294 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 3
  %248 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %off294, align 1
  %add296 = add i8 %249, 47
  tail call void %245(ptr noundef %247, i8 noundef zeroext %add296, i8 noundef zeroext -123) #10
  %250 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ip6, align 4
  %write_reg299 = getelementptr inbounds %struct.ipac_hw, ptr %251, i32 0, i32 8
  %252 = ptrtoint ptr %write_reg299 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write_reg299, align 8
  %hw301 = getelementptr inbounds %struct.ipac_hw, ptr %251, i32 0, i32 3
  %254 = ptrtoint ptr %hw301 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hw301, align 4
  %256 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %off294, align 1
  %add304 = add i8 %257, 44
  tail call void %253(ptr noundef %255, i8 noundef zeroext %add304, i8 noundef zeroext 48) #10
  %258 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ip6, align 4
  %write_reg307 = getelementptr inbounds %struct.ipac_hw, ptr %259, i32 0, i32 8
  %260 = ptrtoint ptr %write_reg307 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write_reg307, align 8
  %hw309 = getelementptr inbounds %struct.ipac_hw, ptr %259, i32 0, i32 3
  %262 = ptrtoint ptr %hw309 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %hw309, align 4
  %264 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %off294, align 1
  %add312 = add i8 %265, 50
  tail call void %261(ptr noundef %263, i8 noundef zeroext %add312, i8 noundef zeroext 7) #10
  %266 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ip6, align 4
  %write_reg315 = getelementptr inbounds %struct.ipac_hw, ptr %267, i32 0, i32 8
  %268 = ptrtoint ptr %write_reg315 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %write_reg315, align 8
  %hw317 = getelementptr inbounds %struct.ipac_hw, ptr %267, i32 0, i32 3
  %270 = ptrtoint ptr %hw317 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %hw317, align 4
  %272 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %off294, align 1
  %add320 = add i8 %273, 51
  tail call void %269(ptr noundef %271, i8 noundef zeroext %add320, i8 noundef zeroext 7) #10
  %274 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %ip6, align 4
  %write_reg323 = getelementptr inbounds %struct.ipac_hw, ptr %275, i32 0, i32 8
  %276 = ptrtoint ptr %write_reg323 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %write_reg323, align 8
  %hw325 = getelementptr inbounds %struct.ipac_hw, ptr %275, i32 0, i32 3
  %278 = ptrtoint ptr %hw325 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %hw325, align 4
  %280 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %off294, align 1
  %add328 = add i8 %281, 48
  %slot330 = getelementptr inbounds %struct.hscx_hw, ptr %hscx, i32 0, i32 4
  %282 = ptrtoint ptr %slot330 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %slot330, align 2
  tail call void %277(ptr noundef %279, i8 noundef zeroext %add328, i8 noundef zeroext %283) #10
  %284 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %ip6, align 4
  %write_reg332 = getelementptr inbounds %struct.ipac_hw, ptr %285, i32 0, i32 8
  %286 = ptrtoint ptr %write_reg332 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %write_reg332, align 8
  %hw334 = getelementptr inbounds %struct.ipac_hw, ptr %285, i32 0, i32 3
  %288 = ptrtoint ptr %hw334 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %hw334, align 4
  %290 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %off294, align 1
  %add337 = add i8 %291, 49
  %292 = ptrtoint ptr %slot330 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %slot330, align 2
  tail call void %287(ptr noundef %289, i8 noundef zeroext %add337, i8 noundef zeroext %293) #10
  %294 = zext i32 %bprotocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %294, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %bprotocol, label %do.end445 [
    i32 0, label %sw.bb340
    i32 33, label %sw.bb387
    i32 34, label %sw.bb415
  ]

sw.bb340:                                         ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #12
  %295 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %ip6, align 4
  %write_reg342 = getelementptr inbounds %struct.ipac_hw, ptr %296, i32 0, i32 8
  %297 = ptrtoint ptr %write_reg342 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %write_reg342, align 8
  %hw344 = getelementptr inbounds %struct.ipac_hw, ptr %296, i32 0, i32 3
  %299 = ptrtoint ptr %hw344 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %hw344, align 4
  %301 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %off294, align 1
  %add347 = add i8 %302, 48
  tail call void %298(ptr noundef %300, i8 noundef zeroext %add347, i8 noundef zeroext 31) #10
  %303 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %ip6, align 4
  %write_reg350 = getelementptr inbounds %struct.ipac_hw, ptr %304, i32 0, i32 8
  %305 = ptrtoint ptr %write_reg350 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %write_reg350, align 8
  %hw352 = getelementptr inbounds %struct.ipac_hw, ptr %304, i32 0, i32 3
  %307 = ptrtoint ptr %hw352 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %hw352, align 4
  %309 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %off294, align 1
  %add355 = add i8 %310, 49
  tail call void %306(ptr noundef %308, i8 noundef zeroext %add355, i8 noundef zeroext 31) #10
  %311 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %ip6, align 4
  %write_reg358 = getelementptr inbounds %struct.ipac_hw, ptr %312, i32 0, i32 8
  %313 = ptrtoint ptr %write_reg358 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %write_reg358, align 8
  %hw360 = getelementptr inbounds %struct.ipac_hw, ptr %312, i32 0, i32 3
  %315 = ptrtoint ptr %hw360 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %hw360, align 4
  %317 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %off294, align 1
  %add363 = add i8 %318, 34
  tail call void %314(ptr noundef %316, i8 noundef zeroext %add363, i8 noundef zeroext -124) #10
  %319 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %ip6, align 4
  %write_reg366 = getelementptr inbounds %struct.ipac_hw, ptr %320, i32 0, i32 8
  %321 = ptrtoint ptr %write_reg366 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %write_reg366, align 8
  %hw368 = getelementptr inbounds %struct.ipac_hw, ptr %320, i32 0, i32 3
  %323 = ptrtoint ptr %hw368 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %hw368, align 4
  %325 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %off294, align 1
  %add371 = add i8 %326, 47
  tail call void %322(ptr noundef %324, i8 noundef zeroext %add371, i8 noundef zeroext -123) #10
  %327 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %ip6, align 4
  %write_reg374 = getelementptr inbounds %struct.ipac_hw, ptr %328, i32 0, i32 8
  %329 = ptrtoint ptr %write_reg374 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %write_reg374, align 8
  %hw376 = getelementptr inbounds %struct.ipac_hw, ptr %328, i32 0, i32 3
  %331 = ptrtoint ptr %hw376 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %hw376, align 4
  %333 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %off294, align 1
  %add379 = add i8 %334, 32
  tail call void %330(ptr noundef %332, i8 noundef zeroext %add379, i8 noundef zeroext -1) #10
  %Flags382 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %call383 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %Flags382) #10
  %call386 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %Flags382) #10
  br label %if.end454

sw.bb387:                                         ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #12
  %335 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ip6, align 4
  %write_reg389 = getelementptr inbounds %struct.ipac_hw, ptr %336, i32 0, i32 8
  %337 = ptrtoint ptr %write_reg389 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %write_reg389, align 8
  %hw391 = getelementptr inbounds %struct.ipac_hw, ptr %336, i32 0, i32 3
  %339 = ptrtoint ptr %hw391 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %hw391, align 4
  %341 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %off294, align 1
  %add394 = add i8 %342, 34
  tail call void %338(ptr noundef %340, i8 noundef zeroext %add394, i8 noundef zeroext -28) #10
  %343 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %ip6, align 4
  %write_reg397 = getelementptr inbounds %struct.ipac_hw, ptr %344, i32 0, i32 8
  %345 = ptrtoint ptr %write_reg397 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %write_reg397, align 8
  %hw399 = getelementptr inbounds %struct.ipac_hw, ptr %344, i32 0, i32 3
  %347 = ptrtoint ptr %hw399 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %hw399, align 4
  %349 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %off294, align 1
  %add402 = add i8 %350, 47
  tail call void %346(ptr noundef %348, i8 noundef zeroext %add402, i8 noundef zeroext -123) #10
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext 65)
  %351 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %ip6, align 4
  %write_reg405 = getelementptr inbounds %struct.ipac_hw, ptr %352, i32 0, i32 8
  %353 = ptrtoint ptr %write_reg405 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %write_reg405, align 8
  %hw407 = getelementptr inbounds %struct.ipac_hw, ptr %352, i32 0, i32 3
  %355 = ptrtoint ptr %hw407 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %hw407, align 4
  %357 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %off294, align 1
  %add410 = add i8 %358, 32
  tail call void %354(ptr noundef %356, i8 noundef zeroext %add410, i8 noundef zeroext 0) #10
  %Flags413 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %call414 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %Flags413) #10
  br label %if.end454

sw.bb415:                                         ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #12
  %359 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %ip6, align 4
  %write_reg417 = getelementptr inbounds %struct.ipac_hw, ptr %360, i32 0, i32 8
  %361 = ptrtoint ptr %write_reg417 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %write_reg417, align 8
  %hw419 = getelementptr inbounds %struct.ipac_hw, ptr %360, i32 0, i32 3
  %363 = ptrtoint ptr %hw419 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %hw419, align 4
  %365 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %off294, align 1
  %add422 = add i8 %366, 34
  tail call void %362(ptr noundef %364, i8 noundef zeroext %add422, i8 noundef zeroext -116) #10
  %367 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %ip6, align 4
  %write_reg425 = getelementptr inbounds %struct.ipac_hw, ptr %368, i32 0, i32 8
  %369 = ptrtoint ptr %write_reg425 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %write_reg425, align 8
  %hw427 = getelementptr inbounds %struct.ipac_hw, ptr %368, i32 0, i32 3
  %371 = ptrtoint ptr %hw427 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %hw427, align 4
  %373 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %off294, align 1
  %add430 = add i8 %374, 47
  tail call void %370(ptr noundef %372, i8 noundef zeroext %add430, i8 noundef zeroext -115) #10
  tail call fastcc void @hscx_cmdr(ptr noundef %hscx, i8 noundef zeroext 65)
  %375 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %ip6, align 4
  %write_reg433 = getelementptr inbounds %struct.ipac_hw, ptr %376, i32 0, i32 8
  %377 = ptrtoint ptr %write_reg433 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %write_reg433, align 8
  %hw435 = getelementptr inbounds %struct.ipac_hw, ptr %376, i32 0, i32 3
  %379 = ptrtoint ptr %hw435 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %hw435, align 4
  %381 = ptrtoint ptr %off294 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %off294, align 1
  %add438 = add i8 %382, 32
  tail call void %378(ptr noundef %380, i8 noundef zeroext %add438, i8 noundef zeroext 0) #10
  %Flags441 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 2
  %call442 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %Flags441) #10
  br label %if.end454

do.end445:                                        ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #12
  %383 = ptrtoint ptr %ip6 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %ip6, align 4
  %name448 = getelementptr inbounds %struct.ipac_hw, ptr %384, i32 0, i32 2
  %385 = ptrtoint ptr %name448 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %name448, align 8
  %call449 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %386, i32 noundef %bprotocol) #13
  br label %return

if.end454:                                        ; preds = %sw.bb415, %sw.bb387, %sw.bb340, %sw.bb248, %sw.bb220, %sw.bb173, %sw.bb84, %sw.bb56, %sw.bb
  %state456 = getelementptr inbounds %struct.bchannel, ptr %hscx, i32 0, i32 4
  %387 = ptrtoint ptr %state456 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %bprotocol, ptr %state456, align 4
  br label %return

return:                                           ; preds = %if.end454, %do.end445, %if.else284.return_crit_edge, %do.end278, %do.end113
  %retval.0 = phi i32 [ -92, %do.end113 ], [ 0, %if.end454 ], [ -92, %do.end278 ], [ -92, %do.end445 ], [ -22, %if.else284.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_clear_bchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_ctrl_bchannel(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hscx_init(ptr nocapture noundef readonly %hx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 1
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %write_reg = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 8
  %hw = getelementptr inbounds %struct.ipac_hw, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %off = getelementptr inbounds %struct.hscx_hw, ptr %hx, i32 0, i32 3
  %6 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %off, align 1
  %add = add i8 %7, 39
  tail call void %3(ptr noundef %5, i8 noundef zeroext %add, i8 noundef zeroext -1) #10
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 4
  %write_reg4 = getelementptr inbounds %struct.ipac_hw, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %write_reg4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg4, align 8
  %hw6 = getelementptr inbounds %struct.ipac_hw, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %hw6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw6, align 4
  %14 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %off, align 1
  %add9 = add i8 %15, 45
  tail call void %11(ptr noundef %13, i8 noundef zeroext %add9, i8 noundef zeroext 0) #10
  %16 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ip, align 4
  %write_reg12 = getelementptr inbounds %struct.ipac_hw, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %write_reg12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg12, align 8
  %hw14 = getelementptr inbounds %struct.ipac_hw, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %hw14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw14, align 4
  %22 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %off, align 1
  %add17 = add i8 %23, 46
  tail call void %19(ptr noundef %21, i8 noundef zeroext %add17, i8 noundef zeroext 0) #10
  %24 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ip, align 4
  %type = getelementptr inbounds %struct.ipac_hw, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 8
  %and = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %write_reg56 = getelementptr inbounds %struct.ipac_hw, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %write_reg56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg56, align 8
  %hw58 = getelementptr inbounds %struct.ipac_hw, ptr %25, i32 0, i32 3
  %30 = ptrtoint ptr %hw58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw58, align 4
  %32 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %off, align 1
  %add61 = add i8 %33, 47
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void %29(ptr noundef %31, i8 noundef zeroext %add61, i8 noundef zeroext -123) #10
  %34 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ip, align 4
  %read_reg = getelementptr inbounds %struct.ipac_hw, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_reg, align 4
  %hw30 = getelementptr inbounds %struct.ipac_hw, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %hw30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw30, align 4
  %40 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %off, align 1
  %add33 = add i8 %41, 46
  %call = tail call zeroext i8 %37(ptr noundef %39, i8 noundef zeroext %add33) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hscx_init.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hscx_init, %if.then39)) #10
          to label %do.end [label %if.then39], !srcloc !458

if.then39:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ip, align 4
  %name = getelementptr inbounds %struct.ipac_hw, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name, align 8
  %conv41 = zext i8 %call to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hscx_init.__UNIQUE_ID_ddebug533, ptr noundef nonnull @.str.153, ptr noundef %45, i32 noundef %conv41) #10
  br label %do.end

do.end:                                           ; preds = %if.then39, %if.then
  %debug = getelementptr inbounds %struct.bchannel, ptr %hx, i32 0, i32 21
  %46 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug, align 4
  %and42 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.end.if.end63_crit_edge, label %do.end47

do.end.if.end63_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.end47:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ip, align 4
  %name50 = getelementptr inbounds %struct.ipac_hw, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name50, align 8
  %52 = and i8 %call, 15
  %and52 = zext i8 %52 to i32
  %arrayidx = getelementptr [16 x ptr], ptr @HSCXVer, i32 0, i32 %and52
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %51, ptr noundef %54) #13
  br label %if.end63

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %29(ptr noundef %31, i8 noundef zeroext %add61, i8 noundef zeroext -126) #10
  br label %if.end63

if.end63:                                         ; preds = %if.else, %do.end47, %do.end.if.end63_crit_edge
  %55 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ip, align 4
  %write_reg65 = getelementptr inbounds %struct.ipac_hw, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %write_reg65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_reg65, align 8
  %hw67 = getelementptr inbounds %struct.ipac_hw, ptr %56, i32 0, i32 3
  %59 = ptrtoint ptr %hw67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw67, align 4
  %61 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %off, align 1
  %add70 = add i8 %62, 44
  tail call void %58(ptr noundef %60, i8 noundef zeroext %add70, i8 noundef zeroext 48) #10
  %63 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ip, align 4
  %write_reg73 = getelementptr inbounds %struct.ipac_hw, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %write_reg73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_reg73, align 8
  %hw75 = getelementptr inbounds %struct.ipac_hw, ptr %64, i32 0, i32 3
  %67 = ptrtoint ptr %hw75 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw75, align 4
  %69 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %off, align 1
  %add78 = add i8 %70, 50
  tail call void %66(ptr noundef %68, i8 noundef zeroext %add78, i8 noundef zeroext 7) #10
  %71 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ip, align 4
  %write_reg81 = getelementptr inbounds %struct.ipac_hw, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %write_reg81 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write_reg81, align 8
  %hw83 = getelementptr inbounds %struct.ipac_hw, ptr %72, i32 0, i32 3
  %75 = ptrtoint ptr %hw83 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw83, align 4
  %77 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %off, align 1
  %add86 = add i8 %78, 51
  tail call void %74(ptr noundef %76, i8 noundef zeroext %add86, i8 noundef zeroext 7) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !47, !48, !49, !51, !53, !55, !56, !58, !59, !61, !63, !64, !66, !67, !68, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !84, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !140, !142, !143, !144, !146, !147, !149, !150, !151, !153, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !169, !170, !172, !173, !175, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !205, !206, !208, !209, !211, !212, !213, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !243, !244, !245, !247, !248, !250, !251, !252, !254, !255, !256, !258, !260, !262, !264, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !282, !284, !285, !287, !288, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !312, !313, !314, !316, !317, !318, !320, !322, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !359, !360, !362, !363, !364, !365, !367, !368, !369, !370, !372, !373, !374, !376, !377, !378, !380, !381, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !445, !446}
!llvm.named.register.sp = !{!447}
!llvm.module.flags = !{!448, !449, !450, !451, !452, !453, !454, !455}
!llvm.ident = !{!456}

!0 = !{ptr @__UNIQUE_ID_author457, !1, !"__UNIQUE_ID_author457", i1 false, i1 false}
!1 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_version458, !3, !"__UNIQUE_ID_version458", i1 false, i1 false}
!3 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 23, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file459, !9, !"__UNIQUE_ID_file459", i1 false, i1 false}
!9 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 24, i32 1}
!10 = !{ptr @__UNIQUE_ID_license460, !9, !"__UNIQUE_ID_license460", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 486, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mISDNisac_irq.__UNIQUE_ID_ddebug485, !12, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 492, i32 4}
!18 = !{ptr @mISDNisac_irq.__UNIQUE_ID_ddebug486, !17, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 494, i32 5}
!21 = !{ptr @mISDNisac_irq.__UNIQUE_ID_ddebug487, !20, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 501, i32 5}
!24 = !{ptr @mISDNisac_irq.__UNIQUE_ID_ddebug488, !23, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 510, i32 5}
!27 = !{ptr @mISDNisac_irq.__UNIQUE_ID_ddebug489, !26, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 528, i32 4}
!30 = !{ptr @mISDNisac_irq.__UNIQUE_ID_ddebug490, !29, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 530, i32 4}
!33 = !{ptr @mISDNisac_irq.__UNIQUE_ID_ddebug491, !32, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 533, i32 4}
!36 = !{ptr @mISDNisac_irq.__UNIQUE_ID_ddebug492, !35, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!37 = !{ptr @mISDNisac_irq.__UNIQUE_ID_ddebug493, !38, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!38 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 535, i32 5}
!39 = !{ptr @mISDNisac_irq.__UNIQUE_ID_ddebug494, !40, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!40 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 537, i32 5}
!41 = !{ptr @__ksymtab_mISDNisac_irq, !42, !"__ksymtab_mISDNisac_irq", i1 false, i1 false}
!42 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 549, i32 1}
!43 = !{ptr @__ksymtab_mISDNisac_init, !44, !"__ksymtab_mISDNisac_init", i1 false, i1 false}
!44 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 870, i32 1}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1157, i32 4}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mISDNipac_irq.__UNIQUE_ID_ddebug524, !46, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!49 = !{ptr @mISDNipac_irq.__UNIQUE_ID_ddebug525, !50, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!50 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1169, i32 4}
!51 = !{ptr @mISDNipac_irq.__UNIQUE_ID_ddebug526, !52, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!52 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1172, i32 5}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1174, i32 6}
!55 = !{ptr @mISDNipac_irq.__UNIQUE_ID_ddebug527, !54, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1188, i32 4}
!58 = !{ptr @mISDNipac_irq.__UNIQUE_ID_ddebug528, !57, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!59 = !{ptr @mISDNipac_irq.__UNIQUE_ID_ddebug529, !60, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!60 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1192, i32 4}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1202, i32 3}
!63 = !{ptr @mISDNipac_irq.__UNIQUE_ID_ddebug530, !62, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1205, i32 3}
!66 = !{ptr @mISDNipac_irq._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mISDNipac_irq._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @__ksymtab_mISDNipac_irq, !69, !"__ksymtab_mISDNipac_irq", i1 false, i1 false}
!69 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1209, i32 1}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1570, i32 3}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mISDNipac_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @mISDNipac_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @__ksymtab_mISDNipac_init, !76, !"__ksymtab_mISDNipac_init", i1 false, i1 false}
!76 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1620, i32 1}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1632, i32 2}
!79 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @isac_mod_cleanup._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @isac_mod_cleanup._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @__initcall__kmod_mISDNipac__538_1634_isac_mod_init6, !83, !"__initcall__kmod_mISDNipac__538_1634_isac_mod_init6", i1 false, i1 false}
!83 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1634, i32 1}
!84 = !{ptr @__exitcall_isac_mod_cleanup, !85, !"__exitcall_isac_mod_cleanup", i1 false, i1 false}
!85 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1635, i32 1}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 436, i32 2}
!88 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @isacsx_cic_irq.__UNIQUE_ID_ddebug481, !87, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!90 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 438, i32 3}
!92 = !{ptr @isacsx_cic_irq.__UNIQUE_ID_ddebug482, !91, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 36, i32 2}
!95 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ph_command.__UNIQUE_ID_ddebug461, !94, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 228, i32 3}
!99 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @isac_retransmit._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @isac_retransmit._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 233, i32 3}
!104 = !{ptr @isac_retransmit._entry.30, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @isac_retransmit._entry_ptr.32, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 153, i32 2}
!108 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @isac_fill_fifo.__UNIQUE_ID_ddebug466, !107, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 159, i32 3}
!112 = !{ptr @isac_fill_fifo.__UNIQUE_ID_ddebug467, !111, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 167, i32 39}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 169, i32 3}
!117 = !{ptr @isac_fill_fifo.__UNIQUE_ID_ddebug468, !116, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!118 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 457, i32 3}
!121 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @isacsx_rme_irq.__UNIQUE_ID_ddebug483, !120, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 474, i32 4}
!125 = !{ptr @isacsx_rme_irq.__UNIQUE_ID_ddebug484, !124, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 108, i32 2}
!128 = !{ptr @isac_empty_fifo.__UNIQUE_ID_ddebug463, !127, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 113, i32 4}
!131 = !{ptr @isac_empty_fifo._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @isac_empty_fifo._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 119, i32 3}
!135 = !{ptr @isac_empty_fifo.__UNIQUE_ID_ddebug464, !134, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!136 = !{ptr @.str.45, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 130, i32 39}
!138 = !{ptr @isac_empty_fifo.__UNIQUE_ID_ddebug465, !139, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!139 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 132, i32 3}
!140 = !{ptr @.str.46, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 181, i32 4}
!142 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @isac_rme_irq.__UNIQUE_ID_ddebug469, !141, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!144 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 187, i32 4}
!146 = !{ptr @isac_rme_irq.__UNIQUE_ID_ddebug470, !145, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!147 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 417, i32 2}
!149 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @isac_cisq_irq.__UNIQUE_ID_ddebug478, !148, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!151 = !{ptr @isac_cisq_irq.__UNIQUE_ID_ddebug479, !152, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!152 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 419, i32 3}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 426, i32 3}
!155 = !{ptr @isac_cisq_irq.__UNIQUE_ID_ddebug480, !154, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 246, i32 2}
!158 = !{ptr @.str.53, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @isac_mos_irq.__UNIQUE_ID_ddebug471, !157, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!160 = !{ptr @.str.54, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 252, i32 5}
!162 = !{ptr @isac_mos_irq._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @isac_mos_irq._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 266, i32 4}
!166 = !{ptr @isac_mos_irq.__UNIQUE_ID_ddebug472, !165, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!167 = !{ptr @.str.56, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 270, i32 3}
!169 = !{ptr @isac_mos_irq.__UNIQUE_ID_ddebug473, !168, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!170 = !{ptr @isac_mos_irq._entry.57, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 282, i32 5}
!172 = !{ptr @isac_mos_irq._entry_ptr.58, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @isac_mos_irq.__UNIQUE_ID_ddebug474, !174, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!174 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 296, i32 4}
!175 = !{ptr @.str.59, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 300, i32 3}
!177 = !{ptr @isac_mos_irq.__UNIQUE_ID_ddebug475, !176, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 317, i32 4}
!180 = !{ptr @isac_mos_irq._entry.60, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @isac_mos_irq._entry_ptr.62, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.64, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 335, i32 4}
!184 = !{ptr @isac_mos_irq._entry.63, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @isac_mos_irq._entry_ptr.65, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.66, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 371, i32 3}
!188 = !{ptr @isac_mos_irq.__UNIQUE_ID_ddebug476, !187, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!189 = !{ptr @.str.67, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 404, i32 3}
!191 = !{ptr @isac_mos_irq.__UNIQUE_ID_ddebug477, !190, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!192 = !{ptr @.str.68, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 100, i32 2}
!194 = !{ptr @.str.69, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @isac_ph_state_bh.__UNIQUE_ID_ddebug462, !193, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!196 = !{ptr @isac_init.__key, !197, !"__key", i1 false, i1 false}
!197 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 783, i32 2}
!198 = !{ptr @.str.70, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.71, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 789, i32 3}
!201 = !{ptr @.str.72, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @isac_init.__UNIQUE_ID_ddebug500, !200, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!203 = !{ptr @.str.73, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 791, i32 3}
!205 = !{ptr @isac_init.__UNIQUE_ID_ddebug501, !204, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!206 = !{ptr @.str.74, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 793, i32 3}
!208 = !{ptr @isac_init.__UNIQUE_ID_ddebug502, !207, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!209 = !{ptr @.str.75, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 803, i32 4}
!211 = !{ptr @isac_init._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @isac_init._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @isac_init.__UNIQUE_ID_ddebug503, !214, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!214 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 806, i32 3}
!215 = !{ptr @.str.76, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 815, i32 3}
!217 = !{ptr @isac_init.__UNIQUE_ID_ddebug504, !216, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!218 = !{ptr @.str.77, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 817, i32 3}
!220 = !{ptr @isac_init.__UNIQUE_ID_ddebug505, !219, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!221 = !{ptr @.str.78, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 819, i32 3}
!223 = !{ptr @isac_init.__UNIQUE_ID_ddebug506, !222, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!224 = !{ptr @.str.79, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 821, i32 3}
!226 = !{ptr @isac_init.__UNIQUE_ID_ddebug507, !225, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!227 = !{ptr @.str.80, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 824, i32 4}
!229 = !{ptr @isac_init.__UNIQUE_ID_ddebug508, !228, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!230 = !{ptr @.str.82, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 828, i32 4}
!232 = !{ptr @isac_init._entry.81, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @isac_init._entry_ptr.83, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.85, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 834, i32 4}
!236 = !{ptr @isac_init._entry.84, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @isac_init._entry_ptr.86, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.87, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 847, i32 3}
!240 = !{ptr @isac_init.__UNIQUE_ID_ddebug509, !239, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!241 = !{ptr @.str.88, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 631, i32 2}
!243 = !{ptr @.str.89, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @isac_l1cmd.__UNIQUE_ID_ddebug496, !242, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!245 = !{ptr @.str.90, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 685, i32 3}
!247 = !{ptr @isac_l1cmd.__UNIQUE_ID_ddebug497, !246, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!248 = !{ptr @.str.91, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 723, i32 3}
!250 = !{ptr @.str.92, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @dbusy_timer_handler.__UNIQUE_ID_ddebug498, !249, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!252 = !{ptr @.str.93, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 733, i32 5}
!254 = !{ptr @dbusy_timer_handler._entry, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @dbusy_timer_handler._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.94, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 767, i32 2}
!258 = !{ptr @.str.95, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 767, i32 20}
!260 = !{ptr @.str.96, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 767, i32 31}
!262 = !{ptr @.str.97, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 768, i32 2}
!264 = !{ptr @ISACVer, !265, !"ISACVer", i1 false, i1 false}
!265 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 766, i32 20}
!266 = !{ptr @.str.98, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 618, i32 3}
!268 = !{ptr @.str.99, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @isac_ctrl.__UNIQUE_ID_ddebug495, !267, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!270 = !{ptr @.str.100, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 745, i32 2}
!272 = !{ptr @.str.101, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @open_dchannel_caller.__UNIQUE_ID_ddebug499, !271, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!274 = !{ptr @.str.102, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1086, i32 4}
!276 = !{ptr @.str.103, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @ipac_irq.__UNIQUE_ID_ddebug518, !275, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!278 = !{ptr @ipac_irq.__UNIQUE_ID_ddebug519, !279, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!279 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1094, i32 4}
!280 = !{ptr @ipac_irq.__UNIQUE_ID_ddebug520, !281, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!281 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1102, i32 4}
!282 = !{ptr @.str.104, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1111, i32 2}
!284 = !{ptr @ipac_irq.__UNIQUE_ID_ddebug521, !283, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!285 = !{ptr @.str.105, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1126, i32 3}
!287 = !{ptr @ipac_irq.__UNIQUE_ID_ddebug522, !286, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!288 = !{ptr @.str.106, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1140, i32 3}
!290 = !{ptr @ipac_irq.__UNIQUE_ID_ddebug523, !289, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!291 = !{ptr @.str.107, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1032, i32 2}
!293 = !{ptr @.str.108, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @ipac_rme.__UNIQUE_ID_ddebug516, !292, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!295 = !{ptr @.str.109, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1037, i32 5}
!297 = !{ptr @ipac_rme._entry, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @ipac_rme._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.111, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1042, i32 5}
!301 = !{ptr @ipac_rme._entry.110, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @ipac_rme._entry_ptr.112, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.114, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1048, i32 5}
!305 = !{ptr @ipac_rme._entry.113, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @ipac_rme._entry_ptr.115, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.116, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1065, i32 3}
!309 = !{ptr @ipac_rme.__UNIQUE_ID_ddebug517, !308, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!310 = !{ptr @.str.117, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 928, i32 2}
!312 = !{ptr @.str.118, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @hscx_empty_fifo.__UNIQUE_ID_ddebug512, !311, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!314 = !{ptr @.str.119, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 939, i32 3}
!316 = !{ptr @hscx_empty_fifo._entry, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @hscx_empty_fifo._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.120, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 955, i32 27}
!320 = !{ptr @hscx_empty_fifo.__UNIQUE_ID_ddebug513, !321, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!321 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 957, i32 3}
!322 = !{ptr @.str.121, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 885, i32 3}
!324 = !{ptr @.str.122, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @waitforCEC.__UNIQUE_ID_ddebug510, !323, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!326 = !{ptr @.str.123, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 888, i32 3}
!328 = !{ptr @waitforCEC._entry, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @waitforCEC._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.124, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 985, i32 3}
!332 = !{ptr @.str.125, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @hscx_fill_fifo.__UNIQUE_ID_ddebug514, !331, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!334 = !{ptr @.str.126, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1000, i32 27}
!336 = !{ptr @hscx_fill_fifo.__UNIQUE_ID_ddebug515, !337, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!337 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1002, i32 3}
!338 = !{ptr @.str.127, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 905, i32 3}
!340 = !{ptr @.str.128, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @waitforXFW.__UNIQUE_ID_ddebug511, !339, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!342 = !{ptr @.str.129, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 908, i32 3}
!344 = !{ptr @waitforXFW._entry, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @waitforXFW._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.130, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1534, i32 2}
!348 = !{ptr @.str.131, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @ipac_dctrl.__UNIQUE_ID_ddebug535, !347, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!350 = !{ptr @.str.132, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1545, i32 4}
!352 = !{ptr @ipac_dctrl._entry, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @ipac_dctrl._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.133, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1548, i32 3}
!356 = !{ptr @ipac_dctrl.__UNIQUE_ID_ddebug536, !355, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!357 = !{ptr @.str.134, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1556, i32 3}
!359 = !{ptr @ipac_dctrl.__UNIQUE_ID_ddebug537, !358, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!360 = !{ptr @.str.135, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1517, i32 3}
!362 = !{ptr @.str.136, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @channel_ctrl._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @channel_ctrl._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.137, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1370, i32 3}
!367 = !{ptr @.str.138, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @hscx_l2l1._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @hscx_l2l1._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.139, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1214, i32 2}
!372 = !{ptr @.str.140, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @hscx_mode.__UNIQUE_ID_ddebug531, !371, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!374 = !{ptr @.str.141, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1248, i32 4}
!376 = !{ptr @hscx_mode._entry, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @hscx_mode._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @hscx_mode._entry.142, !379, !"_entry", i1 false, i1 false}
!379 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1284, i32 4}
!380 = !{ptr @hscx_mode._entry_ptr.143, !379, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @hscx_mode._entry.144, !382, !"_entry", i1 false, i1 false}
!382 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1320, i32 4}
!383 = !{ptr @hscx_mode._entry_ptr.145, !382, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.146, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1393, i32 2}
!386 = !{ptr @.str.147, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @hscx_bctrl.__UNIQUE_ID_ddebug532, !385, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!388 = !{ptr @.str.148, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1411, i32 3}
!390 = !{ptr @hscx_bctrl._entry, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @hscx_bctrl._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.149, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1467, i32 3}
!394 = !{ptr @.str.150, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @ipac_init.__UNIQUE_ID_ddebug534, !393, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!396 = !{ptr @.str.151, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1472, i32 4}
!398 = !{ptr @ipac_init._entry, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @ipac_init._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.152, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1441, i32 3}
!402 = !{ptr @.str.153, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @hscx_init.__UNIQUE_ID_ddebug533, !401, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!404 = !{ptr @.str.154, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1443, i32 4}
!406 = !{ptr @hscx_init._entry, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @hscx_init._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.155, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1424, i32 2}
!410 = !{ptr @.str.156, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1424, i32 8}
!412 = !{ptr @.str.157, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1424, i32 14}
!414 = !{ptr @.str.158, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1424, i32 20}
!416 = !{ptr @.str.159, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1424, i32 26}
!418 = !{ptr @.str.160, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1424, i32 32}
!420 = !{ptr @.str.161, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1424, i32 40}
!422 = !{ptr @.str.162, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1424, i32 46}
!424 = !{ptr @.str.163, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1425, i32 2}
!426 = !{ptr @.str.164, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1425, i32 8}
!428 = !{ptr @.str.165, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1425, i32 14}
!430 = !{ptr @.str.166, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1425, i32 21}
!432 = !{ptr @.str.167, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1425, i32 28}
!434 = !{ptr @.str.168, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1425, i32 35}
!436 = !{ptr @.str.169, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1425, i32 42}
!438 = !{ptr @.str.170, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1425, i32 49}
!440 = !{ptr @HSCXVer, !441, !"HSCXVer", i1 false, i1 false}
!441 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1423, i32 20}
!442 = !{ptr @.str.171, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/isdn/hardware/mISDN/mISDNipac.c", i32 1625, i32 2}
!444 = !{ptr @.str.172, !443, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @isac_mod_init._entry, !443, !"_entry", i1 false, i1 false}
!446 = !{ptr @isac_mod_init._entry_ptr, !443, !"_entry_ptr", i1 false, i1 false}
!447 = !{!"sp"}
!448 = !{i32 1, !"wchar_size", i32 2}
!449 = !{i32 1, !"min_enum_size", i32 4}
!450 = !{i32 8, !"branch-target-enforcement", i32 0}
!451 = !{i32 8, !"sign-return-address", i32 0}
!452 = !{i32 8, !"sign-return-address-all", i32 0}
!453 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!454 = !{i32 7, !"uwtable", i32 1}
!455 = !{i32 7, !"frame-pointer", i32 2}
!456 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!457 = !{!"branch_weights", i32 1, i32 2000}
!458 = !{i64 2148243060, i64 2148243065, i64 2148243078, i64 2148243122, i64 2148243156, i64 2148243177}
