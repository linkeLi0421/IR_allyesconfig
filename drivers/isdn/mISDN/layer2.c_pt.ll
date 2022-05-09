; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/layer2.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/layer2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.Fsm = type { ptr, i32, i32, ptr, ptr }
%struct.Bprotocol = type { %struct.list_head, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.FsmNode = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.layer2 = type { %struct.list_head, %struct.mISDNchannel, i32, i32, ptr, i8, i8, %struct.laddr, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.FsmInst, %struct.FsmTimer, %struct.FsmTimer, i32, i32, i32, i32, i32, [8 x ptr], %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.mISDNstack = type { i32, ptr, ptr, ptr, %struct.wait_queue_head, %struct.sk_buff_head, %struct.list_head, ptr, %struct.mISDNchannel, %struct.mutex, %struct.mISDN_sock_list }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mISDN_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }

@debug = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tei_l2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: cmd(%x) in %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tei_l2\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/isdn/mISDN/layer2.c\00", [36 x i8] zeroinitializer }, align 32
@tei_l2._entry_ptr = internal global ptr @tei_l2._entry, section ".printk_index", align 4
@tei_l2._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s: MDL_ERROR|REQ (tei_l2)\0A\00", [34 x i8] zeroinitializer }, align 32
@tei_l2._entry_ptr.5 = internal global ptr @tei_l2._entry.3, section ".printk_index", align 4
@create_l2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 2116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013kzalloc layer2 failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"create_l2\00", [22 x i8] zeroinitializer }, align 32
@create_l2._entry_ptr = internal global ptr @create_l2._entry, section ".printk_index", align 4
@create_l2._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 2188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013layer2 create failed prt %x\0A\00", [33 x i8] zeroinitializer }, align 32
@create_l2._entry_ptr.10 = internal global ptr @create_l2._entry.8, section ".printk_index", align 4
@l2fsm = internal global { %struct.Fsm, [44 x i8] } zeroinitializer, align 32
@X75SLP = internal global { %struct.Bprotocol, [44 x i8] } { %struct.Bprotocol { %struct.list_head zeroinitializer, ptr @.str.43, i32 8, ptr @x75create }, [44 x i8] zeroinitializer }, align 32
@strL2Event = internal global { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], [32 x i8] zeroinitializer }, align 32
@strL2State = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], [32 x i8] zeroinitializer }, align 32
@L2FnList = internal global { [93 x %struct.FsmNode], [260 x i8] } { [93 x %struct.FsmNode] [%struct.FsmNode { i32 0, i32 11, ptr @l2_mdl_assign }, %struct.FsmNode { i32 1, i32 11, ptr @l2_go_st3 }, %struct.FsmNode { i32 3, i32 11, ptr @l2_establish }, %struct.FsmNode { i32 4, i32 11, ptr @l2_discard_i_setl3 }, %struct.FsmNode { i32 6, i32 11, ptr @l2_l3_reestablish }, %struct.FsmNode { i32 7, i32 11, ptr @l2_l3_reestablish }, %struct.FsmNode { i32 3, i32 12, ptr @l2_release }, %struct.FsmNode { i32 4, i32 12, ptr @l2_pend_rel }, %struct.FsmNode { i32 6, i32 12, ptr @l2_disconnect }, %struct.FsmNode { i32 7, i32 12, ptr @l2_disconnect }, %struct.FsmNode { i32 4, i32 8, ptr @l2_feed_i_if_reest }, %struct.FsmNode { i32 6, i32 8, ptr @l2_feed_i_pull }, %struct.FsmNode { i32 7, i32 8, ptr @l2_feed_iqueue }, %struct.FsmNode { i32 0, i32 10, ptr @l2_queue_ui_assign }, %struct.FsmNode { i32 1, i32 10, ptr @l2_queue_ui }, %struct.FsmNode { i32 2, i32 10, ptr @l2_queue_ui }, %struct.FsmNode { i32 3, i32 10, ptr @l2_send_ui }, %struct.FsmNode { i32 4, i32 10, ptr @l2_send_ui }, %struct.FsmNode { i32 5, i32 10, ptr @l2_send_ui }, %struct.FsmNode { i32 6, i32 10, ptr @l2_send_ui }, %struct.FsmNode { i32 7, i32 10, ptr @l2_send_ui }, %struct.FsmNode { i32 0, i32 13, ptr @l2_got_tei }, %struct.FsmNode { i32 1, i32 13, ptr @l2_got_tei }, %struct.FsmNode { i32 2, i32 13, ptr @l2_got_tei }, %struct.FsmNode { i32 1, i32 15, ptr @l2_st24_tei_remove }, %struct.FsmNode { i32 2, i32 15, ptr @l2_st3_tei_remove }, %struct.FsmNode { i32 3, i32 14, ptr @l2_st24_tei_remove }, %struct.FsmNode { i32 4, i32 14, ptr @l2_st5_tei_remove }, %struct.FsmNode { i32 5, i32 14, ptr @l2_st6_tei_remove }, %struct.FsmNode { i32 6, i32 14, ptr @l2_tei_remove }, %struct.FsmNode { i32 7, i32 14, ptr @l2_tei_remove }, %struct.FsmNode { i32 3, i32 1, ptr @l2_start_multi }, %struct.FsmNode { i32 4, i32 1, ptr @l2_send_UA }, %struct.FsmNode { i32 5, i32 1, ptr @l2_send_DM }, %struct.FsmNode { i32 6, i32 1, ptr @l2_restart_multi }, %struct.FsmNode { i32 7, i32 1, ptr @l2_restart_multi }, %struct.FsmNode { i32 3, i32 2, ptr @l2_send_DM }, %struct.FsmNode { i32 4, i32 2, ptr @l2_send_DM }, %struct.FsmNode { i32 5, i32 2, ptr @l2_send_UA }, %struct.FsmNode { i32 6, i32 2, ptr @l2_stop_multi }, %struct.FsmNode { i32 7, i32 2, ptr @l2_stop_multi }, %struct.FsmNode { i32 3, i32 4, ptr @l2_mdl_error_ua }, %struct.FsmNode { i32 4, i32 4, ptr @l2_connected }, %struct.FsmNode { i32 5, i32 4, ptr @l2_released }, %struct.FsmNode { i32 6, i32 4, ptr @l2_mdl_error_ua }, %struct.FsmNode { i32 7, i32 4, ptr @l2_mdl_error_ua }, %struct.FsmNode { i32 3, i32 3, ptr @l2_reestablish }, %struct.FsmNode { i32 4, i32 3, ptr @l2_st5_dm_release }, %struct.FsmNode { i32 5, i32 3, ptr @l2_st6_dm_release }, %struct.FsmNode { i32 6, i32 3, ptr @l2_mdl_error_dm }, %struct.FsmNode { i32 7, i32 3, ptr @l2_st8_mdl_error_dm }, %struct.FsmNode { i32 0, i32 0, ptr @l2_got_ui }, %struct.FsmNode { i32 1, i32 0, ptr @l2_got_ui }, %struct.FsmNode { i32 2, i32 0, ptr @l2_got_ui }, %struct.FsmNode { i32 3, i32 0, ptr @l2_got_ui }, %struct.FsmNode { i32 4, i32 0, ptr @l2_got_ui }, %struct.FsmNode { i32 5, i32 0, ptr @l2_got_ui }, %struct.FsmNode { i32 6, i32 0, ptr @l2_got_ui }, %struct.FsmNode { i32 7, i32 0, ptr @l2_got_ui }, %struct.FsmNode { i32 6, i32 5, ptr @l2_got_FRMR }, %struct.FsmNode { i32 7, i32 5, ptr @l2_got_FRMR }, %struct.FsmNode { i32 6, i32 6, ptr @l2_st7_got_super }, %struct.FsmNode { i32 7, i32 6, ptr @l2_st8_got_super }, %struct.FsmNode { i32 6, i32 7, ptr @l2_got_iframe }, %struct.FsmNode { i32 7, i32 7, ptr @l2_got_iframe }, %struct.FsmNode { i32 4, i32 17, ptr @l2_timeout }, %struct.FsmNode { i32 5, i32 17, ptr @l2_timeout }, %struct.FsmNode { i32 6, i32 17, ptr @l2_timeout }, %struct.FsmNode { i32 7, i32 17, ptr @l2_timeout }, %struct.FsmNode { i32 6, i32 18, ptr @l2_timeout }, %struct.FsmNode { i32 4, i32 19, ptr @l2_st5_tout_200 }, %struct.FsmNode { i32 5, i32 19, ptr @l2_st6_tout_200 }, %struct.FsmNode { i32 6, i32 19, ptr @l2_st7_tout_200 }, %struct.FsmNode { i32 7, i32 19, ptr @l2_st8_tout_200 }, %struct.FsmNode { i32 6, i32 20, ptr @l2_st7_tout_203 }, %struct.FsmNode { i32 6, i32 9, ptr @l2_pull_iqueue }, %struct.FsmNode { i32 6, i32 21, ptr @l2_set_own_busy }, %struct.FsmNode { i32 7, i32 21, ptr @l2_set_own_busy }, %struct.FsmNode { i32 6, i32 22, ptr @l2_clear_own_busy }, %struct.FsmNode { i32 7, i32 22, ptr @l2_clear_own_busy }, %struct.FsmNode { i32 3, i32 23, ptr @l2_frame_error }, %struct.FsmNode { i32 4, i32 23, ptr @l2_frame_error }, %struct.FsmNode { i32 5, i32 23, ptr @l2_frame_error }, %struct.FsmNode { i32 6, i32 23, ptr @l2_frame_error_reest }, %struct.FsmNode { i32 7, i32 23, ptr @l2_frame_error_reest }, %struct.FsmNode { i32 0, i32 16, ptr @l2_st14_persistent_da }, %struct.FsmNode { i32 1, i32 16, ptr @l2_st24_tei_remove }, %struct.FsmNode { i32 2, i32 16, ptr @l2_st3_tei_remove }, %struct.FsmNode { i32 3, i32 16, ptr @l2_st14_persistent_da }, %struct.FsmNode { i32 4, i32 16, ptr @l2_st5_persistent_da }, %struct.FsmNode { i32 5, i32 16, ptr @l2_st6_persistent_da }, %struct.FsmNode { i32 6, i32 16, ptr @l2_persistent_da }, %struct.FsmNode { i32 7, i32 16, ptr @l2_persistent_da }], [260 x i8] zeroinitializer }, align 32
@l2up_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s: dev %s err=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l2up_create\00", [20 x i8] zeroinitializer }, align 32
@l2up_create._entry_ptr = internal global ptr @l2up_create._entry, section ".printk_index", align 4
@l2down_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017l2down_skb: dev %s ret(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l2down_skb\00", [21 x i8] zeroinitializer }, align 32
@l2down_skb._entry_ptr = internal global ptr @l2down_skb._entry, section ".printk_index", align 4
@enquiry_cr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: isdnl2 can't alloc sbbuff in %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enquiry_cr\00", [21 x i8] zeroinitializer }, align 32
@enquiry_cr._entry_ptr = internal global ptr @enquiry_cr._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@l2_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s prim(%x) id(%x) sapi(%d) tei(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l2_send\00", [24 x i8] zeroinitializer }, align 32
@l2_send._entry_ptr = internal global ptr @l2_send._entry, section ".printk_index", align 4
@l2_send._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: prim(%x) id(%x) internal msg\0A\00", [60 x i8] zeroinitializer }, align 32
@l2_send._entry_ptr.21 = internal global ptr @l2_send._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l2 unknown pr %04x\00", [45 x i8] zeroinitializer }, align 32
@ph_data_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s l2 D-channel frame wrong EA0/EA1\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ph_data_indication\00", [45 x i8] zeroinitializer }, align 32
@ph_data_indication._entry_ptr = internal global ptr @ph_data_indication._entry, section ".printk_index", align 4
@ph_data_indication._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: sapi %d/%d mismatch\0A\00", [37 x i8] zeroinitializer }, align 32
@ph_data_indication._entry_ptr.27 = internal global ptr @ph_data_indication._entry.25, section ".printk_index", align 4
@ph_data_indication._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 1893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: tei %d/%d mismatch\0A\00", [38 x i8] zeroinitializer }, align 32
@ph_data_indication._entry_ptr.30 = internal global ptr @ph_data_indication._entry.28, section ".printk_index", align 4
@ph_data_indication._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 1935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s:l2 D-channel frame error %c\0A\00", [62 x i8] zeroinitializer }, align 32
@ph_data_indication._entry_ptr.33 = internal global ptr @ph_data_indication._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FRMR information %2x %2x %2x %2x %2x\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FRMR information %2x %2x %2x\00", [35 x i8] zeroinitializer }, align 32
@l2_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 2087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s cmd(%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l2_ctrl\00", [24 x i8] zeroinitializer }, align 32
@l2_ctrl._entry_ptr = internal global ptr @l2_ctrl._entry, section ".printk_index", align 4
@ReleaseWin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014isdnl2 freed %d skbuffs in release\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ReleaseWin\00", [21 x i8] zeroinitializer }, align 32
@ReleaseWin._entry_ptr = internal global ptr @ReleaseWin._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@l2m_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s l2 (sapi %d tei %d): %pV\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l2m_debug\00", [22 x i8] zeroinitializer }, align 32
@l2m_debug._entry_ptr = internal global ptr @l2m_debug._entry, section ".printk_index", align 4
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"X75SLP\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EV_L2_UI\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EV_L2_SABME\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EV_L2_DISC\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EV_L2_DM\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EV_L2_UA\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EV_L2_FRMR\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EV_L2_SUPER\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EV_L2_I\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EV_L2_DL_DATA\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EV_L2_ACK_PULL\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EV_L2_DL_UNITDATA\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EV_L2_DL_ESTABLISH_REQ\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EV_L2_DL_RELEASE_REQ\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EV_L2_MDL_ASSIGN\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EV_L2_MDL_REMOVE\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EV_L2_MDL_ERROR\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EV_L1_DEACTIVATE\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EV_L2_T200\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EV_L2_T203\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EV_L2_T200I\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EV_L2_T203I\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EV_L2_SET_OWN_BUSY\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EV_L2_CLEAR_OWN_BUSY\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EV_L2_FRAME_ERROR\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_L2_1\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_L2_2\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_L2_3\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_L2_4\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_L2_5\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_L2_6\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_L2_7\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST_L2_8\00", [24 x i8] zeroinitializer }, align 32
@send_uframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: can't alloc skbuff in %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"send_uframe\00", [20 x i8] zeroinitializer }, align 32
@send_uframe._entry_ptr = internal global ptr @send_uframe._entry, section ".printk_index", align 4
@l2up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.78, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"l2up\00", [27 x i8] zeroinitializer }, align 32
@l2up._entry_ptr = internal global ptr @l2up._entry, section ".printk_index", align 4
@l2mgr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014l2mgr: dev %s addr:%x prim %x %c\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"l2mgr\00", [26 x i8] zeroinitializer }, align 32
@l2mgr._entry_ptr = internal global ptr @l2mgr._entry, section ".printk_index", align 4
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Restart T203 ST7 REJ\00", [43 x i8] zeroinitializer }, align 32
@invoke_retransmission._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: windowar[%d] is NULL\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invoke_retransmission\00", [42 x i8] zeroinitializer }, align 32
@invoke_retransmission._entry_ptr = internal global ptr @invoke_retransmission._entry, section ".printk_index", align 4
@l2_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: L2(%d,%d) nr:%x timer %s no skb\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l2_timeout\00", [21 x i8] zeroinitializer }, align 32
@l2_timeout._entry_ptr = internal global ptr @l2_timeout._entry, section ".printk_index", align 4
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T200\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T203\00", [27 x i8] zeroinitializer }, align 32
@l2_timeout._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.85, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: L2(%d,%d) nr:%x timer %s expired\0A\00", [56 x i8] zeroinitializer }, align 32
@l2_timeout._entry_ptr.90 = internal global ptr @l2_timeout._entry.88, section ".printk_index", align 4
@l2_pull_iqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 1488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: no headroom(%d) copy for IFrame\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"l2_pull_iqueue\00", [17 x i8] zeroinitializer }, align 32
@l2_pull_iqueue._entry_ptr = internal global ptr @l2_pull_iqueue._entry, section ".printk_index", align 4
@l2_pull_iqueue._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 1502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: l2 try overwrite ack queue entry %d\0A\00", [53 x i8] zeroinitializer }, align 32
@l2_pull_iqueue._entry_ptr.95 = internal global ptr @l2_pull_iqueue._entry.93, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 6148, i64 6660, i64 7940, i64 24324]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 17, i64 35]
@__sancov_gen_cov_switch_values.97 = internal global [13 x i64] [i64 11, i64 32, i64 258, i64 514, i64 1794, i64 4100, i64 4356, i64 8194, i64 12292, i64 12548, i64 24578, i64 28676, i64 29444]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 8, i64 15, i64 67, i64 99, i64 135]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 32, i64 67, i64 68, i64 71, i64 72]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 67, i64 68, i64 71, i64 72]
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 15, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 2039, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 2053, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 2116, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 2187, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"l2fsm\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 18, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"X75SLP\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 2229, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant [11 x i8] c"strL2Event\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 61, i32 14 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"strL2State\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 20, i32 14 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"L2FnList\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1758, i32 23 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 173, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 185, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1114, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1949, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1957, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 2023, i32 24 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1873, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1883, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1892, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1934, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 569, i32 7 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 576, i32 7 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 2086, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 365, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1984, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 104, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 2231, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 63, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 64, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 65, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 66, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 67, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 68, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 69, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 70, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 71, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 72, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 73, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 74, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 75, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 76, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 77, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 78, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 79, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 80, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 81, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 82, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 83, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 84, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 85, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 86, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 22, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 23, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 24, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 25, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 26, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 27, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 28, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 29, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 629, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 148, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 306, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1225, i32 25 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1173, i32 5 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 286, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 295, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1487, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.433 = private constant [31 x i8] c"../drivers/isdn/mISDN/layer2.c\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1501, i32 3 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @ReleaseWin._entry, ptr @ReleaseWin._entry_ptr, ptr @create_l2._entry, ptr @create_l2._entry.8, ptr @create_l2._entry_ptr, ptr @create_l2._entry_ptr.10, ptr @enquiry_cr._entry, ptr @enquiry_cr._entry_ptr, ptr @invoke_retransmission._entry, ptr @invoke_retransmission._entry_ptr, ptr @l2_ctrl._entry, ptr @l2_ctrl._entry_ptr, ptr @l2_pull_iqueue._entry, ptr @l2_pull_iqueue._entry.93, ptr @l2_pull_iqueue._entry_ptr, ptr @l2_pull_iqueue._entry_ptr.95, ptr @l2_send._entry, ptr @l2_send._entry.19, ptr @l2_send._entry_ptr, ptr @l2_send._entry_ptr.21, ptr @l2_timeout._entry, ptr @l2_timeout._entry.88, ptr @l2_timeout._entry_ptr, ptr @l2_timeout._entry_ptr.90, ptr @l2down_skb._entry, ptr @l2down_skb._entry_ptr, ptr @l2m_debug._entry, ptr @l2m_debug._entry_ptr, ptr @l2mgr._entry, ptr @l2mgr._entry_ptr, ptr @l2up._entry, ptr @l2up._entry_ptr, ptr @l2up_create._entry, ptr @l2up_create._entry_ptr, ptr @ph_data_indication._entry, ptr @ph_data_indication._entry.25, ptr @ph_data_indication._entry.28, ptr @ph_data_indication._entry.31, ptr @ph_data_indication._entry_ptr, ptr @ph_data_indication._entry_ptr.27, ptr @ph_data_indication._entry_ptr.30, ptr @ph_data_indication._entry_ptr.33, ptr @send_uframe._entry, ptr @send_uframe._entry_ptr, ptr @tei_l2._entry, ptr @tei_l2._entry.3, ptr @tei_l2._entry_ptr, ptr @tei_l2._entry_ptr.5, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @l2fsm, ptr @X75SLP, ptr @strL2Event, ptr @strL2State, ptr @L2FnList, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @skb_queue_head_init.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tei_l2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tei_l2._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_l2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_l2._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2fsm to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @X75SLP to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strL2Event to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strL2State to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @L2FnList to i32), i32 1116, i32 1376, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2up_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2down_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enquiry_cr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_send._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_data_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_data_indication._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_data_indication._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_data_indication._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ReleaseWin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2m_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_uframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2mgr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invoke_retransmission._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_timeout._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_pull_iqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_pull_iqueue._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @l2headersize(ptr noundef %l2, i32 noundef %ui) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ui)
  %tobool1.not = icmp eq i32 %ui, 0
  %phi.sel = select i1 %tobool1.not, i32 2, i32 1
  %3 = select i1 %tobool.not, i32 1, i32 %phi.sel
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  %cond5 = select i1 %tobool4.not, i32 1, i32 2
  %add = add nuw nsw i32 %cond5, %3
  ret i32 %add
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @l2addrsize(ptr noundef %l2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  ret i32 %cond
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cansend(ptr noundef %l2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %vs1 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 10
  %3 = ptrtoint ptr %vs1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vs1, align 4
  %va2 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 11
  %5 = ptrtoint ptr %va2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %va2, align 4
  %sub3 = sub i32 %4, %6
  %. = select i1 %tobool.not, i32 7, i32 127
  %rem4 = and i32 %sub3, %.
  %window = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 14
  %7 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem4, i32 %8)
  %cmp = icmp ult i32 %rem4, %8
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flag, align 4
  %11 = lshr i32 %10, 10
  %.lobit = and i32 %11, 1
  %12 = xor i32 %.lobit, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %13 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %12, %land.rhs ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_exception(ptr noundef %l2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #10
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flag) #10
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %flag) #10
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.clear_peer_busy.exit_crit_edge, label %if.then.i

entry.clear_peer_busy.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clear_peer_busy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %flag) #10
  br label %clear_peer_busy.exit

clear_peer_busy.exit:                             ; preds = %if.then.i, %entry.clear_peer_busy.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @IsUI(ptr nocapture noundef readonly %data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = and i8 %1, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp eq i8 %2, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @IsUA(ptr nocapture noundef readonly %data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = and i8 %1, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %2)
  %cmp = icmp eq i8 %2, 99
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @IsDM(ptr nocapture noundef readonly %data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = and i8 %1, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %2)
  %cmp = icmp eq i8 %2, 15
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @IsDISC(ptr nocapture noundef readonly %data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = and i8 %1, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %2)
  %cmp = icmp eq i8 %2, 67
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @IsRR(ptr nocapture noundef readonly %data, ptr noundef %l2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %5 = and i8 %4, 15
  %retval.0.in.in = select i1 %tobool.not, i8 %5, i8 %4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %retval.0.in.in)
  %retval.0.in = icmp eq i8 %retval.0.in.in, 1
  %retval.0 = zext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @IsSFrame(ptr nocapture noundef readonly %data, ptr noundef %l2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = and i8 %1, 15
  %spec.select = select i1 %tobool.not, i8 %5, i8 %1
  %conv2 = zext i8 %spec.select to i32
  %and3 = and i32 %conv2, 243
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3)
  %cmp = icmp eq i32 %and3, 1
  %and6 = and i32 %conv2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and6)
  %cmp7 = icmp ne i32 %and6, 12
  %narrow = and i1 %cmp, %cmp7
  %6 = zext i1 %narrow to i32
  ret i32 %6
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @IsSABME(ptr nocapture noundef readonly %data, ptr noundef %l2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = and i8 %1, -17
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flag, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %2)
  %cmp = icmp eq i8 %2, 111
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %2)
  %cmp5 = icmp eq i8 %2, 47
  %cond.in = select i1 %tobool.not, i1 %cmp5, i1 %cmp
  %cond = zext i1 %cond.in to i32
  ret i32 %cond
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @IsREJ(ptr nocapture noundef readonly %data, ptr noundef %l2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %5 = and i8 %4, 15
  %cond.in.in = select i1 %tobool.not, i8 %5, i8 %4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %cond.in.in)
  %cond.in = icmp eq i8 %cond.in.in, 9
  %cond = zext i1 %cond.in to i32
  ret i32 %cond
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @IsFRMR(ptr nocapture noundef readonly %data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = and i8 %1, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %2)
  %cmp = icmp eq i8 %2, -121
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @IsRNR(ptr nocapture noundef readonly %data, ptr noundef %l2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %5 = and i8 %4, 15
  %cond.in.in = select i1 %tobool.not, i8 %5, i8 %4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %cond.in.in)
  %cond.in = icmp eq i8 %cond.in.in, 5
  %cond = zext i1 %cond.in to i32
  ret i32 %cond
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @get_PollFlag(ptr noundef %l2, ptr nocapture noundef readonly %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %flag.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %arrayidx = getelementptr i8, ptr %1, i32 %cond.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 16
  ret i8 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @get_PollFlagFree(ptr noundef %l2, ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %flag.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %2 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %arrayidx.i = getelementptr i8, ptr %1, i32 %cond.i.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = and i8 %6, 16
  tail call void @consume_skb(ptr noundef %skb) #10
  ret i8 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_t200(ptr noundef %l2, i32 noundef %i) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %t200 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 17
  %T200 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 19
  %0 = ptrtoint ptr %T200 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %T200, align 4
  %call = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t200, i32 noundef %1, i32 noundef 17, ptr noundef null, i32 noundef %i) #10
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_FsmAddTimer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @restart_t200(ptr noundef %l2, i32 noundef %i) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %t200 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 17
  %T200 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 19
  %0 = ptrtoint ptr %T200 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %T200, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %t200, i32 noundef %1, i32 noundef 17, ptr noundef null, i32 noundef %i) #10
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmRestartTimer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stop_t200(ptr noundef %l2, i32 noundef %i) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %t200 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200, i32 noundef %i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmDelTimer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st5_dl_release_l2l3(ptr noundef %l2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 4360, i32 20744
  tail call fastcc void @l2up_create(ptr noundef %l2, i32 noundef %., i32 noundef 0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l2up_create(ptr noundef %l2, i32 noundef %prim, i32 noundef %len, ptr nocapture noundef readonly %arg) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %up = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 4
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %up, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.i = add i32 %len, 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3, !prof !212

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %prim, ptr %cb, align 1
  %ch = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1
  %nr = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  %shl = shl i32 %8, 16
  %addr = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %or = or i32 %shl, %10
  %id = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %or, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool6.not = icmp eq i32 %len, 0
  br i1 %tobool6.not, label %if.end3.if.end9_crit_edge, label %if.then7

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %len) #10
  %12 = call ptr @memcpy(ptr %call.i, ptr %arg, i32 %len)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end3.if.end9_crit_edge
  %13 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %up, align 4
  %send = getelementptr inbounds %struct.mISDNchannel, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send, align 4
  %call12 = tail call i32 %16(ptr noundef %14, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %do.end

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %call16, i32 noundef %call12) #13
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_dl_release_l2l3(ptr noundef %l2, i32 noundef %f) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %next_id.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 22
  %2 = ptrtoint ptr %next_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_id.i, align 4
  %inc.i = add i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %3)
  %cmp.i = icmp eq i32 %3, 32767
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %inc.i
  %4 = ptrtoint ptr %next_id.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select.i, ptr %next_id.i, align 4
  %shl.i = shl i32 %3, 16
  %tei.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 6
  %5 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tei.i, align 1
  %conv.i = sext i8 %6 to i32
  %shl2.i = shl nsw i32 %conv.i, 8
  %or.i = or i32 %shl2.i, %shl.i
  %sapi.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 5
  %7 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sapi.i, align 4
  %conv3.i = sext i8 %8 to i32
  %or4.i = or i32 %or.i, %conv3.i
  tail call fastcc void @l2down_create(ptr noundef %l2, i32 noundef %or4.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @l2up_create(ptr noundef %l2, i32 noundef %f, i32 noundef 0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l2down_create(ptr noundef %l2, i32 noundef %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end4.i, !prof !212

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 513, ptr %cb, align 1
  %id2 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %id2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %id, ptr %id2, align 1
  %ch.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1
  %recv.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recv.i.i, align 4
  %peer.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer.i.i, align 4
  %call.i.i3 = tail call i32 %7(ptr noundef %9, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3)
  %tobool.not.i.i = icmp eq i32 %call.i.i3, 0
  br i1 %tobool.not.i.i, label %if.end4.i.cleanup_crit_edge, label %land.lhs.true.i.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %10 = load ptr, ptr @debug, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i.i = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.then9_crit_edge, label %do.end.i.i

land.lhs.true.i.i.if.then9_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i.i) #10
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call4.i.i, i32 noundef %call.i.i3) #13
  br label %if.then9

if.then9:                                         ; preds = %do.end.i.i, %land.lhs.true.i.i.if.then9_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enquiry_response(ptr noundef %l2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %. = select i1 %tobool.not, i8 1, i8 5
  tail call fastcc void @enquiry_cr(ptr noundef %l2, i8 noundef zeroext %., i8 noundef zeroext 1, i8 noundef zeroext 1)
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enquiry_cr(ptr noundef %l2, i8 noundef zeroext %typ, i8 noundef zeroext %cr, i8 noundef zeroext %pf) unnamed_addr #6 align 64 {
entry:
  %tmp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %conv = zext i8 %cr to i32
  %flag.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4
  %1 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flag.i, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = getelementptr inbounds [4 x i8], ptr %tmp, i32 0, i32 1
  %7 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cr)
  %tobool5.not.i = icmp eq i8 %cr, 0
  %lnot.ext.i = zext i1 %tobool5.not.i to i32
  %crbit.0.i = select i1 %tobool3.not.i, i32 %conv, i32 %lnot.ext.i
  %sapi.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 5
  %8 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sapi.i, align 4
  %shl.i = shl i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crbit.0.i)
  %tobool6.not.i = icmp eq i32 %crbit.0.i, 0
  %cond.i = select i1 %tobool6.not.i, i8 0, i8 2
  %or.i = or i8 %shl.i, %cond.i
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or.i, ptr %tmp, align 4
  %tei.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 6
  %11 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tei.i, align 1
  %shl9.i = shl i8 %12, 1
  %or10.i = or i8 %shl9.i, 1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or10.i, ptr %6, align 1
  br label %sethdraddr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cr)
  %tobool17.not.i = icmp eq i8 %cr, 0
  %lnot.ext19.i = zext i1 %tobool17.not.i to i32
  %crbit.1.i = select i1 %tobool15.not.i, i32 %conv, i32 %lnot.ext19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crbit.1.i)
  %tobool21.not.i = icmp eq i32 %crbit.1.i, 0
  %addr25.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 7
  %B.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 7, i32 1
  %storemerge.in.i = select i1 %tobool21.not.i, ptr %addr25.i, ptr %B.i
  %15 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge.i, ptr %tmp, align 4
  br label %sethdraddr.exit

sethdraddr.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ 2, %if.then.i ], [ 1, %if.else.i ]
  %17 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flag.i, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sethdraddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nuw nsw i32 %retval.0.i, 1
  %vr = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 12
  %20 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vr, align 4
  %shl = shl i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pf)
  %tobool3.not = icmp ne i8 %pf, 0
  %cond = zext i1 %tobool3.not to i32
  %or = or i32 %shl, %cond
  %conv4 = trunc i32 %or to i8
  %arrayidx6 = getelementptr [4 x i8], ptr %tmp, i32 0, i32 %inc
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4, ptr %arrayidx6, align 1
  br label %if.end

if.else:                                          ; preds = %sethdraddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vr7 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 12
  %23 = ptrtoint ptr %vr7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vr7, align 4
  %shl8 = shl i32 %24, 5
  %conv9 = zext i8 %typ to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pf)
  %tobool12.not = icmp eq i8 %pf, 0
  %cond13 = select i1 %tobool12.not, i32 0, i32 16
  %or10 = or i32 %cond13, %conv9
  %or14 = or i32 %or10, %shl8
  %conv15 = trunc i32 %or14 to i8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %typ.sink = phi i8 [ %conv15, %if.else ], [ %typ, %if.then ]
  %i.0.in = phi i32 [ %retval.0.i, %if.else ], [ %inc, %if.then ]
  %25 = getelementptr [4 x i8], ptr %tmp, i32 0, i32 %retval.0.i
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %typ.sink, ptr %25, align 1
  %add.i = add nuw nsw i32 %i.0.in, 9
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i42 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i42, label %do.end, label %if.end24, !prof !212

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ch = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1
  %call22 = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %call22, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %i.0 = add nuw nsw i32 %i.0.in, 1
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %30, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %i.0) #10
  %31 = call ptr @memcpy(ptr %call.i, ptr %tmp, i32 %i.0)
  %next_id.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 22
  %32 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %next_id.i.i, align 4
  %inc.i.i = add i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %33)
  %cmp.i.i = icmp eq i32 %33, 32767
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 %inc.i.i
  %34 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.select.i.i, ptr %next_id.i.i, align 4
  %shl.i.i = shl i32 %33, 16
  %tei.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 6
  %35 = ptrtoint ptr %tei.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tei.i.i, align 1
  %conv.i.i = sext i8 %36 to i32
  %shl2.i.i = shl nsw i32 %conv.i.i, 8
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %sapi.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 5
  %37 = ptrtoint ptr %sapi.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sapi.i.i, align 4
  %conv3.i.i = sext i8 %38 to i32
  %or4.i.i = or i32 %or.i.i, %conv3.i.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 8193, ptr %cb.i.i, align 1
  %id2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %40 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %or4.i.i, ptr %id2.i.i, align 1
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 17, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then1.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %down_queue.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 27
  tail call void @skb_queue_tail(ptr noundef %down_queue.i.i.i, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end24
  %41 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id2.i.i, align 4
  %down_id.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 23
  %43 = ptrtoint ptr %down_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %down_id.i.i.i, align 4
  %ch.i.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1
  %recv.i.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1, i32 8
  %44 = ptrtoint ptr %recv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %recv.i.i.i.i, align 4
  %peer.i.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %peer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %peer.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %45(ptr noundef %47, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %48 = load ptr, ptr @debug, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %and.i.i.i.i = and i32 %50, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then.i44_crit_edge, label %do.end.i.i.i.i

land.lhs.true.i.i.i.i.if.then.i44_crit_edge:      ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i44

do.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i.i.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i.i.i.i) #10
  %call5.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call4.i.i.i.i, i32 noundef %call.i.i.i.i) #13
  br label %if.then.i44

if.then.i44:                                      ; preds = %do.end.i.i.i.i, %land.lhs.true.i.i.i.i.if.then.i44_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i44, %if.end.i.i.i.cleanup_crit_edge, %if.then1.i.i.i, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @transmit_enquiry(ptr noundef %l2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %. = select i1 %tobool.not, i8 1, i8 5
  tail call fastcc void @enquiry_cr(ptr noundef %l2, i8 noundef zeroext %., i8 noundef zeroext 0, i8 noundef zeroext 1)
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #10
  %t200.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 17
  %T200.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 19
  %3 = ptrtoint ptr %T200.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %T200.i, align 4
  %call.i = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t200.i, i32 noundef %4, i32 noundef 17, ptr noundef null, i32 noundef 9) #10
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tei_l2(ptr noundef %l2, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @debug, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %and = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ch = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1
  %call = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %call, i32 noundef %cmd, ptr noundef nonnull @.str.1) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 6148, label %sw.bb
    i32 6660, label %sw.bb3
    i32 7940, label %sw.bb6
    i32 24324, label %do.end12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %l2m = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 16
  %4 = inttoptr i32 %arg to ptr
  %call2 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m, i32 noundef 13, ptr noundef %4) #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %l2m4 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 16
  %call5 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m4, i32 noundef 14, ptr noundef null) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %l2m7 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 16
  %call8 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m7, i32 noundef 15, ptr noundef null) #10
  br label %sw.epilog

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ch14 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1
  %call15 = tail call ptr @mISDNDevName4ch(ptr noundef %ch14) #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %call15) #13
  %l2m17 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 16
  %call18 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m17, i32 noundef 15, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12, %sw.bb6, %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.sw.epilog_crit_edge ], [ %call18, %do.end12 ], [ %call8, %sw.bb6 ], [ %call5, %sw.bb3 ], [ %call2, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mISDNDevName4ch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_FsmEvent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @create_l2(ptr noundef %ch, i32 noundef %protocol, i32 noundef %options, i32 noundef %tei, i32 noundef %sapi) local_unnamed_addr #6 align 64 {
entry:
  %options.addr = alloca i32, align 4
  %rq = alloca %struct.channel_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rq) #10
  %1 = call ptr @memset(ptr %rq, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 520) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_id = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 22
  %3 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %next_id, align 8
  %down_id = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 23
  %4 = ptrtoint ptr %down_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65534, ptr %down_id, align 4
  %up = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ch, ptr %up, align 4
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %6 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st, align 4
  %st3 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %st3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %st3, align 8
  %send = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @l2_send, ptr %send, align 8
  %ctrl = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @l2_ctrl, ptr %ctrl, align 8
  %11 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %protocol, label %do.end110 [
    i32 17, label %sw.bb
    i32 16, label %sw.bb46
    i32 35, label %sw.bb99
  ]

sw.bb:                                            ; preds = %if.end
  %flag = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 2
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flag) #10
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 18, ptr noundef %flag) #10
  %call10 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flag) #10
  %conv = trunc i32 %sapi to i8
  %sapi11 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %sapi11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %sapi11, align 8
  %maxlen = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 260, ptr %maxlen, align 4
  %14 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %options.addr.0.options.addr.0. = load volatile i32, ptr %options.addr, align 4
  %15 = and i32 %options.addr.0.options.addr.0., 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not = icmp eq i32 %15, 0
  %spec.select = select i1 %tobool13.not, i32 1, i32 7
  %16 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 14
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %16, align 4
  %18 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %options.addr.0.options.addr.0.236 = load volatile i32, ptr %options.addr, align 4
  %19 = and i32 %options.addr.0.options.addr.0.236, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %sw.bb.if.end22_crit_edge, label %if.then19

sw.bb.if.end22_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 @_test_and_set_bit(i32 noundef 14, ptr noundef %flag) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %sw.bb.if.end22_crit_edge
  %20 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %options.addr.0.options.addr.0.237 = load volatile i32, ptr %options.addr, align 4
  %21 = and i32 %options.addr.0.options.addr.0.237, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %flag) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %conv29 = trunc i32 %tei to i8
  %tei30 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %tei30 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv29, ptr %tei30, align 1
  %T200 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %T200 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1000, ptr %T200, align 4
  %N200 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 20
  %24 = ptrtoint ptr %N200 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %N200, align 8
  %T203 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 21
  %25 = ptrtoint ptr %T203 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10000, ptr %T203, align 4
  %26 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %options.addr.0.options.addr.0.238 = load volatile i32, ptr %options.addr, align 4
  %27 = and i32 %options.addr.0.options.addr.0.238, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool32.not = icmp eq i32 %27, 0
  %. = select i1 %tobool32.not, i32 2, i32 4
  %28 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %., ptr %rq, align 4
  %channel = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %channel, align 1
  %30 = ptrtoint ptr %st3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %st3, align 8
  %dev = getelementptr inbounds %struct.mISDNstack, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %ctrl40 = getelementptr inbounds %struct.mISDNchannel, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %ctrl40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl40, align 8
  %call45 = call i32 %35(ptr noundef %33, i32 noundef 256, ptr noundef nonnull %rq) #10
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end
  %flag47 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 2
  %call48 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flag47) #10
  %call50 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flag47) #10
  %call52 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flag47) #10
  %conv53 = trunc i32 %sapi to i8
  %sapi54 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %sapi54 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv53, ptr %sapi54, align 8
  %maxlen55 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 8
  %37 = ptrtoint ptr %maxlen55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 260, ptr %maxlen55, align 4
  %38 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %options.addr.0.options.addr.0.239 = load volatile i32, ptr %options.addr, align 4
  %39 = and i32 %options.addr.0.options.addr.0.239, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool57.not = icmp eq i32 %39, 0
  %spec.select244 = select i1 %tobool57.not, i32 1, i32 7
  %40 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 14
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select244, ptr %40, align 4
  %42 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %options.addr.0.options.addr.0.240 = load volatile i32, ptr %options.addr, align 4
  %43 = and i32 %options.addr.0.options.addr.0.240, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool64.not = icmp eq i32 %43, 0
  br i1 %tobool64.not, label %sw.bb46.if.end68_crit_edge, label %if.then65

sw.bb46.if.end68_crit_edge:                       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then65:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #12
  %call67 = tail call i32 @_test_and_set_bit(i32 noundef 14, ptr noundef %flag47) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %sw.bb46.if.end68_crit_edge
  %44 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %options.addr.0.options.addr.0.241 = load volatile i32, ptr %options.addr, align 4
  %45 = and i32 %options.addr.0.options.addr.0.241, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool70.not = icmp eq i32 %45, 0
  br i1 %tobool70.not, label %if.end68.if.end74_crit_edge, label %if.then71

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %flag47) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end68.if.end74_crit_edge
  %conv75 = trunc i32 %tei to i8
  %tei76 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 6
  %46 = ptrtoint ptr %tei76 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv75, ptr %tei76, align 1
  %T20077 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 19
  %47 = ptrtoint ptr %T20077 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1000, ptr %T20077, align 4
  %N20078 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 20
  %48 = ptrtoint ptr %N20078 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %N20078, align 8
  %T20379 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 21
  %49 = ptrtoint ptr %T20379 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 10000, ptr %T20379, align 4
  %50 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %options.addr.0.options.addr.0.242 = load volatile i32, ptr %options.addr, align 4
  %51 = and i32 %options.addr.0.options.addr.0.242, 2
  %52 = or i32 %51, 1
  %53 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %rq, align 4
  %channel88 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %channel88 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %channel88, align 1
  %55 = ptrtoint ptr %st3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %st3, align 8
  %dev91 = getelementptr inbounds %struct.mISDNstack, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev91, align 4
  %ctrl93 = getelementptr inbounds %struct.mISDNchannel, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %ctrl93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctrl93, align 8
  %call98 = call i32 %60(ptr noundef %58, i32 noundef 256, ptr noundef nonnull %rq) #10
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flag100 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 2
  %call101 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flag100) #10
  %window102 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 14
  %61 = ptrtoint ptr %window102 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 7, ptr %window102, align 4
  %maxlen103 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 8
  %62 = ptrtoint ptr %maxlen103 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2048, ptr %maxlen103, align 4
  %T200104 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 19
  %63 = ptrtoint ptr %T200104 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1000, ptr %T200104, align 4
  %N200105 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 20
  %64 = ptrtoint ptr %N200105 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %N200105, align 8
  %T203106 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 21
  %65 = ptrtoint ptr %T203106 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 5000, ptr %T203106, align 4
  %addr = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 7
  %66 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %addr, align 2
  %B = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 7, i32 1
  %67 = ptrtoint ptr %B to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %B, align 1
  br label %sw.epilog

do.end110:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %protocol) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb99, %if.end74, %if.end28
  %i_queue = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 25
  %lock.i = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 25, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %68 = ptrtoint ptr %i_queue to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %i_queue, ptr %i_queue, align 8
  %prev.i.i = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 25, i32 0, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %i_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 25, i32 1
  %70 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %qlen.i.i, align 8
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 26
  %lock.i227 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 26, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i227, ptr noundef nonnull @.str.40, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %71 = ptrtoint ptr %ui_queue to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %ui_queue, ptr %ui_queue, align 8
  %prev.i.i228 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 26, i32 0, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i228 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ui_queue, ptr %prev.i.i228, align 4
  %qlen.i.i229 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 26, i32 1
  %73 = ptrtoint ptr %qlen.i.i229 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %qlen.i.i229, align 8
  %down_queue = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 27
  %lock.i230 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 27, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i230, ptr noundef nonnull @.str.40, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %74 = ptrtoint ptr %down_queue to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %down_queue, ptr %down_queue, align 8
  %prev.i.i231 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 27, i32 0, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i231 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %down_queue, ptr %prev.i.i231, align 4
  %qlen.i.i232 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 27, i32 1
  %76 = ptrtoint ptr %qlen.i.i232 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %qlen.i.i232, align 8
  %tmp_queue = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 28
  %lock.i233 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 28, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i233, ptr noundef nonnull @.str.40, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %77 = ptrtoint ptr %tmp_queue to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %tmp_queue, ptr %tmp_queue, align 8
  %prev.i.i234 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 28, i32 0, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i234 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %tmp_queue, ptr %prev.i.i234, align 4
  %qlen.i.i235 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 28, i32 1
  %79 = ptrtoint ptr %qlen.i.i235 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %qlen.i.i235, align 8
  %uglygep.i = getelementptr i8, ptr %call7.i.i, i32 264
  %80 = call ptr @memset(ptr %uglygep.i, i32 0, i32 32)
  %l2m = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 16
  %81 = ptrtoint ptr %l2m to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @l2fsm, ptr %l2m, align 4
  %flag113 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %flag113 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flag113, align 4
  %and1.i222 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i222)
  %tobool115.not = icmp eq i32 %and1.i222, 0
  br i1 %tobool115.not, label %lor.lhs.false, label %sw.epilog.if.end128_crit_edge

sw.epilog.if.end128_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

lor.lhs.false:                                    ; preds = %sw.epilog
  %84 = ptrtoint ptr %flag113 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %flag113, align 4
  %86 = and i32 %85, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool118.not = icmp eq i32 %86, 0
  br i1 %tobool118.not, label %lor.lhs.false119, label %lor.lhs.false.if.end128_crit_edge

lor.lhs.false.if.end128_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

lor.lhs.false119:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %flag113 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %flag113, align 4
  %89 = and i32 %88, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool122.not = icmp eq i32 %89, 0
  %spec.select245 = select i1 %tobool122.not, i32 0, i32 3
  br label %if.end128

if.end128:                                        ; preds = %lor.lhs.false119, %lor.lhs.false.if.end128_crit_edge, %sw.epilog.if.end128_crit_edge
  %.sink = phi i32 [ 3, %lor.lhs.false.if.end128_crit_edge ], [ 3, %sw.epilog.if.end128_crit_edge ], [ %spec.select245, %lor.lhs.false119 ]
  %state127 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 16, i32 1
  %90 = ptrtoint ptr %state127 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %.sink, ptr %state127, align 8
  %91 = load ptr, ptr @debug, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %debug = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 16, i32 2
  %94 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %debug, align 4
  %userdata = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 16, i32 3
  %95 = ptrtoint ptr %userdata to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call7.i.i, ptr %userdata, align 8
  %userint = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 16, i32 4
  %96 = ptrtoint ptr %userint to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %userint, align 4
  %printdebug = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 16, i32 5
  %97 = ptrtoint ptr %printdebug to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @l2m_debug, ptr %printdebug, align 8
  %t200 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 17
  call void @mISDN_FsmInitTimer(ptr noundef %l2m, ptr noundef %t200) #10
  %t203 = getelementptr inbounds %struct.layer2, ptr %call7.i.i, i32 0, i32 18
  call void @mISDN_FsmInitTimer(ptr noundef %l2m, ptr noundef %t203) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end128, %do.end110, %do.end
  %retval.0 = phi ptr [ null, %do.end110 ], [ %call7.i.i, %if.end128 ], [ null, %do.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rq) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2_send(ptr noundef %ch, ptr noundef %skb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ch, i32 -8
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %cb, align 1
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %id, align 1
  %sapi = getelementptr i8, ptr %ch, i32 56
  %7 = ptrtoint ptr %sapi to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sapi, align 4
  %conv = sext i8 %8 to i32
  %tei = getelementptr i8, ptr %ch, i32 57
  %9 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tei, align 1
  %conv3 = sext i8 %10 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call, i32 noundef %4, i32 noundef %6, i32 noundef %conv, i32 noundef %conv3) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %cb, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30724, i32 %12)
  %cmp = icmp eq i32 %12, 30724
  br i1 %cmp, label %if.then7, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then7:                                         ; preds = %if.end
  %add.ptr8 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %add.ptr8, align 1
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %cb, align 1
  %16 = load ptr, ptr @debug, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and9 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then7.if.end22thread-pre-split_crit_edge, label %do.end14

if.then7.if.end22thread-pre-split_crit_edge:      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22thread-pre-split

do.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %19 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %cb, align 1
  %id19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %id19 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %id19, align 1
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %call17, i32 noundef %20, i32 noundef %22) #13
  br label %if.end22thread-pre-split

if.end22thread-pre-split:                         ; preds = %do.end14, %if.then7.if.end22thread-pre-split_crit_edge
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %.pr = load i32, ptr %cb, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end22thread-pre-split, %if.end.if.end22_crit_edge
  %24 = phi i32 [ %.pr, %if.end22thread-pre-split ], [ %12, %if.end.if.end22_crit_edge ]
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %24, label %sw.default [
    i32 8194, label %sw.bb
    i32 24578, label %sw.bb25
    i32 258, label %sw.bb27
    i32 514, label %sw.bb35
    i32 1794, label %sw.bb40
    i32 12292, label %sw.bb47
    i32 12548, label %sw.bb50
    i32 4100, label %sw.bb53
    i32 4356, label %sw.bb89
    i32 28676, label %sw.bb99
    i32 29444, label %sw.bb102
  ]

sw.bb:                                            ; preds = %if.end22
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %flag.i.i = getelementptr i8, ptr %ch, i32 44
  %28 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flag.i.i, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %cond.i.i)
  %cmp.not.i = icmp ugt i32 %32, %cond.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %l2m.i = getelementptr i8, ptr %ch, i32 92
  %call1.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m.i, i32 noundef 23, ptr noundef nonnull inttoptr (i32 78 to ptr)) #10
  br label %if.end113.sink.split

if.end.i:                                         ; preds = %sw.bb
  %33 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flag.i.i, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i8, ptr %27, i32 1
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %27, align 1
  %conv.i = zext i8 %37 to i32
  %incdec.ptr4.i = getelementptr i8, ptr %27, i32 2
  %38 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.i, align 1
  %conv5.i = zext i8 %39 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp ne i32 %and.i, 0
  %and7.i = and i32 %conv5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %call10.i) #13
  br label %if.end113.sink.split

if.end12.i:                                       ; preds = %if.then3.i
  %40 = lshr i32 %conv.i, 2
  %41 = lshr i32 %conv5.i, 1
  %sapi.i = getelementptr i8, ptr %ch, i32 56
  %42 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sapi.i, align 4
  %conv14.i = sext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv14.i)
  %cmp15.not.i = icmp eq i32 %40, %conv14.i
  br i1 %cmp15.not.i, label %if.end31.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end12.i
  %44 = load ptr, ptr @debug, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %and18.i = and i32 %46, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then17.i.if.end113.sink.split_crit_edge, label %do.end23.i

if.then17.i.if.end113.sink.split_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.sink.split

do.end23.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %call26.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %47 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sapi.i, align 4
  %conv28.i = sext i8 %48 to i32
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %call26.i, i32 noundef %40, i32 noundef %conv28.i) #13
  br label %if.end113.sink.split

if.end31.i:                                       ; preds = %if.end12.i
  %tei.i = getelementptr i8, ptr %ch, i32 57
  %49 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %tei.i, align 1
  %conv32.i = sext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv32.i)
  %cmp33.not.i = icmp eq i32 %41, %conv32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %41)
  %cmp35.not.i = icmp eq i32 %41, 127
  %or.cond1.i = or i1 %cmp35.not.i, %cmp33.not.i
  br i1 %or.cond1.i, label %if.end31.i.if.end52.i_crit_edge, label %if.then37.i

if.end31.i.if.end52.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then37.i:                                      ; preds = %if.end31.i
  %51 = load ptr, ptr @debug, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %and38.i = and i32 %53, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.then37.i.if.end113.sink.split_crit_edge, label %do.end43.i

if.then37.i.if.end113.sink.split_crit_edge:       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.sink.split

do.end43.i:                                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #12
  %call46.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %54 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tei.i, align 1
  %conv48.i = sext i8 %55 to i32
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %call46.i, i32 noundef %41, i32 noundef %conv48.i) #13
  br label %if.end113.sink.split

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %27, i32 %cond.i.i
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else.i, %if.end31.i.if.end52.i_crit_edge
  %datap.0.i = phi ptr [ %incdec.ptr4.i, %if.end31.i.if.end52.i_crit_edge ], [ %add.ptr.i, %if.else.i ]
  %56 = ptrtoint ptr %datap.0.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %datap.0.i, align 1
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool55.not.i = icmp eq i8 %58, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %if.else63.i

if.then56.i:                                      ; preds = %if.end52.i
  %59 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %27, align 1
  %61 = and i8 %60, 2
  %62 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flag.i.i, align 4
  %64 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i.i = icmp eq i32 %64, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %65 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flag.i.i, align 4
  %67 = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i2.i = icmp eq i32 %67, 0
  %cond.i3.i = select i1 %tobool.not.i2.i, i32 1, i32 2
  %add.i.i = add nuw nsw i32 %cond.i3.i, %cond.i.i.i
  %68 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flag.i.i, align 4
  %70 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool4.not.i.i = icmp eq i32 %70, 0
  %.lobit.i.i = lshr exact i8 %61, 1
  %71 = xor i8 %.lobit.i.i, 1
  %rsp.0.in.i.i = select i1 %tobool4.not.i.i, i8 %61, i8 %71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rsp.0.in.i.i)
  %tobool6.not.i.i = icmp eq i8 %rsp.0.in.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.then56.i.do.end146.i_crit_edge

if.then56.i.do.end146.i_crit_edge:                ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.end8.i.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %32, %add.i.i
  br i1 %cmp.i.i, label %if.end8.i.i.do.end146.i_crit_edge, label %if.end11.i.i

if.end8.i.i.do.end146.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %sub.i.i = sub i32 %32, %add.i.i
  %maxlen.i.i = getelementptr i8, ptr %ch, i32 60
  %72 = ptrtoint ptr %maxlen.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %maxlen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %73)
  %cmp13.i.i = icmp ugt i32 %sub.i.i, %73
  br i1 %cmp13.i.i, label %if.end11.i.i.do.end146.i_crit_edge, label %if.then59.i

if.end11.i.i.do.end146.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.then59.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %l2m60.i = getelementptr i8, ptr %ch, i32 92
  %call61.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m60.i, i32 noundef 7, ptr noundef %skb) #10
  br label %sw.epilog

if.else63.i:                                      ; preds = %if.end52.i
  %74 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flag.i.i, align 4
  %76 = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i5.i = icmp eq i32 %76, 0
  %77 = and i8 %57, 15
  %spec.select.i.i = select i1 %tobool.not.i5.i, i8 %77, i8 %57
  %conv2.i.i = zext i8 %spec.select.i.i to i32
  %and3.i.i = and i32 %conv2.i.i, 243
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3.i.i)
  %cmp.i6.i = icmp ne i32 %and3.i.i, 1
  %and6.i.i = and i32 %conv2.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and6.i.i)
  %cmp7.i.i = icmp eq i32 %and6.i.i, 12
  %tobool65.not.i = or i1 %cmp.i6.i, %cmp7.i.i
  br i1 %tobool65.not.i, label %if.else73.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.else63.i
  %78 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flag.i.i, align 4
  %80 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i9.i = icmp eq i32 %80, 0
  %cond.i.i10.i = select i1 %tobool.not.i.i9.i, i32 1, i32 2
  %81 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flag.i.i, align 4
  %83 = and i32 %82, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i11.i = icmp eq i32 %83, 0
  %cond.i12.i = select i1 %tobool.not.i11.i, i32 1, i32 2
  %add.i13.i = add nuw nsw i32 %cond.i12.i, %cond.i.i10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.i13.i)
  %cmp.not.i.i = icmp eq i32 %32, %add.i13.i
  br i1 %cmp.not.i.i, label %if.then69.i, label %if.then66.i.do.end146.i_crit_edge

if.then66.i.do.end146.i_crit_edge:                ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.then69.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #12
  %l2m70.i = getelementptr i8, ptr %ch, i32 92
  %call71.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m70.i, i32 noundef 6, ptr noundef %skb) #10
  br label %sw.epilog

if.else73.i:                                      ; preds = %if.else63.i
  %84 = and i8 %57, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %84)
  %cmp.i15.not.i = icmp eq i8 %84, 3
  br i1 %cmp.i15.not.i, label %if.then76.i, label %if.else83.i

if.then76.i:                                      ; preds = %if.else73.i
  %85 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %27, align 1
  %87 = and i8 %86, 2
  %88 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %flag.i.i, align 4
  %90 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i18.i = icmp eq i32 %90, 0
  %.lobit.i19.i = lshr exact i8 %87, 1
  %91 = xor i8 %.lobit.i19.i, 1
  %rsp.0.in.i20.i = select i1 %tobool.not.i18.i, i8 %87, i8 %91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rsp.0.in.i20.i)
  %tobool2.not.i.i = icmp eq i8 %rsp.0.in.i20.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.then76.i.do.end146.i_crit_edge

if.then76.i.do.end146.i_crit_edge:                ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.end4.i.i:                                      ; preds = %if.then76.i
  %maxlen.i22.i = getelementptr i8, ptr %ch, i32 60
  %92 = ptrtoint ptr %maxlen.i22.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %maxlen.i22.i, align 4
  %94 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %flag.i.i, align 4
  %96 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i.i23.i = icmp eq i32 %96, 0
  %cond.i.i24.i = select i1 %tobool.not.i.i23.i, i32 1, i32 2
  %add.i25.i = add i32 %93, 1
  %add6.i.i = add i32 %add.i25.i, %cond.i.i24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add6.i.i)
  %cmp.i26.i = icmp ugt i32 %32, %add6.i.i
  br i1 %cmp.i26.i, label %if.end4.i.i.do.end146.i_crit_edge, label %if.then79.i

if.end4.i.i.do.end146.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.then79.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %l2m80.i = getelementptr i8, ptr %ch, i32 92
  %call81.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m80.i, i32 noundef 0, ptr noundef %skb) #10
  br label %sw.epilog

if.else83.i:                                      ; preds = %if.else73.i
  %97 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %flag.i.i, align 4
  %99 = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i30.i = icmp eq i32 %99, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %84)
  %cmp.i31.i = icmp ne i8 %84, 111
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %84)
  %cmp5.i.i = icmp ne i8 %84, 47
  %cond.in.i.i = select i1 %tobool.not.i30.i, i1 %cmp5.i.i, i1 %cmp.i31.i
  br i1 %cond.in.i.i, label %if.else93.i, label %if.then86.i

if.then86.i:                                      ; preds = %if.else83.i
  %100 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %27, align 1
  %102 = lshr i8 %101, 1
  %103 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %flag.i.i, align 4
  %105 = trunc i32 %104 to i8
  %106 = lshr i8 %105, 2
  %107 = xor i8 %106, %102
  %spec.select.i35.i = and i8 %107, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i35.i)
  %cmp.not.i36.i = icmp eq i8 %spec.select.i35.i, 0
  br i1 %cmp.not.i36.i, label %if.end4.i41.i, label %if.then86.i.do.end146.i_crit_edge

if.then86.i.do.end146.i_crit_edge:                ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.end4.i41.i:                                    ; preds = %if.then86.i
  %108 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flag.i.i, align 4
  %110 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i.i38.i = icmp eq i32 %110, 0
  %add.i39.i = select i1 %tobool.not.i.i38.i, i32 2, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.i39.i)
  %cmp6.not.i.i = icmp eq i32 %32, %add.i39.i
  br i1 %cmp6.not.i.i, label %if.then89.i, label %if.end4.i41.i.do.end146.i_crit_edge

if.end4.i41.i.do.end146.i_crit_edge:              ; preds = %if.end4.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.then89.i:                                      ; preds = %if.end4.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  %l2m90.i = getelementptr i8, ptr %ch, i32 92
  %call91.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m90.i, i32 noundef 1, ptr noundef %skb) #10
  br label %sw.epilog

if.else93.i:                                      ; preds = %if.else83.i
  %111 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %84, label %if.else93.i.do.end146.i_crit_edge [
    i8 99, label %if.then96.i
    i8 67, label %if.then106.i
    i8 15, label %if.then116.i
    i8 -121, label %if.then126.i
  ]

if.else93.i.do.end146.i_crit_edge:                ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.then96.i:                                      ; preds = %if.else93.i
  %112 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %27, align 1
  %114 = lshr i8 %113, 1
  %115 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %flag.i.i, align 4
  %117 = trunc i32 %116 to i8
  %118 = lshr i8 %117, 2
  %119 = xor i8 %118, %114
  %spec.select.i47.i = and i8 %119, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i47.i)
  %cmp.not.i49.not.i = icmp eq i8 %spec.select.i47.i, 0
  br i1 %cmp.not.i49.not.i, label %if.then96.i.do.end146.i_crit_edge, label %if.end4.i55.i

if.then96.i.do.end146.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.end4.i55.i:                                    ; preds = %if.then96.i
  %120 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %flag.i.i, align 4
  %122 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i.i51.i = icmp eq i32 %122, 0
  %add.i52.i = select i1 %tobool.not.i.i51.i, i32 2, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.i52.i)
  %cmp6.not.i53.i = icmp eq i32 %32, %add.i52.i
  br i1 %cmp6.not.i53.i, label %if.then99.i, label %if.end4.i55.i.do.end146.i_crit_edge

if.end4.i55.i.do.end146.i_crit_edge:              ; preds = %if.end4.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.then99.i:                                      ; preds = %if.end4.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  %l2m100.i = getelementptr i8, ptr %ch, i32 92
  %call101.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m100.i, i32 noundef 4, ptr noundef %skb) #10
  br label %sw.epilog

if.then106.i:                                     ; preds = %if.else93.i
  %123 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %27, align 1
  %125 = lshr i8 %124, 1
  %126 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %flag.i.i, align 4
  %128 = trunc i32 %127 to i8
  %129 = lshr i8 %128, 2
  %130 = xor i8 %129, %125
  %spec.select.i62.i = and i8 %130, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i62.i)
  %cmp.not.i64.i = icmp eq i8 %spec.select.i62.i, 0
  br i1 %cmp.not.i64.i, label %if.end4.i70.i, label %if.then106.i.do.end146.i_crit_edge

if.then106.i.do.end146.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.end4.i70.i:                                    ; preds = %if.then106.i
  %131 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %flag.i.i, align 4
  %133 = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i.i66.i = icmp eq i32 %133, 0
  %add.i67.i = select i1 %tobool.not.i.i66.i, i32 2, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.i67.i)
  %cmp6.not.i68.i = icmp eq i32 %32, %add.i67.i
  br i1 %cmp6.not.i68.i, label %if.then109.i, label %if.end4.i70.i.do.end146.i_crit_edge

if.end4.i70.i.do.end146.i_crit_edge:              ; preds = %if.end4.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.then109.i:                                     ; preds = %if.end4.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  %l2m110.i = getelementptr i8, ptr %ch, i32 92
  %call111.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m110.i, i32 noundef 2, ptr noundef %skb) #10
  br label %sw.epilog

if.then116.i:                                     ; preds = %if.else93.i
  %134 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %27, align 1
  %136 = lshr i8 %135, 1
  %137 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %flag.i.i, align 4
  %139 = trunc i32 %138 to i8
  %140 = lshr i8 %139, 2
  %141 = xor i8 %140, %136
  %spec.select.i77.i = and i8 %141, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i77.i)
  %cmp.not.i79.not.i = icmp eq i8 %spec.select.i77.i, 0
  br i1 %cmp.not.i79.not.i, label %if.then116.i.do.end146.i_crit_edge, label %if.end4.i85.i

if.then116.i.do.end146.i_crit_edge:               ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.end4.i85.i:                                    ; preds = %if.then116.i
  %142 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %flag.i.i, align 4
  %144 = and i32 %143, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i.i81.i = icmp eq i32 %144, 0
  %add.i82.i = select i1 %tobool.not.i.i81.i, i32 2, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.i82.i)
  %cmp6.not.i83.i = icmp eq i32 %32, %add.i82.i
  br i1 %cmp6.not.i83.i, label %if.then119.i, label %if.end4.i85.i.do.end146.i_crit_edge

if.end4.i85.i.do.end146.i_crit_edge:              ; preds = %if.end4.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.then119.i:                                     ; preds = %if.end4.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  %l2m120.i = getelementptr i8, ptr %ch, i32 92
  %call121.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m120.i, i32 noundef 3, ptr noundef %skb) #10
  br label %sw.epilog

if.then126.i:                                     ; preds = %if.else93.i
  %call127.i = tail call fastcc i32 @FRMR_error(ptr noundef %add.ptr, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i)
  %tobool128.not.i = icmp eq i32 %call127.i, 0
  br i1 %tobool128.not.i, label %if.then129.i, label %if.then126.i.do.end146.i_crit_edge

if.then126.i.do.end146.i_crit_edge:               ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146.i

if.then129.i:                                     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #12
  %l2m130.i = getelementptr i8, ptr %ch, i32 92
  %call131.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m130.i, i32 noundef 5, ptr noundef %skb) #10
  br label %sw.epilog

do.end146.i:                                      ; preds = %if.then126.i.do.end146.i_crit_edge, %if.end4.i85.i.do.end146.i_crit_edge, %if.then116.i.do.end146.i_crit_edge, %if.end4.i70.i.do.end146.i_crit_edge, %if.then106.i.do.end146.i_crit_edge, %if.end4.i55.i.do.end146.i_crit_edge, %if.then96.i.do.end146.i_crit_edge, %if.else93.i.do.end146.i_crit_edge, %if.end4.i41.i.do.end146.i_crit_edge, %if.then86.i.do.end146.i_crit_edge, %if.end4.i.i.do.end146.i_crit_edge, %if.then76.i.do.end146.i_crit_edge, %if.then66.i.do.end146.i_crit_edge, %if.end11.i.i.do.end146.i_crit_edge, %if.end8.i.i.do.end146.i_crit_edge, %if.then56.i.do.end146.i_crit_edge
  %c.0115.i = phi i32 [ %call127.i, %if.then126.i.do.end146.i_crit_edge ], [ 78, %if.end8.i.i.do.end146.i_crit_edge ], [ 76, %if.then56.i.do.end146.i_crit_edge ], [ 79, %if.end11.i.i.do.end146.i_crit_edge ], [ 76, %if.then76.i.do.end146.i_crit_edge ], [ 79, %if.end4.i.i.do.end146.i_crit_edge ], [ 78, %if.end4.i41.i.do.end146.i_crit_edge ], [ 76, %if.then86.i.do.end146.i_crit_edge ], [ 78, %if.end4.i55.i.do.end146.i_crit_edge ], [ 76, %if.then96.i.do.end146.i_crit_edge ], [ 78, %if.end4.i70.i.do.end146.i_crit_edge ], [ 76, %if.then106.i.do.end146.i_crit_edge ], [ 78, %if.end4.i85.i.do.end146.i_crit_edge ], [ 76, %if.then116.i.do.end146.i_crit_edge ], [ 78, %if.then66.i.do.end146.i_crit_edge ], [ 76, %if.else93.i.do.end146.i_crit_edge ]
  %call149.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call150.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %call149.i, i32 noundef %c.0115.i) #13
  %l2m151.i = getelementptr i8, ptr %ch, i32 92
  %145 = inttoptr i32 %c.0115.i to ptr
  %call152.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m151.i, i32 noundef 23, ptr noundef nonnull %145) #10
  br label %if.end113.sink.split

sw.bb25:                                          ; preds = %if.end22
  %flag.i = getelementptr i8, ptr %ch, i32 44
  %146 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %flag.i, align 4
  %148 = and i32 %147, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i181 = icmp eq i32 %148, 0
  br i1 %tobool.not.i181, label %sw.bb25.if.end24.i_crit_edge, label %if.then.i182

sw.bb25.if.end24.i_crit_edge:                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then.i182:                                     ; preds = %sw.bb25
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %149 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %id.i, align 1
  %down_id.i = getelementptr i8, ptr %ch, i32 252
  %151 = ptrtoint ptr %down_id.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %down_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %152)
  %cmp.i = icmp eq i32 %150, %152
  br i1 %cmp.i, label %if.then1.i, label %if.then.i182.if.end24.i_crit_edge

if.then.i182.if.end24.i_crit_edge:                ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then1.i:                                       ; preds = %if.then.i182
  %down_queue.i = getelementptr i8, ptr %ch, i32 400
  %call2.i = tail call ptr @skb_dequeue(ptr noundef %down_queue.i) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then1.i.if.then14.sink.split.i_crit_edge, label %if.then4.i

if.then1.i.if.then14.sink.split.i_crit_edge:      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.sink.split.i

if.then4.i:                                       ; preds = %if.then1.i
  %id5.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 3, i32 4
  %153 = ptrtoint ptr %id5.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %id5.i, align 4
  %155 = ptrtoint ptr %down_id.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %down_id.i, align 4
  %recv.i.i = getelementptr i8, ptr %ch, i32 36
  %156 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %recv.i.i, align 4
  %peer.i.i = getelementptr i8, ptr %ch, i32 28
  %158 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %peer.i.i, align 4
  %call.i.i = tail call i32 %157(ptr noundef %159, ptr noundef nonnull %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i183 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i183, label %if.then4.i.if.then14.i_crit_edge, label %land.lhs.true.i.i

if.then4.i.if.then14.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

land.lhs.true.i.i:                                ; preds = %if.then4.i
  %160 = load ptr, ptr @debug, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  %and.i.i = and i32 %162, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i184 = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i184, label %land.lhs.true.i.i.if.then9.i_crit_edge, label %do.end.i.i

land.lhs.true.i.i.if.then9.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call4.i.i, i32 noundef %call.i.i) #13
  br label %if.then9.i

if.then9.i:                                       ; preds = %do.end.i.i, %land.lhs.true.i.i.if.then9.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call2.i) #10
  br label %if.then14.sink.split.i

if.then14.sink.split.i:                           ; preds = %if.then9.i, %if.then1.i.if.then14.sink.split.i_crit_edge
  %163 = ptrtoint ptr %down_id.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 65534, ptr %down_id.i, align 4
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.then14.sink.split.i, %if.then4.i.if.then14.i_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  %164 = ptrtoint ptr %down_id.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %down_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %165)
  %cmp17.i = icmp eq i32 %165, 65534
  br i1 %cmp17.i, label %if.then18.i, label %if.then14.i.if.end24.i_crit_edge

if.then14.i.if.end24.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %flag.i) #10
  %l2m.i185 = getelementptr i8, ptr %ch, i32 92
  %call21.i = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m.i185, i32 noundef 9, ptr noundef null) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i.if.end24.i_crit_edge, %if.then.i182.if.end24.i_crit_edge, %sw.bb25.if.end24.i_crit_edge
  %ret.1.i = phi i32 [ 0, %if.then18.i ], [ 0, %if.then14.i.if.end24.i_crit_edge ], [ -11, %if.then.i182.if.end24.i_crit_edge ], [ -11, %sw.bb25.if.end24.i_crit_edge ]
  %call26.i186 = tail call i32 @_test_and_set_bit(i32 noundef 17, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i186)
  %tobool27.not.i = icmp eq i32 %call26.i186, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end24.i.sw.epilog_crit_edge

if.end24.i.sw.epilog_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then28.i:                                      ; preds = %if.end24.i
  %down_queue29.i = getelementptr i8, ptr %ch, i32 400
  %call30.i = tail call ptr @skb_dequeue(ptr noundef %down_queue29.i) #10
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.then28.i.if.end48.sink.split.i_crit_edge, label %if.then32.i

if.then28.i.if.end48.sink.split.i_crit_edge:      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.sink.split.i

if.then32.i:                                      ; preds = %if.then28.i
  %id35.i = getelementptr inbounds %struct.sk_buff, ptr %call30.i, i32 0, i32 3, i32 4
  %166 = ptrtoint ptr %id35.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %id35.i, align 4
  %down_id36.i = getelementptr i8, ptr %ch, i32 252
  %168 = ptrtoint ptr %down_id36.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %down_id36.i, align 4
  %recv.i75.i = getelementptr i8, ptr %ch, i32 36
  %169 = ptrtoint ptr %recv.i75.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %recv.i75.i, align 4
  %peer.i76.i = getelementptr i8, ptr %ch, i32 28
  %171 = ptrtoint ptr %peer.i76.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %peer.i76.i, align 4
  %call.i77.i = tail call i32 %170(ptr noundef %172, ptr noundef nonnull %call30.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool.not.i78.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool.not.i78.i, label %if.then32.i.sw.epilog_crit_edge, label %land.lhs.true.i81.i

if.then32.i.sw.epilog_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.i81.i:                              ; preds = %if.then32.i
  %173 = load ptr, ptr @debug, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 4
  %and.i79.i = and i32 %175, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79.i)
  %tobool2.not.i80.i = icmp eq i32 %and.i79.i, 0
  br i1 %tobool2.not.i80.i, label %land.lhs.true.i81.i.if.then39.i_crit_edge, label %do.end.i84.i

land.lhs.true.i81.i.if.then39.i_crit_edge:        ; preds = %land.lhs.true.i81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i

do.end.i84.i:                                     ; preds = %land.lhs.true.i81.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i82.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call5.i83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call4.i82.i, i32 noundef %call.i77.i) #13
  br label %if.then39.i

if.then39.i:                                      ; preds = %do.end.i84.i, %land.lhs.true.i81.i.if.then39.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call30.i) #10
  %176 = ptrtoint ptr %down_id36.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 65534, ptr %down_id36.i, align 4
  br label %if.end48.sink.split.i

if.end48.sink.split.i:                            ; preds = %if.then39.i, %if.then28.i.if.end48.sink.split.i_crit_edge
  %call46.i187 = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %flag.i) #10
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end22
  %flag = getelementptr i8, ptr %ch, i32 44
  %call28 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flag) #10
  tail call fastcc void @l2up_create(ptr noundef %add.ptr, i32 noundef 1282, i32 noundef 0, ptr noundef null)
  %call30 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %sw.bb27.if.end113.sink.split_crit_edge, label %if.then32

sw.bb27.if.end113.sink.split_crit_edge:           ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.sink.split

if.then32:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  %l2m = getelementptr i8, ptr %ch, i32 92
  %call33 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m, i32 noundef 11, ptr noundef %skb) #10
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %flag36 = getelementptr i8, ptr %ch, i32 44
  %call37 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flag36) #10
  tail call fastcc void @l2up_create(ptr noundef %add.ptr, i32 noundef 1538, i32 noundef 0, ptr noundef null)
  %l2m38 = getelementptr i8, ptr %ch, i32 92
  %call39 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m38, i32 noundef 16, ptr noundef %skb) #10
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end22
  %up = getelementptr i8, ptr %ch, i32 52
  %177 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %up, align 4
  %tobool41.not = icmp eq ptr %178, null
  br i1 %tobool41.not, label %sw.bb40.if.end113.sink.split_crit_edge, label %if.end43

sw.bb40.if.end113.sink.split_crit_edge:           ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.sink.split

if.end43:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  %send = getelementptr inbounds %struct.mISDNchannel, ptr %178, i32 0, i32 7
  %179 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %send, align 4
  %call46 = tail call i32 %180(ptr noundef nonnull %178, ptr noundef %skb) #10
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %l2m48 = getelementptr i8, ptr %ch, i32 92
  %call49 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m48, i32 noundef 8, ptr noundef %skb) #10
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %l2m51 = getelementptr i8, ptr %ch, i32 92
  %call52 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m51, i32 noundef 10, ptr noundef %skb) #10
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end22
  %flag54 = getelementptr i8, ptr %ch, i32 44
  %181 = ptrtoint ptr %flag54 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %flag54, align 4
  %and1.i = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool56.not = icmp eq i32 %and1.i, 0
  br i1 %tobool56.not, label %sw.bb53.if.end60_crit_edge, label %if.then57

sw.bb53.if.end60_crit_edge:                       ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then57:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flag54) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %sw.bb53.if.end60_crit_edge
  %183 = ptrtoint ptr %flag54 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %flag54, align 4
  %185 = and i32 %184, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool63.not = icmp eq i32 %185, 0
  %186 = ptrtoint ptr %flag54 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %flag54, align 4
  %188 = and i32 %187, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool77.not = icmp eq i32 %188, 0
  br i1 %tobool63.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end60
  br i1 %tobool77.not, label %lor.lhs.false, label %if.then64.if.then71_crit_edge

if.then64.if.then71_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

lor.lhs.false:                                    ; preds = %if.then64
  %189 = ptrtoint ptr %flag54 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %flag54, align 4
  %191 = and i32 %190, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool70.not = icmp eq i32 %191, 0
  br i1 %tobool70.not, label %lor.lhs.false.if.end113.sink.split_crit_edge, label %lor.lhs.false.if.then71_crit_edge

lor.lhs.false.if.then71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

lor.lhs.false.if.end113.sink.split_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.sink.split

if.then71:                                        ; preds = %lor.lhs.false.if.then71_crit_edge, %if.then64.if.then71_crit_edge
  %l2m72 = getelementptr i8, ptr %ch, i32 92
  %call73 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m72, i32 noundef 11, ptr noundef %skb) #10
  br label %sw.epilog

if.else:                                          ; preds = %if.end60
  br i1 %tobool77.not, label %lor.lhs.false78, label %if.else.if.then82_crit_edge

if.else.if.then82_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

lor.lhs.false78:                                  ; preds = %if.else
  %192 = ptrtoint ptr %flag54 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %flag54, align 4
  %194 = and i32 %193, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool81.not = icmp eq i32 %194, 0
  br i1 %tobool81.not, label %lor.lhs.false78.if.end85_crit_edge, label %lor.lhs.false78.if.then82_crit_edge

lor.lhs.false78.if.then82_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

lor.lhs.false78.if.end85_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then82:                                        ; preds = %lor.lhs.false78.if.then82_crit_edge, %if.else.if.then82_crit_edge
  %call84 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %flag54) #10
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %lor.lhs.false78.if.end85_crit_edge
  %next_id.i = getelementptr i8, ptr %ch, i32 248
  %195 = ptrtoint ptr %next_id.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %next_id.i, align 4
  %inc.i = add i32 %196, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %196)
  %cmp.i188 = icmp eq i32 %196, 32767
  %spec.select.i = select i1 %cmp.i188, i32 1, i32 %inc.i
  %197 = ptrtoint ptr %next_id.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %spec.select.i, ptr %next_id.i, align 4
  %shl.i = shl i32 %196, 16
  %tei.i189 = getelementptr i8, ptr %ch, i32 57
  %198 = ptrtoint ptr %tei.i189 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %tei.i189, align 1
  %conv.i190 = sext i8 %199 to i32
  %shl2.i = shl nsw i32 %conv.i190, 8
  %or.i = or i32 %shl2.i, %shl.i
  %sapi.i191 = getelementptr i8, ptr %ch, i32 56
  %200 = ptrtoint ptr %sapi.i191 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %sapi.i191, align 4
  %conv3.i = sext i8 %201 to i32
  %or4.i = or i32 %or.i, %conv3.i
  %202 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 257, ptr %cb, align 1
  %id2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %203 = ptrtoint ptr %id2.i to i32
  call void @__asan_storeN_noabort(i32 %203, i32 4)
  store i32 %or4.i, ptr %id2.i, align 1
  %recv.i.i.i = getelementptr i8, ptr %ch, i32 36
  %204 = ptrtoint ptr %recv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %recv.i.i.i, align 4
  %peer.i.i.i = getelementptr i8, ptr %ch, i32 28
  %206 = ptrtoint ptr %peer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %peer.i.i.i, align 4
  %call.i.i.i = tail call i32 %205(ptr noundef %207, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i192 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i192, label %if.end85.if.end113_crit_edge, label %land.lhs.true.i.i.i

if.end85.if.end113_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

land.lhs.true.i.i.i:                              ; preds = %if.end85
  %208 = load ptr, ptr @debug, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %208, align 4
  %and.i.i.i = and i32 %210, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end113.sink.split_crit_edge, label %do.end.i.i.i

land.lhs.true.i.i.i.if.end113.sink.split_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.sink.split

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call5.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call4.i.i.i, i32 noundef %call.i.i.i) #13
  br label %if.end113.sink.split

sw.bb89:                                          ; preds = %if.end22
  %flag90 = getelementptr i8, ptr %ch, i32 44
  %211 = ptrtoint ptr %flag90 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %flag90, align 4
  %and1.i180 = and i32 %212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i180)
  %tobool92.not = icmp eq i32 %and1.i180, 0
  br i1 %tobool92.not, label %sw.bb89.if.end96_crit_edge, label %if.then93

sw.bb89.if.end96_crit_edge:                       ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then93:                                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #12
  %next_id.i194 = getelementptr i8, ptr %ch, i32 248
  %213 = ptrtoint ptr %next_id.i194 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %next_id.i194, align 4
  %inc.i195 = add i32 %214, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %214)
  %cmp.i196 = icmp eq i32 %214, 32767
  %spec.select.i197 = select i1 %cmp.i196, i32 1, i32 %inc.i195
  %215 = ptrtoint ptr %next_id.i194 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %spec.select.i197, ptr %next_id.i194, align 4
  %shl.i198 = shl i32 %214, 16
  %tei.i199 = getelementptr i8, ptr %ch, i32 57
  %216 = ptrtoint ptr %tei.i199 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %tei.i199, align 1
  %conv.i200 = sext i8 %217 to i32
  %shl2.i201 = shl nsw i32 %conv.i200, 8
  %or.i202 = or i32 %shl2.i201, %shl.i198
  %sapi.i203 = getelementptr i8, ptr %ch, i32 56
  %218 = ptrtoint ptr %sapi.i203 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %sapi.i203, align 4
  %conv3.i204 = sext i8 %219 to i32
  %or4.i205 = or i32 %or.i202, %conv3.i204
  tail call fastcc void @l2down_create(ptr noundef %add.ptr, i32 noundef %or4.i205)
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %sw.bb89.if.end96_crit_edge
  %l2m97 = getelementptr i8, ptr %ch, i32 92
  %call98 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m97, i32 noundef 12, ptr noundef %skb) #10
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %l2m100 = getelementptr i8, ptr %ch, i32 92
  %call101 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m100, i32 noundef 19, ptr noundef null) #10
  br label %if.end113.sink.split

sw.bb102:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %l2m103 = getelementptr i8, ptr %ch, i32 92
  %call104 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m103, i32 noundef 20, ptr noundef null) #10
  br label %if.end113.sink.split

sw.default:                                       ; preds = %if.end22
  %220 = load ptr, ptr @debug, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %220, align 4
  %and105 = and i32 %222, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %sw.default.if.end113.sink.split_crit_edge, label %if.then107

sw.default.if.end113.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.sink.split

if.then107:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %l2m108 = getelementptr i8, ptr %ch, i32 92
  tail call void (ptr, ptr, ...) @l2m_debug(ptr noundef %l2m108, ptr noundef nonnull @.str.22, i32 noundef %24)
  br label %if.end113.sink.split

sw.epilog:                                        ; preds = %if.end96, %if.then71, %sw.bb50, %sw.bb47, %if.end43, %sw.bb35, %if.then32, %if.end48.sink.split.i, %if.then32.i.sw.epilog_crit_edge, %if.end24.i.sw.epilog_crit_edge, %if.then129.i, %if.then119.i, %if.then109.i, %if.then99.i, %if.then89.i, %if.then79.i, %if.then69.i, %if.then59.i
  %ret.0 = phi i32 [ %call98, %if.end96 ], [ %call73, %if.then71 ], [ %call52, %sw.bb50 ], [ %call49, %sw.bb47 ], [ %call46, %if.end43 ], [ %call39, %sw.bb35 ], [ %call33, %if.then32 ], [ %call61.i, %if.then59.i ], [ %call131.i, %if.then129.i ], [ %call121.i, %if.then119.i ], [ %call111.i, %if.then109.i ], [ %call101.i, %if.then99.i ], [ %call91.i, %if.then89.i ], [ %call81.i, %if.then79.i ], [ %call71.i, %if.then69.i ], [ %ret.1.i, %if.end24.i.sw.epilog_crit_edge ], [ %ret.1.i, %if.then32.i.sw.epilog_crit_edge ], [ %ret.1.i, %if.end48.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool111.not = icmp eq i32 %ret.0, 0
  br i1 %tobool111.not, label %sw.epilog.if.end113_crit_edge, label %sw.epilog.if.end113.sink.split_crit_edge

sw.epilog.if.end113.sink.split_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.sink.split

sw.epilog.if.end113_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.end113.sink.split:                             ; preds = %sw.epilog.if.end113.sink.split_crit_edge, %if.then107, %sw.default.if.end113.sink.split_crit_edge, %sw.bb102, %sw.bb99, %do.end.i.i.i, %land.lhs.true.i.i.i.if.end113.sink.split_crit_edge, %lor.lhs.false.if.end113.sink.split_crit_edge, %sw.bb40.if.end113.sink.split_crit_edge, %sw.bb27.if.end113.sink.split_crit_edge, %do.end146.i, %do.end43.i, %if.then37.i.if.end113.sink.split_crit_edge, %do.end23.i, %if.then17.i.if.end113.sink.split_crit_edge, %do.end.i, %if.then.i
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %if.end113

if.end113:                                        ; preds = %if.end113.sink.split, %sw.epilog.if.end113_crit_edge, %if.end85.if.end113_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2_ctrl(ptr noundef %ch, i32 noundef %cmd, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  %info = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ch, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #10
  %0 = load ptr, ptr @debug, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %and = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %call, ptr noundef nonnull @.str.37, i32 noundef %cmd) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 256, label %sw.bb
    i32 512, label %sw.bb9
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %flag = getelementptr i8, ptr %ch, i32 44
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %sw.bb.sw.epilog_crit_edge, label %if.then5

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %sapi = getelementptr i8, ptr %ch, i32 56
  %7 = ptrtoint ptr %sapi to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sapi, align 4
  %conv = sext i8 %8 to i32
  %tei = getelementptr i8, ptr %ch, i32 57
  %9 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tei, align 1
  %conv7 = sext i8 %10 to i32
  tail call void @set_channel_address(ptr noundef %ch, i32 noundef %conv, i32 noundef %conv7) #10
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %info, align 4
  call fastcc void @l2up_create(ptr noundef %add.ptr, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %info)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %12 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peer, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %sw.bb9.if.end18_crit_edge, label %if.then12

sw.bb9.if.end18_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl, align 4
  %call17 = tail call i32 %15(ptr noundef nonnull %13, i32 noundef 512, ptr noundef null) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %sw.bb9.if.end18_crit_edge
  %t200.i = getelementptr i8, ptr %ch, i32 116
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 21) #10
  %t203.i = getelementptr i8, ptr %ch, i32 176
  tail call void @mISDN_FsmDelTimer(ptr noundef %t203.i, i32 noundef 16) #10
  %i_queue.i = getelementptr i8, ptr %ch, i32 288
  tail call void @skb_queue_purge(ptr noundef %i_queue.i) #10
  %ui_queue.i = getelementptr i8, ptr %ch, i32 344
  tail call void @skb_queue_purge(ptr noundef %ui_queue.i) #10
  %down_queue.i = getelementptr i8, ptr %ch, i32 400
  tail call void @skb_queue_purge(ptr noundef %down_queue.i) #10
  %call.i.i = tail call fastcc i32 @freewin(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end18.ReleaseWin.exit.i_crit_edge, label %do.end.i.i

if.end18.ReleaseWin.exit.i_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %ReleaseWin.exit.i

do.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %call.i.i) #13
  br label %ReleaseWin.exit.i

ReleaseWin.exit.i:                                ; preds = %do.end.i.i, %if.end18.ReleaseWin.exit.i_crit_edge
  %flag.i = getelementptr i8, ptr %ch, i32 44
  %16 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flag.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %ReleaseWin.exit.i.release_l2.exit_crit_edge, label %if.then.i

ReleaseWin.exit.i.release_l2.exit_crit_edge:      ; preds = %ReleaseWin.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_l2.exit

if.then.i:                                        ; preds = %ReleaseWin.exit.i
  tail call void @TEIrelease(ptr noundef %add.ptr) #10
  %st.i = getelementptr i8, ptr %ch, i32 24
  %19 = ptrtoint ptr %st.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %st.i, align 4
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %if.then.i.release_l2.exit_crit_edge, label %if.then2.i

if.then.i.release_l2.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_l2.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.mISDNstack, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %ctrl.i = getelementptr inbounds %struct.mISDNchannel, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl.i, align 8
  %call9.i = tail call i32 %24(ptr noundef %22, i32 noundef 512, ptr noundef null) #10
  br label %release_l2.exit

release_l2.exit:                                  ; preds = %if.then2.i, %if.then.i.release_l2.exit_crit_edge, %ReleaseWin.exit.i.release_l2.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %release_l2.exit, %if.then5, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2m_debug(ptr nocapture noundef readonly %fi, ptr noundef %fmt, ...) #6 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %va = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #10
  %2 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !213
  %3 = load ptr, ptr @debug, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %va)
  %7 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fmt, ptr %vaf, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %va, ptr %6, align 4
  %ch = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call = call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %sapi = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %sapi to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sapi, align 4
  %conv = sext i8 %10 to i32
  %tei = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tei, align 1
  %conv3 = sext i8 %12 to i32
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %call, i32 noundef %conv, i32 noundef %conv3, ptr noundef nonnull %vaf) #13
  call void @llvm.va_end(ptr nonnull %va)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmInitTimer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @Isdnl2_Init(ptr noundef %deb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %deb, ptr @debug, align 4
  %call = tail call i32 @mISDN_register_Bprotocol(ptr noundef nonnull @X75SLP) #10
  store i32 8, ptr getelementptr inbounds (%struct.Fsm, ptr @l2fsm, i32 0, i32 1), align 4
  store i32 24, ptr getelementptr inbounds (%struct.Fsm, ptr @l2fsm, i32 0, i32 2), align 4
  store ptr @strL2Event, ptr getelementptr inbounds (%struct.Fsm, ptr @l2fsm, i32 0, i32 3), align 4
  store ptr @strL2State, ptr getelementptr inbounds (%struct.Fsm, ptr @l2fsm, i32 0, i32 4), align 4
  %call1 = tail call i32 @mISDN_FsmNew(ptr noundef nonnull @l2fsm, ptr noundef nonnull @L2FnList, i32 noundef 93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @TEIInit(ptr noundef %deb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %error_fsm

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error_fsm:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mISDN_FsmFree(ptr noundef nonnull @l2fsm) #10
  br label %error

error:                                            ; preds = %error_fsm, %entry.error_crit_edge
  %res.0 = phi i32 [ %call1, %entry.error_crit_edge ], [ %call2, %error_fsm ]
  tail call void @mISDN_unregister_Bprotocol(ptr noundef nonnull @X75SLP) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %error ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_register_Bprotocol(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_FsmNew(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @TEIInit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_unregister_Bprotocol(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Isdnl2_cleanup() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mISDN_unregister_Bprotocol(ptr noundef nonnull @X75SLP) #10
  tail call void @TEIFree() #10
  tail call void @mISDN_FsmFree(ptr noundef nonnull @l2fsm) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @TEIFree() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @FRMR_error(ptr noundef %l2, ptr nocapture noundef readonly %skb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flag.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %add = add nuw nsw i32 %cond.i, 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %7 = and i8 %6, 2
  %8 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flag.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %.lobit = lshr exact i8 %7, 1
  %11 = xor i8 %.lobit, 1
  %rsp.0.in = select i1 %tobool.not, i8 %7, i8 %11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rsp.0.in)
  %tobool4.not = icmp eq i8 %rsp.0.in, 0
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %12 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flag.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  %len29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len29, align 4
  br i1 %tobool9.not, label %if.else28, label %if.then10

if.then10:                                        ; preds = %if.end6
  %add11 = add nuw nsw i32 %cond.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add11)
  %cmp = icmp ult i32 %16, %add11
  br i1 %cmp, label %if.then10.cleanup_crit_edge, label %if.else

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.then10
  %17 = load ptr, ptr @debug, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %and14 = and i32 %19, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else.cleanup_crit_edge, label %if.then16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %l2m = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 16
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr, align 1
  %conv17 = zext i8 %21 to i32
  %arrayidx18 = getelementptr i8, ptr %add.ptr, i32 1
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %23 to i32
  %arrayidx20 = getelementptr i8, ptr %add.ptr, i32 2
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  %arrayidx22 = getelementptr i8, ptr %add.ptr, i32 3
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %27 to i32
  %arrayidx24 = getelementptr i8, ptr %add.ptr, i32 4
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @l2m_debug(ptr noundef %l2m, ptr noundef nonnull @.str.34, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv25)
  br label %cleanup

if.else28:                                        ; preds = %if.end6
  %add30 = or i32 %cond.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add30)
  %cmp31 = icmp ult i32 %16, %add30
  br i1 %cmp31, label %if.else28.cleanup_crit_edge, label %if.else34

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else34:                                        ; preds = %if.else28
  %30 = load ptr, ptr @debug, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and35 = and i32 %32, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else34.cleanup_crit_edge, label %if.then37

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  %l2m38 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 16
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr, align 1
  %conv40 = zext i8 %34 to i32
  %arrayidx41 = getelementptr i8, ptr %add.ptr, i32 1
  %35 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %36 to i32
  %arrayidx43 = getelementptr i8, ptr %add.ptr, i32 2
  %37 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @l2m_debug(ptr noundef %l2m38, ptr noundef nonnull @.str.35, i32 noundef %conv40, i32 noundef %conv42, i32 noundef %conv44)
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.else34.cleanup_crit_edge, %if.else28.cleanup_crit_edge, %if.then16, %if.else.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 76, %entry.cleanup_crit_edge ], [ 78, %if.then10.cleanup_crit_edge ], [ 78, %if.else28.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.else34.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_channel_address(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @TEIrelease(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @freewin(ptr nocapture noundef %l2) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %cnt.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %4, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %inc.1 = add nuw nsw i32 %cnt.1, 1
  tail call void @consume_skb(ptr noundef nonnull %4) #10
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %cnt.1.1 = phi i32 [ %inc.1, %if.then.1 ], [ %cnt.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %inc.2 = add nuw nsw i32 %cnt.1.1, 1
  tail call void @consume_skb(ptr noundef nonnull %7) #10
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %cnt.1.2 = phi i32 [ %inc.2, %if.then.2 ], [ %cnt.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %10, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %inc.3 = add nuw nsw i32 %cnt.1.2, 1
  tail call void @consume_skb(ptr noundef nonnull %10) #10
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %cnt.1.3 = phi i32 [ %inc.3, %if.then.3 ], [ %cnt.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %13, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %inc.4 = add nuw nsw i32 %cnt.1.3, 1
  tail call void @consume_skb(ptr noundef nonnull %13) #10
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %cnt.1.4 = phi i32 [ %inc.4, %if.then.4 ], [ %cnt.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %16, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %inc.5 = add nuw nsw i32 %cnt.1.4, 1
  tail call void @consume_skb(ptr noundef nonnull %16) #10
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %cnt.1.5 = phi i32 [ %inc.5, %if.then.5 ], [ %cnt.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx.6 = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %19, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %inc.6 = add nuw nsw i32 %cnt.1.5, 1
  tail call void @consume_skb(ptr noundef nonnull %19) #10
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %cnt.1.6 = phi i32 [ %inc.6, %if.then.6 ], [ %cnt.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx.7 = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %22, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %inc.7 = add nuw nsw i32 %cnt.1.6, 1
  tail call void @consume_skb(ptr noundef nonnull %22) #10
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %cnt.1.7 = phi i32 [ %inc.7, %if.then.7 ], [ %cnt.1.6, %for.inc.6.for.inc.7_crit_edge ]
  ret i32 %cnt.1.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x75create(ptr nocapture noundef %crq) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %1)
  %cmp.not = icmp eq i32 %1, 35
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ch = getelementptr inbounds %struct.channel_req, ptr %crq, i32 0, i32 2
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 4
  %call = tail call ptr @create_l2(ptr noundef %3, i32 noundef 35, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ch4 = getelementptr inbounds %struct.layer2, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ch4, ptr %ch, align 4
  %5 = ptrtoint ptr %crq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 34, ptr %crq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -93, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_mdl_assign(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 2) #10
  tail call void @consume_skb(ptr noundef %arg) #10
  %call = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 6404, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_go_st3(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @consume_skb(ptr noundef %arg) #10
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_establish(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  tail call fastcc void @establishlink(ptr noundef %fi)
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flag) #10
  tail call void @consume_skb(ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_discard_i_setl3(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flag) #10
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flag) #10
  tail call void @consume_skb(ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_l3_reestablish(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  tail call fastcc void @establishlink(ptr noundef %fi)
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flag) #10
  tail call void @consume_skb(ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_release(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  tail call void @skb_trim(ptr noundef %arg, i32 noundef 0) #10
  %up.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %up.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.l2up.exit_crit_edge, label %if.end.i

entry.l2up.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2up.exit

if.end.i:                                         ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20744, ptr %cb.i, align 8
  %nr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i, align 4
  %shl.i = shl i32 %6, 16
  %addr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %or.i = or i32 %shl.i, %8
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %id.i, align 4
  %10 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %up.i, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send.i, align 4
  %call.i = tail call i32 %13(ptr noundef %11, ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end.i.l2up.exit_crit_edge, label %do.end.i

if.end.i.l2up.exit_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2up.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call10.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.78, ptr noundef %call10.i, i32 noundef %call.i) #13
  tail call void @consume_skb(ptr noundef %arg) #10
  br label %l2up.exit

l2up.exit:                                        ; preds = %do.end.i, %if.end.i.l2up.exit_crit_edge, %entry.l2up.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_pend_rel(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flag) #10
  tail call void @consume_skb(ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_disconnect(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  %call = tail call fastcc i32 @freewin(ptr noundef %1)
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 5) #10
  %rc = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rc, align 4
  tail call fastcc void @send_uframe(ptr noundef %1, ptr noundef null, i8 noundef zeroext 83, i8 noundef zeroext 0)
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  tail call void @mISDN_FsmDelTimer(ptr noundef %t203, i32 noundef 1) #10
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %T200.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %T200.i, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %t200.i, i32 noundef %4, i32 noundef 17, ptr noundef null, i32 noundef 2) #10
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag.i) #10
  tail call void @consume_skb(ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_feed_i_if_reest(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_tail(ptr noundef %i_queue, ptr noundef %arg) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %arg) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_feed_i_pull(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_tail(ptr noundef %i_queue, ptr noundef %arg) #10
  %call = tail call i32 @mISDN_FsmEvent(ptr noundef %fi, i32 noundef 9, ptr noundef null) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_feed_iqueue(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_tail(ptr noundef %i_queue, ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_queue_ui_assign(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_tail(ptr noundef %ui_queue, ptr noundef %arg) #10
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 1) #10
  %call = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 6404, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_queue_ui(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_tail(ptr noundef %ui_queue, ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_send_ui(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_tail(ptr noundef %ui_queue, ptr noundef %arg) #10
  tail call fastcc void @tx_ui(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_got_tei(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  %info = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #10
  %2 = ptrtoint ptr %arg to i32
  %conv = trunc i32 %2 to i8
  %tei = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %tei to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %tei, align 1
  %ch = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %sapi = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %sapi to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sapi, align 4
  %conv1 = sext i8 %5 to i32
  %sext = shl i32 %2, 24
  %conv3 = ashr exact i32 %sext, 24
  tail call void @set_channel_address(ptr noundef %ch, i32 noundef %conv1, i32 noundef %conv3) #10
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %info, align 4
  call fastcc void @l2up_create(ptr noundef %1, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %info)
  %state = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 1
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @establishlink(ptr noundef %fi)
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flag) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %qlen.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @tx_ui(ptr noundef %1)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st24_tei_remove(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %ui_queue) #10
  %tei = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tei to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %tei, align 1
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st3_tei_remove(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %ui_queue) #10
  %tei = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tei to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %tei, align 1
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef 4360, i32 noundef 0, ptr noundef null)
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st5_tei_remove(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %ui_queue) #10
  %call = tail call fastcc i32 @freewin(ptr noundef %1)
  %tei = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tei to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %tei, align 1
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.stop_t200.exit_crit_edge, label %if.then.i

entry.stop_t200.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 17) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %entry.stop_t200.exit_crit_edge
  %call.i8 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not.i9 = icmp eq i32 %call.i8, 0
  %..i = select i1 %tobool.not.i9, i32 4360, i32 20744
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef %..i, i32 noundef 0, ptr noundef null) #10
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st6_tei_remove(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %ui_queue) #10
  %tei = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tei to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %tei, align 1
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.stop_t200.exit_crit_edge, label %if.then.i

entry.stop_t200.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 18) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %entry.stop_t200.exit_crit_edge
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef 4360, i32 noundef 0, ptr noundef null)
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_tei_remove(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %ui_queue) #10
  %call = tail call fastcc i32 @freewin(ptr noundef %1)
  %tei = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tei to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %tei, align 1
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.stop_t200.exit_crit_edge, label %if.then.i

entry.stop_t200.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 17) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %entry.stop_t200.exit_crit_edge
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  tail call void @mISDN_FsmDelTimer(ptr noundef %t203, i32 noundef 19) #10
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef 4360, i32 noundef 0, ptr noundef null)
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_start_multi(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %vs = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %vs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vs, align 4
  %va = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %va, align 4
  %vr = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %vr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vr, align 4
  %sow = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %sow to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sow, align 4
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag.i) #10
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flag.i) #10
  %call4.i = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %flag.i) #10
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.clear_exception.exit_crit_edge, label %if.then.i.i

entry.clear_exception.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clear_exception.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %flag.i) #10
  br label %clear_exception.exit

clear_exception.exit:                             ; preds = %if.then.i.i, %entry.clear_exception.exit_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flag.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i18 = icmp eq i32 %10, 0
  %cond.i.i = select i1 %tobool.not.i.i18, i32 1, i32 2
  %arrayidx.i = getelementptr i8, ptr %7, i32 %cond.i.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = and i8 %12, 16
  %14 = or i8 %13, 99
  tail call fastcc void @send_uframe(ptr noundef %1, ptr noundef null, i8 noundef zeroext %14, i8 noundef zeroext 1)
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 6) #10
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  %T203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %T203 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %T203, align 4
  %call2 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t203, i32 noundef %16, i32 noundef 18, ptr noundef null, i32 noundef 3) #10
  tail call void @skb_trim(ptr noundef %arg, i32 noundef 0) #10
  %up.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %up.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %clear_exception.exit.l2up.exit_crit_edge, label %if.end.i

clear_exception.exit.l2up.exit_crit_edge:         ; preds = %clear_exception.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2up.exit

if.end.i:                                         ; preds = %clear_exception.exit
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4104, ptr %cb.i, align 8
  %nr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr.i, align 4
  %shl.i = shl i32 %21, 16
  %addr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 4
  %or.i = or i32 %shl.i, %23
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i, ptr %id.i, align 4
  %25 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %up.i, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %send.i, align 4
  %call.i19 = tail call i32 %28(ptr noundef %26, ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool7.not.i = icmp eq i32 %call.i19, 0
  br i1 %tobool7.not.i, label %if.end.i.l2up.exit_crit_edge, label %do.end.i

if.end.i.l2up.exit_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2up.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call10.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.78, ptr noundef %call10.i, i32 noundef %call.i19) #13
  tail call void @consume_skb(ptr noundef %arg) #10
  br label %l2up.exit

l2up.exit:                                        ; preds = %do.end.i, %if.end.i.l2up.exit_crit_edge, %clear_exception.exit.l2up.exit_crit_edge
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tm, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %l2up.exit.if.end_crit_edge, label %if.then

l2up.exit.if.end_crit_edge:                       ; preds = %l2up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %l2up.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7172, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %l2up.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_send_UA(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %flag.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %arrayidx.i = getelementptr i8, ptr %3, i32 %cond.i.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 16
  %10 = or i8 %9, 99
  tail call fastcc void @send_uframe(ptr noundef %1, ptr noundef %arg, i8 noundef zeroext %10, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_send_DM(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %flag.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %arrayidx.i = getelementptr i8, ptr %3, i32 %cond.i.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 16
  %10 = or i8 %9, 15
  tail call fastcc void @send_uframe(ptr noundef %1, ptr noundef %arg, i8 noundef zeroext %10, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_restart_multi(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %flag.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %arrayidx.i = getelementptr i8, ptr %3, i32 %cond.i.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 16
  %10 = or i8 %9, 99
  tail call fastcc void @send_uframe(ptr noundef %1, ptr noundef %arg, i8 noundef zeroext %10, i8 noundef zeroext 1)
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i, i32 noundef %12, i32 noundef 7940, i32 noundef 70) #13
  %13 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flag.i.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %entry.l2mgr.exit_crit_edge, label %land.lhs.true.i

entry.l2mgr.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flag.i.i, align 4
  br label %l2mgr.exit

l2mgr.exit:                                       ; preds = %land.lhs.true.i, %entry.l2mgr.exit_crit_edge
  %vs = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vs, align 4
  %va = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %va, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not = icmp eq i32 %19, %21
  br i1 %cmp.not, label %l2mgr.exit.if.end_crit_edge, label %if.then

l2mgr.exit.if.end_crit_edge:                      ; preds = %l2mgr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %l2mgr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %l2mgr.exit.if.end_crit_edge
  %call.i36 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag.i.i) #10
  %call2.i37 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flag.i.i) #10
  %call4.i = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %flag.i.i) #10
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %flag.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i38 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i38, label %if.end.clear_exception.exit_crit_edge, label %if.then.i.i

if.end.clear_exception.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %clear_exception.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %flag.i.i) #10
  br label %clear_exception.exit

clear_exception.exit:                             ; preds = %if.then.i.i, %if.end.clear_exception.exit_crit_edge
  %22 = ptrtoint ptr %vs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %vs, align 4
  %23 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %va, align 4
  %vr = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %vr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %vr, align 4
  %sow = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %sow to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sow, align 4
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 6) #10
  %call.i40 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %clear_exception.exit.stop_t200.exit_crit_edge, label %if.then.i42

clear_exception.exit.stop_t200.exit_crit_edge:    ; preds = %clear_exception.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i42:                                      ; preds = %clear_exception.exit
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 3) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i42, %clear_exception.exit.stop_t200.exit_crit_edge
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  %T203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %T203 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %T203, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %t203, i32 noundef %27, i32 noundef 18, ptr noundef null, i32 noundef 3) #10
  br i1 %cmp.not, label %stop_t200.exit.if.end7_crit_edge, label %if.then6

stop_t200.exit.if.end7_crit_edge:                 ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef 4104, i32 noundef 0, ptr noundef null)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %stop_t200.exit.if.end7_crit_edge
  %qlen.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25, i32 1
  %28 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool10.not = icmp eq i32 %29, 0
  br i1 %tobool10.not, label %if.end7.if.end15_crit_edge, label %land.lhs.true

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end7
  %30 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flag.i.i, align 4
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i44 = icmp eq i32 %32, 0
  %33 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vs, align 4
  %35 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %va, align 4
  %sub3.i = sub i32 %34, %36
  %..i = select i1 %tobool.not.i44, i32 7, i32 127
  %rem4.i = and i32 %sub3.i, %..i
  %window.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 14
  %37 = ptrtoint ptr %window.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %window.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem4.i, i32 %38)
  %cmp.i = icmp ult i32 %rem4.i, %38
  br i1 %cmp.i, label %cansend.exit, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

cansend.exit:                                     ; preds = %land.lhs.true
  %39 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flag.i.i, align 4
  %41 = and i32 %40, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool12.not.not = icmp eq i32 %41, 0
  br i1 %tobool12.not.not, label %if.then13, label %cansend.exit.if.end15_crit_edge

cansend.exit.if.end15_crit_edge:                  ; preds = %cansend.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %cansend.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @mISDN_FsmEvent(ptr noundef %fi, i32 noundef 9, ptr noundef null) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %cansend.exit.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_stop_multi(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #10
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  tail call void @mISDN_FsmDelTimer(ptr noundef %t203, i32 noundef 3) #10
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.stop_t200.exit_crit_edge, label %if.then.i

entry.stop_t200.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 4) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %entry.stop_t200.exit_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %arrayidx.i = getelementptr i8, ptr %3, i32 %cond.i.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 16
  %10 = or i8 %9, 99
  tail call fastcc void @send_uframe(ptr noundef %1, ptr noundef %arg, i8 noundef zeroext %10, i8 noundef zeroext 1)
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  %call2 = tail call fastcc i32 @freewin(ptr noundef %1)
  %11 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flag.i, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i15 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i15, label %stop_t200.exit.lapb_dl_release_l2l3.exit_crit_edge, label %if.then.i16

stop_t200.exit.lapb_dl_release_l2l3.exit_crit_edge: ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lapb_dl_release_l2l3.exit

if.then.i16:                                      ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  %next_id.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_id.i.i, align 4
  %inc.i.i = add i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 32767
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 %inc.i.i
  %15 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i.i, ptr %next_id.i.i, align 4
  %shl.i.i = shl i32 %14, 16
  %tei.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %tei.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tei.i.i, align 1
  %conv.i.i = sext i8 %17 to i32
  %shl2.i.i = shl nsw i32 %conv.i.i, 8
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %sapi.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %sapi.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sapi.i.i, align 4
  %conv3.i.i = sext i8 %19 to i32
  %or4.i.i = or i32 %or.i.i, %conv3.i.i
  tail call fastcc void @l2down_create(ptr noundef %1, i32 noundef %or4.i.i) #10
  br label %lapb_dl_release_l2l3.exit

lapb_dl_release_l2l3.exit:                        ; preds = %if.then.i16, %stop_t200.exit.lapb_dl_release_l2l3.exit_crit_edge
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef 4360, i32 noundef 0, ptr noundef null) #10
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tm, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %lapb_dl_release_l2l3.exit.if.end_crit_edge, label %if.then

lapb_dl_release_l2l3.exit.if.end_crit_edge:       ; preds = %lapb_dl_release_l2l3.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lapb_dl_release_l2l3.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7428, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %lapb_dl_release_l2l3.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_mdl_error_ua(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %flag.i.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %cond.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %9 = and i8 %8, 16
  tail call void @consume_skb(ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %ch.i5 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i6 = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i5) #10
  %id.i7 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %id.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i7, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i6, i32 noundef %11, i32 noundef 7940, i32 noundef 67) #13
  %12 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flag.i.i.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %15 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flag.i.i.i, align 4
  %17 = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not.i = icmp eq i32 %17, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end.sink.split_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i.if.end.sink.split_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %call2.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i6, i32 noundef %11, i32 noundef 7940, i32 noundef 68) #13
  %18 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flag.i.i.i, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i10 = icmp eq i32 %20, 0
  br i1 %tobool.not.i10, label %if.else.if.end_crit_edge, label %land.lhs.true.i12

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i12:                                ; preds = %if.else
  %21 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flag.i.i.i, align 4
  %23 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not.i11 = icmp eq i32 %23, 0
  br i1 %tobool6.not.i11, label %land.lhs.true.i12.if.end.sink.split_crit_edge, label %land.lhs.true.i12.if.end_crit_edge

land.lhs.true.i12.if.end_crit_edge:               ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i12.if.end.sink.split_crit_edge:    ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %land.lhs.true.i12.if.end.sink.split_crit_edge, %land.lhs.true.i.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 67, %land.lhs.true.i.if.end.sink.split_crit_edge ], [ 68, %land.lhs.true.i12.if.end.sink.split_crit_edge ]
  %call7.i14 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7940, i32 noundef %.sink) #10
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %land.lhs.true.i12.if.end_crit_edge, %if.else.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_connected(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %flag.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %arrayidx.i = getelementptr i8, ptr %3, i32 %cond.i.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2_mdl_error_ua(ptr noundef %fi, i32 noundef %event, ptr noundef %arg)
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @consume_skb(ptr noundef %arg) #10
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flag.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %userdata, align 4
  %i_queue.i = getelementptr inbounds %struct.layer2, ptr %11, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue.i) #10
  %call.i = tail call fastcc i32 @freewin(ptr noundef %11) #10
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 5) #10
  %rc.i = getelementptr inbounds %struct.layer2, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %rc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rc.i, align 4
  tail call fastcc void @send_uframe(ptr noundef %11, ptr noundef null, i8 noundef zeroext 83, i8 noundef zeroext 0) #10
  %t203.i = getelementptr inbounds %struct.layer2, ptr %11, i32 0, i32 18
  tail call void @mISDN_FsmDelTimer(ptr noundef %t203.i, i32 noundef 1) #10
  %t200.i.i = getelementptr inbounds %struct.layer2, ptr %11, i32 0, i32 17
  %T200.i.i = getelementptr inbounds %struct.layer2, ptr %11, i32 0, i32 19
  %13 = ptrtoint ptr %T200.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %T200.i.i, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %t200.i.i, i32 noundef %14, i32 noundef 17, ptr noundef null, i32 noundef 2) #10
  %flag.i.i57 = getelementptr inbounds %struct.layer2, ptr %11, i32 0, i32 2
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag.i.i57) #10
  tail call void @consume_skb(ptr noundef null) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.else:                                          ; preds = %if.end4
  %vs = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vs, align 4
  %va = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %va, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not = icmp eq i32 %16, %18
  br i1 %cmp.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %cmp15.not = phi i1 [ true, %if.else.if.end11_crit_edge ], [ false, %if.then9 ], [ false, %if.end4.if.end11_crit_edge ]
  %pr.0 = phi i32 [ -1, %if.else.if.end11_crit_edge ], [ 4104, %if.then9 ], [ 20488, %if.end4.if.end11_crit_edge ]
  %call.i58 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i, label %if.end11.stop_t200.exit_crit_edge, label %if.then.i

if.end11.stop_t200.exit_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 5) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %if.end11.stop_t200.exit_crit_edge
  %vr = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %vr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %vr, align 4
  %vs12 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %vs12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %vs12, align 4
  %va13 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %va13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %va13, align 4
  %sow = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %sow to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sow, align 4
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 6) #10
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  %T203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 21
  %23 = ptrtoint ptr %T203 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %T203, align 4
  %call14 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t203, i32 noundef %24, i32 noundef 18, ptr noundef null, i32 noundef 4) #10
  br i1 %cmp15.not, label %stop_t200.exit.if.end17_crit_edge, label %if.then16

stop_t200.exit.if.end17_crit_edge:                ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef %pr.0, i32 noundef 0, ptr noundef null)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %stop_t200.exit.if.end17_crit_edge
  %qlen.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25, i32 1
  %25 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not = icmp eq i32 %26, 0
  br i1 %tobool20.not, label %if.end17.if.end25_crit_edge, label %land.lhs.true

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end17
  %27 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flag.i.i, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i60 = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %vs12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vs12, align 4
  %32 = ptrtoint ptr %va13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %va13, align 4
  %sub3.i = sub i32 %31, %33
  %..i = select i1 %tobool.not.i60, i32 7, i32 127
  %rem4.i = and i32 %sub3.i, %..i
  %window.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 14
  %34 = ptrtoint ptr %window.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %window.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem4.i, i32 %35)
  %cmp.i = icmp ult i32 %rem4.i, %35
  br i1 %cmp.i, label %cansend.exit, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

cansend.exit:                                     ; preds = %land.lhs.true
  %36 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flag.i.i, align 4
  %38 = and i32 %37, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool22.not.not = icmp eq i32 %38, 0
  br i1 %tobool22.not.not, label %if.then23, label %cansend.exit.if.end25_crit_edge

cansend.exit.if.end25_crit_edge:                  ; preds = %cansend.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %cansend.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 @mISDN_FsmEvent(ptr noundef %fi, i32 noundef 9, ptr noundef null) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %cansend.exit.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %39 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tm, align 4
  %tobool26.not = icmp eq ptr %40, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7172, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_released(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %flag.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %arrayidx.i = getelementptr i8, ptr %3, i32 %cond.i.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2_mdl_error_ua(ptr noundef %fi, i32 noundef %event, ptr noundef %arg)
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @consume_skb(ptr noundef %arg) #10
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.stop_t200.exit_crit_edge, label %if.then.i

if.end.stop_t200.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 6) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %if.end.stop_t200.exit_crit_edge
  %10 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flag.i.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i15 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i15, label %stop_t200.exit.lapb_dl_release_l2l3.exit_crit_edge, label %if.then.i16

stop_t200.exit.lapb_dl_release_l2l3.exit_crit_edge: ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lapb_dl_release_l2l3.exit

if.then.i16:                                      ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  %next_id.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %next_id.i.i, align 4
  %inc.i.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 32767
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 %inc.i.i
  %14 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.i.i, ptr %next_id.i.i, align 4
  %shl.i.i = shl i32 %13, 16
  %tei.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %tei.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tei.i.i, align 1
  %conv.i.i = sext i8 %16 to i32
  %shl2.i.i = shl nsw i32 %conv.i.i, 8
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %sapi.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %sapi.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sapi.i.i, align 4
  %conv3.i.i = sext i8 %18 to i32
  %or4.i.i = or i32 %or.i.i, %conv3.i.i
  tail call fastcc void @l2down_create(ptr noundef %1, i32 noundef %or4.i.i) #10
  br label %lapb_dl_release_l2l3.exit

lapb_dl_release_l2l3.exit:                        ; preds = %if.then.i16, %stop_t200.exit.lapb_dl_release_l2l3.exit_crit_edge
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef 20744, i32 noundef 0, ptr noundef null) #10
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #10
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tm, align 4
  %tobool1.not = icmp eq ptr %20, null
  br i1 %tobool1.not, label %lapb_dl_release_l2l3.exit.cleanup_crit_edge, label %if.then2

lapb_dl_release_l2l3.exit.cleanup_crit_edge:      ; preds = %lapb_dl_release_l2l3.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %lapb_dl_release_l2l3.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7428, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %lapb_dl_release_l2l3.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_reestablish(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %flag.i.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %cond.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %9 = and i8 %8, 16
  tail call void @consume_skb(ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @establishlink(ptr noundef %fi)
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flag.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st5_dm_release(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %flag.i.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %cond.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %9 = and i8 %8, 16
  tail call void @consume_skb(ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.stop_t200.exit_crit_edge, label %if.then.i

if.then.stop_t200.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 7) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %if.then.stop_t200.exit_crit_edge
  %10 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flag.i.i.i, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %if.then3, label %stop_t200.exit.if.end_crit_edge

stop_t200.exit.if.end_crit_edge:                  ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  br label %if.end

if.end:                                           ; preds = %if.then3, %stop_t200.exit.if.end_crit_edge
  %13 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flag.i.i.i, align 4
  %and1.i26 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i26)
  %tobool6.not = icmp eq i32 %and1.i26, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %next_id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %next_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %next_id.i, align 4
  %inc.i = add i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %16)
  %cmp.i = icmp eq i32 %16, 32767
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %inc.i
  %17 = ptrtoint ptr %next_id.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %next_id.i, align 4
  %shl.i = shl i32 %16, 16
  %tei.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tei.i, align 1
  %conv.i = sext i8 %19 to i32
  %shl2.i = shl nsw i32 %conv.i, 8
  %or.i = or i32 %shl2.i, %shl.i
  %sapi.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sapi.i, align 4
  %conv3.i = sext i8 %21 to i32
  %or4.i = or i32 %or.i, %conv3.i
  tail call fastcc void @l2down_create(ptr noundef %1, i32 noundef %or4.i)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %call.i28 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flag.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  %..i = select i1 %tobool.not.i29, i32 4360, i32 20744
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef %..i, i32 noundef 0, ptr noundef null) #10
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #10
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tm, align 4
  %tobool11.not = icmp eq ptr %23, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7428, i32 noundef 0) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st6_dm_release(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %flag.i.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %cond.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %9 = and i8 %8, 16
  tail call void @consume_skb(ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.stop_t200.exit_crit_edge, label %if.then.i

if.then.stop_t200.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 8) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %if.then.stop_t200.exit_crit_edge
  %10 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flag.i.i.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i11 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i11, label %stop_t200.exit.lapb_dl_release_l2l3.exit_crit_edge, label %if.then.i12

stop_t200.exit.lapb_dl_release_l2l3.exit_crit_edge: ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lapb_dl_release_l2l3.exit

if.then.i12:                                      ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  %next_id.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %next_id.i.i, align 4
  %inc.i.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 32767
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 %inc.i.i
  %14 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.i.i, ptr %next_id.i.i, align 4
  %shl.i.i = shl i32 %13, 16
  %tei.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %tei.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tei.i.i, align 1
  %conv.i.i = sext i8 %16 to i32
  %shl2.i.i = shl nsw i32 %conv.i.i, 8
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %sapi.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %sapi.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sapi.i.i, align 4
  %conv3.i.i = sext i8 %18 to i32
  %or4.i.i = or i32 %or.i.i, %conv3.i.i
  tail call fastcc void @l2down_create(ptr noundef %1, i32 noundef %or4.i.i) #10
  br label %lapb_dl_release_l2l3.exit

lapb_dl_release_l2l3.exit:                        ; preds = %if.then.i12, %stop_t200.exit.lapb_dl_release_l2l3.exit_crit_edge
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef 20744, i32 noundef 0, ptr noundef null) #10
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #10
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tm, align 4
  %tobool1.not = icmp eq ptr %20, null
  br i1 %tobool1.not, label %lapb_dl_release_l2l3.exit.if.end4_crit_edge, label %if.then2

lapb_dl_release_l2l3.exit.if.end4_crit_edge:      ; preds = %lapb_dl_release_l2l3.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %lapb_dl_release_l2l3.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7428, i32 noundef 0) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %lapb_dl_release_l2l3.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_mdl_error_dm(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %flag.i.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %cond.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %9 = and i8 %8, 16
  tail call void @consume_skb(ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %ch.i8 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i9 = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i8) #10
  %id.i10 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %id.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i10, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i9, i32 noundef %11, i32 noundef 7940, i32 noundef 66) #13
  %12 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flag.i.i.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flag.i.i.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call2.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i9, i32 noundef %11, i32 noundef 7940, i32 noundef 69) #13
  %17 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flag.i.i.i, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i13 = icmp eq i32 %19, 0
  br i1 %tobool.not.i13, label %if.else.l2mgr.exit17_crit_edge, label %land.lhs.true.i15

if.else.l2mgr.exit17_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit17

land.lhs.true.i15:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flag.i.i.i, align 4
  br label %l2mgr.exit17

l2mgr.exit17:                                     ; preds = %land.lhs.true.i15, %if.else.l2mgr.exit17_crit_edge
  tail call fastcc void @establishlink(ptr noundef %fi)
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %l2mgr.exit17, %land.lhs.true.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st8_mdl_error_dm(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %flag.i.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %cond.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %9 = and i8 %8, 16
  tail call void @consume_skb(ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %ch.i8 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i9 = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i8) #10
  %id.i10 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %id.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i10, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i9, i32 noundef %11, i32 noundef 7940, i32 noundef 66) #13
  %12 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flag.i.i.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  %call2.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i9, i32 noundef %11, i32 noundef 7940, i32 noundef 69) #13
  %15 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flag.i.i.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i13 = icmp eq i32 %17, 0
  br i1 %tobool.not.i13, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %18 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flag.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call fastcc void @establishlink(ptr noundef %fi)
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag.i.i.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_got_ui(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = load volatile i32, ptr %flag.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  %add.i = select i1 %tobool4.not.i, i32 2, i32 3
  %call1 = tail call ptr @skb_pull(ptr noundef %arg, i32 noundef %add.i) #10
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tm, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7684, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %up.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %up.i, align 4
  %tobool.not.i7 = icmp eq ptr %9, null
  br i1 %tobool.not.i7, label %if.end.l2up.exit_crit_edge, label %if.end.i

if.end.l2up.exit_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2up.exit

if.end.i:                                         ; preds = %if.end
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12552, ptr %cb.i, align 8
  %nr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr.i, align 4
  %shl.i = shl i32 %12, 16
  %addr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 4
  %or.i = or i32 %shl.i, %14
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %id.i, align 4
  %16 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %up.i, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %send.i, align 4
  %call.i = tail call i32 %19(ptr noundef %17, ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end.i.l2up.exit_crit_edge, label %do.end.i

if.end.i.l2up.exit_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2up.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call10.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.78, ptr noundef %call10.i, i32 noundef %call.i) #13
  tail call void @consume_skb(ptr noundef %arg) #10
  br label %l2up.exit

l2up.exit:                                        ; preds = %do.end.i, %if.end.i.l2up.exit_crit_edge, %if.end.l2up.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_got_FRMR(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %add = select i1 %tobool.not.i, i32 2, i32 3
  %call1 = tail call ptr @skb_pull(ptr noundef %arg, i32 noundef %add) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5)
  %cmp = icmp eq i32 %and5, 1
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false7

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false7:                                   ; preds = %entry
  %9 = and i8 %8, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %9)
  %cmp.i.not = icmp eq i8 %9, 99
  br i1 %cmp.i.not, label %land.lhs.true, label %lor.lhs.false7.if.end_crit_edge

lor.lhs.false7.if.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %state = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 1
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp11 = icmp eq i32 %11, 6
  br i1 %cmp11, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i, i32 noundef %13, i32 noundef 7940, i32 noundef 75) #13
  %14 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flag.i, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i24 = icmp eq i32 %16, 0
  br i1 %tobool.not.i24, label %if.then.l2mgr.exit_crit_edge, label %land.lhs.true.i

if.then.l2mgr.exit_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flag.i, align 4
  br label %l2mgr.exit

l2mgr.exit:                                       ; preds = %land.lhs.true.i, %if.then.l2mgr.exit_crit_edge
  tail call fastcc void @establishlink(ptr noundef %fi)
  %call14 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag.i) #10
  br label %if.end

if.end:                                           ; preds = %l2mgr.exit, %land.lhs.true.if.end_crit_edge, %lor.lhs.false7.if.end_crit_edge
  tail call void @consume_skb(ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st7_got_super(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 2
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flag, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %.lobit = lshr exact i8 %6, 1
  %10 = xor i8 %.lobit, 1
  %rsp.0.in = select i1 %tobool.not, i8 %6, i8 %10
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flag, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %call3 = tail call ptr @skb_pull(ptr noundef %arg, i32 noundef %cond.i) #10
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flag, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i137 = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %15, align 1
  %21 = and i8 %20, 15
  %cond.in.in.i = select i1 %tobool.not.i137, i8 %21, i8 %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %cond.in.in.i)
  %cond.in.i.not = icmp eq i8 %cond.in.in.i, 5
  br i1 %cond.in.i.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %entry
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %flag) #10
  %qlen.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25, i32 1
  %22 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i140 = icmp eq i32 %23, 0
  br i1 %tobool.not.i140, label %lor.lhs.false.i, label %if.then7.if.then.i_crit_edge

if.then7.if.then.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then7
  %qlen.i9.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26, i32 1
  %24 = ptrtoint ptr %qlen.i9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end8_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then7.if.then.i_crit_edge
  %call5.i = tail call i32 @_test_and_set_bit(i32 noundef 16, ptr noundef %flag) #10
  br label %if.end8

if.else:                                          ; preds = %entry
  %call.i142 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %if.else.if.end8_crit_edge, label %if.then.i144

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.i144:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %flag) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then.i144, %if.else.if.end8_crit_edge, %if.then.i, %lor.lhs.false.i.if.end8_crit_edge
  %typ.0 = phi i32 [ 5, %lor.lhs.false.i.if.end8_crit_edge ], [ 5, %if.then.i ], [ 1, %if.else.if.end8_crit_edge ], [ 1, %if.then.i144 ]
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flag, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i146 = icmp eq i32 %30, 0
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %27, align 1
  %33 = and i8 %32, 15
  %cond.in.in.i147 = select i1 %tobool.not.i146, i8 %33, i8 %32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %cond.in.in.i147)
  %cond.in.i148.not = icmp eq i8 %cond.in.in.i147, 9
  %spec.select = select i1 %cond.in.i148.not, i32 9, i32 %typ.0
  %34 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flag, align 4
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool16.not = icmp eq i32 %36, 0
  br i1 %tobool16.not, label %if.else25, label %if.then17

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %27, i32 1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %conv19 = zext i8 %38 to i32
  %and20 = and i32 %conv19, 1
  %39 = lshr i32 %conv19, 1
  br label %if.end35

if.else25:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %conv28 = zext i8 %32 to i32
  %and29 = and i32 %conv28, 16
  %40 = lshr i32 %conv28, 5
  br label %if.end35

if.end35:                                         ; preds = %if.else25, %if.then17
  %PollFlag.0 = phi i32 [ %and20, %if.then17 ], [ %and29, %if.else25 ]
  %nr.0 = phi i32 [ %39, %if.then17 ], [ %40, %if.else25 ]
  tail call void @consume_skb(ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %PollFlag.0)
  %tobool36.not = icmp eq i32 %PollFlag.0, 0
  br i1 %tobool36.not, label %if.end35.if.end43_crit_edge, label %if.then37

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rsp.0.in)
  %tobool38.not = icmp eq i8 %rsp.0.in, 0
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.then37
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i150 = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id.i, align 4
  %call2.i151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i150, i32 noundef %42, i32 noundef 7940, i32 noundef 65) #13
  %43 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flag, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i153 = icmp eq i32 %45, 0
  br i1 %tobool.not.i153, label %if.then39.if.end43_crit_edge, label %land.lhs.true.i

if.then39.if.end43_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true.i:                                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flag, align 4
  br label %if.end43

if.else41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flag, align 4
  %50 = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i156 = icmp eq i32 %50, 0
  %..i = select i1 %tobool.not.i156, i8 1, i8 5
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext %..i, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call2.i157 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #10
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %land.lhs.true.i, %if.then39.if.end43_crit_edge, %if.end35.if.end43_crit_edge
  %51 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flag, align 4
  %53 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i159 = icmp eq i32 %53, 0
  %va4.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %va4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %va4.i, align 4
  %sub5.i = sub i32 %nr.0, %55
  %..i160 = select i1 %tobool.not.i159, i32 7, i32 127
  %rem6.i = and i32 %..i160, %sub5.i
  %vs7.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 10
  %56 = ptrtoint ptr %vs7.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vs7.i, align 4
  %sub9.i = sub i32 %57, %55
  %rem10.i = and i32 %sub9.i, %..i160
  call void @__sanitizer_cov_trace_cmp4(i32 %rem6.i, i32 %rem10.i)
  %cmp11.i.not = icmp ugt i32 %rem6.i, %rem10.i
  br i1 %cmp11.i.not, label %if.else84, label %if.then46

if.then46:                                        ; preds = %if.end43
  br i1 %cond.in.i148.not, label %if.then49, label %if.else54

if.then49:                                        ; preds = %if.then46
  tail call fastcc void @setva(ptr noundef %1, i32 noundef %nr.0)
  tail call fastcc void @invoke_retransmission(ptr noundef %1, i32 noundef %nr.0)
  %call.i162 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i163 = icmp eq i32 %call.i162, 0
  br i1 %tobool.not.i163, label %if.then49.stop_t200.exit_crit_edge, label %if.then.i164

if.then49.stop_t200.exit_crit_edge:               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i164:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 10) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i164, %if.then49.stop_t200.exit_crit_edge
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  %T203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 21
  %58 = ptrtoint ptr %T203 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %T203, align 4
  %call50 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t203, i32 noundef %59, i32 noundef 18, ptr noundef null, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %stop_t200.exit.if.end85_crit_edge, label %if.then52

stop_t200.exit.if.end85_crit_edge:                ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then52:                                        ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  %l2m = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 16
  tail call void (ptr, ptr, ...) @l2m_debug(ptr noundef %l2m, ptr noundef nonnull @.str.81)
  br label %if.end85

if.else54:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0, i32 %57)
  %cmp55 = icmp eq i32 %nr.0, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp57 = icmp eq i32 %spec.select, 1
  %or.cond = select i1 %cmp55, i1 %cmp57, i1 false
  br i1 %or.cond, label %if.then59, label %if.else62

if.then59:                                        ; preds = %if.else54
  tail call fastcc void @setva(ptr noundef %1, i32 noundef %nr.0)
  %call.i166 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool.not.i167 = icmp eq i32 %call.i166, 0
  br i1 %tobool.not.i167, label %if.then59.stop_t200.exit170_crit_edge, label %if.then.i169

if.then59.stop_t200.exit170_crit_edge:            ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit170

if.then.i169:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i168 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i168, i32 noundef 11) #10
  br label %stop_t200.exit170

stop_t200.exit170:                                ; preds = %if.then.i169, %if.then59.stop_t200.exit170_crit_edge
  %t20360 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  %T20361 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 21
  %60 = ptrtoint ptr %T20361 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %T20361, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %t20360, i32 noundef %61, i32 noundef 18, ptr noundef null, i32 noundef 7) #10
  br label %if.end75

if.else62:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0, i32 %55)
  %cmp63.not = icmp ne i32 %nr.0, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select)
  %cmp65 = icmp eq i32 %spec.select, 5
  %or.cond132 = select i1 %cmp63.not, i1 true, i1 %cmp65
  br i1 %or.cond132, label %if.then67, label %if.else62.if.end75_crit_edge

if.else62.if.end75_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then67:                                        ; preds = %if.else62
  tail call fastcc void @setva(ptr noundef %1, i32 noundef %nr.0)
  br i1 %cmp57, label %if.then67.if.end72_crit_edge, label %if.then70

if.then67.if.end72_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then70:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  %t20371 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  tail call void @mISDN_FsmDelTimer(ptr noundef %t20371, i32 noundef 9) #10
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.then67.if.end72_crit_edge
  %t200.i171 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %62 = ptrtoint ptr %T200.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %T200.i, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %t200.i171, i32 noundef %63, i32 noundef 17, ptr noundef null, i32 noundef 12) #10
  %call.i173 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag) #10
  br label %if.end75

if.end75:                                         ; preds = %if.end72, %if.else62.if.end75_crit_edge, %stop_t200.exit170
  %qlen.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25, i32 1
  %64 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool77.not = icmp ne i32 %65, 0
  %or.cond133 = select i1 %tobool77.not, i1 %cmp57, i1 false
  br i1 %or.cond133, label %if.then81, label %if.end75.if.end85_crit_edge

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %call82 = tail call i32 @mISDN_FsmEvent(ptr noundef %fi, i32 noundef 9, ptr noundef null) #10
  br label %if.end85

if.else84:                                        ; preds = %if.end43
  %66 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %userdata, align 4
  %ch.i.i = getelementptr inbounds %struct.layer2, ptr %67, i32 0, i32 1
  %call.i.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i.i) #10
  %id.i.i = getelementptr inbounds %struct.layer2, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id.i.i, align 4
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i.i, i32 noundef %69, i32 noundef 7940, i32 noundef 74) #13
  %flag.i.i = getelementptr inbounds %struct.layer2, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flag.i.i, align 4
  %72 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i, label %if.else84.nrerrorrecovery.exit_crit_edge, label %land.lhs.true.i.i

if.else84.nrerrorrecovery.exit_crit_edge:         ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  br label %nrerrorrecovery.exit

land.lhs.true.i.i:                                ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flag.i.i, align 4
  br label %nrerrorrecovery.exit

nrerrorrecovery.exit:                             ; preds = %land.lhs.true.i.i, %if.else84.nrerrorrecovery.exit_crit_edge
  tail call fastcc void @establishlink(ptr noundef %fi) #10
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag.i.i) #10
  br label %if.end85

if.end85:                                         ; preds = %nrerrorrecovery.exit, %if.then81, %if.end75.if.end85_crit_edge, %if.then52, %stop_t200.exit.if.end85_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st8_got_super(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 2
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flag, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %.lobit = lshr exact i8 %6, 1
  %10 = xor i8 %.lobit, 1
  %rsp.0.in = select i1 %tobool.not, i8 %6, i8 %10
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flag, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %call3 = tail call ptr @skb_pull(ptr noundef %arg, i32 noundef %cond.i) #10
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flag, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i103 = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %15, align 1
  %21 = and i8 %20, 15
  %cond.in.in.i = select i1 %tobool.not.i103, i8 %21, i8 %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %cond.in.in.i)
  %cond.in.i.not = icmp eq i8 %cond.in.in.i, 5
  br i1 %cond.in.i.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %entry
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %flag) #10
  %qlen.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25, i32 1
  %22 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i106 = icmp eq i32 %23, 0
  br i1 %tobool.not.i106, label %lor.lhs.false.i, label %if.then7.if.then.i_crit_edge

if.then7.if.then.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then7
  %qlen.i9.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26, i32 1
  %24 = ptrtoint ptr %qlen.i9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end8_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then7.if.then.i_crit_edge
  %call5.i = tail call i32 @_test_and_set_bit(i32 noundef 16, ptr noundef %flag) #10
  br label %if.end8

if.else:                                          ; preds = %entry
  %call.i108 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool.not.i109 = icmp eq i32 %call.i108, 0
  br i1 %tobool.not.i109, label %if.else.if.end8_crit_edge, label %if.then.i110

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.i110:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %flag) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then.i110, %if.else.if.end8_crit_edge, %if.then.i, %lor.lhs.false.i.if.end8_crit_edge
  %26 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flag, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool11.not = icmp eq i32 %28, 0
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  br i1 %tobool11.not, label %if.else20, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %30, i32 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %32 to i32
  %and15 = and i32 %conv14, 1
  %33 = lshr i32 %conv14, 1
  br label %if.end30

if.else20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %30, align 1
  %conv23 = zext i8 %35 to i32
  %and24 = and i32 %conv23, 16
  %36 = lshr i32 %conv23, 5
  br label %if.end30

if.end30:                                         ; preds = %if.else20, %if.then12
  %PollFlag.0 = phi i32 [ %and15, %if.then12 ], [ %and24, %if.else20 ]
  %nr.0 = phi i32 [ %33, %if.then12 ], [ %36, %if.else20 ]
  tail call void @consume_skb(ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rsp.0.in)
  %tobool31.not = icmp eq i8 %rsp.0.in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %PollFlag.0)
  %tobool32.not = icmp eq i32 %PollFlag.0, 0
  %or.cond = select i1 %tobool31.not, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %if.else52, label %if.then33

if.then33:                                        ; preds = %if.end30
  %37 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flag, align 4
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i112 = icmp eq i32 %39, 0
  %va4.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 11
  %40 = ptrtoint ptr %va4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %va4.i, align 4
  %sub5.i = sub i32 %nr.0, %41
  %..i = select i1 %tobool.not.i112, i32 7, i32 127
  %rem6.i = and i32 %..i, %sub5.i
  %vs7.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %vs7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vs7.i, align 4
  %sub9.i = sub i32 %43, %41
  %rem10.i = and i32 %sub9.i, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem6.i, i32 %rem10.i)
  %cmp11.i.not = icmp ugt i32 %rem6.i, %rem10.i
  br i1 %cmp11.i.not, label %if.else50, label %if.then36

if.then36:                                        ; preds = %if.then33
  br i1 %cond.in.i.not, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %44 = ptrtoint ptr %T200.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %T200.i, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %t200.i, i32 noundef %45, i32 noundef 17, ptr noundef null, i32 noundef 15) #10
  %call.i114 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag) #10
  br label %if.end41

if.else39:                                        ; preds = %if.then36
  %call.i116 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool.not.i117 = icmp eq i32 %call.i116, 0
  br i1 %tobool.not.i117, label %if.else39.stop_t200.exit_crit_edge, label %if.then.i119

if.else39.stop_t200.exit_crit_edge:               ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i119:                                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i118 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i118, i32 noundef 16) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i119, %if.else39.stop_t200.exit_crit_edge
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  %T203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 21
  %46 = ptrtoint ptr %T203 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %T203, align 4
  %call40 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t203, i32 noundef %47, i32 noundef 18, ptr noundef null, i32 noundef 5) #10
  tail call fastcc void @setva(ptr noundef %1, i32 noundef %nr.0)
  br label %if.end41

if.end41:                                         ; preds = %stop_t200.exit, %if.then38
  tail call fastcc void @invoke_retransmission(ptr noundef %1, i32 noundef %nr.0)
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 6) #10
  %qlen.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25, i32 1
  %48 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool43.not = icmp eq i32 %49, 0
  br i1 %tobool43.not, label %if.end41.if.end63_crit_edge, label %land.lhs.true44

if.end41.if.end63_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

land.lhs.true44:                                  ; preds = %if.end41
  %50 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flag, align 4
  %52 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i121 = icmp eq i32 %52, 0
  %53 = ptrtoint ptr %vs7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vs7.i, align 4
  %55 = ptrtoint ptr %va4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %va4.i, align 4
  %sub3.i = sub i32 %54, %56
  %..i122 = select i1 %tobool.not.i121, i32 7, i32 127
  %rem4.i = and i32 %sub3.i, %..i122
  %window.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 14
  %57 = ptrtoint ptr %window.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %window.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem4.i, i32 %58)
  %cmp.i = icmp ult i32 %rem4.i, %58
  br i1 %cmp.i, label %cansend.exit, label %land.lhs.true44.if.end63_crit_edge

land.lhs.true44.if.end63_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

cansend.exit:                                     ; preds = %land.lhs.true44
  %59 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flag, align 4
  %61 = and i32 %60, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool46.not.not = icmp eq i32 %61, 0
  br i1 %tobool46.not.not, label %if.then47, label %cansend.exit.if.end63_crit_edge

cansend.exit.if.end63_crit_edge:                  ; preds = %cansend.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then47:                                        ; preds = %cansend.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call i32 @mISDN_FsmEvent(ptr noundef %fi, i32 noundef 9, ptr noundef null) #10
  br label %if.end63

if.else50:                                        ; preds = %if.then33
  %62 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %userdata, align 4
  %ch.i.i = getelementptr inbounds %struct.layer2, ptr %63, i32 0, i32 1
  %call.i.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i.i) #10
  %id.i.i = getelementptr inbounds %struct.layer2, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id.i.i, align 4
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i.i, i32 noundef %65, i32 noundef 7940, i32 noundef 74) #13
  %flag.i.i = getelementptr inbounds %struct.layer2, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flag.i.i, align 4
  %68 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i.i, label %if.else50.nrerrorrecovery.exit_crit_edge, label %land.lhs.true.i.i

if.else50.nrerrorrecovery.exit_crit_edge:         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  br label %nrerrorrecovery.exit

land.lhs.true.i.i:                                ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flag.i.i, align 4
  br label %nrerrorrecovery.exit

nrerrorrecovery.exit:                             ; preds = %land.lhs.true.i.i, %if.else50.nrerrorrecovery.exit_crit_edge
  tail call fastcc void @establishlink(ptr noundef %fi) #10
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag.i.i) #10
  br label %if.end63

if.else52:                                        ; preds = %if.end30
  %tobool31.not.not = xor i1 %tobool31.not, true
  %or.cond99 = select i1 %tobool31.not.not, i1 true, i1 %tobool32.not
  br i1 %or.cond99, label %if.else52.if.end57_crit_edge, label %if.then56

if.else52.if.end57_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then56:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flag, align 4
  %73 = and i32 %72, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i124 = icmp eq i32 %73, 0
  %..i125 = select i1 %tobool.not.i124, i8 1, i8 5
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext %..i125, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call2.i126 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #10
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.else52.if.end57_crit_edge
  %74 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flag, align 4
  %76 = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i128 = icmp eq i32 %76, 0
  %va4.i129 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 11
  %77 = ptrtoint ptr %va4.i129 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %va4.i129, align 4
  %sub5.i130 = sub i32 %nr.0, %78
  %..i131 = select i1 %tobool.not.i128, i32 7, i32 127
  %rem6.i132 = and i32 %..i131, %sub5.i130
  %vs7.i133 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 10
  %79 = ptrtoint ptr %vs7.i133 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vs7.i133, align 4
  %sub9.i134 = sub i32 %80, %78
  %rem10.i135 = and i32 %sub9.i134, %..i131
  call void @__sanitizer_cov_trace_cmp4(i32 %rem6.i132, i32 %rem10.i135)
  %cmp11.i136.not = icmp ugt i32 %rem6.i132, %rem10.i135
  br i1 %cmp11.i136.not, label %if.else61, label %if.then60

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @setva(ptr noundef %1, i32 noundef %nr.0)
  br label %if.end63

if.else61:                                        ; preds = %if.end57
  %81 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %userdata, align 4
  %ch.i.i139 = getelementptr inbounds %struct.layer2, ptr %82, i32 0, i32 1
  %call.i.i140 = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i.i139) #10
  %id.i.i141 = getelementptr inbounds %struct.layer2, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %id.i.i141 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id.i.i141, align 4
  %call2.i.i142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i.i140, i32 noundef %84, i32 noundef 7940, i32 noundef 74) #13
  %flag.i.i143 = getelementptr inbounds %struct.layer2, ptr %82, i32 0, i32 2
  %85 = ptrtoint ptr %flag.i.i143 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %flag.i.i143, align 4
  %87 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i144 = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i144, label %if.else61.nrerrorrecovery.exit147_crit_edge, label %land.lhs.true.i.i145

if.else61.nrerrorrecovery.exit147_crit_edge:      ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #12
  br label %nrerrorrecovery.exit147

land.lhs.true.i.i145:                             ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %flag.i.i143 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %flag.i.i143, align 4
  br label %nrerrorrecovery.exit147

nrerrorrecovery.exit147:                          ; preds = %land.lhs.true.i.i145, %if.else61.nrerrorrecovery.exit147_crit_edge
  tail call fastcc void @establishlink(ptr noundef %fi) #10
  %call1.i146 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag.i.i143) #10
  br label %if.end63

if.end63:                                         ; preds = %nrerrorrecovery.exit147, %if.then60, %nrerrorrecovery.exit, %if.then47, %cansend.exit.if.end63_crit_edge, %land.lhs.true44.if.end63_crit_edge, %if.end41.if.end63_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_got_iframe(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %5 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %data12 = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 19
  %8 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data12, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nuw nsw i32 %cond.i, 1
  %arrayidx = getelementptr i8, ptr %9, i32 %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 1
  %arrayidx4 = getelementptr i8, ptr %9, i32 %cond.i
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  %14 = lshr i8 %13, 1
  %15 = zext i8 %14 to i32
  %16 = lshr i32 %conv, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx13 = getelementptr i8, ptr %9, i32 %cond.i
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %18 to i32
  %and15 = and i32 %conv14, 16
  %19 = lshr i32 %conv14, 1
  %and20 = and i32 %19, 7
  %20 = lshr i32 %conv14, 5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %PollFlag.0 = phi i32 [ %and, %if.then ], [ %and15, %if.else ]
  %ns.0 = phi i32 [ %15, %if.then ], [ %and20, %if.else ]
  %nr.0 = phi i32 [ %16, %if.then ], [ %20, %if.else ]
  %21 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flag.i, align 4
  %23 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not = icmp eq i32 %23, 0
  br i1 %tobool28.not, label %if.else33, label %if.then29

if.then29:                                        ; preds = %if.end
  tail call void @consume_skb(ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %PollFlag.0)
  %tobool30.not = icmp eq i32 %PollFlag.0, 0
  br i1 %tobool30.not, label %if.then29.if.end71_crit_edge, label %if.then31

if.then29.if.end71_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flag.i, align 4
  %26 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i172 = icmp eq i32 %26, 0
  %..i = select i1 %tobool.not.i172, i8 1, i8 5
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext %..i, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag.i) #10
  br label %if.end71

if.else33:                                        ; preds = %if.end
  %vr = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %ns.0)
  %cmp34 = icmp eq i32 %28, %ns.0
  br i1 %cmp34, label %if.then36, label %if.else57

if.then36:                                        ; preds = %if.else33
  %inc = add nuw nsw i32 %ns.0, 1
  %29 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flag.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool40.not = icmp eq i32 %31, 0
  %storemerge.v = select i1 %tobool40.not, i32 7, i32 127
  %storemerge = and i32 %storemerge.v, %inc
  %32 = ptrtoint ptr %vr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %vr, align 4
  %call48 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %PollFlag.0)
  %tobool49.not = icmp eq i32 %PollFlag.0, 0
  br i1 %tobool49.not, label %if.else51, label %if.then50

if.then50:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flag.i, align 4
  %35 = and i32 %34, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i174 = icmp eq i32 %35, 0
  %..i175 = select i1 %tobool.not.i174, i8 1, i8 5
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext %..i175, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call2.i176 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag.i) #10
  br label %if.end54

if.else51:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %flag.i) #10
  br label %if.end54

if.end54:                                         ; preds = %if.else51, %if.then50
  %36 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flag.i, align 4
  %38 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i178 = icmp eq i32 %38, 0
  %39 = select i1 %tobool.not.i178, i32 1, i32 2
  %40 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flag.i, align 4
  %42 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool4.not.i = icmp eq i32 %42, 0
  %cond5.i = select i1 %tobool4.not.i, i32 1, i32 2
  %add.i = add nuw nsw i32 %cond5.i, %39
  %call56 = tail call ptr @skb_pull(ptr noundef %arg, i32 noundef %add.i) #10
  %up.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %up.i, align 4
  %tobool.not.i179 = icmp eq ptr %44, null
  br i1 %tobool.not.i179, label %if.end54.if.end71_crit_edge, label %if.end.i

if.end54.if.end71_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.end.i:                                         ; preds = %if.end54
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3
  %45 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 12296, ptr %cb.i, align 8
  %nr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr.i, align 4
  %shl.i = shl i32 %47, 16
  %addr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i, align 4
  %or.i = or i32 %shl.i, %49
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i, ptr %id.i, align 4
  %51 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %up.i, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %send.i, align 4
  %call.i = tail call i32 %54(ptr noundef %52, ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end71_crit_edge, label %do.end.i

if.end.i.if.end71_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call10.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.78, ptr noundef %call10.i, i32 noundef %call.i) #13
  tail call void @consume_skb(ptr noundef %arg) #10
  br label %if.end71

if.else57:                                        ; preds = %if.else33
  tail call void @consume_skb(ptr noundef %arg) #10
  %call59 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.else65, label %if.then61

if.then61:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %PollFlag.0)
  %tobool62.not = icmp eq i32 %PollFlag.0, 0
  br i1 %tobool62.not, label %if.then61.if.end71_crit_edge, label %if.then63

if.then61.if.end71_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then63:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flag.i, align 4
  %57 = and i32 %56, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i181 = icmp eq i32 %57, 0
  %..i182 = select i1 %tobool.not.i181, i8 1, i8 5
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext %..i182, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call2.i183 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag.i) #10
  br label %if.end71

if.else65:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #12
  %conv66 = trunc i32 %PollFlag.0 to i8
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext %conv66)
  %call68 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag.i) #10
  br label %if.end71

if.end71:                                         ; preds = %if.else65, %if.then63, %if.then61.if.end71_crit_edge, %do.end.i, %if.end.i.if.end71_crit_edge, %if.end54.if.end71_crit_edge, %if.then31, %if.then29.if.end71_crit_edge
  %58 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flag.i, align 4
  %60 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i185 = icmp eq i32 %60, 0
  %va4.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 11
  %61 = ptrtoint ptr %va4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %va4.i, align 4
  %sub5.i = sub i32 %nr.0, %62
  %..i186 = select i1 %tobool.not.i185, i32 7, i32 127
  %rem6.i = and i32 %..i186, %sub5.i
  %vs7.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 10
  %63 = ptrtoint ptr %vs7.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vs7.i, align 4
  %sub9.i = sub i32 %64, %62
  %rem10.i = and i32 %sub9.i, %..i186
  call void @__sanitizer_cov_trace_cmp4(i32 %rem6.i, i32 %rem10.i)
  %cmp11.i.not = icmp ugt i32 %rem6.i, %rem10.i
  br i1 %cmp11.i.not, label %if.else91, label %if.then74

if.then74:                                        ; preds = %if.end71
  %65 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flag.i, align 4
  %67 = and i32 %66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool77.not = icmp eq i32 %67, 0
  br i1 %tobool77.not, label %land.lhs.true, label %if.then74.if.end90_crit_edge

if.then74.if.end90_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

land.lhs.true:                                    ; preds = %if.then74
  %state = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 1
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %69)
  %cmp78 = icmp eq i32 %69, 6
  br i1 %cmp78, label %if.then80, label %land.lhs.true.if.end90_crit_edge

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then80:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0, i32 %64)
  %cmp81 = icmp eq i32 %nr.0, %64
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.then80
  %call.i188 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool.not.i189 = icmp eq i32 %call.i188, 0
  br i1 %tobool.not.i189, label %if.then83.stop_t200.exit_crit_edge, label %if.then.i

if.then83.stop_t200.exit_crit_edge:               ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 13) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %if.then83.stop_t200.exit_crit_edge
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  %T203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 21
  %70 = ptrtoint ptr %T203 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %T203, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %t203, i32 noundef %71, i32 noundef 18, ptr noundef null, i32 noundef 7) #10
  br label %if.end90

if.else84:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0, i32 %62)
  %cmp85.not = icmp eq i32 %nr.0, %62
  br i1 %cmp85.not, label %if.else84.if.end90_crit_edge, label %if.then87

if.else84.if.end90_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then87:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i191 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %72 = ptrtoint ptr %T200.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %T200.i, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %t200.i191, i32 noundef %73, i32 noundef 17, ptr noundef null, i32 noundef 14) #10
  %call.i193 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag.i) #10
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.else84.if.end90_crit_edge, %stop_t200.exit, %land.lhs.true.if.end90_crit_edge, %if.then74.if.end90_crit_edge
  tail call fastcc void @setva(ptr noundef %1, i32 noundef %nr.0)
  %qlen.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25, i32 1
  %74 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool94.not = icmp eq i32 %75, 0
  br i1 %tobool94.not, label %if.end90.if.end101_crit_edge, label %land.lhs.true95

if.end90.if.end101_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.else91:                                        ; preds = %if.end71
  %76 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %userdata, align 4
  %ch.i.i = getelementptr inbounds %struct.layer2, ptr %77, i32 0, i32 1
  %call.i.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i.i) #10
  %id.i.i = getelementptr inbounds %struct.layer2, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id.i.i, align 4
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i.i, i32 noundef %79, i32 noundef 7940, i32 noundef 74) #13
  %flag.i.i = getelementptr inbounds %struct.layer2, ptr %77, i32 0, i32 2
  %80 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flag.i.i, align 4
  %82 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i, label %if.else91.nrerrorrecovery.exit_crit_edge, label %land.lhs.true.i.i

if.else91.nrerrorrecovery.exit_crit_edge:         ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #12
  br label %nrerrorrecovery.exit

land.lhs.true.i.i:                                ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %flag.i.i, align 4
  br label %nrerrorrecovery.exit

nrerrorrecovery.exit:                             ; preds = %land.lhs.true.i.i, %if.else91.nrerrorrecovery.exit_crit_edge
  tail call fastcc void @establishlink(ptr noundef %fi) #10
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag.i.i) #10
  br label %cleanup

land.lhs.true95:                                  ; preds = %if.end90
  %state96 = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 1
  %85 = ptrtoint ptr %state96 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %86)
  %cmp97 = icmp eq i32 %86, 6
  br i1 %cmp97, label %if.then99, label %land.lhs.true95.if.end101_crit_edge

land.lhs.true95.if.end101_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then99:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  %call100 = tail call i32 @mISDN_FsmEvent(ptr noundef %fi, i32 noundef 9, ptr noundef null) #10
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %land.lhs.true95.if.end101_crit_edge, %if.end90.if.end101_crit_edge
  %call103 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end101.cleanup_crit_edge, label %if.then105

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.end101.cleanup_crit_edge, %nrerrorrecovery.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_timeout(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end, !prof !212

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ch = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call1 = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %sapi = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sapi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sapi, align 4
  %conv = sext i8 %3 to i32
  %tei = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tei, align 1
  %conv2 = sext i8 %5 to i32
  %nr = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %event)
  %cmp = icmp eq i32 %event, 17
  %cond = select i1 %cmp, ptr @.str.86, ptr @.str.87
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %call1, i32 noundef %conv, i32 noundef %conv2, i32 noundef %7, ptr noundef nonnull %cond) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %11, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %event)
  %cmp6 = icmp eq i32 %event, 17
  %cond8 = select i1 %cmp6, i32 28676, i32 29444
  %12 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %cond8, ptr %cb, align 1
  %nr10 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %nr10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr10, align 4
  %id = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %id, align 1
  %16 = load ptr, ptr @debug, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end.if.end29_crit_edge, label %do.end15

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ch9 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call18 = tail call ptr @mISDNDevName4ch(ptr noundef %ch9) #10
  %sapi19 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %sapi19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sapi19, align 4
  %conv20 = sext i8 %20 to i32
  %tei21 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %tei21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tei21, align 1
  %conv22 = sext i8 %22 to i32
  %23 = ptrtoint ptr %nr10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr10, align 4
  %cond27 = select i1 %cmp6, ptr @.str.86, ptr @.str.87
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %call18, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %24, ptr noundef nonnull %cond27) #13
  br label %if.end29

if.end29:                                         ; preds = %do.end15, %if.end.if.end29_crit_edge
  %st = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %st, align 4
  %tobool31.not = icmp eq ptr %26, null
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.then32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %own = getelementptr inbounds %struct.mISDNstack, ptr %26, i32 0, i32 8
  %recv = getelementptr inbounds %struct.mISDNstack, ptr %26, i32 0, i32 8, i32 8
  %27 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %recv, align 4
  %call38 = tail call i32 %28(ptr noundef %own, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end29.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st5_tout_200(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %t200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %T200 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %T200, align 4
  %call4 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t200, i32 noundef %9, i32 noundef 17, ptr noundef null, i32 noundef 9) #10
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %rc = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc, align 4
  %N200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %N200 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %N200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %if.then5, label %if.else19

if.then5:                                         ; preds = %if.else
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #10
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag) #10
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i, i32 noundef %15, i32 noundef 7940, i32 noundef 71) #13
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flag, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then5.l2mgr.exit_crit_edge, label %land.lhs.true.i

if.then5.l2mgr.exit_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

land.lhs.true.i:                                  ; preds = %if.then5
  %19 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flag, align 4
  %21 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not.i = icmp eq i32 %21, 0
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true.i.l2mgr.exit_crit_edge

land.lhs.true.i.l2mgr.exit_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7940, i32 noundef 71) #10
  br label %l2mgr.exit

l2mgr.exit:                                       ; preds = %if.then.i, %land.lhs.true.i.l2mgr.exit_crit_edge, %if.then5.l2mgr.exit_crit_edge
  %22 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flag, align 4
  %and1.i51 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i51)
  %tobool11.not = icmp eq i32 %and1.i51, 0
  br i1 %tobool11.not, label %l2mgr.exit.if.end_crit_edge, label %if.then12

l2mgr.exit.if.end_crit_edge:                      ; preds = %l2mgr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then12:                                        ; preds = %l2mgr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %next_id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 22
  %24 = ptrtoint ptr %next_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %next_id.i, align 4
  %inc.i = add i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %25)
  %cmp.i = icmp eq i32 %25, 32767
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %inc.i
  %26 = ptrtoint ptr %next_id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select.i, ptr %next_id.i, align 4
  %shl.i = shl i32 %25, 16
  %tei.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tei.i, align 1
  %conv.i = sext i8 %28 to i32
  %shl2.i = shl nsw i32 %conv.i, 8
  %or.i = or i32 %shl2.i, %shl.i
  %sapi.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sapi.i, align 4
  %conv3.i = sext i8 %30 to i32
  %or4.i = or i32 %or.i, %conv3.i
  tail call fastcc void @l2down_create(ptr noundef %1, i32 noundef %or4.i)
  br label %if.end

if.end:                                           ; preds = %if.then12, %l2mgr.exit.if.end_crit_edge
  %call.i55 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  %..i = select i1 %tobool.not.i56, i32 4360, i32 20744
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef %..i, i32 noundef 0, ptr noundef null) #10
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tm, align 4
  %tobool15.not = icmp eq ptr %32, null
  br i1 %tobool15.not, label %if.end.if.end28_crit_edge, label %if.then16

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7428, i32 noundef 0) #10
  br label %if.end28

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %11, 1
  %33 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc, ptr %rc, align 4
  %t20021 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T20022 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %T20022 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %T20022, align 4
  %call23 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t20021, i32 noundef %35, i32 noundef 17, ptr noundef null, i32 noundef 9) #10
  %36 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flag, align 4
  %38 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool26.not = icmp eq i32 %38, 0
  %conv = select i1 %tobool26.not, i8 63, i8 127
  tail call fastcc void @send_uframe(ptr noundef %1, ptr noundef null, i8 noundef zeroext %conv, i8 noundef zeroext 0)
  br label %if.end28

if.end28:                                         ; preds = %if.else19, %if.then16, %if.end.if.end28_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st6_tout_200(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %t200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %T200 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %T200, align 4
  %call4 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t200, i32 noundef %9, i32 noundef 17, ptr noundef null, i32 noundef 9) #10
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %rc = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc, align 4
  %N200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %N200 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %N200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %if.then5, label %if.else12

if.then5:                                         ; preds = %if.else
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #10
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag) #10
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i, i32 noundef %15, i32 noundef 7940, i32 noundef 72) #13
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flag, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then5.l2mgr.exit_crit_edge, label %land.lhs.true.i

if.then5.l2mgr.exit_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

land.lhs.true.i:                                  ; preds = %if.then5
  %19 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flag, align 4
  %21 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not.i = icmp eq i32 %21, 0
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true.i.l2mgr.exit_crit_edge

land.lhs.true.i.l2mgr.exit_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7940, i32 noundef 72) #10
  br label %l2mgr.exit

l2mgr.exit:                                       ; preds = %if.then.i, %land.lhs.true.i.l2mgr.exit_crit_edge, %if.then5.l2mgr.exit_crit_edge
  %22 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flag, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i37 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i37, label %l2mgr.exit.lapb_dl_release_l2l3.exit_crit_edge, label %if.then.i38

l2mgr.exit.lapb_dl_release_l2l3.exit_crit_edge:   ; preds = %l2mgr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lapb_dl_release_l2l3.exit

if.then.i38:                                      ; preds = %l2mgr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %next_id.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 22
  %24 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %next_id.i.i, align 4
  %inc.i.i = add i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 32767
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 %inc.i.i
  %26 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select.i.i, ptr %next_id.i.i, align 4
  %shl.i.i = shl i32 %25, 16
  %tei.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %tei.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tei.i.i, align 1
  %conv.i.i = sext i8 %28 to i32
  %shl2.i.i = shl nsw i32 %conv.i.i, 8
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %sapi.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %sapi.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sapi.i.i, align 4
  %conv3.i.i = sext i8 %30 to i32
  %or4.i.i = or i32 %or.i.i, %conv3.i.i
  tail call fastcc void @l2down_create(ptr noundef %1, i32 noundef %or4.i.i) #10
  br label %lapb_dl_release_l2l3.exit

lapb_dl_release_l2l3.exit:                        ; preds = %if.then.i38, %l2mgr.exit.lapb_dl_release_l2l3.exit_crit_edge
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef 20744, i32 noundef 0, ptr noundef null) #10
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tm, align 4
  %tobool9.not = icmp eq ptr %32, null
  br i1 %tobool9.not, label %lapb_dl_release_l2l3.exit.if.end18_crit_edge, label %if.then10

lapb_dl_release_l2l3.exit.if.end18_crit_edge:     ; preds = %lapb_dl_release_l2l3.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then10:                                        ; preds = %lapb_dl_release_l2l3.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7428, i32 noundef 0) #10
  br label %if.end18

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %11, 1
  %33 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc, ptr %rc, align 4
  %t20014 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T20015 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %T20015 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %T20015, align 4
  %call16 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t20014, i32 noundef %35, i32 noundef 17, ptr noundef null, i32 noundef 9) #10
  tail call fastcc void @send_uframe(ptr noundef %1, ptr noundef null, i8 noundef zeroext 83, i8 noundef zeroext 0)
  br label %if.end18

if.end18:                                         ; preds = %if.else12, %if.then10, %lapb_dl_release_l2l3.exit.if.end18_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st7_tout_200(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %t200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %T200 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %T200, align 4
  %call4 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t200, i32 noundef %9, i32 noundef 17, ptr noundef null, i32 noundef 9) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag) #10
  %rc = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rc, align 4
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 7) #10
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flag, align 4
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %..i = select i1 %tobool.not.i, i8 1, i8 5
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext %..i, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #10
  %t200.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %T200.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %T200.i.i, align 4
  %call.i.i = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t200.i.i, i32 noundef %15, i32 noundef 17, ptr noundef null, i32 noundef 9) #10
  %call1.i.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag) #10
  %16 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rc, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %rc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st8_tout_200(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %t200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %T200 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %T200, align 4
  %call4 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t200, i32 noundef %9, i32 noundef 17, ptr noundef null, i32 noundef 9) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag) #10
  %rc = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc, align 4
  %N200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %N200 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %N200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i, i32 noundef %15, i32 noundef 7940, i32 noundef 73) #13
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flag, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then7.l2mgr.exit_crit_edge, label %land.lhs.true.i

if.then7.l2mgr.exit_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

land.lhs.true.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flag, align 4
  br label %l2mgr.exit

l2mgr.exit:                                       ; preds = %land.lhs.true.i, %if.then7.l2mgr.exit_crit_edge
  tail call fastcc void @establishlink(ptr noundef %fi)
  %call10 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flag, align 4
  %23 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i27 = icmp eq i32 %23, 0
  %..i = select i1 %tobool.not.i27, i8 1, i8 5
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext %..i, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  %call2.i28 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #10
  %t200.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %T200.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %T200.i.i, align 4
  %call.i.i = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t200.i.i, i32 noundef %25, i32 noundef 17, ptr noundef null, i32 noundef 9) #10
  %call1.i.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag) #10
  %26 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rc, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %rc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %l2mgr.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st7_tout_203(ptr noundef %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  %T203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %T203 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %T203, align 4
  %call4 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t203, i32 noundef %9, i32 noundef 18, ptr noundef null, i32 noundef 9) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 7) #10
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flag, align 4
  %12 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %..i = select i1 %tobool.not.i, i8 1, i8 5
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext %..i, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #10
  %t200.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %T200.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %T200.i.i, align 4
  %call.i.i = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t200.i.i, i32 noundef %14, i32 noundef 17, ptr noundef null, i32 noundef 9) #10
  %call1.i.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag) #10
  %rc = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_pull_iqueue(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr nocapture noundef readnone %arg) #6 align 64 {
entry:
  %header = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header) #10
  %2 = getelementptr inbounds [4 x i8], ptr %header, i32 0, i32 1
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %header, align 4
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %vs1.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %vs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vs1.i, align 4
  %va2.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %va2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %va2.i, align 4
  %sub3.i = sub i32 %8, %10
  %..i = select i1 %tobool.not.i, i32 7, i32 127
  %rem4.i = and i32 %sub3.i, %..i
  %window.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %window.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %window.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem4.i, i32 %12)
  %cmp.i = icmp ult i32 %rem4.i, %12
  br i1 %cmp.i, label %cansend.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cansend.exit:                                     ; preds = %entry
  %13 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flag.i, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.not = icmp eq i32 %15, 0
  br i1 %tobool.not.not, label %if.end, label %cansend.exit.cleanup_crit_edge

cansend.exit.cleanup_crit_edge:                   ; preds = %cansend.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cansend.exit
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  %call1 = tail call ptr @skb_dequeue(ptr noundef %i_queue) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flag.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i130 = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flag.i, align 4
  br i1 %tobool.not.i130, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sapi.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sapi.i, align 4
  %shl.i = shl i8 %22, 2
  %23 = lshr i32 %20, 17
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 2
  %or.i = or i8 %shl.i, %25
  %26 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %or.i, ptr %header, align 4
  %tei.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tei.i, align 1
  %shl9.i = shl i8 %28, 1
  %or10.i = or i8 %shl9.i, 1
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or10.i, ptr %2, align 1
  br label %sethdraddr.exit

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %30 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool15.not.i = icmp eq i32 %30, 0
  %addr25.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 7
  %B.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 7, i32 1
  %storemerge.in.i = select i1 %tobool15.not.i, ptr %addr25.i, ptr %B.i
  %31 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1
  %32 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %storemerge.i, ptr %header, align 4
  br label %sethdraddr.exit

sethdraddr.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ 2, %if.then.i ], [ 1, %if.else.i ]
  %33 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flag.i, align 4
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool7.not = icmp eq i32 %35, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sethdraddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %vs1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vs1.i, align 4
  %.tr = trunc i32 %37 to i8
  %conv = shl i8 %.tr, 1
  %inc = add nuw nsw i32 %retval.0.i, 1
  %vr = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vr, align 4
  %.tr126 = trunc i32 %39 to i8
  %conv10 = shl i8 %.tr126, 1
  %arrayidx12 = getelementptr [4 x i8], ptr %header, i32 0, i32 %inc
  %40 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv10, ptr %arrayidx12, align 1
  br label %if.end20

if.else:                                          ; preds = %sethdraddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vr13 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %vr13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vr13, align 4
  %shl14 = shl i32 %42, 5
  %43 = ptrtoint ptr %vs1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vs1.i, align 4
  %shl16 = shl i32 %44, 1
  %or = or i32 %shl16, %shl14
  %conv17 = trunc i32 %or to i8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then8
  %conv.sink = phi i8 [ %conv17, %if.else ], [ %conv, %if.then8 ]
  %i.0.in = phi i32 [ %retval.0.i, %if.else ], [ %inc, %if.then8 ]
  %45 = getelementptr [4 x i8], ptr %header, i32 0, i32 %retval.0.i
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.sink, ptr %45, align 1
  %i.0 = add nuw nsw i32 %i.0.in, 1
  %call21 = tail call ptr @skb_realloc_headroom(ptr noundef nonnull %call1, i32 noundef %i.0) #10
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %ch = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call24 = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %call24, i32 noundef %i.0) #13
  tail call void @skb_queue_head(ptr noundef %i_queue, ptr noundef nonnull %call1) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %47 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flag.i, align 4
  %49 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool30.not = icmp eq i32 %49, 0
  %50 = ptrtoint ptr %vs1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vs1.i, align 4
  %52 = ptrtoint ptr %va2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %va2.i, align 4
  %sub39 = sub i32 %51, %53
  %. = select i1 %tobool30.not, i32 7, i32 127
  %rem40 = and i32 %sub39, %.
  %add42 = add i32 %51, 1
  %rem43 = and i32 %add42, %.
  store i32 %rem43, ptr %vs1.i, align 4
  %sow = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %sow to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sow, align 4
  %add46 = add i32 %55, %rem40
  %56 = ptrtoint ptr %window.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %window.i, align 4
  %rem47 = urem i32 %add46, %57
  %arrayidx48 = getelementptr %struct.layer2, ptr %1, i32 0, i32 24, i32 %rem47
  %58 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %59, null
  br i1 %tobool49.not, label %if.end27.if.end60_crit_edge, label %do.end53

if.end27.if.end60_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.end53:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %ch55 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call56 = tail call ptr @mISDNDevName4ch(ptr noundef %ch55) #10
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %call56, i32 noundef %rem47) #13
  %60 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx48, align 4
  tail call void @consume_skb(ptr noundef %61) #10
  br label %if.end60

if.end60:                                         ; preds = %do.end53, %if.end27.if.end60_crit_edge
  %62 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call1, ptr %arrayidx48, align 4
  %call63 = tail call ptr @skb_push(ptr noundef nonnull %call21, i32 noundef %i.0) #10
  %63 = call ptr @memcpy(ptr %call63, ptr %header, i32 %i.0)
  %next_id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 22
  %64 = ptrtoint ptr %next_id.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %next_id.i, align 4
  %inc.i = add i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %65)
  %cmp.i131 = icmp eq i32 %65, 32767
  %spec.select.i = select i1 %cmp.i131, i32 1, i32 %inc.i
  %66 = ptrtoint ptr %next_id.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select.i, ptr %next_id.i, align 4
  %shl.i132 = shl i32 %65, 16
  %tei.i133 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 6
  %67 = ptrtoint ptr %tei.i133 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tei.i133, align 1
  %conv.i = sext i8 %68 to i32
  %shl2.i = shl nsw i32 %conv.i, 8
  %or.i134 = or i32 %shl2.i, %shl.i132
  %sapi.i135 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 5
  %69 = ptrtoint ptr %sapi.i135 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sapi.i135, align 4
  %conv3.i = sext i8 %70 to i32
  %or4.i = or i32 %or.i134, %conv3.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 3
  %71 = ptrtoint ptr %cb.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 8193, ptr %cb.i, align 1
  %id2.i = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 3, i32 4
  %72 = ptrtoint ptr %id2.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %or4.i, ptr %id2.i, align 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 17, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %down_queue.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 27
  tail call void @skb_queue_tail(ptr noundef %down_queue.i.i, ptr noundef nonnull %call21) #10
  br label %l2down.exit

if.end.i.i:                                       ; preds = %if.end60
  %73 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id2.i, align 4
  %down_id.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 23
  %75 = ptrtoint ptr %down_id.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %down_id.i.i, align 4
  %ch.i.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %recv.i.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 8
  %76 = ptrtoint ptr %recv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %recv.i.i.i, align 4
  %peer.i.i.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 6
  %78 = ptrtoint ptr %peer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %peer.i.i.i, align 4
  %call.i.i.i = tail call i32 %77(ptr noundef %79, ptr noundef nonnull %call21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.l2down.exit_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.l2down.exit_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2down.exit

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %80 = load ptr, ptr @debug, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %and.i.i.i = and i32 %82, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.l2down.exit_crit_edge, label %do.end.i.i.i

land.lhs.true.i.i.i.l2down.exit_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2down.exit

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i.i.i) #10
  %call5.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call4.i.i.i, i32 noundef %call.i.i.i) #13
  br label %l2down.exit

l2down.exit:                                      ; preds = %do.end.i.i.i, %land.lhs.true.i.i.i.l2down.exit_crit_edge, %if.end.i.i.l2down.exit_crit_edge, %if.then1.i.i
  %call68 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag.i) #10
  %call70 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %l2down.exit.cleanup_crit_edge

l2down.exit.cleanup_crit_edge:                    ; preds = %l2down.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %l2down.exit
  call void @__sanitizer_cov_trace_pc() #12
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  tail call void @mISDN_FsmDelTimer(ptr noundef %t203, i32 noundef 13) #10
  %t200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %83 = ptrtoint ptr %T200 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %T200, align 4
  %call73 = tail call i32 @mISDN_FsmAddTimer(ptr noundef %t200, i32 noundef %84, i32 noundef 17, ptr noundef null, i32 noundef 11) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %l2down.exit.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %cansend.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_set_own_busy(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @consume_skb(ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_clear_own_busy(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @enquiry_cr(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @consume_skb(ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_frame_error(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %2 = ptrtoint ptr %arg to i32
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %conv1.i = and i32 %2, 255
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i, i32 noundef %4, i32 noundef 7940, i32 noundef %conv1.i) #13
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag.i, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.l2mgr.exit_crit_edge, label %land.lhs.true.i

entry.l2mgr.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

land.lhs.true.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flag.i, align 4
  %10 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not.i = icmp eq i32 %10, 0
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true.i.l2mgr.exit_crit_edge

land.lhs.true.i.l2mgr.exit_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %11 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %2, label %if.then.i.l2mgr.exit_crit_edge [
    i32 67, label %if.then.i.sw.bb.i_crit_edge
    i32 68, label %if.then.i.sw.bb.i_crit_edge1
    i32 71, label %if.then.i.sw.bb.i_crit_edge2
    i32 72, label %if.then.i.sw.bb.i_crit_edge3
  ]

if.then.i.sw.bb.i_crit_edge3:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge2:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge1:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.l2mgr.exit_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge1, %if.then.i.sw.bb.i_crit_edge2, %if.then.i.sw.bb.i_crit_edge3
  %call7.i = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7940, i32 noundef %2) #10
  br label %l2mgr.exit

l2mgr.exit:                                       ; preds = %sw.bb.i, %if.then.i.l2mgr.exit_crit_edge, %land.lhs.true.i.l2mgr.exit_crit_edge, %entry.l2mgr.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_frame_error_reest(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %2 = ptrtoint ptr %arg to i32
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %id.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %conv1.i = and i32 %2, 255
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %call.i, i32 noundef %4, i32 noundef 7940, i32 noundef %conv1.i) #13
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag.i, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.l2mgr.exit_crit_edge, label %land.lhs.true.i

entry.l2mgr.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

land.lhs.true.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flag.i, align 4
  %10 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not.i = icmp eq i32 %10, 0
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true.i.l2mgr.exit_crit_edge

land.lhs.true.i.l2mgr.exit_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %11 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %2, label %if.then.i.l2mgr.exit_crit_edge [
    i32 67, label %if.then.i.sw.bb.i_crit_edge
    i32 68, label %if.then.i.sw.bb.i_crit_edge4
    i32 71, label %if.then.i.sw.bb.i_crit_edge5
    i32 72, label %if.then.i.sw.bb.i_crit_edge6
  ]

if.then.i.sw.bb.i_crit_edge6:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge5:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge4:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.l2mgr.exit_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2mgr.exit

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge4, %if.then.i.sw.bb.i_crit_edge5, %if.then.i.sw.bb.i_crit_edge6
  %call7.i = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7940, i32 noundef %2) #10
  br label %l2mgr.exit

l2mgr.exit:                                       ; preds = %sw.bb.i, %if.then.i.l2mgr.exit_crit_edge, %land.lhs.true.i.l2mgr.exit_crit_edge, %entry.l2mgr.exit_crit_edge
  tail call fastcc void @establishlink(ptr noundef %fi)
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st14_persistent_da(ptr nocapture noundef readonly %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %ui_queue) #10
  %flag = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end.sink.split_crit_edge, label %if.then

entry.if.end.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then:                                          ; preds = %entry
  %up.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %up.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4360, ptr %cb.i, align 8
  %nr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i, align 4
  %shl.i = shl i32 %6, 16
  %addr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %or.i = or i32 %shl.i, %8
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %id.i, align 4
  %10 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %up.i, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send.i, align 4
  %call.i = tail call i32 %13(ptr noundef %11, ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end_crit_edge, label %do.end.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call10.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.78, ptr noundef %call10.i, i32 noundef %call.i) #13
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %do.end.i, %entry.if.end.sink.split_crit_edge
  tail call void @consume_skb(ptr noundef %arg) #10
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st5_persistent_da(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %ui_queue) #10
  %call = tail call fastcc i32 @freewin(ptr noundef %1)
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.stop_t200.exit_crit_edge, label %if.then.i

entry.stop_t200.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 19) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %entry.stop_t200.exit_crit_edge
  %call.i10 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  %..i = select i1 %tobool.not.i11, i32 4360, i32 20744
  tail call fastcc void @l2up_create(ptr noundef %1, i32 noundef %..i, i32 noundef 0, ptr noundef null) #10
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #10
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %stop_t200.exit.if.end_crit_edge, label %if.then

stop_t200.exit.if.end_crit_edge:                  ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7428, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %stop_t200.exit.if.end_crit_edge
  tail call void @consume_skb(ptr noundef %arg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_st6_persistent_da(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %ui_queue) #10
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.stop_t200.exit_crit_edge, label %if.then.i

entry.stop_t200.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 20) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %entry.stop_t200.exit_crit_edge
  %up.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %up.i, align 4
  %tobool.not.i6 = icmp eq ptr %3, null
  br i1 %tobool.not.i6, label %stop_t200.exit.l2up.exit_crit_edge, label %if.end.i

stop_t200.exit.l2up.exit_crit_edge:               ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2up.exit

if.end.i:                                         ; preds = %stop_t200.exit
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20744, ptr %cb.i, align 8
  %nr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i, align 4
  %shl.i = shl i32 %6, 16
  %addr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %or.i = or i32 %shl.i, %8
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %id.i, align 4
  %10 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %up.i, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send.i, align 4
  %call.i7 = tail call i32 %13(ptr noundef %11, ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool7.not.i = icmp eq i32 %call.i7, 0
  br i1 %tobool7.not.i, label %if.end.i.l2up.exit_crit_edge, label %do.end.i

if.end.i.l2up.exit_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2up.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call10.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.78, ptr noundef %call10.i, i32 noundef %call.i7) #13
  tail call void @consume_skb(ptr noundef %arg) #10
  br label %l2up.exit

l2up.exit:                                        ; preds = %do.end.i, %if.end.i.l2up.exit_crit_edge, %stop_t200.exit.l2up.exit_crit_edge
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #10
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tm, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %l2up.exit.if.end_crit_edge, label %if.then

l2up.exit.if.end_crit_edge:                       ; preds = %l2up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %l2up.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7428, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %l2up.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_persistent_da(ptr noundef %fi, i32 noundef %event, ptr noundef %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %i_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 25
  tail call void @skb_queue_purge(ptr noundef %i_queue) #10
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %ui_queue) #10
  %call = tail call fastcc i32 @freewin(ptr noundef %1)
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.stop_t200.exit_crit_edge, label %if.then.i

entry.stop_t200.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_t200.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  tail call void @mISDN_FsmDelTimer(ptr noundef %t200.i, i32 noundef 19) #10
  br label %stop_t200.exit

stop_t200.exit:                                   ; preds = %if.then.i, %entry.stop_t200.exit_crit_edge
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  tail call void @mISDN_FsmDelTimer(ptr noundef %t203, i32 noundef 19) #10
  %up.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %up.i, align 4
  %tobool.not.i10 = icmp eq ptr %3, null
  br i1 %tobool.not.i10, label %stop_t200.exit.l2up.exit_crit_edge, label %if.end.i

stop_t200.exit.l2up.exit_crit_edge:               ; preds = %stop_t200.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2up.exit

if.end.i:                                         ; preds = %stop_t200.exit
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4360, ptr %cb.i, align 8
  %nr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i, align 4
  %shl.i = shl i32 %6, 16
  %addr.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %or.i = or i32 %shl.i, %8
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %arg, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %id.i, align 4
  %10 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %up.i, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send.i, align 4
  %call.i11 = tail call i32 %13(ptr noundef %11, ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool7.not.i = icmp eq i32 %call.i11, 0
  br i1 %tobool7.not.i, label %if.end.i.l2up.exit_crit_edge, label %do.end.i

if.end.i.l2up.exit_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2up.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ch.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 1
  %call10.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i) #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.78, ptr noundef %call10.i, i32 noundef %call.i11) #13
  tail call void @consume_skb(ptr noundef %arg) #10
  br label %l2up.exit

l2up.exit:                                        ; preds = %do.end.i, %if.end.i.l2up.exit_crit_edge, %stop_t200.exit.l2up.exit_crit_edge
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 3) #10
  %tm = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tm, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %l2up.exit.if.end_crit_edge, label %if.then

l2up.exit.if.end_crit_edge:                       ; preds = %l2up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %l2up.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @l2_tei(ptr noundef %1, i32 noundef 7428, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %l2up.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_FsmChangeState(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2_tei(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @establishlink(ptr noundef %fi) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %userdata = getelementptr inbounds %struct.FsmInst, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userdata, align 4
  %flag.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag.i) #10
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flag.i) #10
  %call4.i = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %flag.i) #10
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.clear_exception.exit_crit_edge, label %if.then.i.i

entry.clear_exception.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clear_exception.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %flag.i) #10
  br label %clear_exception.exit

clear_exception.exit:                             ; preds = %if.then.i.i, %entry.clear_exception.exit_crit_edge
  %rc = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rc, align 4
  %3 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flag.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %conv = select i1 %tobool.not, i8 63, i8 127
  tail call fastcc void @send_uframe(ptr noundef %1, ptr noundef null, i8 noundef zeroext %conv, i8 noundef zeroext 0)
  %t203 = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 18
  tail call void @mISDN_FsmDelTimer(ptr noundef %t203, i32 noundef 1) #10
  %t200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 17
  %T200.i = getelementptr inbounds %struct.layer2, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %T200.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %T200.i, align 4
  tail call void @mISDN_FsmRestartTimer(ptr noundef %t200.i, i32 noundef %7, i32 noundef 17, ptr noundef null, i32 noundef 1) #10
  %call.i13 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flag.i) #10
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flag.i) #10
  %call3 = tail call fastcc i32 @freewin(ptr noundef %1)
  tail call void @mISDN_FsmChangeState(ptr noundef %fi, i32 noundef 4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_uframe(ptr noundef %l2, ptr noundef %skb, i8 noundef zeroext %cmd, i8 noundef zeroext %cr) unnamed_addr #6 align 64 {
entry:
  %tmp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %conv = zext i8 %cr to i32
  %flag.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4
  %1 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flag.i, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = getelementptr inbounds [4 x i8], ptr %tmp, i32 0, i32 1
  %7 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cr)
  %tobool5.not.i = icmp eq i8 %cr, 0
  %lnot.ext.i = zext i1 %tobool5.not.i to i32
  %crbit.0.i = select i1 %tobool3.not.i, i32 %conv, i32 %lnot.ext.i
  %sapi.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 5
  %8 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sapi.i, align 4
  %shl.i = shl i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crbit.0.i)
  %tobool6.not.i = icmp eq i32 %crbit.0.i, 0
  %cond.i = select i1 %tobool6.not.i, i8 0, i8 2
  %or.i = or i8 %shl.i, %cond.i
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or.i, ptr %tmp, align 4
  %tei.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 6
  %11 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tei.i, align 1
  %shl9.i = shl i8 %12, 1
  %or10.i = or i8 %shl9.i, 1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or10.i, ptr %6, align 1
  br label %sethdraddr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cr)
  %tobool17.not.i = icmp eq i8 %cr, 0
  %lnot.ext19.i = zext i1 %tobool17.not.i to i32
  %crbit.1.i = select i1 %tobool15.not.i, i32 %conv, i32 %lnot.ext19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crbit.1.i)
  %tobool21.not.i = icmp eq i32 %crbit.1.i, 0
  %addr25.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 7
  %B.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 7, i32 1
  %storemerge.in.i = select i1 %tobool21.not.i, ptr %addr25.i, ptr %B.i
  %15 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge.i, ptr %tmp, align 4
  br label %sethdraddr.exit

sethdraddr.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ 2, %if.then.i ], [ 1, %if.else.i ]
  %inc = add nuw nsw i32 %retval.0.i, 1
  %arrayidx = getelementptr [4 x i8], ptr %tmp, i32 0, i32 %retval.0.i
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %cmd, ptr %arrayidx, align 1
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sethdraddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_trim(ptr noundef nonnull %skb, i32 noundef 0) #10
  br label %if.end7

if.else:                                          ; preds = %sethdraddr.exit
  %add.i = add nuw nsw i32 %retval.0.i, 9
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i19 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i19, label %do.end, label %mI_alloc_skb.exit, !prof !212

mI_alloc_skb.exit:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %21, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %if.end7

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %ch = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1
  %call5 = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %call5, ptr noundef nonnull @.str.77) #13
  br label %cleanup

if.end7:                                          ; preds = %mI_alloc_skb.exit, %if.then
  %skb.addr.0 = phi ptr [ %skb, %if.then ], [ %call.i.i, %mI_alloc_skb.exit ]
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %skb.addr.0, i32 noundef %inc) #10
  %22 = call ptr @memcpy(ptr %call.i, ptr %tmp, i32 %inc)
  %next_id.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 22
  %23 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_id.i.i, align 4
  %inc.i.i = add i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 32767
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 %inc.i.i
  %25 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select.i.i, ptr %next_id.i.i, align 4
  %shl.i.i = shl i32 %24, 16
  %tei.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 6
  %26 = ptrtoint ptr %tei.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tei.i.i, align 1
  %conv.i.i = sext i8 %27 to i32
  %shl2.i.i = shl nsw i32 %conv.i.i, 8
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %sapi.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 5
  %28 = ptrtoint ptr %sapi.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sapi.i.i, align 4
  %conv3.i.i = sext i8 %29 to i32
  %or4.i.i = or i32 %or.i.i, %conv3.i.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3
  %30 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 8193, ptr %cb.i.i, align 1
  %id2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %or4.i.i, ptr %id2.i.i, align 1
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 17, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then1.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %down_queue.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 27
  tail call void @skb_queue_tail(ptr noundef %down_queue.i.i.i, ptr noundef nonnull %skb.addr.0) #10
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end7
  %32 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id2.i.i, align 4
  %down_id.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 23
  %34 = ptrtoint ptr %down_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %down_id.i.i.i, align 4
  %ch.i.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1
  %recv.i.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1, i32 8
  %35 = ptrtoint ptr %recv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %recv.i.i.i.i, align 4
  %peer.i.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1, i32 6
  %37 = ptrtoint ptr %peer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %peer.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %36(ptr noundef %38, ptr noundef nonnull %skb.addr.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %39 = load ptr, ptr @debug, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and.i.i.i.i = and i32 %41, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then.i21_crit_edge, label %do.end.i.i.i.i

land.lhs.true.i.i.i.i.if.then.i21_crit_edge:      ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i21

do.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i.i.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i.i.i.i) #10
  %call5.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call4.i.i.i.i, i32 noundef %call.i.i.i.i) #13
  br label %if.then.i21

if.then.i21:                                      ; preds = %do.end.i.i.i.i, %land.lhs.true.i.i.i.i.if.then.i21_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %skb.addr.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i21, %if.end.i.i.i.cleanup_crit_edge, %if.then1.i.i.i, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_ui(ptr noundef %l2) unnamed_addr #6 align 64 {
entry:
  %header = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header) #10
  %0 = getelementptr inbounds [4 x i8], ptr %header, i32 0, i32 1
  %flag.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %1 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %header, align 4
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sapi.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 5
  %7 = ptrtoint ptr %sapi.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sapi.i, align 4
  %shl.i = shl i8 %8, 2
  %9 = lshr i32 %6, 17
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 2
  %or.i = or i8 %shl.i, %11
  %12 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or.i, ptr %header, align 4
  %tei.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 6
  %13 = ptrtoint ptr %tei.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tei.i, align 1
  %shl9.i = shl i8 %14, 1
  %or10.i = or i8 %shl9.i, 1
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or10.i, ptr %0, align 1
  br label %sethdraddr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not.i = icmp eq i32 %16, 0
  %addr25.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 7
  %B.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 7, i32 1
  %storemerge.in.i = select i1 %tobool15.not.i, ptr %addr25.i, ptr %B.i
  %17 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1
  %18 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %storemerge.i, ptr %header, align 4
  br label %sethdraddr.exit

sethdraddr.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ 2, %if.then.i ], [ 1, %if.else.i ]
  %19 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flag.i, align 4
  %21 = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %sethdraddr.exit.if.end_crit_edge, label %if.then

sethdraddr.exit.if.end_crit_edge:                 ; preds = %sethdraddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sethdraddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sethdraddr.exit.if.end_crit_edge
  %inc = add nuw nsw i32 %retval.0.i, 1
  %arrayidx2 = getelementptr [4 x i8], ptr %header, i32 0, i32 %retval.0.i
  %23 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %arrayidx2, align 1
  %ui_queue = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 26
  %call315 = tail call ptr @skb_dequeue(ptr noundef %ui_queue) #10
  %tobool4.not16 = icmp eq ptr %call315, null
  br i1 %tobool4.not16, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %tm.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 9
  %next_id.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 22
  %tei.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 6
  %sapi.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 5
  %down_queue.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 27
  %down_id.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 23
  %ch.i.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1
  %recv.i.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1, i32 8
  %peer.i.i.i.i = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1, i32 6
  br label %while.body

while.body:                                       ; preds = %enqueue_ui.exit.while.body_crit_edge, %while.body.lr.ph
  %call317 = phi ptr [ %call315, %while.body.lr.ph ], [ %call3, %enqueue_ui.exit.while.body_crit_edge ]
  %call5 = tail call ptr @skb_push(ptr noundef nonnull %call317, i32 noundef %inc) #10
  %24 = call ptr @memcpy(ptr %call5, ptr %header, i32 %inc)
  %25 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tm.i, align 4
  %tobool.not.i13 = icmp eq ptr %26, null
  br i1 %tobool.not.i13, label %while.body.if.end.i_crit_edge, label %if.then.i14

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i14:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @l2_tei(ptr noundef %l2, i32 noundef 7684, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i14, %while.body.if.end.i_crit_edge
  %27 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %next_id.i.i, align 4
  %inc.i.i = add i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 32767
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 %inc.i.i
  %29 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select.i.i, ptr %next_id.i.i, align 4
  %shl.i.i = shl i32 %28, 16
  %30 = ptrtoint ptr %tei.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tei.i.i, align 1
  %conv.i.i = sext i8 %31 to i32
  %shl2.i.i = shl nsw i32 %conv.i.i, 8
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %32 = ptrtoint ptr %sapi.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sapi.i.i, align 4
  %conv3.i.i = sext i8 %33 to i32
  %or4.i.i = or i32 %or.i.i, %conv3.i.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call317, i32 0, i32 3
  %34 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 8193, ptr %cb.i.i, align 1
  %id2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call317, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %or4.i.i, ptr %id2.i.i, align 1
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 17, ptr noundef %flag.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then1.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_queue_tail(ptr noundef %down_queue.i.i.i, ptr noundef nonnull %call317) #10
  br label %enqueue_ui.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %36 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id2.i.i, align 4
  %38 = ptrtoint ptr %down_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %down_id.i.i.i, align 4
  %39 = ptrtoint ptr %recv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %recv.i.i.i.i, align 4
  %41 = ptrtoint ptr %peer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %peer.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %40(ptr noundef %42, ptr noundef nonnull %call317) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.enqueue_ui.exit_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.i.enqueue_ui.exit_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enqueue_ui.exit

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %43 = load ptr, ptr @debug, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %and.i.i.i.i = and i32 %45, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then4.i_crit_edge, label %do.end.i.i.i.i

land.lhs.true.i.i.i.i.if.then4.i_crit_edge:       ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

do.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i.i.i = tail call ptr @mISDNDevName4ch(ptr noundef %ch.i.i.i.i) #10
  %call5.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call4.i.i.i.i, i32 noundef %call.i.i.i.i) #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %do.end.i.i.i.i, %land.lhs.true.i.i.i.i.if.then4.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call317) #10
  br label %enqueue_ui.exit

enqueue_ui.exit:                                  ; preds = %if.then4.i, %if.end.i.i.i.enqueue_ui.exit_crit_edge, %if.then1.i.i.i
  %call3 = tail call ptr @skb_dequeue(ptr noundef %ui_queue) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %enqueue_ui.exit.while.end_crit_edge, label %enqueue_ui.exit.while.body_crit_edge

enqueue_ui.exit.while.body_crit_edge:             ; preds = %enqueue_ui.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

enqueue_ui.exit.while.end_crit_edge:              ; preds = %enqueue_ui.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %enqueue_ui.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setva(ptr noundef %l2, i32 noundef %nr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 11
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %va, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %nr)
  %cmp.not48 = icmp eq i32 %1, %nr
  br i1 %cmp.not48, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %sow = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 15
  %tmp_queue = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 28
  %window = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %23, %if.end16.while.body_crit_edge ]
  %inc = add i32 %2, 1
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flag, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %storemerge.v = select i1 %tobool.not, i32 7, i32 127
  %storemerge = and i32 %storemerge.v, %inc
  %6 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %va, align 4
  %7 = ptrtoint ptr %sow to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sow, align 4
  %arrayidx = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %while.body.if.end16_crit_edge, label %if.then6

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_trim(ptr noundef nonnull %10, i32 noundef 0) #10
  %11 = ptrtoint ptr %sow to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sow, align 4
  %arrayidx12 = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 %12
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx12, align 4
  tail call void @skb_queue_tail(ptr noundef %tmp_queue, ptr noundef %14) #10
  %15 = ptrtoint ptr %sow to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sow, align 4
  %arrayidx15 = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 %16
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then6, %while.body.if.end16_crit_edge
  %18 = ptrtoint ptr %sow to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sow, align 4
  %add = add i32 %19, 1
  %20 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %window, align 4
  %rem18 = urem i32 %add, %21
  store i32 %rem18, ptr %sow, align 4
  %22 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %va, align 4
  %cmp.not = icmp eq i32 %23, %nr
  br i1 %cmp.not, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %entry.while.end_crit_edge
  %tmp_queue20 = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 28
  %call21 = tail call ptr @skb_dequeue(ptr noundef %tmp_queue20) #10
  %tobool23.not49 = icmp eq ptr %call21, null
  br i1 %tobool23.not49, label %while.end.while.end27_crit_edge, label %while.end.while.body24_crit_edge

while.end.while.body24_crit_edge:                 ; preds = %while.end
  br label %while.body24

while.end.while.end27_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end27

while.body24:                                     ; preds = %while.body24.while.body24_crit_edge, %while.end.while.body24_crit_edge
  %skb.050 = phi ptr [ %call26, %while.body24.while.body24_crit_edge ], [ %call21, %while.end.while.body24_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %skb.050) #10
  %call26 = tail call ptr @skb_dequeue(ptr noundef %tmp_queue20) #10
  %tobool23.not = icmp eq ptr %call26, null
  br i1 %tobool23.not, label %while.body24.while.end27_crit_edge, label %while.body24.while.body24_crit_edge

while.body24.while.body24_crit_edge:              ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body24

while.body24.while.end27_crit_edge:               ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end27

while.end27:                                      ; preds = %while.body24.while.end27_crit_edge, %while.end.while.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @invoke_retransmission(ptr noundef %l2, i32 noundef %nr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vs = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 10
  %0 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %nr)
  %cmp.not = icmp eq i32 %1, %nr
  br i1 %cmp.not, label %entry.if.end26_crit_edge, label %while.cond.preheader

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

while.cond.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nr)
  %cmp2.not50 = icmp eq i32 %3, %nr
  br i1 %cmp2.not50, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %flag = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 2
  %va = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 11
  %sow = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 15
  %window = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 14
  %i_queue = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 25
  %ch = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %3, %while.body.lr.ph ], [ %19, %if.end22.while.body_crit_edge ]
  %dec = add i32 %4, -1
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %. = select i1 %tobool.not, i32 7, i32 127
  %rem9 = and i32 %dec, %.
  %8 = ptrtoint ptr %vs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rem9, ptr %vs, align 4
  %9 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %va, align 4
  %sub12 = sub i32 %dec, %10
  %rem13 = and i32 %sub12, %.
  %11 = ptrtoint ptr %sow to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sow, align 4
  %add = add i32 %12, %rem13
  %13 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %window, align 4
  %rem14 = urem i32 %add, %14
  %arrayidx = getelementptr %struct.layer2, ptr %l2, i32 0, i32 24, i32 %rem14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %do.end, label %if.then16

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_queue_head(ptr noundef %i_queue, ptr noundef nonnull %16) #10
  br label %if.end22

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call ptr @mISDNDevName4ch(ptr noundef %ch) #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %call20, i32 noundef %rem14) #13
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vs, align 4
  %cmp2.not = icmp eq i32 %19, %nr
  br i1 %cmp2.not, label %if.end22.while.end_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %l2m = getelementptr inbounds %struct.layer2, ptr %l2, i32 0, i32 16
  %call25 = tail call i32 @mISDN_FsmEvent(ptr noundef %l2m, i32 noundef 9, ptr noundef null) #10
  br label %if.end26

if.end26:                                         ; preds = %while.end, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #3

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { argmemonly inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !85, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !180, !181, !182, !183, !185, !186, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/layer2.c", i32 2039, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tei_l2._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tei_l2._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/layer2.c", i32 2053, i32 3}
!8 = !{ptr @tei_l2._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @tei_l2._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/isdn/mISDN/layer2.c", i32 2116, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @create_l2._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @create_l2._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/isdn/mISDN/layer2.c", i32 2187, i32 3}
!17 = !{ptr @create_l2._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @create_l2._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/isdn/mISDN/layer2.c", i32 15, i32 15}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/isdn/mISDN/layer2.c", i32 173, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @l2up_create._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @l2up_create._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/isdn/mISDN/layer2.c", i32 185, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @l2down_skb._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @l2down_skb._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1114, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @enquiry_cr._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @enquiry_cr._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1949, i32 3}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @l2_send._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @l2_send._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1957, i32 4}
!43 = !{ptr @l2_send._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @l2_send._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/isdn/mISDN/layer2.c", i32 2023, i32 24}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1873, i32 4}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ph_data_indication._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ph_data_indication._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1883, i32 5}
!54 = !{ptr @ph_data_indication._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ph_data_indication._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1892, i32 5}
!58 = !{ptr @ph_data_indication._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ph_data_indication._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1934, i32 3}
!62 = !{ptr @ph_data_indication._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ph_data_indication._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/isdn/mISDN/layer2.c", i32 569, i32 7}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/isdn/mISDN/layer2.c", i32 576, i32 7}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/isdn/mISDN/layer2.c", i32 2086, i32 3}
!70 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @l2_ctrl._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @l2_ctrl._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/isdn/mISDN/layer2.c", i32 365, i32 3}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ReleaseWin._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ReleaseWin._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @skb_queue_head_init.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @l2fsm, !82, !"l2fsm", i1 false, i1 false}
!82 = !{!"../drivers/isdn/mISDN/layer2.c", i32 18, i32 12}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/isdn/mISDN/layer2.c", i32 104, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @l2m_debug._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @l2m_debug._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/isdn/mISDN/layer2.c", i32 2231, i32 10}
!90 = !{ptr @X75SLP, !91, !"X75SLP", i1 false, i1 false}
!91 = !{!"../drivers/isdn/mISDN/layer2.c", i32 2229, i32 25}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/isdn/mISDN/layer2.c", i32 63, i32 2}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/isdn/mISDN/layer2.c", i32 64, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/isdn/mISDN/layer2.c", i32 65, i32 2}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/isdn/mISDN/layer2.c", i32 66, i32 2}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/isdn/mISDN/layer2.c", i32 67, i32 2}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/mISDN/layer2.c", i32 68, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/isdn/mISDN/layer2.c", i32 69, i32 2}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/isdn/mISDN/layer2.c", i32 70, i32 2}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/isdn/mISDN/layer2.c", i32 71, i32 2}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/isdn/mISDN/layer2.c", i32 72, i32 2}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/isdn/mISDN/layer2.c", i32 73, i32 2}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/isdn/mISDN/layer2.c", i32 74, i32 2}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/isdn/mISDN/layer2.c", i32 75, i32 2}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/isdn/mISDN/layer2.c", i32 76, i32 2}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/isdn/mISDN/layer2.c", i32 77, i32 2}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/isdn/mISDN/layer2.c", i32 78, i32 2}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/isdn/mISDN/layer2.c", i32 79, i32 2}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/isdn/mISDN/layer2.c", i32 80, i32 2}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/isdn/mISDN/layer2.c", i32 81, i32 2}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/isdn/mISDN/layer2.c", i32 82, i32 2}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/isdn/mISDN/layer2.c", i32 83, i32 2}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/isdn/mISDN/layer2.c", i32 84, i32 2}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/isdn/mISDN/layer2.c", i32 85, i32 2}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/isdn/mISDN/layer2.c", i32 86, i32 2}
!140 = !{ptr @strL2Event, !141, !"strL2Event", i1 false, i1 false}
!141 = !{!"../drivers/isdn/mISDN/layer2.c", i32 61, i32 14}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/isdn/mISDN/layer2.c", i32 22, i32 2}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/isdn/mISDN/layer2.c", i32 23, i32 2}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/isdn/mISDN/layer2.c", i32 24, i32 2}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/isdn/mISDN/layer2.c", i32 25, i32 2}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/isdn/mISDN/layer2.c", i32 26, i32 2}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/isdn/mISDN/layer2.c", i32 27, i32 2}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/isdn/mISDN/layer2.c", i32 28, i32 2}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/isdn/mISDN/layer2.c", i32 29, i32 2}
!158 = !{ptr @strL2State, !159, !"strL2State", i1 false, i1 false}
!159 = !{!"../drivers/isdn/mISDN/layer2.c", i32 20, i32 14}
!160 = !{ptr @L2FnList, !161, !"L2FnList", i1 false, i1 false}
!161 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1758, i32 23}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/isdn/mISDN/layer2.c", i32 629, i32 4}
!164 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @send_uframe._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @send_uframe._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/isdn/mISDN/layer2.c", i32 148, i32 3}
!169 = !{ptr @l2up._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @l2up._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/isdn/mISDN/layer2.c", i32 306, i32 2}
!173 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @l2mgr._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @l2mgr._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1225, i32 25}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1173, i32 5}
!180 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @invoke_retransmission._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @invoke_retransmission._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/isdn/mISDN/layer2.c", i32 286, i32 3}
!185 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @l2_timeout._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @l2_timeout._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/isdn/mISDN/layer2.c", i32 295, i32 3}
!192 = !{ptr @l2_timeout._entry.88, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @l2_timeout._entry_ptr.90, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1487, i32 3}
!196 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @l2_pull_iqueue._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @l2_pull_iqueue._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/isdn/mISDN/layer2.c", i32 1501, i32 3}
!201 = !{ptr @l2_pull_iqueue._entry.93, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @l2_pull_iqueue._entry_ptr.95, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"branch_weights", i32 1, i32 2000}
!213 = !{!"auto-init"}
