; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/tei.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/tei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.Fsm = type { ptr, i32, i32, ptr, ptr }
%struct.FsmNode = type { i32, i32, ptr }
%struct.layer2 = type { %struct.list_head, %struct.mISDNchannel, i32, i32, ptr, i8, i8, %struct.laddr, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.FsmInst, %struct.FsmTimer, %struct.FsmTimer, i32, i32, i32, i32, i32, [8 x ptr], %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.list_head = type { ptr, ptr }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.laddr = type { i8, i8 }
%struct.FsmInst = type { ptr, i32, i32, ptr, i32, ptr }
%struct.FsmTimer = type { ptr, %struct.timer_list, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.teimgr = type { i32, i32, %struct.FsmInst, %struct.FsmTimer, i32, i32, ptr, ptr }
%struct.manager = type { %struct.mISDNchannel, %struct.mISDNchannel, i32, %struct.list_head, %struct.rwlock_t, %struct.FsmInst, %struct.FsmTimer, %struct.sk_buff_head, ptr, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mISDNstack = type { i32, ptr, ptr, ptr, %struct.wait_queue_head, %struct.sk_buff_head, %struct.list_head, ptr, %struct.mISDNchannel, %struct.mutex, %struct.mISDN_sock_list }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mISDN_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.hlist_head = type { ptr }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }

@debug = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@l2_tei._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: cmd(%x)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"l2_tei\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/isdn/mISDN/tei.c\00", [39 x i8] zeroinitializer }, align 32
@l2_tei._entry_ptr = internal global ptr @l2_tei._entry, section ".printk_index", align 4
@create_teimanager.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mgr->lock\00", [21 x i8] zeroinitializer }, align 32
@deactfsm = internal global { %struct.Fsm, [44 x i8] } zeroinitializer, align 32
@teifsmu = internal global { %struct.Fsm, [44 x i8] } zeroinitializer, align 32
@strTeiEvent = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], [60 x i8] zeroinitializer }, align 32
@strTeiState = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70], [20 x i8] zeroinitializer }, align 32
@TeiFnListUser = internal global { [11 x %struct.FsmNode], [60 x i8] } { [11 x %struct.FsmNode] [%struct.FsmNode { i32 0, i32 0, ptr @tei_id_request }, %struct.FsmNode { i32 0, i32 1, ptr @tei_id_test_dup }, %struct.FsmNode { i32 0, i32 7, ptr @tei_id_verify }, %struct.FsmNode { i32 0, i32 6, ptr @tei_id_remove }, %struct.FsmNode { i32 0, i32 4, ptr @tei_id_chk_req }, %struct.FsmNode { i32 1, i32 8, ptr @tei_id_req_tout }, %struct.FsmNode { i32 1, i32 1, ptr @tei_id_assign }, %struct.FsmNode { i32 1, i32 3, ptr @tei_id_denied }, %struct.FsmNode { i32 2, i32 8, ptr @tei_id_ver_tout }, %struct.FsmNode { i32 2, i32 6, ptr @tei_id_remove }, %struct.FsmNode { i32 2, i32 4, ptr @tei_id_chk_req }], [60 x i8] zeroinitializer }, align 32
@teifsmn = internal global { %struct.Fsm, [44 x i8] } zeroinitializer, align 32
@TeiFnListNet = internal global { [5 x %struct.FsmNode], [36 x i8] } { [5 x %struct.FsmNode] [%struct.FsmNode { i32 0, i32 2, ptr @tei_assign_req }, %struct.FsmNode { i32 0, i32 7, ptr @tei_id_verify_net }, %struct.FsmNode { i32 0, i32 4, ptr @tei_id_chk_req_net }, %struct.FsmNode { i32 2, i32 8, ptr @tei_id_ver_tout_net }, %struct.FsmNode { i32 2, i32 5, ptr @tei_id_chk_resp }], [36 x i8] zeroinitializer }, align 32
@strDeactEvent = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], [40 x i8] zeroinitializer }, align 32
@strDeactState = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.98, ptr @.str.99, ptr @.str.100], [20 x i8] zeroinitializer }, align 32
@DeactFnList = internal global { [6 x %struct.FsmNode], [56 x i8] } { [6 x %struct.FsmNode] [%struct.FsmNode { i32 0, i32 1, ptr @da_activate }, %struct.FsmNode { i32 2, i32 3, ptr @da_deactivate_ind }, %struct.FsmNode { i32 2, i32 2, ptr @da_deactivate }, %struct.FsmNode { i32 1, i32 0, ptr @da_activate }, %struct.FsmNode { i32 1, i32 4, ptr @da_ui }, %struct.FsmNode { i32 1, i32 5, ptr @da_timer }], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@mgr_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: prim(%x) id(%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mgr_send\00", [23 x i8] zeroinitializer }, align 32
@mgr_send._entry_ptr = internal global ptr @mgr_send._entry, section ".printk_index", align 4
@ph_data_ind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: short mgr frame %d/8\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ph_data_ind\00", [20 x i8] zeroinitializer }, align 32
@ph_data_ind._entry_ptr = internal global ptr @ph_data_ind._entry, section ".printk_index", align 4
@new_tei_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\014%s:No free tei\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"new_tei_req\00", [20 x i8] zeroinitializer }, align 32
@new_tei_req._entry_ptr = internal global ptr @new_tei_req._entry, section ".printk_index", align 4
@get_free_tei._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: more as 63 dynamic tei for one device\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_free_tei\00", [19 x i8] zeroinitializer }, align 32
@get_free_tei._entry_ptr = internal global ptr @get_free_tei._entry, section ".printk_index", align 4
@create_new_tei._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s:no memory for layer2\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"create_new_tei\00", [17 x i8] zeroinitializer }, align 32
@create_new_tei._entry_ptr = internal global ptr @create_new_tei._entry, section ".printk_index", align 4
@create_new_tei._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s:no memory for teimgr\0A\00", [37 x i8] zeroinitializer }, align 32
@create_new_tei._entry_ptr.17 = internal global ptr @create_new_tei._entry.15, section ".printk_index", align 4
@create_new_tei._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\014%s:no free id\0A\00", [47 x i8] zeroinitializer }, align 32
@create_new_tei._entry_ptr.20 = internal global ptr @create_new_tei._entry.18, section ".printk_index", align 4
@create_new_tei._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014%s: cannot open L1\0A\00", [42 x i8] zeroinitializer }, align 32
@create_new_tei._entry_ptr.23 = internal global ptr @create_new_tei._entry.21, section ".printk_index", align 4
@tei_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017sapi(%d) tei(%d): %pV\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tei_debug\00", [22 x i8] zeroinitializer }, align 32
@tei_debug._entry_ptr = internal global ptr @tei_debug._entry, section ".printk_index", align 4
@get_free_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: more as 63 layer2 for one device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_free_id\00", [20 x i8] zeroinitializer }, align 32
@get_free_id._entry_ptr = internal global ptr @get_free_id._entry, section ".printk_index", align 4
@get_free_id._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_free_id._entry_ptr.29 = internal global ptr @get_free_id._entry.28, section ".printk_index", align 4
@put_tei_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: no skb for tei msg\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"put_tei_msg\00", [20 x i8] zeroinitializer }, align 32
@put_tei_msg._entry_ptr = internal global ptr @put_tei_msg._entry, section ".printk_index", align 4
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tei handler mt %x\00", [46 x i8] zeroinitializer }, align 32
@teiup_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014%s: err=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"teiup_create\00", [19 x i8] zeroinitializer }, align 32
@teiup_create._entry_ptr = internal global ptr @teiup_create._entry, section ".printk_index", align 4
@mgr_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s(%x, %p)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mgr_ctrl\00", [23 x i8] zeroinitializer }, align 32
@mgr_ctrl._entry_ptr = internal global ptr @mgr_ctrl._entry, section ".printk_index", align 4
@create_teimgr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s proto(%x) adr(%d %d %d %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"create_teimgr\00", [18 x i8] zeroinitializer }, align 32
@create_teimgr._entry_ptr = internal global ptr @create_teimgr._entry, section ".printk_index", align 4
@create_teimgr._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: only one network manager is allowed\0A\00", [53 x i8] zeroinitializer }, align 32
@create_teimgr._entry_ptr.41 = internal global ptr @create_teimgr._entry.39, section ".printk_index", align 4
@create_teimgr._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013kmalloc teimgr failed\0A\00", [39 x i8] zeroinitializer }, align 32
@create_teimgr._entry_ptr.44 = internal global ptr @create_teimgr._entry.42, section ".printk_index", align 4
@check_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.45, ptr @.str.2, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_data\00", [21 x i8] zeroinitializer }, align 32
@check_data._entry_ptr = internal global ptr @check_data._entry, section ".printk_index", align 4
@check_data._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: SABME sapi(%d) tei(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@check_data._entry_ptr.48 = internal global ptr @check_data._entry.46, section ".printk_index", align 4
@check_data._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: failed to create new tei\0A\00", [32 x i8] zeroinitializer }, align 32
@check_data._entry_ptr.51 = internal global ptr @check_data._entry.49, section ".printk_index", align 4
@mgr_bcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s ch%d prim(%x) addr(%x) err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mgr_bcast\00", [22 x i8] zeroinitializer }, align 32
@mgr_bcast._entry_ptr = internal global ptr @mgr_bcast._entry, section ".printk_index", align 4
@mgr_bcast._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s ch%d addr %x no mem\0A\00", [38 x i8] zeroinitializer }, align 32
@mgr_bcast._entry_ptr.56 = internal global ptr @mgr_bcast._entry.54, section ".printk_index", align 4
@da_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017mgr(%d): %pV\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"da_debug\00", [23 x i8] zeroinitializer }, align 32
@da_debug._entry_ptr = internal global ptr @da_debug._entry, section ".printk_index", align 4
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EV_IDREQ\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EV_ASSIGN\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EV_ASSIGN_REQ\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EV_DENIED\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EV_CHKREQ\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EV_CHKRESP\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EV_REMOVE\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EV_VERIFY\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EV_TIMER\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ST_TEI_NOP\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST_TEI_IDREQ\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ST_TEI_IDVERIFY\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"assign request for already assigned tei %d\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"assign request ri %d\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"foreign identity assign ri %d tei %d\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"possible duplicate assignment tei %d\00", [59 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"id verify request for tei %d\00", [35 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"identity remove tei %d\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"identity check req tei %d\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"assign req(%d) ri %d\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assign req failed\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"identity assign ri %d tei %d\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"identity denied ri %d tei %d\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"id verify req(%d) for tei %d\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"verify req for tei %d failed\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net tei assign request without tei\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net assign request ri %d teim %d\00", [63 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"identity verify req tei %d/%d\00", [34 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"id check request for tei %d\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"check req for tei %d successful\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"id check req(%d) for tei %d\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"check req for tei %d failed\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"identity check resp tei %d\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EV_ACTIVATE\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EV_ACTIVATE_IND\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EV_DEACTIVATE\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EV_DEACTIVATE_IND\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EV_UI\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EV_DATIMER\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST_L1_DEACT\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ST_L1_DEACT_PENDING\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST_L1_ACTIV\00", [20 x i8] zeroinitializer }, align 32
@switch.table.mgr_send = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 3, i32 4, i32 5, i32 6, i32 7], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.101 = internal global [7 x i64] [i64 5, i64 32, i64 258, i64 514, i64 8194, i64 12548, i64 24578]
@__sancov_gen_cov_switch_values.102 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 127]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 2147764550, i64 2147764552]
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 28, i32 15 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 941, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1352, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [9 x i8] c"deactfsm\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 30, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant [8 x i8] c"teifsmu\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 31, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"strTeiEvent\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 205, i32 14 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"strTeiState\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 184, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"TeiFnListUser\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 635, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant [8 x i8] c"teifsmn\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 32, i32 19 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"TeiFnListNet\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 751, i32 23 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"strDeactEvent\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 59, i32 14 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"strDeactState\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 41, i32 14 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"DeactFnList\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 166, i32 23 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1984, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1104, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 886, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 864, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 287, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 803, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 809, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 827, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 839, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 233, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 250, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 260, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 449, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 766, i32 36 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 309, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1265, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 992, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1008, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1052, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1204, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1224, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1229, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1315, i32 7 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1323, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 84, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 207, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 208, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 209, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 210, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 211, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 212, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 213, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 214, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 215, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 186, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 187, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 188, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 462, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 469, i32 10 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 518, i32 28 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 524, i32 11 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 588, i32 28 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 573, i32 28 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 555, i32 28 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 604, i32 29 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 609, i32 28 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 489, i32 28 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 542, i32 28 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 623, i32 11 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 628, i32 28 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 667, i32 10 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 674, i32 10 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 717, i32 28 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 685, i32 28 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 731, i32 11 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 739, i32 11 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 744, i32 28 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 703, i32 28 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 61, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 62, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 63, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 64, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 65, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 66, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 43, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 44, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.464 = private constant [28 x i8] c"../drivers/isdn/mISDN/tei.c\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 45, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [22 x i8] c"switch.table.mgr_send\00", align 1
@llvm.compiler.used = appending global [145 x ptr] [ptr @check_data._entry, ptr @check_data._entry.46, ptr @check_data._entry.49, ptr @check_data._entry_ptr, ptr @check_data._entry_ptr.48, ptr @check_data._entry_ptr.51, ptr @create_new_tei._entry, ptr @create_new_tei._entry.15, ptr @create_new_tei._entry.18, ptr @create_new_tei._entry.21, ptr @create_new_tei._entry_ptr, ptr @create_new_tei._entry_ptr.17, ptr @create_new_tei._entry_ptr.20, ptr @create_new_tei._entry_ptr.23, ptr @create_teimgr._entry, ptr @create_teimgr._entry.39, ptr @create_teimgr._entry.42, ptr @create_teimgr._entry_ptr, ptr @create_teimgr._entry_ptr.41, ptr @create_teimgr._entry_ptr.44, ptr @da_debug._entry, ptr @da_debug._entry_ptr, ptr @get_free_id._entry, ptr @get_free_id._entry.28, ptr @get_free_id._entry_ptr, ptr @get_free_id._entry_ptr.29, ptr @get_free_tei._entry, ptr @get_free_tei._entry_ptr, ptr @l2_tei._entry, ptr @l2_tei._entry_ptr, ptr @mgr_bcast._entry, ptr @mgr_bcast._entry.54, ptr @mgr_bcast._entry_ptr, ptr @mgr_bcast._entry_ptr.56, ptr @mgr_ctrl._entry, ptr @mgr_ctrl._entry_ptr, ptr @mgr_send._entry, ptr @mgr_send._entry_ptr, ptr @new_tei_req._entry, ptr @new_tei_req._entry_ptr, ptr @ph_data_ind._entry, ptr @ph_data_ind._entry_ptr, ptr @put_tei_msg._entry, ptr @put_tei_msg._entry_ptr, ptr @tei_debug._entry, ptr @tei_debug._entry_ptr, ptr @teiup_create._entry, ptr @teiup_create._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @create_teimanager.__key, ptr @.str.3, ptr @deactfsm, ptr @teifsmu, ptr @strTeiEvent, ptr @strTeiState, ptr @TeiFnListUser, ptr @teifsmn, ptr @TeiFnListNet, ptr @strDeactEvent, ptr @strDeactState, ptr @DeactFnList, ptr @skb_queue_head_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @switch.table.mgr_send], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_tei._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_teimanager.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deactfsm to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @teifsmu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strTeiEvent to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strTeiState to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TeiFnListUser to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @teifsmn to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TeiFnListNet to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strDeactEvent to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strDeactState to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DeactFnList to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgr_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_data_ind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_tei_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_free_tei._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_new_tei._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_new_tei._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_new_tei._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_new_tei._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tei_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_free_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_free_id._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_tei_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @teiup_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgr_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_teimgr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_teimgr._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_teimgr._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_data._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_data._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgr_bcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgr_bcast._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mgr_send to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l2_tei(ptr noundef %l2, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tm1 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 9
  %0 = ptrtoint ptr %tm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tm1, align 4
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr @debug, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %cmd) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %8 = add i32 %cmd, -6404
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 24)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end5.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 6, label %sw.bb7
    i32 3, label %sw.bb22
    i32 4, label %sw.bb31
    i32 5, label %sw.bb41
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %tei_m = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  %call6 = tail call i32 @mISDN_FsmEvent(ptr noundef %tei_m, i32 noundef 0, ptr noundef null) #8
  br label %cleanup

sw.bb7:                                           ; preds = %if.end5
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mgr, align 4
  %options = getelementptr inbounds %struct.manager, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %options, align 4
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %sw.bb7.if.end13_crit_edge, label %if.then10

sw.bb7.if.end13_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %tei_m11 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  %tei = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 6
  %call12 = tail call i32 @mISDN_FsmEvent(ptr noundef %tei_m11, i32 noundef 4, ptr noundef %tei) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %sw.bb7.if.end13_crit_edge
  %16 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mgr, align 4
  %options15 = getelementptr inbounds %struct.manager, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %options15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %options15, align 4
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %if.then18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %tei_m19 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  %call20 = tail call i32 @mISDN_FsmEvent(ptr noundef %tei_m19, i32 noundef 7, ptr noundef null) #8
  br label %cleanup

sw.bb22:                                          ; preds = %if.end5
  %mgr23 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %mgr23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mgr23, align 4
  %options24 = getelementptr inbounds %struct.manager, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %options24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %options24, align 4
  %25 = and i32 %24, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool26.not = icmp eq i32 %25, 0
  br i1 %tobool26.not, label %sw.bb22.cleanup_crit_edge, label %if.then27

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %deact = getelementptr inbounds %struct.manager, ptr %22, i32 0, i32 5
  %call29 = tail call i32 @mISDN_FsmEvent(ptr noundef %deact, i32 noundef 0, ptr noundef null) #8
  br label %cleanup

sw.bb31:                                          ; preds = %if.end5
  %mgr32 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %mgr32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mgr32, align 4
  %options33 = getelementptr inbounds %struct.manager, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %options33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %options33, align 4
  %30 = and i32 %29, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool35.not = icmp eq i32 %30, 0
  br i1 %tobool35.not, label %sw.bb31.cleanup_crit_edge, label %if.then36

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  %deact38 = getelementptr inbounds %struct.manager, ptr %27, i32 0, i32 5
  %call39 = tail call i32 @mISDN_FsmEvent(ptr noundef %deact38, i32 noundef 2, ptr noundef null) #8
  br label %cleanup

sw.bb41:                                          ; preds = %if.end5
  %mgr42 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %mgr42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mgr42, align 4
  %options43 = getelementptr inbounds %struct.manager, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %options43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %options43, align 4
  %35 = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool45.not = icmp eq i32 %35, 0
  br i1 %tobool45.not, label %sw.bb41.cleanup_crit_edge, label %if.then46

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  %deact48 = getelementptr inbounds %struct.manager, ptr %32, i32 0, i32 5
  %call49 = tail call i32 @mISDN_FsmEvent(ptr noundef %deact48, i32 noundef 4, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %sw.bb41.cleanup_crit_edge, %if.then36, %sw.bb31.cleanup_crit_edge, %if.then27, %sw.bb22.cleanup_crit_edge, %if.then18, %if.end13.cleanup_crit_edge, %sw.bb, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_FsmEvent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @TEIrelease(ptr noundef %l2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tm1 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 9
  %0 = ptrtoint ptr %tm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tm1, align 4
  %timer = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 3
  tail call void @mISDN_FsmDelTimer(ptr noundef %timer, i32 noundef 1) #8
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %lock = getelementptr inbounds %struct.manager, ptr %3, i32 0, i32 4
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l2) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %l2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %l2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %l2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l2, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mgr, align 4
  %lock9 = getelementptr inbounds %struct.manager, ptr %13, i32 0, i32 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %lock9, i32 noundef %call) #8
  %14 = ptrtoint ptr %tm1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %tm1, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmDelTimer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @delete_teimanager(ptr noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %layer2 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 3
  %0 = ptrtoint ptr %layer2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layer2, align 4
  %cmp.not50 = icmp eq ptr %1, %layer2
  br i1 %cmp.not50, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %l2.051 = phi ptr [ %1, %for.body.lr.ph ], [ %nl2.0, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %l2.051 to i32
  call void @__asan_load4_noabort(i32 %2)
  %nl2.0 = load ptr, ptr %l2.051, align 4
  %3 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st, align 4
  %lmutex = getelementptr inbounds %struct.mISDNstack, ptr %4, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lmutex, i32 noundef 0) #8
  %ch11 = getelementptr inbounds %struct.layer2, ptr %l2.051, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ch11) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.layer2, ptr %l2.051, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %ch11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ch11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %ch11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %ch11, align 4
  %prev.i = getelementptr inbounds %struct.layer2, ptr %l2.051, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %st, align 4
  %lmutex15 = getelementptr inbounds %struct.mISDNstack, ptr %14, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %lmutex15) #8
  %ctrl = getelementptr inbounds %struct.layer2, ptr %l2.051, i32 0, i32 1, i32 9
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl, align 4
  %call = tail call i32 %16(ptr noundef %ch11, i32 noundef 512, ptr noundef null) #8
  %cmp.not = icmp eq ptr %nl2.0, %layer2
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ch) #8
  br i1 %call.i.i38, label %if.end.i.i41, label %for.end.list_del.exit43_crit_edge

for.end.list_del.exit43_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit43

if.end.i.i41:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i39 = getelementptr inbounds %struct.list_head, ptr %ch, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i39, align 4
  %19 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch, align 4
  %prev1.i.i.i40 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i40, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit43

list_del.exit43:                                  ; preds = %if.end.i.i41, %for.end.list_del.exit43_crit_edge
  %23 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %ch, align 4
  %prev.i42 = getelementptr inbounds %struct.list_head, ptr %ch, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i42, align 4
  %bcast = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 1
  %call.i.i44 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bcast) #8
  br i1 %call.i.i44, label %if.end.i.i47, label %list_del.exit43.list_del.exit49_crit_edge

list_del.exit43.list_del.exit49_crit_edge:        ; preds = %list_del.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit49

if.end.i.i47:                                     ; preds = %list_del.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i45 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i45, align 4
  %27 = ptrtoint ptr %bcast to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bcast, align 4
  %prev1.i.i.i46 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i46, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit49

list_del.exit49:                                  ; preds = %if.end.i.i47, %list_del.exit43.list_del.exit49_crit_edge
  %31 = ptrtoint ptr %bcast to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %bcast, align 4
  %prev.i48 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i48, align 4
  %sendq = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 7
  tail call void @skb_queue_purge(ptr noundef %sendq) #8
  tail call void @kfree(ptr noundef %ch) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_teimanager(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 296) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %layer2 = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %layer2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %layer2, ptr %layer2, align 4
  %prev.i = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %layer2, ptr %prev.i, align 8
  %lock = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 4
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @create_teimanager.__key) #8
  %sendq = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 7
  %lock.i = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %3 = ptrtoint ptr %sendq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sendq, ptr %sendq, align 4
  %prev.i.i = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sendq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %nextid = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %nextid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %nextid, align 8
  %lastid = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %lastid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65534, ptr %lastid, align 4
  %send = getelementptr inbounds %struct.mISDNchannel, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mgr_send, ptr %send, align 8
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mgr_ctrl, ptr %ctrl, align 8
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %st, align 8
  %st3 = getelementptr inbounds %struct.mISDNchannel, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %st3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %st3, align 8
  tail call void @set_channel_address(ptr noundef nonnull %call7.i.i, i32 noundef 63, i32 noundef 127) #8
  %13 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %st, align 8
  tail call void @add_layer2(ptr noundef nonnull %call7.i.i, ptr noundef %14) #8
  %bcast = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 1
  %send8 = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %send8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mgr_bcast, ptr %send8, align 4
  %ctrl10 = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 1, i32 9
  %16 = ptrtoint ptr %ctrl10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mgr_bcast_ctrl, ptr %ctrl10, align 4
  %17 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %st, align 8
  %st14 = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %st14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %st14, align 4
  tail call void @set_channel_address(ptr noundef %bcast, i32 noundef 0, i32 noundef 127) #8
  %20 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %st, align 8
  tail call void @add_layer2(ptr noundef %bcast, ptr noundef %21) #8
  %22 = load ptr, ptr @debug, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %and = and i32 %24, 8
  %deact = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 5
  %debug = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %debug, align 8
  %userdata = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %userdata to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %userdata, align 4
  %printdebug = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 5, i32 5
  %27 = ptrtoint ptr %printdebug to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @da_debug, ptr %printdebug, align 4
  %28 = ptrtoint ptr %deact to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @deactfsm, ptr %deact, align 8
  %state = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %state, align 4
  %datimer = getelementptr inbounds %struct.manager, ptr %call7.i.i, i32 0, i32 6
  tail call void @mISDN_FsmInitTimer(ptr noundef %deact, ptr noundef %datimer) #8
  %teimgr = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 7
  %30 = ptrtoint ptr %teimgr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %teimgr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgr_send(ptr noundef %ch, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = load ptr, ptr @debug, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %and = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %cb, align 1
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %id, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %6) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %cb, align 1
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 8194, label %sw.bb
    i32 24578, label %sw.bb5
    i32 258, label %sw.bb7
    i32 514, label %sw.bb14
    i32 12548, label %sw.bb23
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %deact = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 5
  %call3 = tail call i32 @mISDN_FsmEvent(ptr noundef %deact, i32 noundef 4, ptr noundef null) #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp.i = icmp ult i32 %11, 8
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %sw.bb
  %12 = load ptr, ptr @debug, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %11) #11
  br label %cleanup

if.end3.i:                                        ; preds = %sw.bb
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %19 = and i8 %18, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %19)
  %20 = icmp eq i8 %19, -4
  br i1 %20, label %if.end14.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.i:                                       ; preds = %if.end3.i
  %arrayidx16.i = getelementptr i8, ptr %16, i32 1
  %21 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %23 = icmp eq i8 %22, -1
  br i1 %23, label %if.end29.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29.i:                                       ; preds = %if.end14.i
  %arrayidx31.i = getelementptr i8, ptr %16, i32 2
  %24 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx31.i, align 1
  %26 = and i8 %25, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp34.not.i = icmp eq i8 %26, 3
  br i1 %cmp34.not.i, label %if.end37.i, label %if.end29.i.cleanup_crit_edge

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37.i:                                       ; preds = %if.end29.i
  %arrayidx39.i = getelementptr i8, ptr %16, i32 3
  %27 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %28)
  %cmp41.not.i = icmp eq i8 %28, 15
  br i1 %cmp41.not.i, label %if.end44.i, label %if.end37.i.cleanup_crit_edge

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44.i:                                       ; preds = %if.end37.i
  %arrayidx46.i = getelementptr i8, ptr %16, i32 6
  %29 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %30 to i32
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %30, label %if.end44.i.cleanup_crit_edge [
    i8 1, label %if.end44.i.sw.bb.i_crit_edge
    i8 5, label %if.end44.i.sw.bb.i_crit_edge88
    i8 7, label %if.end44.i.sw.bb.i_crit_edge89
    i8 2, label %if.end44.i.sw.bb52.i_crit_edge
    i8 3, label %if.end44.i.sw.bb52.i_crit_edge90
    i8 4, label %if.end44.i.sw.bb52.i_crit_edge91
    i8 6, label %if.end44.i.sw.bb52.i_crit_edge92
  ]

if.end44.i.sw.bb52.i_crit_edge92:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb52.i

if.end44.i.sw.bb52.i_crit_edge91:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb52.i

if.end44.i.sw.bb52.i_crit_edge90:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb52.i

if.end44.i.sw.bb52.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb52.i

if.end44.i.sw.bb.i_crit_edge89:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end44.i.sw.bb.i_crit_edge88:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end44.i.sw.bb.i_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end44.i.cleanup_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end44.i.sw.bb.i_crit_edge, %if.end44.i.sw.bb.i_crit_edge88, %if.end44.i.sw.bb.i_crit_edge89
  %options.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  %32 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %options.i, align 4
  %34 = and i32 %33, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool49.not.i = icmp eq i32 %34, 0
  br i1 %tobool49.not.i, label %sw.bb.i.cleanup_crit_edge, label %sw.epilog.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb52.i:                                        ; preds = %if.end44.i.sw.bb52.i_crit_edge, %if.end44.i.sw.bb52.i_crit_edge90, %if.end44.i.sw.bb52.i_crit_edge91, %if.end44.i.sw.bb52.i_crit_edge92
  %options53.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  %35 = ptrtoint ptr %options53.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %options53.i, align 4
  %37 = and i32 %36, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool55.not.i = icmp eq i32 %37, 0
  br i1 %tobool55.not.i, label %sw.bb52.i.if.end64.i_crit_edge, label %sw.bb52.i.cleanup_crit_edge

sw.bb52.i.cleanup_crit_edge:                      ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb52.i.if.end64.i_crit_edge:                   ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

sw.epilog.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp59.i = icmp eq i8 %30, 1
  br i1 %cmp59.i, label %if.then61.i, label %sw.epilog.i.if.end64.i_crit_edge

sw.epilog.i.if.end64.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.then61.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx63.i = getelementptr i8, ptr %16, i32 4
  tail call fastcc void @new_tei_req(ptr noundef %ch, ptr noundef %arrayidx63.i) #8
  br label %if.then26

if.end64.i:                                       ; preds = %sw.epilog.i.if.end64.i_crit_edge, %sw.bb52.i.if.end64.i_crit_edge
  %layer2.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 3
  %38 = ptrtoint ptr %layer2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %layer2.i, align 4
  %cmp72.not108.i = icmp eq ptr %39, %layer2.i
  br i1 %cmp72.not108.i, label %if.end64.i.if.then26_crit_edge, label %for.body.i.preheader

if.end64.i.if.then26_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

for.body.i.preheader:                             ; preds = %if.end64.i
  %switch.tableidx = add i8 %30, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %40 = icmp ult i8 %switch.tableidx, 6
  %41 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mgr_send, i32 0, i32 %41
  br label %for.body.i

for.body.i:                                       ; preds = %tei_ph_data_ind.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %l2.0109.i = phi ptr [ %nl2.0.i, %tei_ph_data_ind.exit.i.for.body.i_crit_edge ], [ %39, %for.body.i.preheader ]
  %42 = ptrtoint ptr %l2.0109.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %nl2.0.i = load ptr, ptr %l2.0109.i, align 4
  %tm.i = getelementptr inbounds %struct.layer2, ptr %l2.0109.i, i32 0, i32 9
  %43 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tm.i, align 4
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %arrayidx76.i = getelementptr i8, ptr %46, i32 4
  %l2.i.i = getelementptr inbounds %struct.teimgr, ptr %44, i32 0, i32 6
  %47 = ptrtoint ptr %l2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %l2.i.i, align 4
  %flag.i.i = getelementptr inbounds %struct.layer2, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flag.i.i, align 4
  %51 = and i32 %50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.tei_ph_data_ind.exit.i_crit_edge

for.body.i.tei_ph_data_ind.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tei_ph_data_ind.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %52 = load ptr, ptr @debug, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %and.i.i = and i32 %54, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tei_m.i.i = getelementptr inbounds %struct.teimgr, ptr %44, i32 0, i32 2
  %printdebug.i.i = getelementptr inbounds %struct.teimgr, ptr %44, i32 0, i32 2, i32 5
  %55 = ptrtoint ptr %printdebug.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %printdebug.i.i, align 4
  tail call void (ptr, ptr, ...) %56(ptr noundef %tei_m.i.i, ptr noundef nonnull @.str.32, i32 noundef %conv47.i) #8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  br i1 %40, label %switch.lookup, label %if.end4.i.i.tei_ph_data_ind.exit.i_crit_edge

if.end4.i.i.tei_ph_data_ind.exit.i_crit_edge:     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tei_ph_data_ind.exit.i

switch.lookup:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load = load i32, ptr %switch.gep, align 4
  %tei_m10.i.i = getelementptr inbounds %struct.teimgr, ptr %44, i32 0, i32 2
  %call11.i.i = tail call i32 @mISDN_FsmEvent(ptr noundef %tei_m10.i.i, i32 noundef %switch.load, ptr noundef %arrayidx76.i) #8
  br label %tei_ph_data_ind.exit.i

tei_ph_data_ind.exit.i:                           ; preds = %switch.lookup, %if.end4.i.i.tei_ph_data_ind.exit.i_crit_edge, %for.body.i.tei_ph_data_ind.exit.i_crit_edge
  %cmp72.not.i = icmp eq ptr %nl2.0.i, %layer2.i
  br i1 %cmp72.not.i, label %tei_ph_data_ind.exit.i.if.then26_crit_edge, label %tei_ph_data_ind.exit.i.for.body.i_crit_edge

tei_ph_data_ind.exit.i.for.body.i_crit_edge:      ; preds = %tei_ph_data_ind.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

tei_ph_data_ind.exit.i.if.then26_crit_edge:       ; preds = %tei_ph_data_ind.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

sw.bb5:                                           ; preds = %if.end
  %id6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %58 = ptrtoint ptr %id6 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %id6, align 1
  %options.i49 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  %60 = ptrtoint ptr %options.i49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %options.i49, align 4
  %62 = and i32 %61, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i50 = icmp eq i32 %62, 0
  br i1 %tobool.not.i50, label %sw.bb5.if.then26_crit_edge, label %if.then.i52

sw.bb5.if.then26_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then.i52:                                      ; preds = %sw.bb5
  %lastid.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 10
  %63 = ptrtoint ptr %lastid.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lastid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %59)
  %cmp.i51 = icmp eq i32 %64, %59
  br i1 %cmp.i51, label %if.then1.i, label %if.then.i52.if.then26_crit_edge

if.then.i52.if.then26_crit_edge:                  ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then1.i:                                       ; preds = %if.then.i52
  %65 = ptrtoint ptr %options.i49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %options.i49, align 4
  %67 = and i32 %66, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool4.not.i = icmp eq i32 %67, 0
  br i1 %tobool4.not.i, label %if.then1.i.if.end16.i_crit_edge, label %if.then5.i

if.then1.i.if.end16.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then5.i:                                       ; preds = %if.then1.i
  %sendq.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 7
  %call6.i = tail call ptr @skb_dequeue(ptr noundef %sendq.i) #8
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.then5.i.if.end16.i_crit_edge, label %if.then8.i

if.then5.i.if.end16.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then8.i:                                       ; preds = %if.then5.i
  %id9.i = getelementptr inbounds %struct.sk_buff, ptr %call6.i, i32 0, i32 3, i32 4
  %68 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id9.i, align 4
  %70 = ptrtoint ptr %lastid.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %lastid.i, align 4
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %71 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %recv.i, align 4
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %73 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %peer.i, align 4
  %call12.i = tail call i32 %72(ptr noundef %74, ptr noundef nonnull %call6.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then8.i.if.then26_crit_edge, label %if.end.i

if.then8.i.if.then26_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call6.i) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i, %if.then5.i.if.end16.i_crit_edge, %if.then1.i.if.end16.i_crit_edge
  %75 = ptrtoint ptr %lastid.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 65534, ptr %lastid.i, align 4
  %call19.i = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %options.i49) #8
  br label %if.then26

sw.bb7:                                           ; preds = %if.end
  %options = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 16, ptr noundef %options) #8
  %up = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 8
  %76 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %up, align 4
  %tobool9.not = icmp eq ptr %77, null
  br i1 %tobool9.not, label %sw.bb7.if.end11_crit_edge, label %if.then10

sw.bb7.if.end11_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %sw.bb7
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i53 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i53, label %if.then10.if.end11_crit_edge, label %if.end.i54, !prof !233

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end.i54:                                       ; preds = %if.then10
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %78 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %79, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %80 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %81, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %cb.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 258, ptr %cb.i, align 1
  %nr.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 2
  %83 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr.i, align 4
  %shl.i = shl i32 %84, 16
  %addr.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 4
  %85 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %addr.i, align 4
  %or.i = or i32 %shl.i, %86
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 4
  %87 = ptrtoint ptr %id.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %or.i, ptr %id.i, align 1
  %88 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %up, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %send.i, align 4
  %call8.i = tail call i32 %91(ptr noundef %89, ptr noundef nonnull %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i54.if.end11_crit_edge, label %do.end.i55

if.end.i54.if.end11_crit_edge:                    ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end.i55:                                       ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call8.i) #11
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #8
  br label %if.end11

if.end11:                                         ; preds = %do.end.i55, %if.end.i54.if.end11_crit_edge, %if.then10.if.end11_crit_edge, %sw.bb7.if.end11_crit_edge
  %deact12 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 5
  %call13 = tail call i32 @mISDN_FsmEvent(ptr noundef %deact12, i32 noundef 1, ptr noundef null) #8
  tail call fastcc void @do_send(ptr noundef %ch)
  br label %if.then26

sw.bb14:                                          ; preds = %if.end
  %options15 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  %call16 = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %options15) #8
  %up17 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 8
  %92 = ptrtoint ptr %up17 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %up17, align 4
  %tobool18.not = icmp eq ptr %93, null
  br i1 %tobool18.not, label %sw.bb14.if.end20_crit_edge, label %if.then19

sw.bb14.if.end20_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %sw.bb14
  %call.i.i.i56 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i57 = icmp eq ptr %call.i.i.i56, null
  br i1 %tobool.not.i.i57, label %if.then19.if.end20_crit_edge, label %if.end.i68, !prof !233

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end.i68:                                       ; preds = %if.then19
  %data.i.i.i58 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i56, i32 0, i32 19
  %94 = ptrtoint ptr %data.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i.i.i58, align 4
  %add.ptr.i.i.i59 = getelementptr i8, ptr %95, i32 8
  store ptr %add.ptr.i.i.i59, ptr %data.i.i.i58, align 4
  %tail.i.i.i60 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i56, i32 0, i32 16
  %96 = ptrtoint ptr %tail.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tail.i.i.i60, align 8
  %add.ptr1.i.i.i61 = getelementptr i8, ptr %97, i32 8
  store ptr %add.ptr1.i.i.i61, ptr %tail.i.i.i60, align 8
  %cb.i62 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i56, i32 0, i32 3
  %98 = ptrtoint ptr %cb.i62 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 514, ptr %cb.i62, align 1
  %nr.i63 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 2
  %99 = ptrtoint ptr %nr.i63 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nr.i63, align 4
  %shl.i64 = shl i32 %100, 16
  %addr.i65 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 4
  %101 = ptrtoint ptr %addr.i65 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %addr.i65, align 4
  %or.i66 = or i32 %shl.i64, %102
  %id.i67 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i56, i32 0, i32 3, i32 4
  %103 = ptrtoint ptr %id.i67 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %or.i66, ptr %id.i67, align 1
  %104 = ptrtoint ptr %up17 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %up17, align 4
  %send.i70 = getelementptr inbounds %struct.mISDNchannel, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %send.i70 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %send.i70, align 4
  %call8.i71 = tail call i32 %107(ptr noundef %105, ptr noundef nonnull %call.i.i.i56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i71)
  %tobool9.not.i72 = icmp eq i32 %call8.i71, 0
  br i1 %tobool9.not.i72, label %if.end.i68.if.end20_crit_edge, label %do.end.i74

if.end.i68.if.end20_crit_edge:                    ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end.i74:                                       ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call8.i71) #11
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i56) #8
  br label %if.end20

if.end20:                                         ; preds = %do.end.i74, %if.end.i68.if.end20_crit_edge, %if.then19.if.end20_crit_edge, %sw.bb14.if.end20_crit_edge
  %deact21 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 5
  %call22 = tail call i32 @mISDN_FsmEvent(ptr noundef %deact21, i32 noundef 3, ptr noundef null) #8
  br label %if.then26

sw.bb23:                                          ; preds = %if.end
  %options.i76 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  %108 = ptrtoint ptr %options.i76 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %options.i76, align 4
  %110 = and i32 %109, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i77 = icmp eq i32 %110, 0
  br i1 %tobool.not.i77, label %sw.bb23.cleanup_crit_edge, label %if.end.i78

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i78:                                       ; preds = %sw.bb23
  %111 = ptrtoint ptr %options.i76 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %options.i76, align 4
  %113 = and i32 %112, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool3.not.i = icmp eq i32 %113, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i78.if.end5.i_crit_edge

if.end.i78.if.end5.i_crit_edge:                   ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i78
  %peer.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %114 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i.i79 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i79, label %if.then4.i.if.end5.i_crit_edge, label %if.end.i.i80

if.then4.i.if.end5.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end.i.i80:                                     ; preds = %if.then4.i
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i80.if.end5.i_crit_edge, label %if.end3.i.i, !prof !233

if.end.i.i80.if.end5.i_crit_edge:                 ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end3.i.i:                                      ; preds = %if.end.i.i80
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %116 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %117, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %118 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %119, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %120 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 257, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %121 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 65535, ptr %id6.i.i.i, align 1
  %recv.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %122 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %recv.i.i, align 4
  %124 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = tail call i32 %123(ptr noundef %125, ptr noundef nonnull %call.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end3.i.i.if.end5.i_crit_edge, label %if.then7.i.i

if.end3.i.i.if.end5.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then7.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then7.i.i, %if.end3.i.i.if.end5.i_crit_edge, %if.end.i.i80.if.end5.i_crit_edge, %if.then4.i.if.end5.i_crit_edge, %if.end.i78.if.end5.i_crit_edge
  %call6.i81 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #8
  %data.i82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %126 = ptrtoint ptr %data.i82 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data.i82, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 2, ptr %127, align 1
  %129 = load ptr, ptr %data.i82, align 4
  %arrayidx8.i = getelementptr i8, ptr %129, i32 1
  %130 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -1, ptr %arrayidx8.i, align 1
  %131 = load ptr, ptr %data.i82, align 4
  %arrayidx10.i = getelementptr i8, ptr %131, i32 2
  %132 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 3, ptr %arrayidx10.i, align 1
  %133 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 8193, ptr %cb, align 8
  %nextid.i.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 9
  %134 = ptrtoint ptr %nextid.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nextid.i.i, align 4
  %inc.i.i = add i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %135)
  %cmp.i.i = icmp eq i32 %135, 32767
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 %inc.i.i
  %136 = ptrtoint ptr %nextid.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %spec.select.i.i, ptr %nextid.i.i, align 4
  %shl.i.i = shl i32 %135, 16
  %or2.i.i = or i32 %shl.i.i, 32575
  %id.i84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %137 = ptrtoint ptr %id.i84 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or2.i.i, ptr %id.i84, align 4
  %sendq.i85 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 7
  tail call void @skb_queue_tail(ptr noundef %sendq.i85, ptr noundef %skb) #8
  tail call fastcc void @do_send(ptr noundef %ch) #8
  br label %cleanup

if.then26:                                        ; preds = %if.end20, %if.end11, %if.end16.i, %if.then8.i.if.then26_crit_edge, %if.then.i52.if.then26_crit_edge, %sw.bb5.if.then26_crit_edge, %tei_ph_data_ind.exit.i.if.then26_crit_edge, %if.end64.i.if.then26_crit_edge, %if.then61.i
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end5.i, %sw.bb23.cleanup_crit_edge, %sw.bb52.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end44.i.cleanup_crit_edge, %if.end37.i.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %do.end.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then26 ], [ 0, %if.end5.i ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.end3.i.cleanup_crit_edge ], [ -22, %if.end29.i.cleanup_crit_edge ], [ -22, %if.end37.i.cleanup_crit_edge ], [ -22, %if.end44.i.cleanup_crit_edge ], [ -22, %sw.bb52.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %if.end14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgr_ctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
entry:
  %ids.i.i = alloca [2 x i32], align 8
  %opt.i = alloca i32, align 4
  %l1rq.i = alloca %struct.channel_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @debug, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %and = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %cmd, ptr noundef %arg) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = add i32 %cmd, -256
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 24)
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt.i) #8
  %6 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %opt.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %l1rq.i) #8
  %7 = call ptr @memset(ptr %l1rq.i, i32 255, i32 16)
  %8 = load ptr, ptr @debug, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %do.end.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  %st.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %11 = ptrtoint ptr %st.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %st.i, align 4
  %dev.i = getelementptr inbounds %struct.mISDNstack, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.mISDNdevice, ptr %14, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i = getelementptr inbounds %struct.mISDNdevice, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %do.end.i.dev_name.exit.i_crit_edge ]
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arg, align 4
  %dev2.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dev2.i, align 2
  %conv.i = zext i8 %22 to i32
  %channel.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %channel.i, align 1
  %conv4.i = zext i8 %24 to i32
  %sapi.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sapi.i, align 4
  %conv6.i = zext i8 %26 to i32
  %tei.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tei.i, align 1
  %conv8.i = zext i8 %28 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i, i32 noundef %20, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %conv8.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %dev_name.exit.i, %sw.bb.if.end.i_crit_edge
  %adr10.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1
  %tei11.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %tei11.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tei11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.i = icmp slt i8 %30, 0
  br i1 %cmp.i, label %if.end.i.create_teimgr.exit_crit_edge, label %if.end15.i

if.end.i.create_teimgr.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_teimgr.exit

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %30)
  %cmp19.i = icmp ult i8 %30, 64
  br i1 %cmp19.i, label %if.end23.i, label %if.end15.i.if.end31.i_crit_edge

if.end15.i.if.end31.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.end23.i:                                       ; preds = %if.end15.i
  %call22.i = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef nonnull %opt.i) #8
  %31 = ptrtoint ptr %tei11.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr.i = load i8, ptr %tei11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp27.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp27.i, label %if.then29.i, label %if.end23.i.if.end31.i_crit_edge

if.end23.i.if.end31.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %call30.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef nonnull %opt.i) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end23.i.if.end31.i_crit_edge, %if.end15.i.if.end31.i_crit_edge
  %options.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  %32 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %options.i, align 4
  %34 = and i32 %33, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool33.not.i = icmp eq i32 %34, 0
  br i1 %tobool33.not.i, label %if.else.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end31.i
  %35 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %36)
  %cmp36.i = icmp eq i32 %36, 16
  br i1 %cmp36.i, label %if.then34.i.create_teimgr.exit_crit_edge, label %if.end39.i

if.then34.i.create_teimgr.exit_crit_edge:         ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_teimgr.exit

if.end39.i:                                       ; preds = %if.then34.i
  %37 = ptrtoint ptr %tei11.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tei11.i, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %38, label %if.end39.i.create_teimgr.exit_crit_edge [
    i8 0, label %if.end39.i.if.end51.i_crit_edge
    i8 127, label %if.end39.i.if.end51.i_crit_edge47
  ]

if.end39.i.if.end51.i_crit_edge47:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.end39.i.if.end51.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.end39.i.create_teimgr.exit_crit_edge:          ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_teimgr.exit

if.end51.i:                                       ; preds = %if.end39.i.if.end51.i_crit_edge, %if.end39.i.if.end51.i_crit_edge47
  %up.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 8
  %40 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %up.i, align 4
  %tobool52.not.i = icmp eq ptr %41, null
  br i1 %tobool52.not.i, label %if.end51.i.if.end98.i_crit_edge, label %do.end56.i

if.end51.i.if.end98.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i

do.end56.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38) #11
  br label %create_teimgr.exit

if.else.i:                                        ; preds = %if.end31.i
  %42 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %options.i, align 4
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool62.not.i = icmp eq i32 %44, 0
  %45 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %46)
  %cmp84.i = icmp eq i32 %46, 17
  br i1 %tobool62.not.i, label %if.else82.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.else.i
  br i1 %cmp84.i, label %if.then63.i.create_teimgr.exit_crit_edge, label %if.end68.i

if.then63.i.create_teimgr.exit_crit_edge:         ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_teimgr.exit

if.end68.i:                                       ; preds = %if.then63.i
  %47 = ptrtoint ptr %tei11.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tei11.i, align 1
  %49 = add i8 %48, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %49)
  %50 = icmp ult i8 %49, 63
  br i1 %50, label %if.end68.i.create_teimgr.exit_crit_edge, label %if.end68.i.if.end98.i_crit_edge

if.end68.i.if.end98.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i

if.end68.i.create_teimgr.exit_crit_edge:          ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_teimgr.exit

if.else82.i:                                      ; preds = %if.else.i
  br i1 %cmp84.i, label %if.then86.i, label %if.else82.i.if.end89.i_crit_edge

if.else82.i.if.end89.i_crit_edge:                 ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then86.i:                                      ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #10
  %call88.i = call i32 @_test_and_set_bit(i32 noundef 25, ptr noundef %options.i) #8
  %51 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr399.i = load i32, ptr %arg, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then86.i, %if.else82.i.if.end89.i_crit_edge
  %52 = phi i32 [ %.pr399.i, %if.then86.i ], [ %46, %if.else82.i.if.end89.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %52)
  %cmp91.i = icmp eq i32 %52, 16
  br i1 %cmp91.i, label %if.then93.i, label %if.end89.i.if.end98.i_crit_edge

if.end89.i.if.end98.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i

if.then93.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  %call95.i = call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %options.i) #8
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then93.i, %if.end89.i.if.end98.i_crit_edge, %if.end68.i.if.end98.i_crit_edge, %if.end51.i.if.end98.i_crit_edge
  %adr99.i = getelementptr inbounds %struct.channel_req, ptr %l1rq.i, i32 0, i32 1
  %53 = call ptr @memcpy(ptr %adr99.i, ptr %adr10.i, i32 6)
  %st102.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %54 = ptrtoint ptr %st102.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %st102.i, align 4
  %dev103.i = getelementptr inbounds %struct.mISDNstack, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %dev103.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev103.i, align 4
  %Dprotocols.i = getelementptr inbounds %struct.mISDNdevice, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %Dprotocols.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %Dprotocols.i, align 8
  %and104.i = and i32 %59, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %if.end98.i.if.end108.i_crit_edge, label %if.then106.i

if.end98.i.if.end108.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.i

if.then106.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  %call107.i = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef nonnull %opt.i) #8
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then106.i, %if.end98.i.if.end108.i_crit_edge
  %60 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %61)
  %cmp110.i = icmp eq i32 %61, 17
  br i1 %cmp110.i, label %land.lhs.true112.i, label %if.end108.i.if.end162.i_crit_edge

if.end108.i.if.end162.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162.i

land.lhs.true112.i:                               ; preds = %if.end108.i
  %62 = ptrtoint ptr %tei11.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tei11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %63)
  %cmp116.i = icmp eq i8 %63, 127
  br i1 %cmp116.i, label %if.then118.i, label %land.lhs.true112.i.if.end162.i_crit_edge

land.lhs.true112.i.if.end162.i_crit_edge:         ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162.i

if.then118.i:                                     ; preds = %land.lhs.true112.i
  %ch119.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %64 = ptrtoint ptr %ch119.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ch119.i, align 4
  %up120.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 8
  %66 = ptrtoint ptr %up120.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %up120.i, align 4
  %call.i.i.i.i = call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then118.i.teiup_create.exit.i_crit_edge, label %if.end.i369.i, !prof !233

if.then118.i.teiup_create.exit.i_crit_edge:       ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %teiup_create.exit.i

if.end.i369.i:                                    ; preds = %if.then118.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %67 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %68, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %69 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %70, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 8, ptr %cb.i.i, align 1
  %nr.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 2
  %72 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr.i.i, align 4
  %shl.i.i = shl i32 %73, 16
  %addr.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 4
  %74 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %75
  %id.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %76 = ptrtoint ptr %id.i.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %or.i.i, ptr %id.i.i, align 1
  %call.i.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 4) #8
  %77 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 1, ptr %call.i.i.i, align 1
  %78 = ptrtoint ptr %up120.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %up120.i, align 4
  %send.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %send.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %send.i.i, align 4
  %call8.i.i = call i32 %81(ptr noundef %79, ptr noundef nonnull %call.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i369.i.teiup_create.exit.i_crit_edge, label %do.end.i.i

if.end.i369.i.teiup_create.exit.i_crit_edge:      ; preds = %if.end.i369.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %teiup_create.exit.i

do.end.i.i:                                       ; preds = %if.end.i369.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call8.i.i) #11
  call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #8
  br label %teiup_create.exit.i

teiup_create.exit.i:                              ; preds = %do.end.i.i, %if.end.i369.i.teiup_create.exit.i_crit_edge, %if.then118.i.teiup_create.exit.i_crit_edge
  %82 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %options.i, align 4
  %84 = and i32 %83, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool123.not.i = icmp eq i32 %84, 0
  br i1 %tobool123.not.i, label %teiup_create.exit.i.if.end125.i_crit_edge, label %if.then124.i

teiup_create.exit.i.if.end125.i_crit_edge:        ; preds = %teiup_create.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

if.then124.i:                                     ; preds = %teiup_create.exit.i
  %call.i.i.i370.i = call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i371.i = icmp eq ptr %call.i.i.i370.i, null
  br i1 %tobool.not.i.i371.i, label %if.then124.i.if.end125.i_crit_edge, label %if.end.i382.i, !prof !233

if.then124.i.if.end125.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

if.end.i382.i:                                    ; preds = %if.then124.i
  %data.i.i.i372.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i370.i, i32 0, i32 19
  %85 = ptrtoint ptr %data.i.i.i372.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i.i372.i, align 4
  %add.ptr.i.i.i373.i = getelementptr i8, ptr %86, i32 8
  store ptr %add.ptr.i.i.i373.i, ptr %data.i.i.i372.i, align 4
  %tail.i.i.i374.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i370.i, i32 0, i32 16
  %87 = ptrtoint ptr %tail.i.i.i374.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i.i374.i, align 8
  %add.ptr1.i.i.i375.i = getelementptr i8, ptr %88, i32 8
  store ptr %add.ptr1.i.i.i375.i, ptr %tail.i.i.i374.i, align 8
  %cb.i376.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i370.i, i32 0, i32 3
  %89 = ptrtoint ptr %cb.i376.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 258, ptr %cb.i376.i, align 1
  %nr.i377.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 2
  %90 = ptrtoint ptr %nr.i377.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nr.i377.i, align 4
  %shl.i378.i = shl i32 %91, 16
  %addr.i379.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 4
  %92 = ptrtoint ptr %addr.i379.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %addr.i379.i, align 4
  %or.i380.i = or i32 %shl.i378.i, %93
  %id.i381.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i370.i, i32 0, i32 3, i32 4
  %94 = ptrtoint ptr %id.i381.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %or.i380.i, ptr %id.i381.i, align 1
  %95 = ptrtoint ptr %up120.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %up120.i, align 4
  %send.i384.i = getelementptr inbounds %struct.mISDNchannel, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %send.i384.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %send.i384.i, align 4
  %call8.i385.i = call i32 %98(ptr noundef %96, ptr noundef nonnull %call.i.i.i370.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i385.i)
  %tobool9.not.i386.i = icmp eq i32 %call8.i385.i, 0
  br i1 %tobool9.not.i386.i, label %if.end.i382.i.if.end125.i_crit_edge, label %do.end.i388.i

if.end.i382.i.if.end125.i_crit_edge:              ; preds = %if.end.i382.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

do.end.i388.i:                                    ; preds = %if.end.i382.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i387.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call8.i385.i) #11
  call void @consume_skb(ptr noundef nonnull %call.i.i.i370.i) #8
  br label %if.end125.i

if.end125.i:                                      ; preds = %do.end.i388.i, %if.end.i382.i.if.end125.i_crit_edge, %if.then124.i.if.end125.i_crit_edge, %teiup_create.exit.i.if.end125.i_crit_edge
  %99 = ptrtoint ptr %ch119.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %ch119.i, align 4
  %layer2.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 3
  %100 = ptrtoint ptr %layer2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %layer2.i, align 4
  %cmp.i.not.i = icmp eq ptr %101, %layer2.i
  br i1 %cmp.i.not.i, label %if.end125.i.create_teimgr.exit_crit_edge, label %do.body130.i

if.end125.i.create_teimgr.exit_crit_edge:         ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_teimgr.exit

do.body130.i:                                     ; preds = %if.end125.i
  %lock.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 4
  %call134.i = call i32 @_raw_read_lock_irqsave(ptr noundef %lock.i) #8
  %102 = ptrtoint ptr %layer2.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %l2.0404.i = load ptr, ptr %layer2.i, align 4
  %cmp140.not405.i = icmp eq ptr %l2.0404.i, %layer2.i
  br i1 %cmp140.not405.i, label %do.body130.i.do.body152.i_crit_edge, label %do.body130.i.for.body.i_crit_edge

do.body130.i.for.body.i_crit_edge:                ; preds = %do.body130.i
  br label %for.body.i

do.body130.i.do.body152.i_crit_edge:              ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body152.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body130.i.for.body.i_crit_edge
  %l2.0406.i = phi ptr [ %l2.0.i, %for.body.i.for.body.i_crit_edge ], [ %l2.0404.i, %do.body130.i.for.body.i_crit_edge ]
  %103 = ptrtoint ptr %up120.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %up120.i, align 4
  %up143.i = getelementptr inbounds %struct.layer2, ptr %l2.0406.i, i32 0, i32 4
  %105 = ptrtoint ptr %up143.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %up143.i, align 4
  %ch144.i = getelementptr inbounds %struct.layer2, ptr %l2.0406.i, i32 0, i32 1
  %ctrl.i = getelementptr inbounds %struct.layer2, ptr %l2.0406.i, i32 0, i32 1, i32 9
  %106 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ctrl.i, align 4
  %call146.i = call i32 %107(ptr noundef %ch144.i, i32 noundef 256, ptr noundef null) #8
  %108 = ptrtoint ptr %l2.0406.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %l2.0.i = load ptr, ptr %l2.0406.i, align 4
  %cmp140.not.i = icmp eq ptr %l2.0.i, %layer2.i
  br i1 %cmp140.not.i, label %for.body.i.do.body152.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.do.body152.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body152.i

do.body152.i:                                     ; preds = %for.body.i.do.body152.i_crit_edge, %do.body130.i.do.body152.i_crit_edge
  call void @_raw_read_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call134.i) #8
  br label %create_teimgr.exit

if.end162.i:                                      ; preds = %land.lhs.true112.i.if.end162.i_crit_edge, %if.end108.i.if.end162.i_crit_edge
  %ch163.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %109 = ptrtoint ptr %ch163.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ch163.i, align 4
  %111 = ptrtoint ptr %opt.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %opt.i, align 4
  %113 = ptrtoint ptr %tei11.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %tei11.i, align 1
  %conv167.i = zext i8 %114 to i32
  %sapi169.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 3
  %115 = ptrtoint ptr %sapi169.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %sapi169.i, align 4
  %conv170.i = zext i8 %116 to i32
  %call171.i = call ptr @create_l2(ptr noundef %110, i32 noundef %61, i32 noundef %112, i32 noundef %conv167.i, i32 noundef %conv170.i) #8
  %tobool172.not.i = icmp eq ptr %call171.i, null
  br i1 %tobool172.not.i, label %if.end162.i.create_teimgr.exit_crit_edge, label %if.end174.i

if.end162.i.create_teimgr.exit_crit_edge:         ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_teimgr.exit

if.end174.i:                                      ; preds = %if.end162.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %117 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3520, i32 noundef 108) #12
  %tm.i = getelementptr inbounds %struct.layer2, ptr %call171.i, i32 0, i32 9
  %118 = ptrtoint ptr %tm.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call7.i.i.i, ptr %tm.i, align 4
  %tobool177.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool177.not.i, label %if.then178.i, label %if.end184.i

if.then178.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call171.i) #8
  %call183.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  br label %create_teimgr.exit

if.end184.i:                                      ; preds = %if.end174.i
  %mgr186.i = getelementptr inbounds %struct.teimgr, ptr %call7.i.i.i, i32 0, i32 7
  %119 = ptrtoint ptr %mgr186.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %ch, ptr %mgr186.i, align 8
  %120 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tm.i, align 4
  %l2188.i = getelementptr inbounds %struct.teimgr, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %l2188.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call171.i, ptr %l2188.i, align 4
  %123 = load ptr, ptr @debug, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %and189.i = and i32 %125, 2097152
  %126 = load ptr, ptr %tm.i, align 4
  %debug.i = getelementptr inbounds %struct.teimgr, ptr %126, i32 0, i32 2, i32 2
  %127 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %and189.i, ptr %debug.i, align 4
  %128 = load ptr, ptr %tm.i, align 4
  %userdata.i = getelementptr inbounds %struct.teimgr, ptr %128, i32 0, i32 2, i32 3
  %129 = ptrtoint ptr %userdata.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %userdata.i, align 4
  %130 = load ptr, ptr %tm.i, align 4
  %printdebug.i = getelementptr inbounds %struct.teimgr, ptr %130, i32 0, i32 2, i32 5
  %131 = ptrtoint ptr %printdebug.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @tei_debug, ptr %printdebug.i, align 4
  %132 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %133)
  %cmp197.i = icmp eq i32 %133, 16
  %134 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tm.i, align 4
  %tei_m201.i = getelementptr inbounds %struct.teimgr, ptr %135, i32 0, i32 2
  br i1 %cmp197.i, label %if.then199.i, label %if.else212.i

if.then199.i:                                     ; preds = %if.end184.i
  %136 = ptrtoint ptr %tei_m201.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @teifsmu, ptr %tei_m201.i, align 4
  %137 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tm.i, align 4
  %state.i = getelementptr inbounds %struct.teimgr, ptr %138, i32 0, i32 2, i32 1
  %139 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %state.i, align 4
  %140 = load ptr, ptr %tm.i, align 4
  %tval.i = getelementptr inbounds %struct.teimgr, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %tval.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1000, ptr %tval.i, align 4
  %142 = ptrtoint ptr %opt.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %opt.i, align 4
  %144 = and i32 %143, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool206.not.i = icmp eq i32 %144, 0
  br i1 %tobool206.not.i, label %if.else209.i, label %if.then207.i

if.then207.i:                                     ; preds = %if.then199.i
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %l1rq.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 3, ptr %l1rq.i, align 4
  br label %if.end228.i

if.else209.i:                                     ; preds = %if.then199.i
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %l1rq.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %l1rq.i, align 4
  br label %if.end228.i

if.else212.i:                                     ; preds = %if.end184.i
  %147 = ptrtoint ptr %tei_m201.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @teifsmn, ptr %tei_m201.i, align 4
  %148 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %tm.i, align 4
  %state218.i = getelementptr inbounds %struct.teimgr, ptr %149, i32 0, i32 2, i32 1
  %150 = ptrtoint ptr %state218.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %state218.i, align 4
  %151 = load ptr, ptr %tm.i, align 4
  %tval220.i = getelementptr inbounds %struct.teimgr, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %tval220.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 2000, ptr %tval220.i, align 4
  %153 = ptrtoint ptr %opt.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %opt.i, align 4
  %155 = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool222.not.i = icmp eq i32 %155, 0
  br i1 %tobool222.not.i, label %if.else225.i, label %if.then223.i

if.then223.i:                                     ; preds = %if.else212.i
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %l1rq.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 4, ptr %l1rq.i, align 4
  br label %if.end228.i

if.else225.i:                                     ; preds = %if.else212.i
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %l1rq.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 2, ptr %l1rq.i, align 4
  br label %if.end228.i

if.end228.i:                                      ; preds = %if.else225.i, %if.then223.i, %if.else209.i, %if.then207.i
  %158 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tm.i, align 4
  %tei_m230.i = getelementptr inbounds %struct.teimgr, ptr %159, i32 0, i32 2
  %timer.i = getelementptr inbounds %struct.teimgr, ptr %159, i32 0, i32 3
  call void @mISDN_FsmInitTimer(ptr noundef %tei_m230.i, ptr noundef %timer.i) #8
  %lock238.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 4
  %call239.i = call i32 @_raw_write_lock_irqsave(ptr noundef %lock238.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ids.i.i) #8
  %160 = ptrtoint ptr %ids.i.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 0, ptr %ids.i.i, align 8
  %layer2.i.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 3
  %161 = ptrtoint ptr %layer2.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %l2.028.i.i = load ptr, ptr %layer2.i.i, align 4
  %cmp.not29.i.i = icmp eq ptr %l2.028.i.i, %layer2.i.i
  br i1 %cmp.not29.i.i, label %if.end228.i.for.end.i.i_crit_edge, label %if.end228.i.for.body.i.i_crit_edge

if.end228.i.for.body.i.i_crit_edge:               ; preds = %if.end228.i
  br label %for.body.i.i

if.end228.i.for.end.i.i_crit_edge:                ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end.i392.i.for.body.i.i_crit_edge, %if.end228.i.for.body.i.i_crit_edge
  %l2.030.i.i = phi ptr [ %l2.0.i.i, %if.end.i392.i.for.body.i.i_crit_edge ], [ %l2.028.i.i, %if.end228.i.for.body.i.i_crit_edge ]
  %nr.i390.i = getelementptr inbounds %struct.layer2, ptr %l2.030.i.i, i32 0, i32 1, i32 2
  %162 = ptrtoint ptr %nr.i390.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %nr.i390.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %163)
  %cmp2.i.i = icmp ugt i32 %163, 63
  br i1 %cmp2.i.i, label %for.body.i.i.get_free_id.exit.sink.split.i_crit_edge, label %if.end.i392.i

for.body.i.i.get_free_id.exit.sink.split.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_free_id.exit.sink.split.i

if.end.i392.i:                                    ; preds = %for.body.i.i
  %rem.i.i.i = and i32 %163, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %163, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %ids.i.i, i32 %div2.i.i.i
  %164 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %165, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %166 = ptrtoint ptr %l2.030.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %l2.0.i.i = load ptr, ptr %l2.030.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %l2.0.i.i, %layer2.i.i
  br i1 %cmp.not.i.i, label %if.end.i392.i.for.end.i.i_crit_edge, label %if.end.i392.i.for.body.i.i_crit_edge

if.end.i392.i.for.body.i.i_crit_edge:             ; preds = %if.end.i392.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end.i392.i.for.end.i.i_crit_edge:              ; preds = %if.end.i392.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i392.i.for.end.i.i_crit_edge, %if.end228.i.for.end.i.i_crit_edge
  %call12.i.i = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %ids.i.i, i32 noundef 64, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 64
  br i1 %cmp13.i.i, label %for.end.i.i.get_free_id.exit.i_crit_edge, label %for.end.i.i.get_free_id.exit.sink.split.i_crit_edge

for.end.i.i.get_free_id.exit.sink.split.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_free_id.exit.sink.split.i

for.end.i.i.get_free_id.exit.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_free_id.exit.i

get_free_id.exit.sink.split.i:                    ; preds = %for.end.i.i.get_free_id.exit.sink.split.i_crit_edge, %for.body.i.i.get_free_id.exit.sink.split.i_crit_edge
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #11
  br label %get_free_id.exit.i

get_free_id.exit.i:                               ; preds = %get_free_id.exit.sink.split.i, %for.end.i.i.get_free_id.exit.i_crit_edge
  %retval.0.i393.i = phi i32 [ %call12.i.i, %for.end.i.i.get_free_id.exit.i_crit_edge ], [ -16, %get_free_id.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ids.i.i) #8
  %prev.i.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 3, i32 1
  %167 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev.i.i, align 4
  %call.i.i394.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call171.i, ptr noundef %168, ptr noundef %layer2.i.i) #8
  br i1 %call.i.i394.i, label %if.end.i.i.i, label %get_free_id.exit.i.list_add_tail.exit.i_crit_edge

get_free_id.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %get_free_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %get_free_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %169 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call171.i, ptr %prev.i.i, align 4
  %170 = ptrtoint ptr %call171.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %layer2.i.i, ptr %call171.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call171.i, i32 0, i32 1
  %171 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %168, ptr %prev3.i.i.i, align 4
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %call171.i, ptr %168, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %get_free_id.exit.i.list_add_tail.exit.i_crit_edge
  call void @_raw_write_unlock_irqrestore(ptr noundef %lock238.i, i32 noundef %call239.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i393.i)
  %cmp254.i = icmp sgt i32 %retval.0.i393.i, -1
  br i1 %cmp254.i, label %if.end269.i, label %list_add_tail.exit.i.if.then272.i_crit_edge

list_add_tail.exit.i.if.then272.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then272.i

if.end269.i:                                      ; preds = %list_add_tail.exit.i
  %ch257.i = getelementptr inbounds %struct.layer2, ptr %call171.i, i32 0, i32 1
  %nr.i = getelementptr inbounds %struct.layer2, ptr %call171.i, i32 0, i32 1, i32 2
  %173 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %retval.0.i393.i, ptr %nr.i, align 4
  %up258.i = getelementptr inbounds %struct.layer2, ptr %call171.i, i32 0, i32 4
  %174 = ptrtoint ptr %up258.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %up258.i, align 4
  %nr259.i = getelementptr inbounds %struct.mISDNchannel, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %nr259.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %retval.0.i393.i, ptr %nr259.i, align 4
  %177 = ptrtoint ptr %ch163.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %ch257.i, ptr %ch163.i, align 4
  %178 = ptrtoint ptr %st102.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %st102.i, align 4
  %own.i = getelementptr inbounds %struct.mISDNstack, ptr %179, i32 0, i32 8
  %ctrl264.i = getelementptr inbounds %struct.mISDNstack, ptr %179, i32 0, i32 8, i32 9
  %180 = ptrtoint ptr %ctrl264.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ctrl264.i, align 4
  %call268.i = call i32 %181(ptr noundef %own.i, i32 noundef 256, ptr noundef nonnull %l1rq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268.i)
  %cmp270.i = icmp slt i32 %call268.i, 0
  br i1 %cmp270.i, label %if.end269.i.if.then272.i_crit_edge, label %if.end269.i.create_teimgr.exit_crit_edge

if.end269.i.create_teimgr.exit_crit_edge:         ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_teimgr.exit

if.end269.i.if.then272.i_crit_edge:               ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then272.i

if.then272.i:                                     ; preds = %if.end269.i.if.then272.i_crit_edge, %list_add_tail.exit.i.if.then272.i_crit_edge
  %id.0403.i = phi i32 [ %call268.i, %if.end269.i.if.then272.i_crit_edge ], [ %retval.0.i393.i, %list_add_tail.exit.i.if.then272.i_crit_edge ]
  %ch273.i = getelementptr inbounds %struct.layer2, ptr %call171.i, i32 0, i32 1
  %ctrl274.i = getelementptr inbounds %struct.layer2, ptr %call171.i, i32 0, i32 1, i32 9
  %182 = ptrtoint ptr %ctrl274.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ctrl274.i, align 4
  %call276.i = call i32 %183(ptr noundef %ch273.i, i32 noundef 512, ptr noundef null) #8
  br label %create_teimgr.exit

create_teimgr.exit:                               ; preds = %if.then272.i, %if.end269.i.create_teimgr.exit_crit_edge, %if.then178.i, %if.end162.i.create_teimgr.exit_crit_edge, %do.body152.i, %if.end125.i.create_teimgr.exit_crit_edge, %if.end68.i.create_teimgr.exit_crit_edge, %if.then63.i.create_teimgr.exit_crit_edge, %do.end56.i, %if.end39.i.create_teimgr.exit_crit_edge, %if.then34.i.create_teimgr.exit_crit_edge, %if.end.i.create_teimgr.exit_crit_edge
  %retval.0.i = phi i32 [ -16, %do.end56.i ], [ -12, %if.then178.i ], [ -22, %if.end.i.create_teimgr.exit_crit_edge ], [ -93, %if.then34.i.create_teimgr.exit_crit_edge ], [ -22, %if.end39.i.create_teimgr.exit_crit_edge ], [ -93, %if.then63.i.create_teimgr.exit_crit_edge ], [ -22, %if.end68.i.create_teimgr.exit_crit_edge ], [ 0, %do.body152.i ], [ 0, %if.end125.i.create_teimgr.exit_crit_edge ], [ -12, %if.end162.i.create_teimgr.exit_crit_edge ], [ %id.0403.i, %if.then272.i ], [ %call268.i, %if.end269.i.create_teimgr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %l1rq.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt.i) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %options.i16 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %options.i16) #8
  %184 = ptrtoint ptr %options.i16 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %options.i16, align 4
  %186 = and i32 %185, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i17 = icmp eq i32 %186, 0
  br i1 %tobool.not.i17, label %sw.bb3.if.end53.i_crit_edge, label %if.then.i

sw.bb3.if.end53.i_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.then.i:                                        ; preds = %sw.bb3
  %up.i18 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 8
  %187 = ptrtoint ptr %up.i18 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %up.i18, align 4
  %188 = ptrtoint ptr %options.i16 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %options.i16, align 4
  %190 = and i32 %189, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool5.not.i = icmp eq i32 %190, 0
  %layer229.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 3
  %191 = ptrtoint ptr %layer229.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %layer229.i, align 4
  %cmp41.not8.i = icmp eq ptr %192, %layer229.i
  br i1 %tobool5.not.i, label %if.else.i27, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  br i1 %cmp41.not8.i, label %if.then6.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then6.i.for.end.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then6.i
  %st.i19 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  br label %for.body.i23

for.body.i23:                                     ; preds = %list_del.exit.i.for.body.i23_crit_edge, %for.body.lr.ph.i
  %l2.06.i = phi ptr [ %192, %for.body.lr.ph.i ], [ %nl2.0.i, %list_del.exit.i.for.body.i23_crit_edge ]
  %193 = ptrtoint ptr %l2.06.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %nl2.0.i = load ptr, ptr %l2.06.i, align 4
  %tei.i20 = getelementptr inbounds %struct.layer2, ptr %l2.06.i, i32 0, i32 6
  %194 = ptrtoint ptr %tei.i20 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %tei.i20, align 1
  %conv.i21 = sext i8 %195 to i32
  tail call fastcc void @put_tei_msg(ptr noundef %ch, i8 noundef zeroext 6, i32 noundef 0, i32 noundef %conv.i21) #8
  %196 = ptrtoint ptr %st.i19 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %st.i19, align 4
  %lmutex.i = getelementptr inbounds %struct.mISDNstack, ptr %197, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lmutex.i, i32 noundef 0) #8
  %ch13.i = getelementptr inbounds %struct.layer2, ptr %l2.06.i, i32 0, i32 1
  %call.i.i.i22 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ch13.i) #8
  br i1 %call.i.i.i22, label %if.end.i.i.i24, label %for.body.i23.list_del.exit.i_crit_edge

for.body.i23.list_del.exit.i_crit_edge:           ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i24:                                   ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2.06.i, i32 0, i32 1, i32 0, i32 1
  %198 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %prev.i.i.i, align 4
  %200 = ptrtoint ptr %ch13.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ch13.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %199, ptr %prev1.i.i.i.i, align 4
  %203 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile ptr %201, ptr %199, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i24, %for.body.i23.list_del.exit.i_crit_edge
  %204 = ptrtoint ptr %ch13.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr inttoptr (i32 256 to ptr), ptr %ch13.i, align 4
  %prev.i.i25 = getelementptr inbounds %struct.layer2, ptr %l2.06.i, i32 0, i32 1, i32 0, i32 1
  %205 = ptrtoint ptr %prev.i.i25 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i25, align 4
  %206 = ptrtoint ptr %st.i19 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %st.i19, align 4
  %lmutex17.i = getelementptr inbounds %struct.mISDNstack, ptr %207, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %lmutex17.i) #8
  %ctrl.i26 = getelementptr inbounds %struct.layer2, ptr %l2.06.i, i32 0, i32 1, i32 9
  %208 = ptrtoint ptr %ctrl.i26 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ctrl.i26, align 4
  %call20.i = tail call i32 %209(ptr noundef %ch13.i, i32 noundef 512, ptr noundef null) #8
  %cmp.not.i = icmp eq ptr %nl2.0.i, %layer229.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i23_crit_edge

list_del.exit.i.for.body.i23_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i23

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.then6.i.for.end.i_crit_edge
  %call27.i = tail call i32 @_test_and_clear_bit(i32 noundef 25, ptr noundef %options.i16) #8
  br label %if.end53.i

if.else.i27:                                      ; preds = %if.then.i
  br i1 %cmp41.not8.i, label %if.else.i27.if.end53.i_crit_edge, label %if.else.i27.for.body44.i_crit_edge

if.else.i27.for.body44.i_crit_edge:               ; preds = %if.else.i27
  br label %for.body44.i

if.else.i27.if.end53.i_crit_edge:                 ; preds = %if.else.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

for.body44.i:                                     ; preds = %for.body44.i.for.body44.i_crit_edge, %if.else.i27.for.body44.i_crit_edge
  %l2.19.i = phi ptr [ %nl2.1.i, %for.body44.i.for.body44.i_crit_edge ], [ %192, %if.else.i27.for.body44.i_crit_edge ]
  %210 = ptrtoint ptr %l2.19.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %nl2.1.i = load ptr, ptr %l2.19.i, align 4
  %up45.i = getelementptr inbounds %struct.layer2, ptr %l2.19.i, i32 0, i32 4
  %211 = ptrtoint ptr %up45.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %up45.i, align 4
  %cmp41.not.i = icmp eq ptr %nl2.1.i, %layer229.i
  br i1 %cmp41.not.i, label %for.body44.i.if.end53.i_crit_edge, label %for.body44.i.for.body44.i_crit_edge

for.body44.i.for.body44.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.i

for.body44.i.if.end53.i_crit_edge:                ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.end53.i:                                       ; preds = %for.body44.i.if.end53.i_crit_edge, %if.else.i27.if.end53.i_crit_edge, %for.end.i, %sw.bb3.if.end53.i_crit_edge
  %212 = ptrtoint ptr %options.i16 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile i32, ptr %options.i16, align 4
  %214 = and i32 %213, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool56.not.i = icmp eq i32 %214, 0
  br i1 %tobool56.not.i, label %if.end53.i.free_teimanager.exit_crit_edge, label %if.then57.i

if.end53.i.free_teimanager.exit_crit_edge:        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_teimanager.exit

if.then57.i:                                      ; preds = %if.end53.i
  %layer258.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 3
  %215 = ptrtoint ptr %layer258.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile ptr, ptr %layer258.i, align 4
  %cmp.i.not.i28 = icmp eq ptr %216, %layer258.i
  br i1 %cmp.i.not.i28, label %if.then61.i, label %if.then57.i.free_teimanager.exit_crit_edge

if.then57.i.free_teimanager.exit_crit_edge:       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_teimanager.exit

if.then61.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  %call63.i = tail call i32 @_test_and_clear_bit(i32 noundef 24, ptr noundef %options.i16) #8
  br label %free_teimanager.exit

free_teimanager.exit:                             ; preds = %if.then61.i, %if.then57.i.free_teimanager.exit_crit_edge, %if.end53.i.free_teimanager.exit_crit_edge
  %st67.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %217 = ptrtoint ptr %st67.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %st67.i, align 4
  %dev.i29 = getelementptr inbounds %struct.mISDNstack, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %dev.i29 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev.i29, align 4
  %ctrl68.i = getelementptr inbounds %struct.mISDNchannel, ptr %220, i32 0, i32 9
  %221 = ptrtoint ptr %ctrl68.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ctrl68.i, align 8
  %call73.i = tail call i32 %222(ptr noundef %220, i32 noundef 512, ptr noundef null) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %223 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arg, align 4
  %225 = zext i32 %224 to i64
  call void @__sanitizer_cov_trace_switch(i64 %225, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %224, label %sw.bb5.sw.epilog_crit_edge [
    i32 -2147202746, label %sw.bb.i
    i32 -2147202744, label %sw.bb4.i
  ]

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb5
  %arrayidx1.i = getelementptr i32, ptr %arg, i32 1
  %226 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool.not.i30 = icmp eq i32 %227, 0
  %options2.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  br i1 %tobool.not.i30, label %if.else.i33, label %if.then.i32

if.then.i32:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i31 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %options2.i) #8
  br label %sw.epilog

if.else.i33:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %options2.i) #8
  br label %sw.epilog

sw.bb4.i:                                         ; preds = %sw.bb5
  %arrayidx5.i = getelementptr i32, ptr %arg, i32 1
  %228 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool6.not.i = icmp eq i32 %229, 0
  %options11.i = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  br i1 %tobool6.not.i, label %if.else10.i, label %if.then7.i

if.then7.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i34 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %options11.i) #8
  br label %sw.epilog

if.else10.i:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %options11.i) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3
  %230 = load ptr, ptr @debug, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %230, align 4
  %and.i36 = and i32 %232, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %sw.bb7.if.end.i41_crit_edge, label %do.end.i39

sw.bb7.if.end.i41_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i41

do.end.i39:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %234 = load i32, ptr %cb.i, align 1
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3, i32 4
  %235 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %id.i, align 1
  %call.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.45, i32 noundef %234, i32 noundef %236) #11
  br label %if.end.i41

if.end.i41:                                       ; preds = %do.end.i39, %sw.bb7.if.end.i41_crit_edge
  %options.i40 = getelementptr inbounds %struct.manager, ptr %ch, i32 0, i32 2
  %237 = ptrtoint ptr %options.i40 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile i32, ptr %options.i40, align 4
  %239 = and i32 %238, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool2.not.i = icmp eq i32 %239, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i41.sw.epilog_crit_edge

if.end.i41.sw.epilog_crit_edge:                   ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i41
  %240 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %241)
  %cmp.not.i42 = icmp eq i32 %241, 8194
  br i1 %cmp.not.i42, label %if.end7.i, label %if.end4.i.sw.epilog_crit_edge

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.end4.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 6
  %242 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %243)
  %cmp8.not.i = icmp eq i32 %243, 3
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.sw.epilog_crit_edge

if.end7.i.sw.epilog_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end10.i:                                       ; preds = %if.end7.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %244 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %data.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %245, align 1
  %conv.i43 = zext i8 %247 to i32
  %and12.i = and i32 %conv.i43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i44, label %if.end10.i.sw.epilog_crit_edge

if.end10.i.sw.epilog_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end15.i44:                                     ; preds = %if.end10.i
  %248 = lshr i32 %conv.i43, 2
  %arrayidx20.i = getelementptr i8, ptr %245, i32 1
  %249 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %250 to i32
  %and22.i = and i32 %conv21.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end15.i44.sw.epilog_crit_edge, label %if.end25.i

if.end15.i44.sw.epilog_crit_edge:                 ; preds = %if.end15.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end25.i:                                       ; preds = %if.end15.i44
  %251 = lshr i32 %conv21.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %cmp30.i = icmp slt i8 %250, 0
  br i1 %cmp30.i, label %if.end25.i.sw.epilog_crit_edge, label %if.end33.i

if.end25.i.sw.epilog_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end33.i:                                       ; preds = %if.end25.i
  %arrayidx35.i = getelementptr i8, ptr %245, i32 2
  %252 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx35.i, align 1
  %254 = and i8 %253, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %254)
  %cmp38.not.i = icmp eq i8 %254, 111
  br i1 %cmp38.not.i, label %if.end41.i, label %if.end33.i.sw.epilog_crit_edge

if.end33.i.sw.epilog_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end41.i:                                       ; preds = %if.end33.i
  %255 = load ptr, ptr @debug, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %255, align 4
  %and42.i = and i32 %257, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end50.i_crit_edge, label %do.end47.i

if.end41.i.if.end50.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

do.end47.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef %248, i32 noundef %251) #11
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end47.i, %if.end41.i.if.end50.i_crit_edge
  %call51.i = tail call fastcc ptr @create_new_tei(ptr noundef %ch, i32 noundef %251, i32 noundef %248) #8
  %tobool52.not.i45 = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i45, label %if.then53.i, label %if.end63.i

if.then53.i:                                      ; preds = %if.end50.i
  %258 = load ptr, ptr @debug, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %258, align 4
  %and54.i = and i32 %260, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.then53.i.sw.epilog_crit_edge, label %do.end59.i

if.then53.i.sw.epilog_crit_edge:                  ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end59.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.45) #11
  br label %sw.epilog

if.end63.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  %ch.i = getelementptr inbounds %struct.layer2, ptr %call51.i, i32 0, i32 1
  %send.i = getelementptr inbounds %struct.layer2, ptr %call51.i, i32 0, i32 1, i32 7
  %261 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %send.i, align 4
  %call65.i = tail call i32 %262(ptr noundef %ch.i, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end63.i, %do.end59.i, %if.then53.i.sw.epilog_crit_edge, %if.end33.i.sw.epilog_crit_edge, %if.end25.i.sw.epilog_crit_edge, %if.end15.i44.sw.epilog_crit_edge, %if.end10.i.sw.epilog_crit_edge, %if.end7.i.sw.epilog_crit_edge, %if.end4.i.sw.epilog_crit_edge, %if.end.i41.sw.epilog_crit_edge, %if.else10.i, %if.then7.i, %if.else.i33, %if.then.i32, %sw.bb5.sw.epilog_crit_edge, %free_teimanager.exit, %create_teimgr.exit, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.sw.epilog_crit_edge ], [ 0, %free_teimanager.exit ], [ %retval.0.i, %create_teimgr.exit ], [ -22, %sw.bb5.sw.epilog_crit_edge ], [ 0, %if.then7.i ], [ 0, %if.else10.i ], [ 0, %if.then.i32 ], [ 0, %if.else.i33 ], [ %call65.i, %if.end63.i ], [ -107, %if.end.i41.sw.epilog_crit_edge ], [ -107, %if.end4.i.sw.epilog_crit_edge ], [ -107, %if.end7.i.sw.epilog_crit_edge ], [ -22, %if.end10.i.sw.epilog_crit_edge ], [ -22, %if.end15.i44.sw.epilog_crit_edge ], [ -107, %if.end25.i.sw.epilog_crit_edge ], [ -107, %if.end33.i.sw.epilog_crit_edge ], [ -12, %do.end59.i ], [ -12, %if.then53.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_channel_address(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_layer2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgr_bcast(ptr noundef %ch, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %lock = getelementptr i8, ptr %ch, i32 56
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %lock) #8
  %layer2 = getelementptr i8, ptr %ch, i32 48
  %0 = ptrtoint ptr %layer2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %l2.0107 = load ptr, ptr %layer2, align 4
  %cmp6.not108 = icmp eq ptr %l2.0107, %layer2
  br i1 %cmp6.not108, label %entry.do.body63_crit_edge, label %for.body.lr.ph

entry.do.body63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body63

for.body.lr.ph:                                   ; preds = %entry
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %l2.0111 = phi ptr [ %l2.0107, %for.body.lr.ph ], [ %l2.0, %for.inc.for.body_crit_edge ]
  %skb.addr.0110 = phi ptr [ %skb, %for.body.lr.ph ], [ %skb.addr.2, %for.inc.for.body_crit_edge ]
  %cskb.0109 = phi ptr [ null, %for.body.lr.ph ], [ %cskb.2, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %id, align 1
  %addr = getelementptr inbounds %struct.layer2, ptr %l2.0111, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %5 = xor i32 %4, %2
  %6 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %7 = ptrtoint ptr %l2.0111 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %l2.0111, align 4
  %cmp.i.not = icmp eq ptr %8, %layer2
  br i1 %cmp.i.not, label %if.then.if.end19_crit_edge, label %if.else

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else:                                          ; preds = %if.then
  %tobool16.not = icmp eq ptr %cskb.0109, null
  br i1 %tobool16.not, label %if.then17, label %if.else.if.then21_crit_edge

if.else.if.then21_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call ptr @skb_copy(ptr noundef %skb.addr.0110, i32 noundef 2592) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then.if.end19_crit_edge
  %cskb.1 = phi ptr [ %call18, %if.then17 ], [ %skb.addr.0110, %if.then.if.end19_crit_edge ]
  %skb.addr.1 = phi ptr [ %skb.addr.0110, %if.then17 ], [ null, %if.then.if.end19_crit_edge ]
  %tobool20.not = icmp eq ptr %cskb.1, null
  br i1 %tobool20.not, label %do.end51, label %if.end19.if.then21_crit_edge

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.then21:                                        ; preds = %if.end19.if.then21_crit_edge, %if.else.if.then21_crit_edge
  %skb.addr.1104 = phi ptr [ %skb.addr.1, %if.end19.if.then21_crit_edge ], [ %skb.addr.0110, %if.else.if.then21_crit_edge ]
  %cskb.1103 = phi ptr [ %cskb.1, %if.end19.if.then21_crit_edge ], [ %cskb.0109, %if.else.if.then21_crit_edge ]
  %incdec.ptr = getelementptr %struct.sk_buff, ptr %cskb.1103, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %cb, align 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %incdec.ptr, align 1
  %incdec.ptr24 = getelementptr %struct.sk_buff, ptr %cskb.1103, i32 0, i32 3
  %12 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 30724, ptr %incdec.ptr24, align 1
  %nr = getelementptr inbounds %struct.layer2, ptr %l2.0111, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr, align 4
  %id26 = getelementptr %struct.sk_buff, ptr %cskb.1103, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %id26 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %id26, align 1
  %16 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %st, align 4
  %own = getelementptr inbounds %struct.mISDNstack, ptr %17, i32 0, i32 8
  %recv = getelementptr inbounds %struct.mISDNstack, ptr %17, i32 0, i32 8, i32 8
  %18 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recv, align 4
  %call29 = tail call i32 %19(ptr noundef %own, ptr noundef nonnull %cskb.1103) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then21.for.inc_crit_edge, label %if.then31

if.then21.for.inc_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then31:                                        ; preds = %if.then21
  %20 = load ptr, ptr @debug, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %and32 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then31.for.inc_crit_edge, label %do.end37

if.then31.for.inc_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr, align 4
  %25 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %cb, align 1
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %call29) #11
  br label %for.inc

do.end51:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %nr53 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 2
  %29 = ptrtoint ptr %nr53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr53, align 4
  %addr54 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 4
  %31 = ptrtoint ptr %addr54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr54, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %30, i32 noundef %32) #11
  br label %do.body63

for.inc:                                          ; preds = %do.end37, %if.then31.for.inc_crit_edge, %if.then21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cskb.2 = phi ptr [ %cskb.1103, %do.end37 ], [ %cskb.1103, %if.then31.for.inc_crit_edge ], [ %cskb.0109, %for.body.for.inc_crit_edge ], [ null, %if.then21.for.inc_crit_edge ]
  %skb.addr.2 = phi ptr [ %skb.addr.1104, %do.end37 ], [ %skb.addr.1104, %if.then31.for.inc_crit_edge ], [ %skb.addr.0110, %for.body.for.inc_crit_edge ], [ %skb.addr.1104, %if.then21.for.inc_crit_edge ]
  %33 = ptrtoint ptr %l2.0111 to i32
  call void @__asan_load4_noabort(i32 %33)
  %l2.0 = load ptr, ptr %l2.0111, align 4
  %cmp6.not = icmp eq ptr %l2.0, %layer2
  br i1 %cmp6.not, label %for.inc.do.body63_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.body63_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body63

do.body63:                                        ; preds = %for.inc.do.body63_crit_edge, %do.end51, %entry.do.body63_crit_edge
  %cskb.3 = phi ptr [ null, %do.end51 ], [ null, %entry.do.body63_crit_edge ], [ %cskb.2, %for.inc.do.body63_crit_edge ]
  %skb.addr.3 = phi ptr [ %skb.addr.1, %do.end51 ], [ %skb, %entry.do.body63_crit_edge ], [ %skb.addr.2, %for.inc.do.body63_crit_edge ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  tail call void @consume_skb(ptr noundef %cskb.3) #8
  tail call void @consume_skb(ptr noundef %skb.addr.3) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mgr_bcast_ctrl(ptr nocapture noundef readnone %ch, i32 noundef %cmd, ptr nocapture noundef readnone %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da_debug(ptr nocapture noundef readonly %fi, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %va = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #8
  %2 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !234
  %3 = load ptr, ptr @debug, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %va)
  %7 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fmt, ptr %vaf, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %va, ptr %6, align 4
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st, align 4
  %dev = getelementptr inbounds %struct.mISDNstack, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %14, ptr noundef nonnull %vaf) #11
  call void @llvm.va_end(ptr nonnull %va)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmInitTimer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @TEIInit(ptr noundef %deb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %deb, ptr @debug, align 4
  store i32 3, ptr getelementptr inbounds (%struct.Fsm, ptr @teifsmu, i32 0, i32 1), align 4
  store i32 9, ptr getelementptr inbounds (%struct.Fsm, ptr @teifsmu, i32 0, i32 2), align 4
  store ptr @strTeiEvent, ptr getelementptr inbounds (%struct.Fsm, ptr @teifsmu, i32 0, i32 3), align 4
  store ptr @strTeiState, ptr getelementptr inbounds (%struct.Fsm, ptr @teifsmu, i32 0, i32 4), align 4
  %call = tail call i32 @mISDN_FsmNew(ptr noundef nonnull @teifsmu, ptr noundef nonnull @TeiFnListUser, i32 noundef 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 3, ptr getelementptr inbounds (%struct.Fsm, ptr @teifsmn, i32 0, i32 1), align 4
  store i32 9, ptr getelementptr inbounds (%struct.Fsm, ptr @teifsmn, i32 0, i32 2), align 4
  store ptr @strTeiEvent, ptr getelementptr inbounds (%struct.Fsm, ptr @teifsmn, i32 0, i32 3), align 4
  store ptr @strTeiState, ptr getelementptr inbounds (%struct.Fsm, ptr @teifsmn, i32 0, i32 4), align 4
  %call1 = tail call i32 @mISDN_FsmNew(ptr noundef nonnull @teifsmn, ptr noundef nonnull @TeiFnListNet, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.error_smn_crit_edge

if.end.error_smn_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_smn

if.end4:                                          ; preds = %if.end
  store i32 3, ptr getelementptr inbounds (%struct.Fsm, ptr @deactfsm, i32 0, i32 1), align 4
  store i32 6, ptr getelementptr inbounds (%struct.Fsm, ptr @deactfsm, i32 0, i32 2), align 4
  store ptr @strDeactEvent, ptr getelementptr inbounds (%struct.Fsm, ptr @deactfsm, i32 0, i32 3), align 4
  store ptr @strDeactState, ptr getelementptr inbounds (%struct.Fsm, ptr @deactfsm, i32 0, i32 4), align 4
  %call5 = tail call i32 @mISDN_FsmNew(ptr noundef nonnull @deactfsm, ptr noundef nonnull @DeactFnList, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %error_deact

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_deact:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mISDN_FsmFree(ptr noundef nonnull @teifsmn) #8
  br label %error_smn

error_smn:                                        ; preds = %error_deact, %if.end.error_smn_crit_edge
  %res.0 = phi i32 [ %call1, %if.end.error_smn_crit_edge ], [ %call5, %error_deact ]
  tail call void @mISDN_FsmFree(ptr noundef nonnull @teifsmu) #8
  br label %cleanup

cleanup:                                          ; preds = %error_smn, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %res.0, %error_smn ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_FsmNew(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @TEIFree() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mISDN_FsmFree(ptr noundef nonnull @teifsmu) #8
  tail call void @mISDN_FsmFree(ptr noundef nonnull @teifsmn) #8
  tail call void @mISDN_FsmFree(ptr noundef nonnull @deactfsm) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_send(ptr noundef %mgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 2
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.end

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 17, ptr noundef %options) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then4:                                         ; preds = %if.end
  %sendq = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 7
  %call5 = tail call ptr @skb_dequeue(ptr noundef %sendq) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %options) #8
  br label %if.end20

if.end10:                                         ; preds = %if.then4
  %id = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 3, i32 4
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %lastid = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 10
  %5 = ptrtoint ptr %lastid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %lastid, align 4
  %deact = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 5
  %call11 = tail call i32 @mISDN_FsmEvent(ptr noundef %deact, i32 noundef 4, ptr noundef null) #8
  %recv = getelementptr inbounds %struct.mISDNchannel, ptr %mgr, i32 0, i32 8
  %6 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recv, align 4
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %mgr, i32 0, i32 6
  %8 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer, align 4
  %call13 = tail call i32 %7(ptr noundef %9, ptr noundef nonnull %call5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end10.if.end20_crit_edge, label %if.then15

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call5) #8
  %call17 = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %options) #8
  %10 = ptrtoint ptr %lastid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65534, ptr %lastid, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end10.if.end20_crit_edge, %if.then7, %if.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @new_tei_req(ptr noundef %mgr, ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  %ids.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %dp, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %add = or i32 %shl, %conv2
  %up = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 8
  %4 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %up, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.denied_crit_edge, label %if.end

entry.denied_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %denied

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr i8, ptr %dp, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %and = and i32 %conv4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.denied_crit_edge, label %if.end7

if.end.denied_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %denied

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.not = icmp eq i8 %7, -1
  br i1 %cmp.not, label %if.else, label %if.end14.thread

if.end14.thread:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %8 = lshr i32 %conv4, 1
  br label %if.end19

if.else:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ids.i) #8
  %9 = ptrtoint ptr %ids.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %ids.i, align 8
  %layer2.i = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 3
  %10 = ptrtoint ptr %layer2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %l2.034.i = load ptr, ptr %layer2.i, align 4
  %cmp.not35.i = icmp eq ptr %l2.034.i, %layer2.i
  br i1 %cmp.not35.i, label %if.else.for.end.i_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.for.end.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %l2.036.i = phi ptr [ %l2.0.i, %for.inc.i.for.body.i_crit_edge ], [ %l2.034.i, %if.else.for.body.i_crit_edge ]
  %nr.i = getelementptr inbounds %struct.layer2, ptr %l2.036.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2.i = icmp eq i32 %12, 0
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %addr.i = getelementptr inbounds %struct.layer2, ptr %l2.036.i, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 4
  %and.i = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %14)
  %cmp9.i = icmp ult i32 %14, 16384
  %or.cond.i = or i1 %cmp9.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.end.i.for.inc.i_crit_edge, label %if.end11.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %14, 8
  %sub.i = add nsw i32 %shr.i, -64
  %rem.i.i = and i32 %shr.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %sub.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %ids.i, i32 %div2.i.i
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %16, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %l2.036.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %l2.0.i = load ptr, ptr %l2.036.i, align 4
  %cmp.not.i = icmp eq ptr %l2.0.i, %layer2.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else.for.end.i_crit_edge
  %call.i = call i32 @_find_first_zero_bit_be(ptr noundef nonnull %ids.i, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 64
  br i1 %cmp18.i, label %if.end14, label %if.end14.thread42

if.end14.thread42:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ids.i) #8
  br label %do.end

if.end14:                                         ; preds = %for.end.i
  %add.i = add nsw i32 %call.i, 64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ids.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %call.i)
  %cmp15 = icmp slt i32 %call.i, -64
  br i1 %cmp15, label %if.end14.do.end_crit_edge, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end14.do.end_crit_edge, %if.end14.thread42
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #11
  br label %denied

if.end19:                                         ; preds = %if.end14.if.end19_crit_edge, %if.end14.thread
  %tei.041 = phi i32 [ %8, %if.end14.thread ], [ %add.i, %if.end14.if.end19_crit_edge ]
  %call20 = call fastcc ptr @create_new_tei(ptr noundef %mgr, i32 noundef %tei.041, i32 noundef 0)
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.denied_crit_edge, label %if.else23

if.end19.denied_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %denied

if.else23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %tm = getelementptr inbounds %struct.layer2, ptr %call20, i32 0, i32 9
  %18 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tm, align 4
  %tei_m = getelementptr inbounds %struct.teimgr, ptr %19, i32 0, i32 2
  %call24 = call i32 @mISDN_FsmEvent(ptr noundef %tei_m, i32 noundef 2, ptr noundef %dp) #8
  br label %cleanup

denied:                                           ; preds = %if.end19.denied_crit_edge, %do.end, %if.end.denied_crit_edge, %entry.denied_crit_edge
  call fastcc void @put_tei_msg(ptr noundef %mgr, i8 noundef zeroext 3, i32 noundef %add, i32 noundef 127)
  br label %cleanup

cleanup:                                          ; preds = %denied, %if.else23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_new_tei(ptr noundef %mgr, i32 noundef %tei, i32 noundef %sapi) unnamed_addr #0 align 64 {
entry:
  %ids.i = alloca [2 x i32], align 8
  %opt = alloca i32, align 4
  %rq = alloca %struct.channel_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #8
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %opt, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rq) #8
  %1 = getelementptr inbounds i8, ptr %rq, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %up = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 8
  %3 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %up, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %tei)
  %cmp1 = icmp slt i32 %tei, 64
  br i1 %cmp1, label %if.then2, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef nonnull %opt) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true.if.end3_crit_edge
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %mgr, i32 0, i32 5
  %5 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %st, align 4
  %dev = getelementptr inbounds %struct.mISDNstack, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %Dprotocols = getelementptr inbounds %struct.mISDNdevice, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %Dprotocols to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %Dprotocols, align 8
  %and = and i32 %10, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %if.then5

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef nonnull %opt) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3.if.end8_crit_edge
  %storemerge = phi i32 [ 4, %if.then5 ], [ 2, %if.end3.if.end8_crit_edge ]
  %11 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %rq, align 4
  %12 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %up, align 4
  %14 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opt, align 4
  %call10 = call ptr @create_l2(ptr noundef %13, i32 noundef 17, i32 noundef %15, i32 noundef %tei, i32 noundef %sapi) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 108) #12
  %tm = getelementptr inbounds %struct.layer2, ptr %call10, i32 0, i32 9
  %17 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %tm, align 4
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call10) #8
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %mgr26 = getelementptr inbounds %struct.teimgr, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %mgr26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mgr, ptr %mgr26, align 8
  %19 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tm, align 4
  %l228 = getelementptr inbounds %struct.teimgr, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %l228 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call10, ptr %l228, align 4
  %22 = load ptr, ptr @debug, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %and29 = and i32 %24, 2097152
  %25 = load ptr, ptr %tm, align 4
  %debug = getelementptr inbounds %struct.teimgr, ptr %25, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and29, ptr %debug, align 4
  %27 = load ptr, ptr %tm, align 4
  %userdata = getelementptr inbounds %struct.teimgr, ptr %27, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %userdata to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %userdata, align 4
  %29 = load ptr, ptr %tm, align 4
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %29, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %printdebug to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @tei_debug, ptr %printdebug, align 4
  %31 = load ptr, ptr %tm, align 4
  %tei_m37 = getelementptr inbounds %struct.teimgr, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %tei_m37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @teifsmn, ptr %tei_m37, align 4
  %33 = load ptr, ptr %tm, align 4
  %state = getelementptr inbounds %struct.teimgr, ptr %33, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %state, align 4
  %35 = load ptr, ptr %tm, align 4
  %tval = getelementptr inbounds %struct.teimgr, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %tval to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2000, ptr %tval, align 4
  %37 = load ptr, ptr %tm, align 4
  %tei_m42 = getelementptr inbounds %struct.teimgr, ptr %37, i32 0, i32 2
  %timer = getelementptr inbounds %struct.teimgr, ptr %37, i32 0, i32 3
  call void @mISDN_FsmInitTimer(ptr noundef %tei_m42, ptr noundef %timer) #8
  %lock = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 4
  %call47 = call i32 @_raw_write_lock_irqsave(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ids.i) #8
  %38 = ptrtoint ptr %ids.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %ids.i, align 8
  %layer2.i = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 3
  %39 = ptrtoint ptr %layer2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %l2.028.i = load ptr, ptr %layer2.i, align 4
  %cmp.not29.i = icmp eq ptr %l2.028.i, %layer2.i
  br i1 %cmp.not29.i, label %if.end24.for.end.i_crit_edge, label %if.end24.for.body.i_crit_edge

if.end24.for.body.i_crit_edge:                    ; preds = %if.end24
  br label %for.body.i

if.end24.for.end.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end24.for.body.i_crit_edge
  %l2.030.i = phi ptr [ %l2.0.i, %if.end.i.for.body.i_crit_edge ], [ %l2.028.i, %if.end24.for.body.i_crit_edge ]
  %nr.i = getelementptr inbounds %struct.layer2, ptr %l2.030.i, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %41)
  %cmp2.i = icmp ugt i32 %41, 63
  br i1 %cmp2.i, label %for.body.i.get_free_id.exit.sink.split_crit_edge, label %if.end.i

for.body.i.get_free_id.exit.sink.split_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_free_id.exit.sink.split

if.end.i:                                         ; preds = %for.body.i
  %rem.i.i = and i32 %41, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %41, 5
  %add.ptr.i.i = getelementptr i32, ptr %ids.i, i32 %div2.i.i
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %43, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %44 = ptrtoint ptr %l2.030.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %l2.0.i = load ptr, ptr %l2.030.i, align 4
  %cmp.not.i = icmp eq ptr %l2.0.i, %layer2.i
  br i1 %cmp.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %if.end24.for.end.i_crit_edge
  %call12.i = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %ids.i, i32 noundef 64, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 64
  br i1 %cmp13.i, label %for.end.i.get_free_id.exit_crit_edge, label %for.end.i.get_free_id.exit.sink.split_crit_edge

for.end.i.get_free_id.exit.sink.split_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_free_id.exit.sink.split

for.end.i.get_free_id.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_free_id.exit

get_free_id.exit.sink.split:                      ; preds = %for.end.i.get_free_id.exit.sink.split_crit_edge, %for.body.i.get_free_id.exit.sink.split_crit_edge
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #11
  br label %get_free_id.exit

get_free_id.exit:                                 ; preds = %get_free_id.exit.sink.split, %for.end.i.get_free_id.exit_crit_edge
  %retval.0.i = phi i32 [ %call12.i, %for.end.i.get_free_id.exit_crit_edge ], [ -16, %get_free_id.exit.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ids.i) #8
  %prev.i = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call10, ptr noundef %46, ptr noundef %layer2.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %get_free_id.exit.list_add_tail.exit_crit_edge

get_free_id.exit.list_add_tail.exit_crit_edge:    ; preds = %get_free_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %get_free_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call10, ptr %prev.i, align 4
  %48 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %layer2.i, ptr %call10, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call10, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call10, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %get_free_id.exit.list_add_tail.exit_crit_edge
  call void @_raw_write_unlock_irqrestore(ptr noundef %lock, i32 noundef %call47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp60 = icmp slt i32 %retval.0.i, 0
  %ch63 = getelementptr inbounds %struct.layer2, ptr %call10, i32 0, i32 1
  br i1 %cmp60, label %if.then62, label %if.else71

if.then62:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl = getelementptr inbounds %struct.layer2, ptr %call10, i32 0, i32 1, i32 9
  %51 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctrl, align 4
  %call65 = call i32 %52(ptr noundef %ch63, i32 noundef 512, ptr noundef null) #8
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.else71:                                        ; preds = %list_add_tail.exit
  %nr = getelementptr inbounds %struct.layer2, ptr %call10, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i, ptr %nr, align 4
  %54 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %st, align 4
  call void @__add_layer2(ptr noundef %ch63, ptr noundef %55) #8
  %recv = getelementptr inbounds %struct.mISDNchannel, ptr %mgr, i32 0, i32 8
  %56 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %recv, align 4
  %recv78 = getelementptr inbounds %struct.layer2, ptr %call10, i32 0, i32 1, i32 8
  %58 = ptrtoint ptr %recv78 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %recv78, align 4
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %mgr, i32 0, i32 6
  %59 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %peer, align 4
  %peer81 = getelementptr inbounds %struct.layer2, ptr %call10, i32 0, i32 1, i32 6
  %61 = ptrtoint ptr %peer81 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %peer81, align 4
  %ctrl83 = getelementptr inbounds %struct.layer2, ptr %call10, i32 0, i32 1, i32 9
  %62 = ptrtoint ptr %ctrl83 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctrl83, align 4
  %call85 = call i32 %63(ptr noundef %ch63, i32 noundef 256, ptr noundef null) #8
  %64 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %st, align 4
  %dev88 = getelementptr inbounds %struct.mISDNstack, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev88, align 4
  %id89 = getelementptr inbounds %struct.mISDNdevice, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %id89 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id89, align 4
  %conv90 = trunc i32 %69 to i8
  %dev91 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %dev91 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv90, ptr %dev91, align 2
  %own = getelementptr inbounds %struct.mISDNstack, ptr %65, i32 0, i32 8
  %ctrl94 = getelementptr inbounds %struct.mISDNstack, ptr %65, i32 0, i32 8, i32 9
  %71 = ptrtoint ptr %ctrl94 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctrl94, align 4
  %call98 = call i32 %72(ptr noundef %own, i32 noundef 256, ptr noundef nonnull %rq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %do.end104, label %if.else71.cleanup_crit_edge

if.else71.cleanup_crit_edge:                      ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end104:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.14) #11
  %73 = ptrtoint ptr %ctrl83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctrl83, align 4
  %call110 = call i32 %74(ptr noundef %ch63, i32 noundef 512, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %if.else71.cleanup_crit_edge, %if.then62, %if.then18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then62 ], [ null, %if.then18 ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %do.end104 ], [ %call10, %if.else71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rq) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_tei_msg(ptr noundef %mgr, i8 noundef zeroext %m_id, i32 noundef %ri, i32 noundef %tei) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 2
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options, align 4
  %nextid.i = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 9
  %2 = ptrtoint ptr %nextid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nextid.i, align 4
  %inc.i = add i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %3)
  %cmp.i = icmp eq i32 %3, 32767
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %inc.i
  %4 = ptrtoint ptr %nextid.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select.i, ptr %nextid.i, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end, label %if.end20, !prof !233

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end20:                                         ; preds = %entry
  %shl.i = shl i32 %3, 16
  %or2.i = or i32 %shl.i, 32575
  %tei.tr = trunc i32 %tei to i8
  %5 = shl i8 %tei.tr, 1
  %conv13 = or i8 %5, 1
  %conv8 = trunc i32 %ri to i8
  %shr = lshr i32 %ri, 8
  %conv6 = trunc i32 %shr to i8
  %6 = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.not, i8 -4, i8 -2
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8) #8
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %call.i.i, align 1
  %bp.sroa.7.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %12 = ptrtoint ptr %bp.sroa.7.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %bp.sroa.7.0.call.i.i.sroa_idx, align 1
  %bp.sroa.9.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %13 = ptrtoint ptr %bp.sroa.9.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %bp.sroa.9.0.call.i.i.sroa_idx, align 1
  %bp.sroa.11.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 3
  %14 = ptrtoint ptr %bp.sroa.11.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 15, ptr %bp.sroa.11.0.call.i.i.sroa_idx, align 1
  %bp.sroa.13.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %15 = ptrtoint ptr %bp.sroa.13.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6, ptr %bp.sroa.13.0.call.i.i.sroa_idx, align 1
  %bp.sroa.15.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %16 = ptrtoint ptr %bp.sroa.15.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv8, ptr %bp.sroa.15.0.call.i.i.sroa_idx, align 1
  %bp.sroa.17.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %17 = ptrtoint ptr %bp.sroa.17.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %m_id, ptr %bp.sroa.17.0.call.i.i.sroa_idx, align 1
  %bp.sroa.19.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %18 = ptrtoint ptr %bp.sroa.19.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13, ptr %bp.sroa.19.0.call.i.i.sroa_idx, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 8193, ptr %cb.i, align 1
  %id6.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %id6.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %or2.i, ptr %id6.i, align 1
  %sendq.i = getelementptr inbounds %struct.manager, ptr %mgr, i32 0, i32 7
  tail call void @skb_queue_tail(ptr noundef %sendq.i, ptr noundef nonnull %call.i.i.i) #8
  %21 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %options, align 4
  %23 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end20
  %peer.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %mgr, i32 0, i32 6
  %24 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i.i26 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i26, label %if.then.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end3.i.i, !prof !233

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %27, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %29, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 257, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 65535, ptr %id6.i.i.i, align 1
  %recv.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %mgr, i32 0, i32 8
  %32 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %recv.i.i, align 4
  %34 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = tail call i32 %33(ptr noundef %35, ptr noundef nonnull %call.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end3.i.i.cleanup_crit_edge, label %if.then7.i.i

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @do_send(ptr noundef %mgr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then7.i.i, %if.end3.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @create_l2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_debug(ptr nocapture noundef readonly %fi, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %va = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #8
  %2 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !234
  %3 = load ptr, ptr @debug, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %va)
  %7 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fmt, ptr %vaf, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %va, ptr %6, align 4
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %l2, align 4
  %sapi = getelementptr inbounds %struct.layer2, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %sapi to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sapi, align 4
  %conv = sext i8 %12 to i32
  %tei = getelementptr inbounds %struct.layer2, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tei, align 1
  %conv4 = sext i8 %14 to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef %conv4, ptr noundef nonnull %vaf) #11
  call void @llvm.va_end(ptr nonnull %va)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__add_layer2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_request(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %x.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l2, align 4
  %tei = getelementptr inbounds %struct.layer2, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tei, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %5)
  %cmp.not = icmp eq i8 %5, 127
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = sext i8 %5 to i32
  %tei_m = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %printdebug, align 4
  tail call void (ptr, ptr, ...) %7(ptr noundef %tei_m, ptr noundef nonnull @.str.71, i32 noundef %conv) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x.i) #8
  %8 = ptrtoint ptr %x.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %x.i, align 2, !annotation !234
  call void @get_random_bytes(ptr noundef nonnull %x.i, i32 noundef 2) #8
  %9 = ptrtoint ptr %x.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %x.i, align 2
  %conv.i = zext i16 %10 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x.i) #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %1, align 4
  %12 = load ptr, ptr @debug, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tei_m7 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  %printdebug8 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %printdebug8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %printdebug8, align 4
  call void (ptr, ptr, ...) %16(ptr noundef %tei_m7, ptr noundef nonnull @.str.72, i32 noundef %conv.i) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mgr, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  call fastcc void @put_tei_msg(ptr noundef %18, i8 noundef zeroext 1, i32 noundef %20, i32 noundef 127)
  call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 1) #8
  %timer = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 3
  %tval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %tval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tval, align 4
  %call13 = call i32 @mISDN_FsmAddTimer(ptr noundef %timer, i32 noundef %22, i32 noundef 8, ptr noundef null, i32 noundef 1) #8
  %nval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %nval to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %nval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_test_dup(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %incdec.ptr = getelementptr i8, ptr %arg, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arg, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %conv2 = zext i8 %5 to i32
  %add = or i32 %shl, %conv2
  %incdec.ptr3 = getelementptr i8, ptr %arg, i32 3
  %6 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr3, align 1
  %8 = lshr i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = load ptr, ptr @debug, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and = and i32 %12, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %printdebug, align 4
  tail call void (ptr, ptr, ...) %14(ptr noundef %fi, ptr noundef nonnull @.str.73, i32 noundef %add, i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mgr, align 4
  %lock.i = getelementptr inbounds %struct.manager, ptr %16, i32 0, i32 4
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %lock.i) #8
  %layer2.i = getelementptr inbounds %struct.manager, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %layer2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %l2.046.i = load ptr, ptr %layer2.i, align 4
  %cmp3.not47.i = icmp eq ptr %l2.046.i, %layer2.i
  br i1 %cmp3.not47.i, label %if.end.findtei.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.findtei.exit.thread_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %findtei.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %l2.048.i = phi ptr [ %l2.0.i, %for.inc.i.for.body.i_crit_edge ], [ %l2.046.i, %if.end.for.body.i_crit_edge ]
  %sapi.i = getelementptr inbounds %struct.layer2, ptr %l2.048.i, i32 0, i32 5
  %18 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sapi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp6.i = icmp eq i8 %19, 0
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tei8.i = getelementptr inbounds %struct.layer2, ptr %l2.048.i, i32 0, i32 6
  %20 = ptrtoint ptr %tei8.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tei8.i, align 1
  %22 = add i8 %21, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %22)
  %23 = icmp ult i8 %22, 126
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %8)
  %cmp20.i = icmp eq i8 %21, %8
  %or.cond45.i = and i1 %cmp20.i, %23
  br i1 %or.cond45.i, label %findtei.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %24 = ptrtoint ptr %l2.048.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %l2.0.i = load ptr, ptr %l2.048.i, align 4
  %cmp3.not.i = icmp eq ptr %l2.0.i, %layer2.i
  br i1 %cmp3.not.i, label %for.inc.i.findtei.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.findtei.exit.thread_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %findtei.exit.thread

findtei.exit.thread:                              ; preds = %for.inc.i.findtei.exit.thread_crit_edge, %if.end.findtei.exit.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #8
  br label %if.end17

findtei.exit:                                     ; preds = %land.lhs.true.i
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #8
  %tobool5.not = icmp eq ptr %l2.048.i, null
  br i1 %tobool5.not, label %findtei.exit.if.end17_crit_edge, label %if.then6

findtei.exit.if.end17_crit_edge:                  ; preds = %findtei.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then6:                                         ; preds = %findtei.exit
  %tm7 = getelementptr inbounds %struct.layer2, ptr %l2.048.i, i32 0, i32 9
  %25 = ptrtoint ptr %tm7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tm7, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp.not = icmp eq i32 %add, %28
  br i1 %cmp.not, label %if.then6.if.end17_crit_edge, label %if.then10

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug12 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %printdebug12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %printdebug12, align 4
  tail call void (ptr, ptr, ...) %30(ptr noundef %fi, ptr noundef nonnull @.str.74, i32 noundef %9) #8
  %31 = ptrtoint ptr %tm7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tm7, align 4
  %tei_m14 = getelementptr inbounds %struct.teimgr, ptr %32, i32 0, i32 2
  %call15 = tail call i32 @mISDN_FsmEvent(ptr noundef %tei_m14, i32 noundef 7, ptr noundef null) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.then6.if.end17_crit_edge, %findtei.exit.if.end17_crit_edge, %findtei.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_verify(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %2 = load ptr, ptr @debug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %5 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %printdebug, align 4
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %l2, align 4
  %tei = getelementptr inbounds %struct.layer2, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tei, align 1
  %conv = sext i8 %10 to i32
  tail call void (ptr, ptr, ...) %6(ptr noundef %fi, ptr noundef nonnull @.str.75, i32 noundef %conv) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mgr, align 4
  %l21 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %l21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %l21, align 4
  %tei2 = getelementptr inbounds %struct.layer2, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %tei2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tei2, align 1
  %conv3 = sext i8 %16 to i32
  tail call fastcc void @put_tei_msg(ptr noundef %12, i8 noundef zeroext 7, i32 noundef 0, i32 noundef %conv3)
  %tei_m4 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  tail call void @mISDN_FsmChangeState(ptr noundef %tei_m4, i32 noundef 2) #8
  %timer = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 3
  %tval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %tval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tval, align 4
  %call = tail call i32 @mISDN_FsmAddTimer(ptr noundef %timer, i32 noundef %18, i32 noundef 8, ptr noundef null, i32 noundef 2) #8
  %nval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %nval to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %nval, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_remove(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %add.ptr = getelementptr i8, ptr %arg, i32 3
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = lshr i8 %3, 1
  %5 = load ptr, ptr @debug, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = zext i8 %4 to i32
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %printdebug, align 4
  tail call void (ptr, ptr, ...) %10(ptr noundef %fi, ptr noundef nonnull @.str.76, i32 noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %l2, align 4
  %tei1 = getelementptr inbounds %struct.layer2, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %tei1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tei1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %14)
  %cmp.not = icmp eq i8 %14, 127
  br i1 %cmp.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %4)
  %cmp4 = icmp eq i8 %4, 127
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %14)
  %cmp9 = icmp eq i8 %4, %14
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then11, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 3
  tail call void @mISDN_FsmDelTimer(ptr noundef %timer, i32 noundef 5) #8
  %tei_m12 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  tail call void @mISDN_FsmChangeState(ptr noundef %tei_m12, i32 noundef 0) #8
  %15 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %l2, align 4
  %call = tail call i32 @tei_l2(ptr noundef %16, i32 noundef 6660, i32 noundef 0) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_chk_req(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %x.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %add.ptr = getelementptr i8, ptr %arg, i32 3
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = lshr i8 %3, 1
  %5 = load ptr, ptr @debug, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = zext i8 %4 to i32
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %printdebug, align 4
  tail call void (ptr, ptr, ...) %10(ptr noundef %fi, ptr noundef nonnull @.str.77, i32 noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %l2, align 4
  %tei1 = getelementptr inbounds %struct.layer2, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %tei1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tei1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %14)
  %cmp.not = icmp eq i8 %14, 127
  br i1 %cmp.not, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %4)
  %cmp4 = icmp eq i8 %4, 127
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %14)
  %cmp9 = icmp eq i8 %4, %14
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then11, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 3
  tail call void @mISDN_FsmDelTimer(ptr noundef %timer, i32 noundef 4) #8
  %tei_m12 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  tail call void @mISDN_FsmChangeState(ptr noundef %tei_m12, i32 noundef 0) #8
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mgr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x.i) #8
  %17 = ptrtoint ptr %x.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %x.i, align 2, !annotation !234
  call void @get_random_bytes(ptr noundef nonnull %x.i, i32 noundef 2) #8
  %18 = ptrtoint ptr %x.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %x.i, align 2
  %conv.i = zext i16 %19 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x.i) #8
  %20 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %l2, align 4
  %tei14 = getelementptr inbounds %struct.layer2, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %tei14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tei14, align 1
  %conv15 = sext i8 %23 to i32
  call fastcc void @put_tei_msg(ptr noundef %16, i8 noundef zeroext 5, i32 noundef %conv.i, i32 noundef %conv15)
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_req_tout(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %x.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %nval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nval, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %nval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x.i) #8
  %4 = ptrtoint ptr %x.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %x.i, align 2, !annotation !234
  call void @get_random_bytes(ptr noundef nonnull %x.i, i32 noundef 2) #8
  %5 = ptrtoint ptr %x.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %x.i, align 2
  %conv.i = zext i16 %6 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x.i) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %1, align 4
  %8 = load ptr, ptr @debug, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %printdebug, align 4
  %13 = ptrtoint ptr %nval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nval, align 4
  %sub = sub i32 4, %14
  call void (ptr, ptr, ...) %12(ptr noundef %fi, ptr noundef nonnull @.str.78, i32 noundef %sub, i32 noundef %conv.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mgr, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  call fastcc void @put_tei_msg(ptr noundef %16, i8 noundef zeroext 1, i32 noundef %18, i32 noundef 127)
  %timer = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 3
  %tval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %tval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tval, align 4
  %call6 = call i32 @mISDN_FsmAddTimer(ptr noundef %timer, i32 noundef %20, i32 noundef 8, ptr noundef null, i32 noundef 3) #8
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug8 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %printdebug8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %printdebug8, align 4
  tail call void (ptr, ptr, ...) %22(ptr noundef %fi, ptr noundef nonnull @.str.79) #8
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %l2, align 4
  %call9 = tail call i32 @tei_l2(ptr noundef %24, i32 noundef 24324, i32 noundef 0) #8
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_assign(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %incdec.ptr = getelementptr i8, ptr %arg, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arg, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %conv2 = zext i8 %5 to i32
  %add = or i32 %shl, %conv2
  %incdec.ptr3 = getelementptr i8, ptr %arg, i32 3
  %6 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr3, align 1
  %8 = lshr i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = load ptr, ptr @debug, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and = and i32 %12, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %printdebug, align 4
  tail call void (ptr, ptr, ...) %14(ptr noundef %fi, ptr noundef nonnull @.str.80, i32 noundef %add, i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mgr, align 4
  %lock.i = getelementptr inbounds %struct.manager, ptr %16, i32 0, i32 4
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %lock.i) #8
  %layer2.i = getelementptr inbounds %struct.manager, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %layer2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %l2.046.i = load ptr, ptr %layer2.i, align 4
  %cmp3.not47.i = icmp eq ptr %l2.046.i, %layer2.i
  br i1 %cmp3.not47.i, label %if.end.findtei.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.findtei.exit.thread_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %findtei.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %l2.048.i = phi ptr [ %l2.0.i, %for.inc.i.for.body.i_crit_edge ], [ %l2.046.i, %if.end.for.body.i_crit_edge ]
  %sapi.i = getelementptr inbounds %struct.layer2, ptr %l2.048.i, i32 0, i32 5
  %18 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sapi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp6.i = icmp eq i8 %19, 0
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tei8.i = getelementptr inbounds %struct.layer2, ptr %l2.048.i, i32 0, i32 6
  %20 = ptrtoint ptr %tei8.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tei8.i, align 1
  %22 = add i8 %21, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %22)
  %23 = icmp ult i8 %22, 126
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %8)
  %cmp20.i = icmp eq i8 %21, %8
  %or.cond45.i = and i1 %cmp20.i, %23
  br i1 %or.cond45.i, label %findtei.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %24 = ptrtoint ptr %l2.048.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %l2.0.i = load ptr, ptr %l2.048.i, align 4
  %cmp3.not.i = icmp eq ptr %l2.0.i, %layer2.i
  br i1 %cmp3.not.i, label %for.inc.i.findtei.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.findtei.exit.thread_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %findtei.exit.thread

findtei.exit.thread:                              ; preds = %for.inc.i.findtei.exit.thread_crit_edge, %if.end.findtei.exit.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #8
  br label %if.else

findtei.exit:                                     ; preds = %land.lhs.true.i
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #8
  %tobool5.not = icmp eq ptr %l2.048.i, null
  br i1 %tobool5.not, label %findtei.exit.if.else_crit_edge, label %if.then6

findtei.exit.if.else_crit_edge:                   ; preds = %findtei.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then6:                                         ; preds = %findtei.exit
  %tm7 = getelementptr inbounds %struct.layer2, ptr %l2.048.i, i32 0, i32 9
  %25 = ptrtoint ptr %tm7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tm7, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp.not = icmp eq i32 %add, %28
  br i1 %cmp.not, label %if.then6.if.end22_crit_edge, label %if.then10

if.then6.if.end22_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug12 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %printdebug12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %printdebug12, align 4
  tail call void (ptr, ptr, ...) %30(ptr noundef %fi, ptr noundef nonnull @.str.74, i32 noundef %9) #8
  %call13 = tail call i32 @tei_l2(ptr noundef nonnull %l2.048.i, i32 noundef 24324, i32 noundef 0) #8
  br label %if.end22

if.else:                                          ; preds = %findtei.exit.if.else_crit_edge, %findtei.exit.thread
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %32)
  %cmp16 = icmp eq i32 %add, %32
  br i1 %cmp16, label %if.then18, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 3
  tail call void @mISDN_FsmDelTimer(ptr noundef %timer, i32 noundef 1) #8
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #8
  %l219 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %l219 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %l219, align 4
  %call20 = tail call i32 @tei_l2(ptr noundef %34, i32 noundef 6148, i32 noundef %9) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.else.if.end22_crit_edge, %if.then10, %if.then6.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_denied(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @debug, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %and = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr3 = getelementptr i8, ptr %arg, i32 3
  %3 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr3, align 1
  %5 = lshr i8 %4, 1
  %6 = zext i8 %5 to i32
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arg, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %incdec.ptr = getelementptr i8, ptr %arg, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr, align 1
  %conv2 = zext i8 %10 to i32
  %add = or i32 %shl, %conv2
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %11 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %userdata, align 4
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %12, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %printdebug, align 4
  tail call void (ptr, ptr, ...) %14(ptr noundef %fi, ptr noundef nonnull @.str.81, i32 noundef %add, i32 noundef %6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_ver_tout(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %nval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nval, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %nval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @debug, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %7 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %printdebug, align 4
  %sub = sub i32 4, %3
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %l2, align 4
  %tei = getelementptr inbounds %struct.layer2, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tei, align 1
  %conv = sext i8 %12 to i32
  tail call void (ptr, ptr, ...) %8(ptr noundef %fi, ptr noundef nonnull @.str.82, i32 noundef %sub, i32 noundef %conv) #8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mgr, align 4
  %l24 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %l24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %l24, align 4
  %tei5 = getelementptr inbounds %struct.layer2, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %tei5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tei5, align 1
  %conv6 = sext i8 %18 to i32
  tail call fastcc void @put_tei_msg(ptr noundef %14, i8 noundef zeroext 7, i32 noundef 0, i32 noundef %conv6)
  %timer = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 3
  %tval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %tval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tval, align 4
  %call = tail call i32 @mISDN_FsmAddTimer(ptr noundef %timer, i32 noundef %20, i32 noundef 8, ptr noundef null, i32 noundef 4) #8
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug8 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %printdebug8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %printdebug8, align 4
  %l29 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %l29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %l29, align 4
  %tei10 = getelementptr inbounds %struct.layer2, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %tei10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tei10, align 1
  %conv11 = sext i8 %26 to i32
  tail call void (ptr, ptr, ...) %22(ptr noundef %fi, ptr noundef nonnull @.str.83, i32 noundef %conv11) #8
  %27 = ptrtoint ptr %l29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %l29, align 4
  %call13 = tail call i32 @tei_l2(ptr noundef %28, i32 noundef 6660, i32 noundef 0) #8
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmChangeState(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_FsmAddTimer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tei_l2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_assign_req(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l2, align 4
  %tei = getelementptr inbounds %struct.layer2, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tei, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %5)
  %cmp = icmp eq i8 %5, 127
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tei_m = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %printdebug, align 4
  tail call void (ptr, ptr, ...) %7(ptr noundef %tei_m, ptr noundef nonnull @.str.84) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i8, ptr %arg, i32 1
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arg, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %1, align 4
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr, align 1
  %conv5 = zext i8 %12 to i32
  %add = or i32 %shl, %conv5
  store i32 %add, ptr %1, align 4
  %13 = load ptr, ptr @debug, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr4 = getelementptr i8, ptr %arg, i32 2
  %tei_m8 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  %printdebug9 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %printdebug9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %printdebug9, align 4
  %18 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr4, align 1
  %conv12 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) %17(ptr noundef %tei_m8, ptr noundef nonnull @.str.85, i32 noundef %add, i32 noundef %conv12) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mgr, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %24 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %l2, align 4
  %tei16 = getelementptr inbounds %struct.layer2, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %tei16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tei16, align 1
  %conv17 = sext i8 %27 to i32
  tail call fastcc void @put_tei_msg(ptr noundef %21, i8 noundef zeroext 2, i32 noundef %23, i32 noundef %conv17)
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_verify_net(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %arrayidx = getelementptr i8, ptr %arg, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 1
  %5 = load ptr, ptr @debug, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = zext i8 %4 to i32
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %printdebug, align 4
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %l2, align 4
  %tei1 = getelementptr inbounds %struct.layer2, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %tei1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tei1, align 1
  %conv2 = sext i8 %14 to i32
  tail call void (ptr, ptr, ...) %10(ptr noundef %fi, ptr noundef nonnull @.str.86, i32 noundef %8, i32 noundef %conv2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %l23 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %l23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %l23, align 4
  %tei4 = getelementptr inbounds %struct.layer2, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %tei4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tei4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %18)
  %cmp = icmp eq i8 %4, %18
  br i1 %cmp, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %19 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %userdata, align 4
  %21 = load ptr, ptr @debug, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i = and i32 %23, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.tei_id_chk_req_net.exit_crit_edge, label %if.then.i

if.then7.tei_id_chk_req_net.exit_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %tei_id_chk_req_net.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug.i = getelementptr inbounds %struct.teimgr, ptr %20, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %printdebug.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %printdebug.i, align 4
  %l2.i = getelementptr inbounds %struct.teimgr, ptr %20, i32 0, i32 6
  %26 = ptrtoint ptr %l2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %l2.i, align 4
  %tei.i = getelementptr inbounds %struct.layer2, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tei.i, align 1
  %conv.i = sext i8 %29 to i32
  tail call void (ptr, ptr, ...) %25(ptr noundef %fi, ptr noundef nonnull @.str.87, i32 noundef %conv.i) #8
  br label %tei_id_chk_req_net.exit

tei_id_chk_req_net.exit:                          ; preds = %if.then.i, %if.then7.tei_id_chk_req_net.exit_crit_edge
  %rcnt.i = getelementptr inbounds %struct.teimgr, ptr %20, i32 0, i32 1
  %30 = ptrtoint ptr %rcnt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rcnt.i, align 4
  %mgr.i = getelementptr inbounds %struct.teimgr, ptr %20, i32 0, i32 7
  %31 = ptrtoint ptr %mgr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mgr.i, align 4
  %l21.i = getelementptr inbounds %struct.teimgr, ptr %20, i32 0, i32 6
  %33 = ptrtoint ptr %l21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %l21.i, align 4
  %tei2.i = getelementptr inbounds %struct.layer2, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %tei2.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tei2.i, align 1
  %conv3.i = sext i8 %36 to i32
  tail call fastcc void @put_tei_msg(ptr noundef %32, i8 noundef zeroext 4, i32 noundef 0, i32 noundef %conv3.i) #8
  %tei_m4.i = getelementptr inbounds %struct.teimgr, ptr %20, i32 0, i32 2
  tail call void @mISDN_FsmChangeState(ptr noundef %tei_m4.i, i32 noundef 2) #8
  %timer.i = getelementptr inbounds %struct.teimgr, ptr %20, i32 0, i32 3
  %tval.i = getelementptr inbounds %struct.teimgr, ptr %20, i32 0, i32 4
  %37 = ptrtoint ptr %tval.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tval.i, align 4
  %call.i = tail call i32 @mISDN_FsmAddTimer(ptr noundef %timer.i, i32 noundef %38, i32 noundef 8, ptr noundef null, i32 noundef 2) #8
  %nval.i = getelementptr inbounds %struct.teimgr, ptr %20, i32 0, i32 5
  %39 = ptrtoint ptr %nval.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %nval.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %tei_id_chk_req_net.exit, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_chk_req_net(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %2 = load ptr, ptr @debug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %5 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %printdebug, align 4
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %l2, align 4
  %tei = getelementptr inbounds %struct.layer2, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tei, align 1
  %conv = sext i8 %10 to i32
  tail call void (ptr, ptr, ...) %6(ptr noundef %fi, ptr noundef nonnull @.str.87, i32 noundef %conv) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rcnt = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %rcnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rcnt, align 4
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mgr, align 4
  %l21 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %l21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %l21, align 4
  %tei2 = getelementptr inbounds %struct.layer2, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %tei2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tei2, align 1
  %conv3 = sext i8 %17 to i32
  tail call fastcc void @put_tei_msg(ptr noundef %13, i8 noundef zeroext 4, i32 noundef 0, i32 noundef %conv3)
  %tei_m4 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2
  tail call void @mISDN_FsmChangeState(ptr noundef %tei_m4, i32 noundef 2) #8
  %timer = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 3
  %tval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %tval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tval, align 4
  %call = tail call i32 @mISDN_FsmAddTimer(ptr noundef %timer, i32 noundef %19, i32 noundef 8, ptr noundef null, i32 noundef 2) #8
  %nval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %nval to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %nval, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_ver_tout_net(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %rcnt = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @debug, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %7 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %printdebug, align 4
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %l2, align 4
  %tei = getelementptr inbounds %struct.layer2, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tei, align 1
  %conv = sext i8 %12 to i32
  tail call void (ptr, ptr, ...) %8(ptr noundef %fi, ptr noundef nonnull @.str.88, i32 noundef %conv) #8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #8
  br label %if.end32

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3 = icmp sgt i32 %3, 1
  br i1 %cmp3, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  %l26 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %l26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %l26, align 4
  %tm.i = getelementptr inbounds %struct.layer2, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tm.i, align 4
  %mgr.i = getelementptr inbounds %struct.teimgr, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %mgr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mgr.i, align 4
  %tei.i = getelementptr inbounds %struct.layer2, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tei.i, align 1
  %conv.i = sext i8 %20 to i32
  tail call fastcc void @put_tei_msg(ptr noundef %18, i8 noundef zeroext 6, i32 noundef 0, i32 noundef %conv.i) #8
  %call.i = tail call i32 @tei_l2(ptr noundef %14, i32 noundef 6660, i32 noundef 0) #8
  %ch.i = getelementptr inbounds %struct.layer2, ptr %14, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ch.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then5.tei_l2remove.exit_crit_edge

if.then5.tei_l2remove.exit_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %tei_l2remove.exit

if.end.i.i.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.layer2, ptr %14, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %tei_l2remove.exit

tei_l2remove.exit:                                ; preds = %if.end.i.i.i, %if.then5.tei_l2remove.exit_crit_edge
  %27 = ptrtoint ptr %ch.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %ch.i, align 4
  %prev.i.i = getelementptr inbounds %struct.layer2, ptr %14, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %ctrl.i = getelementptr inbounds %struct.layer2, ptr %14, i32 0, i32 1, i32 9
  %29 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl.i, align 4
  %call3.i = tail call i32 %30(ptr noundef %ch.i, i32 noundef 512, ptr noundef null) #8
  br label %if.end32

if.else7:                                         ; preds = %if.else
  %nval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %nval to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nval, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %nval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %if.else23, label %if.then9

if.then9:                                         ; preds = %if.else7
  %33 = load ptr, ptr @debug, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and10 = and i32 %35, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then9.if.end19_crit_edge, label %if.then12

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %printdebug14 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %36 = ptrtoint ptr %printdebug14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %printdebug14, align 4
  %sub = sub i32 4, %32
  %l216 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %l216 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %l216, align 4
  %tei17 = getelementptr inbounds %struct.layer2, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %tei17 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tei17, align 1
  %conv18 = sext i8 %41 to i32
  tail call void (ptr, ptr, ...) %37(ptr noundef %fi, ptr noundef nonnull @.str.89, i32 noundef %sub, i32 noundef %conv18) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.then9.if.end19_crit_edge
  %mgr = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 7
  %42 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mgr, align 4
  %l220 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %l220 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %l220, align 4
  %tei21 = getelementptr inbounds %struct.layer2, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %tei21 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tei21, align 1
  %conv22 = sext i8 %47 to i32
  tail call fastcc void @put_tei_msg(ptr noundef %43, i8 noundef zeroext 4, i32 noundef 0, i32 noundef %conv22)
  %timer = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 3
  %tval = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %tval to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tval, align 4
  %call = tail call i32 @mISDN_FsmAddTimer(ptr noundef %timer, i32 noundef %49, i32 noundef 8, ptr noundef null, i32 noundef 4) #8
  br label %if.end32

if.else23:                                        ; preds = %if.else7
  %printdebug25 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %50 = ptrtoint ptr %printdebug25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %printdebug25, align 4
  %l226 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %l226 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %l226, align 4
  %tei27 = getelementptr inbounds %struct.layer2, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %tei27 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tei27, align 1
  %conv28 = sext i8 %55 to i32
  tail call void (ptr, ptr, ...) %51(ptr noundef %fi, ptr noundef nonnull @.str.90, i32 noundef %conv28) #8
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #8
  %56 = ptrtoint ptr %l226 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %l226, align 4
  %tm.i53 = getelementptr inbounds %struct.layer2, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %tm.i53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tm.i53, align 4
  %mgr.i54 = getelementptr inbounds %struct.teimgr, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %mgr.i54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mgr.i54, align 4
  %tei.i55 = getelementptr inbounds %struct.layer2, ptr %57, i32 0, i32 6
  %62 = ptrtoint ptr %tei.i55 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tei.i55, align 1
  %conv.i56 = sext i8 %63 to i32
  tail call fastcc void @put_tei_msg(ptr noundef %61, i8 noundef zeroext 6, i32 noundef 0, i32 noundef %conv.i56) #8
  %call.i57 = tail call i32 @tei_l2(ptr noundef %57, i32 noundef 6660, i32 noundef 0) #8
  %ch.i58 = getelementptr inbounds %struct.layer2, ptr %57, i32 0, i32 1
  %call.i.i.i59 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ch.i58) #8
  br i1 %call.i.i.i59, label %if.end.i.i.i62, label %if.else23.tei_l2remove.exit66_crit_edge

if.else23.tei_l2remove.exit66_crit_edge:          ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  br label %tei_l2remove.exit66

if.end.i.i.i62:                                   ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i60 = getelementptr inbounds %struct.layer2, ptr %57, i32 0, i32 1, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i60, align 4
  %66 = ptrtoint ptr %ch.i58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ch.i58, align 4
  %prev1.i.i.i.i61 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i61, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %tei_l2remove.exit66

tei_l2remove.exit66:                              ; preds = %if.end.i.i.i62, %if.else23.tei_l2remove.exit66_crit_edge
  %70 = ptrtoint ptr %ch.i58 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %ch.i58, align 4
  %prev.i.i63 = getelementptr inbounds %struct.layer2, ptr %57, i32 0, i32 1, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i63, align 4
  %ctrl.i64 = getelementptr inbounds %struct.layer2, ptr %57, i32 0, i32 1, i32 9
  %72 = ptrtoint ptr %ctrl.i64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctrl.i64, align 4
  %call3.i65 = tail call i32 %73(ptr noundef %ch.i58, i32 noundef 512, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %tei_l2remove.exit66, %if.end19, %tei_l2remove.exit, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tei_id_chk_resp(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %arrayidx = getelementptr i8, ptr %arg, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 1
  %5 = load ptr, ptr @debug, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = zext i8 %4 to i32
  %printdebug = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %printdebug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %printdebug, align 4
  tail call void (ptr, ptr, ...) %10(ptr noundef %fi, ptr noundef nonnull @.str.91, i32 noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %l2 = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %l2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %l2, align 4
  %tei1 = getelementptr inbounds %struct.layer2, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %tei1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tei1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %14)
  %cmp = icmp eq i8 %4, %14
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rcnt = getelementptr inbounds %struct.teimgr, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %rcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rcnt, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %rcnt, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da_activate(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %2 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %userdata, align 4
  %datimer = getelementptr inbounds %struct.manager, ptr %3, i32 0, i32 6
  tail call void @mISDN_FsmDelTimer(ptr noundef %datimer, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da_deactivate_ind(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da_deactivate(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %lock = getelementptr inbounds %struct.manager, ptr %1, i32 0, i32 4
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %lock) #8
  %layer2 = getelementptr inbounds %struct.manager, ptr %1, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %l2.0.in = phi ptr [ %layer2, %entry ], [ %l2.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %l2.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %l2.0 = load ptr, ptr %l2.0.in, align 4
  %cmp3.not = icmp eq ptr %l2.0, %layer2
  br i1 %cmp3.not, label %do.body21, label %for.body

for.body:                                         ; preds = %for.cond
  %state = getelementptr inbounds %struct.layer2, ptr %l2.0, i32 0, i32 16, i32 1
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %cmp5 = icmp sgt i32 %4, 3
  br i1 %cmp5, label %do.body7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.body7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  br label %cleanup

do.body21:                                        ; preds = %for.cond
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  %options = getelementptr inbounds %struct.manager, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %options, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then31, label %do.body21.cleanup_crit_edge

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %datimer = getelementptr inbounds %struct.manager, ptr %1, i32 0, i32 6
  %call32 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %datimer, i32 noundef 10000, i32 noundef 5, ptr noundef null, i32 noundef 1) #8
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body21.cleanup_crit_edge, %do.body7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da_ui(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %options = getelementptr inbounds %struct.manager, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %options, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %datimer = getelementptr inbounds %struct.manager, ptr %1, i32 0, i32 6
  tail call void @mISDN_FsmDelTimer(ptr noundef %datimer, i32 noundef 2) #8
  %call2 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %datimer, i32 noundef 10000, i32 noundef 5, ptr noundef null, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da_timer(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %lock = getelementptr inbounds %struct.manager, ptr %1, i32 0, i32 4
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %lock) #8
  %layer2 = getelementptr inbounds %struct.manager, ptr %1, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %l2.0.in = phi ptr [ %layer2, %entry ], [ %l2.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %l2.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %l2.0 = load ptr, ptr %l2.0.in, align 4
  %cmp3.not = icmp eq ptr %l2.0, %layer2
  br i1 %cmp3.not, label %do.body21, label %for.body

for.body:                                         ; preds = %for.cond
  %state = getelementptr inbounds %struct.layer2, ptr %l2.0, i32 0, i32 16, i32 1
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %cmp5 = icmp sgt i32 %4, 3
  br i1 %cmp5, label %do.body7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.body7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 2) #8
  br label %cleanup

do.body21:                                        ; preds = %for.cond
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #8
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body21.cleanup_crit_edge, label %if.end.i

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %do.body21
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i, !prof !233

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %8, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 513, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %recv.i, align 4
  %15 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %14(ptr noundef %16, ptr noundef nonnull %call.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.cleanup_crit_edge, label %if.then7.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.body21.cleanup_crit_edge, %do.body7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !66, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/tei.c", i32 941, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @l2_tei._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @l2_tei._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @create_teimanager.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/tei.c", i32 1352, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @debug, !10, !"debug", i1 false, i1 false}
!10 = !{!"../drivers/isdn/mISDN/tei.c", i32 28, i32 15}
!11 = !{ptr @skb_queue_head_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/isdn/mISDN/tei.c", i32 1104, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mgr_send._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @mgr_send._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/isdn/mISDN/tei.c", i32 886, i32 4}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ph_data_ind._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ph_data_ind._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/isdn/mISDN/tei.c", i32 864, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @new_tei_req._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @new_tei_req._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/isdn/mISDN/tei.c", i32 287, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @get_free_tei._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @get_free_tei._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/isdn/mISDN/tei.c", i32 803, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @create_new_tei._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @create_new_tei._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/isdn/mISDN/tei.c", i32 809, i32 3}
!41 = !{ptr @create_new_tei._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @create_new_tei._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/isdn/mISDN/tei.c", i32 827, i32 3}
!45 = !{ptr @create_new_tei._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @create_new_tei._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/isdn/mISDN/tei.c", i32 839, i32 4}
!49 = !{ptr @create_new_tei._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @create_new_tei._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/isdn/mISDN/tei.c", i32 233, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tei_debug._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @tei_debug._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/mISDN/tei.c", i32 250, i32 4}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @get_free_id._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @get_free_id._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @get_free_id._entry.28, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/isdn/mISDN/tei.c", i32 260, i32 2}
!63 = !{ptr @get_free_id._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/isdn/mISDN/tei.c", i32 449, i32 3}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @put_tei_msg._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @put_tei_msg._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/isdn/mISDN/tei.c", i32 766, i32 36}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/isdn/mISDN/tei.c", i32 309, i32 3}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @teiup_create._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @teiup_create._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/isdn/mISDN/tei.c", i32 1265, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mgr_ctrl._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @mgr_ctrl._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/isdn/mISDN/tei.c", i32 992, i32 3}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @create_teimgr._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @create_teimgr._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/isdn/mISDN/tei.c", i32 1008, i32 4}
!88 = !{ptr @create_teimgr._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @create_teimgr._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/isdn/mISDN/tei.c", i32 1052, i32 3}
!92 = !{ptr @create_teimgr._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @create_teimgr._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/isdn/mISDN/tei.c", i32 1204, i32 3}
!96 = !{ptr @check_data._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @check_data._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/isdn/mISDN/tei.c", i32 1224, i32 3}
!100 = !{ptr @check_data._entry.46, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @check_data._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/mISDN/tei.c", i32 1229, i32 4}
!104 = !{ptr @check_data._entry.49, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @check_data._entry_ptr.51, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/isdn/mISDN/tei.c", i32 1315, i32 7}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mgr_bcast._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @mgr_bcast._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/isdn/mISDN/tei.c", i32 1323, i32 5}
!113 = !{ptr @mgr_bcast._entry.54, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @mgr_bcast._entry_ptr.56, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/isdn/mISDN/tei.c", i32 84, i32 2}
!117 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @da_debug._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @da_debug._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @deactfsm, !121, !"deactfsm", i1 false, i1 false}
!121 = !{!"../drivers/isdn/mISDN/tei.c", i32 30, i32 19}
!122 = !{ptr @teifsmu, !123, !"teifsmu", i1 false, i1 false}
!123 = !{!"../drivers/isdn/mISDN/tei.c", i32 31, i32 19}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/isdn/mISDN/tei.c", i32 207, i32 2}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/isdn/mISDN/tei.c", i32 208, i32 2}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/isdn/mISDN/tei.c", i32 209, i32 2}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/isdn/mISDN/tei.c", i32 210, i32 2}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/isdn/mISDN/tei.c", i32 211, i32 2}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/isdn/mISDN/tei.c", i32 212, i32 2}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/isdn/mISDN/tei.c", i32 213, i32 2}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/isdn/mISDN/tei.c", i32 214, i32 2}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/isdn/mISDN/tei.c", i32 215, i32 2}
!142 = !{ptr @strTeiEvent, !143, !"strTeiEvent", i1 false, i1 false}
!143 = !{!"../drivers/isdn/mISDN/tei.c", i32 205, i32 14}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/isdn/mISDN/tei.c", i32 186, i32 2}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/isdn/mISDN/tei.c", i32 187, i32 2}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/isdn/mISDN/tei.c", i32 188, i32 2}
!150 = !{ptr @strTeiState, !151, !"strTeiState", i1 false, i1 false}
!151 = !{!"../drivers/isdn/mISDN/tei.c", i32 184, i32 14}
!152 = !{ptr @TeiFnListUser, !153, !"TeiFnListUser", i1 false, i1 false}
!153 = !{!"../drivers/isdn/mISDN/tei.c", i32 635, i32 23}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/isdn/mISDN/tei.c", i32 462, i32 10}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/isdn/mISDN/tei.c", i32 469, i32 10}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/isdn/mISDN/tei.c", i32 518, i32 28}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/isdn/mISDN/tei.c", i32 524, i32 11}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/isdn/mISDN/tei.c", i32 588, i32 28}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/isdn/mISDN/tei.c", i32 573, i32 28}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/isdn/mISDN/tei.c", i32 555, i32 28}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/isdn/mISDN/tei.c", i32 604, i32 29}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/isdn/mISDN/tei.c", i32 609, i32 28}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/isdn/mISDN/tei.c", i32 489, i32 28}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/isdn/mISDN/tei.c", i32 542, i32 28}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/isdn/mISDN/tei.c", i32 623, i32 11}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/isdn/mISDN/tei.c", i32 628, i32 28}
!180 = !{ptr @teifsmn, !181, !"teifsmn", i1 false, i1 false}
!181 = !{!"../drivers/isdn/mISDN/tei.c", i32 32, i32 19}
!182 = !{ptr @TeiFnListNet, !183, !"TeiFnListNet", i1 false, i1 false}
!183 = !{!"../drivers/isdn/mISDN/tei.c", i32 751, i32 23}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/isdn/mISDN/tei.c", i32 667, i32 10}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/isdn/mISDN/tei.c", i32 674, i32 10}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/isdn/mISDN/tei.c", i32 717, i32 28}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/isdn/mISDN/tei.c", i32 685, i32 28}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/isdn/mISDN/tei.c", i32 731, i32 11}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/isdn/mISDN/tei.c", i32 739, i32 11}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/isdn/mISDN/tei.c", i32 744, i32 28}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/isdn/mISDN/tei.c", i32 703, i32 28}
!200 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/isdn/mISDN/tei.c", i32 61, i32 2}
!202 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/isdn/mISDN/tei.c", i32 62, i32 2}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/isdn/mISDN/tei.c", i32 63, i32 2}
!206 = !{ptr @.str.95, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/isdn/mISDN/tei.c", i32 64, i32 2}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/isdn/mISDN/tei.c", i32 65, i32 2}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/isdn/mISDN/tei.c", i32 66, i32 2}
!212 = !{ptr @strDeactEvent, !213, !"strDeactEvent", i1 false, i1 false}
!213 = !{!"../drivers/isdn/mISDN/tei.c", i32 59, i32 14}
!214 = !{ptr @.str.98, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/isdn/mISDN/tei.c", i32 43, i32 2}
!216 = !{ptr @.str.99, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/isdn/mISDN/tei.c", i32 44, i32 2}
!218 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/isdn/mISDN/tei.c", i32 45, i32 2}
!220 = !{ptr @strDeactState, !221, !"strDeactState", i1 false, i1 false}
!221 = !{!"../drivers/isdn/mISDN/tei.c", i32 41, i32 14}
!222 = !{ptr @DeactFnList, !223, !"DeactFnList", i1 false, i1 false}
!223 = !{!"../drivers/isdn/mISDN/tei.c", i32 166, i32 23}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!233 = !{!"branch_weights", i32 1, i32 2000}
!234 = !{!"auto-init"}
