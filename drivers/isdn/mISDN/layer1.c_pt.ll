; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/layer1.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/layer1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+l1_event\22, \22a\22\09"
module asm "\09.weak\09__crc_l1_event\09\09\09\09"
module asm "\09.long\09__crc_l1_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_l1_event:\09\09\09\09\09"
module asm "\09.asciz \09\22l1_event\22\09\09\09\09\09"
module asm "__kstrtabns_l1_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+create_l1\22, \22a\22\09"
module asm "\09.weak\09__crc_create_l1\09\09\09\09"
module asm "\09.long\09__crc_create_l1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_create_l1:\09\09\09\09\09"
module asm "\09.asciz \09\22create_l1\22\09\09\09\09\09"
module asm "__kstrtabns_create_l1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.Fsm = type { ptr, i32, i32, ptr, ptr }
%struct.FsmNode = type { i32, i32, ptr }
%struct.layer1 = type { i32, %struct.FsmInst, %struct.FsmTimer, %struct.FsmTimer, i32, i32, ptr, ptr }
%struct.FsmInst = type { ptr, i32, i32, ptr, i32, ptr }
%struct.FsmTimer = type { ptr, %struct.timer_list, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dchannel = type { %struct.mISDNdevice, i32, %struct.work_struct, ptr, i32, ptr, ptr, i32, %struct.timer_list, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32 }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }

@debug = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@l1_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s %x unhandled\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l1_event\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/isdn/mISDN/layer1.c\00", [36 x i8] zeroinitializer }, align 32
@l1_event._entry_ptr = internal global ptr @l1_event._entry, section ".printk_index", align 4
@__kstrtab_l1_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_l1_event = external dso_local constant [0 x i8], align 1
@__ksymtab_l1_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @l1_event to i32), ptr @__kstrtab_l1_event, ptr @__kstrtabns_l1_event }, section "___ksymtab+l1_event", align 4
@create_l1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013kmalloc struct layer1 failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"create_l1\00", [22 x i8] zeroinitializer }, align 32
@create_l1._entry_ptr = internal global ptr @create_l1._entry, section ".printk_index", align 4
@l1fsm_s = internal global { %struct.Fsm, [44 x i8] } zeroinitializer, align 32
@__kstrtab_create_l1 = external dso_local constant [0 x i8], align 1
@__kstrtabns_create_l1 = external dso_local constant [0 x i8], align 1
@__ksymtab_create_l1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @create_l1 to i32), ptr @__kstrtab_create_l1, ptr @__kstrtabns_create_l1 }, section "___ksymtab+create_l1", align 4
@strL1Event = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [48 x i8] zeroinitializer }, align 32
@strL1SState = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [36 x i8] zeroinitializer }, align 32
@L1SFnList = internal global { [44 x %struct.FsmNode], [144 x i8] } { [44 x %struct.FsmNode] [%struct.FsmNode { i32 1, i32 0, ptr @l1_activate_s }, %struct.FsmNode { i32 4, i32 0, ptr @l1_activate_no }, %struct.FsmNode { i32 6, i32 0, ptr @l1_activate_no }, %struct.FsmNode { i32 1, i32 2, ptr @l1_reset }, %struct.FsmNode { i32 2, i32 2, ptr @l1_reset }, %struct.FsmNode { i32 3, i32 2, ptr @l1_reset }, %struct.FsmNode { i32 4, i32 2, ptr @l1_reset }, %struct.FsmNode { i32 5, i32 2, ptr @l1_reset }, %struct.FsmNode { i32 6, i32 2, ptr @l1_reset }, %struct.FsmNode { i32 1, i32 3, ptr @l1_deact_cnf }, %struct.FsmNode { i32 2, i32 3, ptr @l1_deact_cnf }, %struct.FsmNode { i32 3, i32 3, ptr @l1_deact_cnf }, %struct.FsmNode { i32 4, i32 3, ptr @l1_deact_cnf }, %struct.FsmNode { i32 5, i32 3, ptr @l1_deact_cnf }, %struct.FsmNode { i32 6, i32 3, ptr @l1_deact_cnf }, %struct.FsmNode { i32 4, i32 4, ptr @l1_deact_req_s }, %struct.FsmNode { i32 5, i32 4, ptr @l1_deact_req_s }, %struct.FsmNode { i32 6, i32 4, ptr @l1_deact_req_s }, %struct.FsmNode { i32 1, i32 5, ptr @l1_power_up_s }, %struct.FsmNode { i32 2, i32 6, ptr @l1_go_F5 }, %struct.FsmNode { i32 4, i32 6, ptr @l1_go_F8 }, %struct.FsmNode { i32 5, i32 6, ptr @l1_go_F8 }, %struct.FsmNode { i32 1, i32 7, ptr @l1_info2_ind }, %struct.FsmNode { i32 2, i32 7, ptr @l1_info2_ind }, %struct.FsmNode { i32 3, i32 7, ptr @l1_info2_ind }, %struct.FsmNode { i32 5, i32 7, ptr @l1_info2_ind }, %struct.FsmNode { i32 6, i32 7, ptr @l1_info2_ind }, %struct.FsmNode { i32 1, i32 8, ptr @l1_info4_ind }, %struct.FsmNode { i32 2, i32 8, ptr @l1_info4_ind }, %struct.FsmNode { i32 3, i32 8, ptr @l1_info4_ind }, %struct.FsmNode { i32 4, i32 8, ptr @l1_info4_ind }, %struct.FsmNode { i32 6, i32 8, ptr @l1_info4_ind }, %struct.FsmNode { i32 1, i32 11, ptr @l1_timer3 }, %struct.FsmNode { i32 2, i32 11, ptr @l1_timer3 }, %struct.FsmNode { i32 3, i32 11, ptr @l1_timer3 }, %struct.FsmNode { i32 4, i32 11, ptr @l1_timer3 }, %struct.FsmNode { i32 6, i32 11, ptr @l1_timer3 }, %struct.FsmNode { i32 5, i32 10, ptr @l1_timer_act }, %struct.FsmNode { i32 1, i32 9, ptr @l1_timer_deact }, %struct.FsmNode { i32 2, i32 9, ptr @l1_timer_deact }, %struct.FsmNode { i32 3, i32 9, ptr @l1_timer_deact }, %struct.FsmNode { i32 4, i32 9, ptr @l1_timer_deact }, %struct.FsmNode { i32 5, i32 9, ptr @l1_timer_deact }, %struct.FsmNode { i32 6, i32 9, ptr @l1_timer_deact }], [144 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@l1m_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s: %pV\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l1m_debug\00", [22 x i8] zeroinitializer }, align 32
@l1m_debug._entry_ptr = internal global ptr @l1m_debug._entry, section ".printk_index", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EV_PH_ACTIVATE\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EV_PH_DEACTIVATE\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EV_RESET_IND\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EV_DEACT_CNF\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EV_DEACT_IND\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EV_POWER_UP\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EV_ANYSIG_IND\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EV_INFO2_IND\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EV_INFO4_IND\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EV_TIMER_DEACT\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EV_TIMER_ACT\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EV_TIMER3\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST_L1_F2\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST_L1_F3\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST_L1_F4\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST_L1_F5\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST_L1_F6\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST_L1_F7\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST_L1_F8\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 257, i64 512, i64 33282, i64 34050, i64 34306, i64 34562, i64 34818, i64 36866, i64 37122, i64 37378, i64 37890]
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 17, i32 15 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 365, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 379, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [8 x i8] c"l1fsm_s\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 33, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"strL1Event\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 75, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"strL1SState\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 47, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"L1SFnList\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 249, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 103, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 77, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 78, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 79, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 80, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 81, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 82, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 83, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 84, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 85, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 86, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 87, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 88, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 49, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 50, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 51, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 52, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 53, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 54, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [31 x i8] c"../drivers/isdn/mISDN/layer1.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 55, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab_create_l1, ptr @__ksymtab_l1_event, ptr @create_l1._entry, ptr @create_l1._entry_ptr, ptr @l1_event._entry, ptr @l1_event._entry_ptr, ptr @l1m_debug._entry, ptr @l1m_debug._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @l1fsm_s, ptr @strL1Event, ptr @strL1SState, ptr @L1SFnList, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_l1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1fsm_s to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strL1Event to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strL1SState to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @L1SFnList to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1m_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l1_event(ptr noundef %l1, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %l1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %sw.default [
    i32 36866, label %sw.bb
    i32 37378, label %sw.bb1
    i32 37122, label %sw.bb4
    i32 37890, label %sw.bb7
    i32 34818, label %sw.bb10
    i32 34562, label %sw.bb13
    i32 33282, label %sw.bb16
    i32 34050, label %sw.bb19
    i32 34306, label %sw.bb22
    i32 257, label %sw.bb25
    i32 512, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %l1m = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 1
  %call = tail call i32 @mISDN_FsmEvent(ptr noundef %l1m, i32 noundef 2, ptr noundef null) #7
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %l1m2 = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 1
  %call3 = tail call i32 @mISDN_FsmEvent(ptr noundef %l1m2, i32 noundef 4, ptr noundef null) #7
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %l1m5 = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 1
  %call6 = tail call i32 @mISDN_FsmEvent(ptr noundef %l1m5, i32 noundef 5, ptr noundef null) #7
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %l1m8 = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 1
  %call9 = tail call i32 @mISDN_FsmEvent(ptr noundef %l1m8, i32 noundef 3, ptr noundef null) #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %l1m11 = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 1
  %call12 = tail call i32 @mISDN_FsmEvent(ptr noundef %l1m11, i32 noundef 6, ptr noundef null) #7
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %l1m14 = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 1
  %call15 = tail call i32 @mISDN_FsmEvent(ptr noundef %l1m14, i32 noundef 6, ptr noundef null) #7
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %l1m17 = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 1
  %call18 = tail call i32 @mISDN_FsmEvent(ptr noundef %l1m17, i32 noundef 7, ptr noundef null) #7
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %l1m20 = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 1
  %call21 = tail call i32 @mISDN_FsmEvent(ptr noundef %l1m20, i32 noundef 8, ptr noundef null) #7
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %l1m23 = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 1
  %call24 = tail call i32 @mISDN_FsmEvent(ptr noundef %l1m23, i32 noundef 8, ptr noundef null) #7
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  %1 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %l1, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool27.not = icmp eq i32 %3, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %dcb = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 7
  %4 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcb, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 6
  %6 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dch, align 4
  %call29 = tail call i32 %5(ptr noundef %7, i32 noundef 258) #7
  br label %cleanup

if.else:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef nonnull %l1) #7
  %l1m32 = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 1
  %call33 = tail call i32 @mISDN_FsmEvent(ptr noundef %l1m32, i32 noundef 0, ptr noundef null) #7
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  %timerX.i = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 3
  tail call void @mISDN_FsmDelTimer(ptr noundef %timerX.i, i32 noundef 0) #7
  %timer3.i = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 2
  tail call void @mISDN_FsmDelTimer(ptr noundef %timer3.i, i32 noundef 0) #7
  %dch.i = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 6
  %8 = ptrtoint ptr %dch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dch.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %sw.bb35.release_l1.exit_crit_edge, label %if.then.i

sw.bb35.release_l1.exit_crit_edge:                ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_l1.exit

if.then.i:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  %l12.i = getelementptr inbounds %struct.dchannel, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %l12.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %l12.i, align 8
  br label %release_l1.exit

release_l1.exit:                                  ; preds = %if.then.i, %sw.bb35.release_l1.exit_crit_edge
  tail call void @module_put(ptr noundef null) #7
  tail call void @kfree(ptr noundef nonnull %l1) #7
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %and = and i32 %event, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 39424, i32 %and)
  %cmp = icmp eq i32 %and, 39424
  br i1 %cmp, label %if.then36, label %if.end44

if.then36:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %and37 = and i32 %event, 255
  %11 = tail call i32 @llvm.umax.i32(i32 %and37, i32 5)
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 30)
  %t3_value = getelementptr inbounds %struct.layer1, ptr %l1, i32 0, i32 5
  %13 = ptrtoint ptr %t3_value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %t3_value, align 4
  br label %cleanup

if.end44:                                         ; preds = %sw.default
  %14 = load ptr, ptr @debug, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and45 = and i32 %16, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %do.end

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %event) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end44.cleanup_crit_edge, %if.then36, %release_l1.exit, %if.else, %if.then28, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %release_l1.exit ], [ 0, %if.then28 ], [ 0, %if.else ], [ 0, %sw.bb22 ], [ 0, %sw.bb19 ], [ 0, %sw.bb16 ], [ 0, %sw.bb13 ], [ 0, %sw.bb10 ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %do.end ], [ -22, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_FsmEvent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_l1(ptr noundef %dch, ptr noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 164) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %l1m = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %l1m to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @l1fsm_s, ptr %l1m, align 4
  %state = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %call7.i.i, align 8
  %t3_value = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %t3_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7000, ptr %t3_value, align 8
  %5 = load ptr, ptr @debug, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 512
  %debug = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %debug, align 4
  %userdata = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %userdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %userdata, align 8
  %userint = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %userint to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %userint, align 4
  %printdebug = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %printdebug to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @l1m_debug, ptr %printdebug, align 8
  %dch7 = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %dch7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dch, ptr %dch7, align 4
  %dcb8 = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %dcb8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dcb, ptr %dcb8, align 8
  %timer3 = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 2
  tail call void @mISDN_FsmInitTimer(ptr noundef %l1m, ptr noundef %timer3) #7
  %timerX = getelementptr inbounds %struct.layer1, ptr %call7.i.i, i32 0, i32 3
  tail call void @mISDN_FsmInitTimer(ptr noundef %l1m, ptr noundef %timerX) #7
  tail call void @__module_get(ptr noundef null) #7
  %l1 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %14 = ptrtoint ptr %l1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %l1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1m_debug(ptr nocapture noundef readonly %fi, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %va = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #7
  %3 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !77
  call void @llvm.va_start(ptr nonnull %va)
  %4 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fmt, ptr %vaf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %va, ptr %2, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dch, align 4
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %7, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.mISDNdevice, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %entry.dev_name.exit_crit_edge ]
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i, ptr noundef nonnull %vaf) #10
  call void @llvm.va_end(ptr nonnull %va)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmInitTimer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @Isdnl1_Init(ptr noundef %deb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %deb, ptr @debug, align 4
  store i32 7, ptr getelementptr inbounds (%struct.Fsm, ptr @l1fsm_s, i32 0, i32 1), align 4
  store i32 12, ptr getelementptr inbounds (%struct.Fsm, ptr @l1fsm_s, i32 0, i32 2), align 4
  store ptr @strL1Event, ptr getelementptr inbounds (%struct.Fsm, ptr @l1fsm_s, i32 0, i32 3), align 4
  store ptr @strL1SState, ptr getelementptr inbounds (%struct.Fsm, ptr @l1fsm_s, i32 0, i32 4), align 4
  %call = tail call i32 @mISDN_FsmNew(ptr noundef nonnull @l1fsm_s, ptr noundef nonnull @L1SFnList, i32 noundef 44) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_FsmNew(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Isdnl1_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mISDN_FsmFree(ptr noundef nonnull @l1fsm_s) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmDelTimer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_activate_s(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %timer3 = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 2
  %t3_value = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %t3_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t3_value, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %timer3, i32 noundef %3, i32 noundef 11, ptr noundef null, i32 noundef 2) #7
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %1) #7
  %dcb = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcb, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dch, align 4
  %call1 = tail call i32 %5(ptr noundef %7, i32 noundef 35330) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_activate_no(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %1, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %call5 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %1) #7
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dcb = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dcb, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dch, align 4
  %call10 = tail call i32 %9(ptr noundef %11, i32 noundef 36610) #7
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %dcb11 = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %dcb11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dcb11, align 4
  %dch12 = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dch12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dch12, align 4
  %call13 = tail call i32 %13(ptr noundef %15, i32 noundef 514) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_reset(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_deact_cnf(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 1) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dcb = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dcb, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dch, align 4
  %call1 = tail call i32 %6(ptr noundef %8, i32 noundef 35586) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_deact_req_s(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 1) #7
  %timerX = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 3
  tail call void @mISDN_FsmRestartTimer(ptr noundef %timerX, i32 noundef 550, i32 noundef 9, ptr noundef null, i32 noundef 2) #7
  %call = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_power_up_s(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 2) #7
  %dcb = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dcb, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dch, align 4
  %call1 = tail call i32 %6(ptr noundef %8, i32 noundef 33538) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_go_F5(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_go_F8(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_info2_ind(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 4) #7
  %dcb = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dch, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef 33538) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_info4_ind(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 5) #7
  %dcb = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dch, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef 33538) #7
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %timerX = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 3
  tail call void @mISDN_FsmDelTimer(ptr noundef %timerX, i32 noundef 4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %1, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then5:                                         ; preds = %if.end
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end10_crit_edge, label %if.then9

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %timer3 = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 2
  tail call void @mISDN_FsmDelTimer(ptr noundef %timer3, i32 noundef 3) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then5.if.end10_crit_edge
  %timerX11 = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 3
  tail call void @mISDN_FsmRestartTimer(ptr noundef %timerX11, i32 noundef 110, i32 noundef 10, ptr noundef null, i32 noundef 2) #7
  %call13 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %1) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_timer3(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %1) #7
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dcb = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dch, align 4
  %call7 = tail call i32 %3(ptr noundef %5, i32 noundef 36610) #7
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %dcb8 = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %dcb8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcb8, align 4
  %dch9 = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dch9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dch9, align 4
  %call10 = tail call i32 %7(ptr noundef %9, i32 noundef 514) #7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %state = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.not = icmp eq i32 %11, 4
  br i1 %cmp.not, label %if.end11.if.end13_crit_edge, label %if.then12

if.end11.if.end13_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 1) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end11.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_timer_act(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %1) #7
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %1) #7
  %dcb = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dch, align 4
  %call3 = tail call i32 %3(ptr noundef %5, i32 noundef 258) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1_timer_deact(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %1) #7
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %1) #7
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dcb = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb, align 4
  %dch = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dch, align 4
  %call5 = tail call i32 %3(ptr noundef %5, i32 noundef 36610) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dcb6 = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %dcb6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcb6, align 4
  %dch7 = getelementptr inbounds %struct.layer1, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dch7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dch7, align 4
  %call8 = tail call i32 %7(ptr noundef %9, i32 noundef 514) #7
  %10 = ptrtoint ptr %dcb6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dcb6, align 4
  %12 = ptrtoint ptr %dch7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dch7, align 4
  %call11 = tail call i32 %11(ptr noundef %13, i32 noundef 35842) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmRestartTimer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmChangeState(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/layer1.c", i32 365, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @l1_event._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @l1_event._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_l1_event, !7, !"__ksymtab_l1_event", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/layer1.c", i32 371, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/isdn/mISDN/layer1.c", i32 379, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @create_l1._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @create_l1._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_create_l1, !14, !"__ksymtab_create_l1", i1 false, i1 false}
!14 = !{!"../drivers/isdn/mISDN/layer1.c", i32 398, i32 1}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/isdn/mISDN/layer1.c", i32 17, i32 15}
!17 = !{ptr @l1fsm_s, !18, !"l1fsm_s", i1 false, i1 false}
!18 = !{!"../drivers/isdn/mISDN/layer1.c", i32 33, i32 12}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/isdn/mISDN/layer1.c", i32 103, i32 2}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @l1m_debug._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @l1m_debug._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/isdn/mISDN/layer1.c", i32 77, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/isdn/mISDN/layer1.c", i32 78, i32 2}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/isdn/mISDN/layer1.c", i32 79, i32 2}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/isdn/mISDN/layer1.c", i32 80, i32 2}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/isdn/mISDN/layer1.c", i32 81, i32 2}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/isdn/mISDN/layer1.c", i32 82, i32 2}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/isdn/mISDN/layer1.c", i32 83, i32 2}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/isdn/mISDN/layer1.c", i32 84, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/isdn/mISDN/layer1.c", i32 85, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/isdn/mISDN/layer1.c", i32 86, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/isdn/mISDN/layer1.c", i32 87, i32 2}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/isdn/mISDN/layer1.c", i32 88, i32 2}
!48 = !{ptr @strL1Event, !49, !"strL1Event", i1 false, i1 false}
!49 = !{!"../drivers/isdn/mISDN/layer1.c", i32 75, i32 14}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/isdn/mISDN/layer1.c", i32 49, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/isdn/mISDN/layer1.c", i32 50, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/isdn/mISDN/layer1.c", i32 51, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/mISDN/layer1.c", i32 52, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/isdn/mISDN/layer1.c", i32 53, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/isdn/mISDN/layer1.c", i32 54, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/isdn/mISDN/layer1.c", i32 55, i32 2}
!64 = !{ptr @strL1SState, !65, !"strL1SState", i1 false, i1 false}
!65 = !{!"../drivers/isdn/mISDN/layer1.c", i32 47, i32 14}
!66 = !{ptr @L1SFnList, !67, !"L1SFnList", i1 false, i1 false}
!67 = !{!"../drivers/isdn/mISDN/layer1.c", i32 249, i32 23}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
