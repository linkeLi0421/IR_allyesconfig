; ModuleID = '/llk/IR_all_yes/net/nfc/hci/llc_shdlc.c_pt.bc'
source_filename = "../net/nfc/hci/llc_shdlc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfc_llc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.llc_shdlc = type { ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, i32, i32, %struct.timer_list, i8, i8, %struct.timer_list, i8, %struct.timer_list, i8, i32, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.sk_buff_head, %struct.work_struct, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.90, i32, %struct.spinlock }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sk_buff = type { %union.anon.70, %union.anon.73, %union.anon.74, [48 x i8], %union.anon.75, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.77, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr, %union.anon.72 }
%union.anon.72 = type { ptr }
%union.anon.73 = type { ptr }
%union.anon.74 = type { i64 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, ptr }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.79, i32, i32, i32, i16, i16, %union.anon.81, i32, %union.anon.82, %union.anon.83, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.79 = type { i32 }
%union.anon.81 = type { i32 }
%union.anon.82 = type { i32 }
%union.anon.83 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shdlc\00", [26 x i8] zeroinitializer }, align 32
@llc_shdlc_ops = internal constant { %struct.nfc_llc_ops, [40 x i8] } { %struct.nfc_llc_ops { ptr @llc_shdlc_init, ptr @llc_shdlc_deinit, ptr @llc_shdlc_start, ptr @llc_shdlc_stop, ptr @llc_shdlc_rcv_from_drv, ptr @llc_shdlc_xmit_from_hci }, [40 x i8] zeroinitializer }, align 32
@llc_shdlc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&shdlc->state_mutex\00", [44 x i8] zeroinitializer }, align 32
@llc_shdlc_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&shdlc->connect_timer)\00", [40 x i8] zeroinitializer }, align 32
@llc_shdlc_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&shdlc->t1_timer)\00", [45 x i8] zeroinitializer }, align 32
@llc_shdlc_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&shdlc->t2_timer)\00", [45 x i8] zeroinitializer }, align 32
@llc_shdlc_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&shdlc->sm_work)\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llc_shdlc_t1_timeout.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hci\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"llc_shdlc_t1_timeout\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/nfc/hci/llc_shdlc.c\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SoftIRQ: need to send ack\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"shdlc: %s: SoftIRQ: need to send ack\0A\00", [58 x i8] zeroinitializer }, align 32
@llc_shdlc_t2_timeout.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.15, ptr @.str.12, ptr @.str.16, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"llc_shdlc_t2_timeout\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SoftIRQ: need to retransmit\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"shdlc: %s: SoftIRQ: need to retransmit\0A\00", [56 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@llc_shdlc_sm_work.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.19, ptr @.str.12, ptr @.str.20, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llc_shdlc_sm_work\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Handle T1(send ack) elapsed (T1 now inactive)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"shdlc: %s: Handle T1(send ack) elapsed (T1 now inactive)\0A\00", [38 x i8] zeroinitializer }, align 32
@llc_shdlc_sm_work.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.19, ptr @.str.12, ptr @.str.22, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Handle T2(retransmit) elapsed (T2 inactive)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"shdlc: %s: Handle T2(retransmit) elapsed (T2 inactive)\0A\00", [40 x i8] zeroinitializer }, align 32
@llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.24, ptr @.str.12, ptr @.str.25, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"llc_shdlc_connect_complete\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"result=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"shdlc: %s: result=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@llc_shdlc_send_u_frame.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.12, ptr @.str.28, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"llc_shdlc_send_u_frame\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uframe_modifier=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"shdlc: %s: uframe_modifier=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@llc_shdlc_handle_rcv_queue.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.30, ptr @.str.12, ptr @.str.31, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"llc_shdlc_handle_rcv_queue\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcvQlen=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"shdlc: %s: rcvQlen=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@llc_shdlc_handle_rcv_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.12, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013shdlc: %s: UNKNOWN Control=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@llc_shdlc_handle_rcv_queue._entry_ptr = internal global ptr @llc_shdlc_handle_rcv_queue._entry, section ".printk_index", align 4
@llc_shdlc_rcv_i_frame.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.34, ptr @.str.12, ptr @.str.35, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"llc_shdlc_rcv_i_frame\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"recvd I-frame %d, remote waiting frame %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"shdlc: %s: recvd I-frame %d, remote waiting frame %d\0A\00", [42 x i8] zeroinitializer }, align 32
@llc_shdlc_rcv_i_frame.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.34, ptr @.str.12, ptr @.str.37, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(re)Start T1(send ack)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"shdlc: %s: (re)Start T1(send ack)\0A\00", [61 x i8] zeroinitializer }, align 32
@llc_shdlc_reset_t2.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.39, ptr @.str.12, ptr @.str.40, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"llc_shdlc_reset_t2\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"release ack pending up to frame %d excluded\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"shdlc: %s: release ack pending up to frame %d excluded\0A\00", [40 x i8] zeroinitializer }, align 32
@llc_shdlc_reset_t2.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.39, ptr @.str.12, ptr @.str.42, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"release ack pending frame %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"shdlc: %s: release ack pending frame %d\0A\00", [55 x i8] zeroinitializer }, align 32
@llc_shdlc_reset_t2.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.39, ptr @.str.12, ptr @.str.44, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"All sent frames acked. Stopped T2(retransmit)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"shdlc: %s: All sent frames acked. Stopped T2(retransmit)\0A\00", [38 x i8] zeroinitializer }, align 32
@llc_shdlc_reset_t2.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.39, ptr @.str.12, ptr @.str.46, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Start T2(retransmit) for remaining unacked sent frames\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"shdlc: %s: Start T2(retransmit) for remaining unacked sent frames\0A\00", [61 x i8] zeroinitializer }, align 32
@llc_shdlc_rcv_ack.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.48, ptr @.str.12, ptr @.str.49, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llc_shdlc_rcv_ack\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"remote acked up to frame %d excluded\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"shdlc: %s: remote acked up to frame %d excluded\0A\00", [47 x i8] zeroinitializer }, align 32
@llc_shdlc_rcv_rej.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.51, ptr @.str.12, ptr @.str.52, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llc_shdlc_rcv_rej\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"remote asks retransmission from frame %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"shdlc: %s: remote asks retransmission from frame %d\0A\00", [43 x i8] zeroinitializer }, align 32
@llc_shdlc_rcv_rej.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.51, ptr @.str.12, ptr @.str.54, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Stopped T2(retransmit)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"shdlc: %s: Stopped T2(retransmit)\0A\00", [61 x i8] zeroinitializer }, align 32
@llc_shdlc_rcv_u_frame.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.56, ptr @.str.12, ptr @.str.57, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"llc_shdlc_rcv_u_frame\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"u_frame_modifier=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"shdlc: %s: u_frame_modifier=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.59, ptr @.str.12, ptr @.str.60, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"llc_shdlc_handle_send_queue\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sendQlen=%d ns=%d dnr=%d rnr=%s w_room=%d unackQlen=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"shdlc: %s: sendQlen=%d ns=%d dnr=%d rnr=%s w_room=%d unackQlen=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.59, ptr @.str.12, ptr @.str.64, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Stopped T1(send ack)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"shdlc: %s: Stopped T1(send ack)\0A\00", [63 x i8] zeroinitializer }, align 32
@llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.59, ptr @.str.12, ptr @.str.66, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Sending I-Frame %d, waiting to rcv %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"shdlc: %s: Sending I-Frame %d, waiting to rcv %d\0A\00", [46 x i8] zeroinitializer }, align 32
@llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.59, ptr @.str.12, ptr @.str.68, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shdlc: %s: %s:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"shdlc frame written\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"shdlc: \00", [24 x i8] zeroinitializer }, align 32
@llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.59, ptr @.str.12, ptr @.str.73, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Started T2 (retransmit)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"shdlc: %s: Started T2 (retransmit)\0A\00", [60 x i8] zeroinitializer }, align 32
@llc_shdlc_send_s_frame.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.75, ptr @.str.12, ptr @.str.76, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"llc_shdlc_send_s_frame\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sframe_type=%d nr=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"shdlc: %s: sframe_type=%d nr=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@llc_shdlc_requeue_ack_pending.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.78, ptr @.str.12, ptr @.str.79, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"llc_shdlc_requeue_ack_pending\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ns reset to %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"shdlc: %s: ns reset to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@llc_shdlc_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&connect_wq\00", [20 x i8] zeroinitializer }, align 32
@llc_shdlc_recv_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.12, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013shdlc: %s: NULL Frame -> link is dead\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"llc_shdlc_recv_frame\00", [43 x i8] zeroinitializer }, align 32
@llc_shdlc_recv_frame._entry_ptr = internal global ptr @llc_shdlc_recv_frame._entry, section ".printk_index", align 4
@llc_shdlc_recv_frame.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.83, ptr @.str.12, ptr @.str.68, i8 0, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"incoming frame\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 25]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 817, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"llc_shdlc_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 806, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 735, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 738, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 739, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 740, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 749, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 576, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 585, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1984, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 641, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 651, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 343, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 168, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 463, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 492, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 227, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 241, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 188, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 191, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 204, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 213, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 263, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 288, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 294, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 395, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 519, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 531, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 539, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 541, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 560, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 146, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 275, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 674, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 711, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.361 = private constant [27 x i8] c"../net/nfc/hci/llc_shdlc.c\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 714, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @llc_shdlc_handle_rcv_queue._entry, ptr @llc_shdlc_handle_rcv_queue._entry_ptr, ptr @llc_shdlc_recv_frame._entry, ptr @llc_shdlc_recv_frame._entry_ptr, ptr @.str, ptr @llc_shdlc_ops, ptr @llc_shdlc_init.__key, ptr @.str.1, ptr @llc_shdlc_init.__key.2, ptr @.str.3, ptr @llc_shdlc_init.__key.4, ptr @.str.5, ptr @llc_shdlc_init.__key.6, ptr @.str.7, ptr @llc_shdlc_init.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @skb_queue_head_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @llc_shdlc_connect.__key, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_shdlc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_shdlc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_shdlc_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_shdlc_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_shdlc_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_shdlc_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_shdlc_handle_rcv_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_shdlc_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_shdlc_recv_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_shdlc_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfc_llc_register(ptr noundef nonnull @.str, ptr noundef nonnull @llc_shdlc_ops) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @llc_shdlc_init(ptr noundef %hdev, ptr noundef %xmit_to_drv, ptr noundef %rcv_to_hci, i32 noundef %tx_headroom, i32 noundef %tx_tailroom, ptr nocapture noundef writeonly %rx_headroom, ptr nocapture noundef writeonly %rx_tailroom, ptr noundef %llc_failure) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_headroom to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %rx_headroom, align 4
  %1 = ptrtoint ptr %rx_tailroom to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rx_tailroom, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 520) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %state_mutex = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %state_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @llc_shdlc_init.__key) #5
  %state = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 8
  %connect_timer = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %connect_timer, ptr noundef nonnull @llc_shdlc_connect_timeout, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @llc_shdlc_init.__key.2) #5
  %t1_timer = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %t1_timer, ptr noundef nonnull @llc_shdlc_t1_timeout, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @llc_shdlc_init.__key.4) #5
  %t2_timer = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 14
  tail call void @init_timer_key(ptr noundef %t2_timer, ptr noundef nonnull @llc_shdlc_t2_timeout, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @llc_shdlc_init.__key.6) #5
  %w = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %w to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %w, align 4
  %srej_support = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %srej_support to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %srej_support, align 1
  %rcv_q = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 19
  %lock.i = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 19, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %6 = ptrtoint ptr %rcv_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rcv_q, ptr %rcv_q, align 4
  %prev.i.i = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 19, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rcv_q, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i, align 4
  %send_q = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 20
  %lock.i46 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 20, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i46, ptr noundef nonnull @.str.18, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %9 = ptrtoint ptr %send_q to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %send_q, ptr %send_q, align 4
  %prev.i.i47 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 20, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i47 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %send_q, ptr %prev.i.i47, align 8
  %qlen.i.i48 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %qlen.i.i48 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i48, align 4
  %ack_pending_q = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 22
  %lock.i49 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 22, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i49, ptr noundef nonnull @.str.18, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %12 = ptrtoint ptr %ack_pending_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ack_pending_q, ptr %ack_pending_q, align 8
  %prev.i.i50 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i50 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ack_pending_q, ptr %prev.i.i50, align 4
  %qlen.i.i51 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %qlen.i.i51 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i51, align 8
  %sm_work = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 23
  tail call void @__init_work(ptr noundef %sm_work, i32 noundef 0) #5
  %15 = ptrtoint ptr %sm_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %sm_work, align 8
  %lockdep_map = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @llc_shdlc_init.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry14 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 23, i32 1
  %16 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 23, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry14, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 23, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @llc_shdlc_sm_work, ptr %func, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hdev, ptr %call7.i.i, align 8
  %xmit_to_drv19 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %xmit_to_drv19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %xmit_to_drv, ptr %xmit_to_drv19, align 4
  %rcv_to_hci20 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %rcv_to_hci20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rcv_to_hci, ptr %rcv_to_hci20, align 8
  %tx_headroom21 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 24
  %22 = ptrtoint ptr %tx_headroom21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %tx_headroom, ptr %tx_headroom21, align 4
  %tx_tailroom22 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 25
  %23 = ptrtoint ptr %tx_tailroom22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %tx_tailroom, ptr %tx_tailroom22, align 8
  %llc_failure23 = getelementptr inbounds %struct.llc_shdlc, ptr %call7.i.i, i32 0, i32 26
  %24 = ptrtoint ptr %llc_failure23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %llc_failure, ptr %llc_failure23, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llc_shdlc_deinit(ptr noundef %llc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_llc_get_data(ptr noundef %llc) #5
  %rcv_q = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %rcv_q) #5
  %send_q = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %send_q) #5
  %ack_pending_q = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 22
  tail call void @skb_queue_purge(ptr noundef %ack_pending_q) #5
  tail call void @kfree(ptr noundef %call) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_shdlc_start(ptr noundef %llc) #0 align 64 {
entry:
  %connect_wq.i = alloca %struct.wait_queue_head, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_llc_get_data(ptr noundef %llc) #5
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %connect_wq.i) #5
  %0 = call ptr @memset(ptr %connect_wq.i, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %connect_wq.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @llc_shdlc_connect.__key) #5
  %state_mutex.i = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %state_mutex.i, i32 noundef 0) #5
  %state.i = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %state.i, align 4
  %connect_wq1.i = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %connect_wq1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %connect_wq.i, ptr %connect_wq1.i, align 4
  %connect_tries.i = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %connect_tries.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %connect_tries.i, align 4
  %connect_result.i = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %connect_result.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %connect_result.i, align 4
  call void @mutex_unlock(ptr noundef %state_mutex.i) #5
  %sm_work.i = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %sm_work.i) #5
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 687) #5
  %6 = ptrtoint ptr %connect_result.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connect_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.llc_shdlc_connect.exit_crit_edge

entry.llc_shdlc_connect.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_shdlc_connect.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #5
  %8 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #5
  %call1131.i = call i32 @prepare_to_wait_event(ptr noundef nonnull %connect_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #5
  %9 = ptrtoint ptr %connect_result.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connect_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp13.not32.i = icmp eq i32 %10, 1
  br i1 %cmp13.not32.i, label %if.end.i.cleanup.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #5
  %call11.i = call i32 @prepare_to_wait_event(ptr noundef nonnull %connect_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #5
  %11 = ptrtoint ptr %connect_result.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %connect_result.i, align 4
  %cmp13.not.i = icmp eq i32 %12, 1
  br i1 %cmp13.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef nonnull %connect_wq.i, ptr noundef nonnull %__wq_entry.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #5
  br label %llc_shdlc_connect.exit

llc_shdlc_connect.exit:                           ; preds = %for.end.i, %entry.llc_shdlc_connect.exit_crit_edge
  %13 = ptrtoint ptr %connect_result.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %connect_result.i, align 4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %connect_wq.i) #5
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_shdlc_stop(ptr noundef %llc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_llc_get_data(ptr noundef %llc) #5
  %state_mutex.i = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %state_mutex.i, i32 noundef 0) #5
  %state.i = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state.i, align 4
  tail call void @mutex_unlock(ptr noundef %state_mutex.i) #5
  %sm_work.i = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %sm_work.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llc_shdlc_rcv_from_drv(ptr noundef %llc, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_llc_get_data(ptr noundef %llc) #5
  tail call fastcc void @llc_shdlc_recv_frame(ptr noundef %call, ptr noundef %skb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_shdlc_xmit_from_hci(ptr noundef %llc, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_llc_get_data(ptr noundef %llc) #5
  %send_q = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 20
  tail call void @skb_queue_tail(ptr noundef %send_q, ptr noundef %skb) #5
  %sm_work = getelementptr inbounds %struct.llc_shdlc, ptr %call, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %sm_work) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llc_shdlc_connect_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_work = getelementptr i8, ptr %t, i32 340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %sm_work) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llc_shdlc_t1_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_t1_timeout.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_t1_timeout, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_t1_timeout.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sm_work = getelementptr i8, ptr %t, i32 288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %sm_work) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llc_shdlc_t2_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_t2_timeout.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_t2_timeout, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_t2_timeout.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sm_work = getelementptr i8, ptr %t, i32 236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %sm_work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llc_shdlc_sm_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -464
  %state_mutex = getelementptr i8, ptr %work, i32 -452
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #5
  %state = getelementptr i8, ptr %work, i32 -360
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb12
    i32 3, label %entry.sw.bb25_crit_edge
    i32 4, label %entry.sw.bb25_crit_edge161
  ]

entry.sw.bb25_crit_edge161:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rcv_q = getelementptr i8, ptr %work, i32 -172
  tail call void @skb_queue_purge(ptr noundef %rcv_q) #5
  %send_q = getelementptr i8, ptr %work, i32 -116
  tail call void @skb_queue_purge(ptr noundef %send_q) #5
  %ack_pending_q = getelementptr i8, ptr %work, i32 -56
  tail call void @skb_queue_purge(ptr noundef %ack_pending_q) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %hard_fault = getelementptr i8, ptr %work, i32 -356
  %3 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_sm_work, %if.then.i)) #5
          to label %llc_shdlc_connect_complete.exit [label %if.then.i], !srcloc !163

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %4) #5
  br label %llc_shdlc_connect_complete.exit

llc_shdlc_connect_complete.exit:                  ; preds = %if.then.i, %if.then
  %connect_timer.i = getelementptr i8, ptr %work, i32 -340
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %connect_timer.i) #5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  %connect_result.i = getelementptr i8, ptr %work, i32 -344
  %6 = ptrtoint ptr %connect_result.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %connect_result.i, align 4
  %connect_wq.i = getelementptr i8, ptr %work, i32 -352
  %7 = ptrtoint ptr %connect_wq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %connect_wq.i, align 4
  tail call void @__wake_up(ptr noundef %8, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb1
  %connect_tries = getelementptr i8, ptr %work, i32 -348
  %9 = ptrtoint ptr %connect_tries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connect_tries, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %connect_tries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp = icmp slt i32 %10, 5
  br i1 %cmp, label %if.end4, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.end4:                                          ; preds = %if.end
  %call = tail call fastcc i32 @llc_shdlc_connect_initiate(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end4.if.then6_crit_edge, label %if.else7

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %if.end4.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %r.0157 = phi i32 [ %call, %if.end4.if.then6_crit_edge ], [ -62, %if.end.if.then6_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_sm_work, %if.then.i118)) #5
          to label %llc_shdlc_connect_complete.exit130 [label %if.then.i118], !srcloc !163

if.then.i118:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %r.0157) #5
  br label %llc_shdlc_connect_complete.exit130

llc_shdlc_connect_complete.exit130:               ; preds = %if.then.i118, %if.then6
  %connect_timer.i119 = getelementptr i8, ptr %work, i32 -340
  %call3.i120 = tail call i32 @del_timer_sync(ptr noundef %connect_timer.i119) #5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state, align 4
  %connect_result.i128 = getelementptr i8, ptr %work, i32 -344
  %12 = ptrtoint ptr %connect_result.i128 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %r.0157, ptr %connect_result.i128, align 4
  %connect_wq.i129 = getelementptr i8, ptr %work, i32 -352
  %13 = ptrtoint ptr %connect_wq.i129 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connect_wq.i129, align 4
  tail call void @__wake_up(ptr noundef %14, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %sw.epilog

if.else7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %connect_timer = getelementptr i8, ptr %work, i32 -340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 1
  %call9 = tail call i32 @mod_timer(ptr noundef %connect_timer, i32 noundef %add) #5
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %state, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %pprev.i.i = getelementptr i8, ptr %work, i32 -336
  %17 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.not, label %if.then16, label %sw.bb12.if.end19_crit_edge

sw.bb12.if.end19_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then16:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %sw.bb12.if.end19_crit_edge
  tail call fastcc void @llc_shdlc_handle_rcv_queue(ptr noundef %add.ptr)
  %hard_fault20 = getelementptr i8, ptr %work, i32 -356
  %21 = ptrtoint ptr %hard_fault20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hard_fault20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool21.not = icmp eq i32 %22, 0
  br i1 %tobool21.not, label %if.end19.sw.epilog_crit_edge, label %if.then22

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then22:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_sm_work, %if.then.i131)) #5
          to label %llc_shdlc_connect_complete.exit143 [label %if.then.i131], !srcloc !163

if.then.i131:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %22) #5
  br label %llc_shdlc_connect_complete.exit143

llc_shdlc_connect_complete.exit143:               ; preds = %if.then.i131, %if.then22
  %connect_timer.i132 = getelementptr i8, ptr %work, i32 -340
  %call3.i133 = tail call i32 @del_timer_sync(ptr noundef %connect_timer.i132) #5
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state, align 4
  %connect_result.i141 = getelementptr i8, ptr %work, i32 -344
  %24 = ptrtoint ptr %connect_result.i141 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %connect_result.i141, align 4
  %connect_wq.i142 = getelementptr i8, ptr %work, i32 -352
  %25 = ptrtoint ptr %connect_wq.i142 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %connect_wq.i142, align 4
  tail call void @__wake_up(ptr noundef %26, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry.sw.bb25_crit_edge, %entry.sw.bb25_crit_edge161
  tail call fastcc void @llc_shdlc_handle_rcv_queue(ptr noundef %add.ptr)
  tail call fastcc void @llc_shdlc_handle_send_queue(ptr noundef %add.ptr)
  %t1_active = getelementptr i8, ptr %work, i32 -240
  %27 = ptrtoint ptr %t1_active to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %t1_active, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool26.not = icmp eq i8 %28, 0
  br i1 %tobool26.not, label %sw.bb25.if.end43_crit_edge, label %land.lhs.true

sw.bb25.if.end43_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.lhs.true:                                    ; preds = %sw.bb25
  %pprev.i.i144 = getelementptr i8, ptr %work, i32 -284
  %29 = ptrtoint ptr %pprev.i.i144 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %pprev.i.i144, align 4
  %tobool.not.i.i145.not = icmp eq ptr %30, null
  br i1 %tobool.not.i.i145.not, label %do.body, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_sm_work.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_sm_work, %if.then35)) #5
          to label %do.end [label %if.then35], !srcloc !163

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_sm_work.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #5
  br label %do.end

do.end:                                           ; preds = %if.then35, %do.body
  %31 = ptrtoint ptr %t1_active to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %t1_active, align 4
  %nr = getelementptr i8, ptr %work, i32 -180
  %32 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr, align 4
  %call38 = tail call fastcc i32 @llc_shdlc_send_s_frame(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %do.end.if.end43_crit_edge

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then40:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hard_fault41 = getelementptr i8, ptr %work, i32 -356
  %34 = ptrtoint ptr %hard_fault41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call38, ptr %hard_fault41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %do.end.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge, %sw.bb25.if.end43_crit_edge
  %t2_active = getelementptr i8, ptr %work, i32 -188
  %35 = ptrtoint ptr %t2_active to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %t2_active, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool44.not = icmp eq i8 %36, 0
  br i1 %tobool44.not, label %if.end43.if.end66_crit_edge, label %land.lhs.true45

if.end43.if.end66_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true45:                                  ; preds = %if.end43
  %pprev.i.i147 = getelementptr i8, ptr %work, i32 -232
  %37 = ptrtoint ptr %pprev.i.i147 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %pprev.i.i147, align 4
  %tobool.not.i.i148.not = icmp eq ptr %38, null
  br i1 %tobool.not.i.i148.not, label %do.body49, label %land.lhs.true45.if.end66_crit_edge

land.lhs.true45.if.end66_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

do.body49:                                        ; preds = %land.lhs.true45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_sm_work.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_sm_work, %if.then61)) #5
          to label %do.end64 [label %if.then61], !srcloc !163

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_sm_work.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19) #5
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %do.body49
  %39 = ptrtoint ptr %t2_active to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %t2_active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_requeue_ack_pending.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_sm_work, %if.then.i151)) #5
          to label %do.end.i152 [label %if.then.i151], !srcloc !163

if.then.i151:                                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #7
  %dnr.i150 = getelementptr i8, ptr %work, i32 -176
  %40 = ptrtoint ptr %dnr.i150 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dnr.i150, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_requeue_ack_pending.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %41) #5
  br label %do.end.i152

do.end.i152:                                      ; preds = %if.then.i151, %do.end64
  %ack_pending_q.i = getelementptr i8, ptr %work, i32 -56
  %call313.i = tail call ptr @skb_dequeue_tail(ptr noundef %ack_pending_q.i) #5
  %tobool4.not14.i = icmp eq ptr %call313.i, null
  br i1 %tobool4.not14.i, label %do.end.i152.llc_shdlc_requeue_ack_pending.exit_crit_edge, label %while.body.lr.ph.i

do.end.i152.llc_shdlc_requeue_ack_pending.exit_crit_edge: ; preds = %do.end.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_shdlc_requeue_ack_pending.exit

while.body.lr.ph.i:                               ; preds = %do.end.i152
  %send_q.i = getelementptr i8, ptr %work, i32 -116
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call315.i = phi ptr [ %call313.i, %while.body.lr.ph.i ], [ %call3.i153, %while.body.i.while.body.i_crit_edge ]
  %call5.i = tail call ptr @skb_pull(ptr noundef nonnull %call315.i, i32 noundef 1) #5
  tail call void @skb_queue_head(ptr noundef %send_q.i, ptr noundef nonnull %call315.i) #5
  %call3.i153 = tail call ptr @skb_dequeue_tail(ptr noundef %ack_pending_q.i) #5
  %tobool4.not.i = icmp eq ptr %call3.i153, null
  br i1 %tobool4.not.i, label %while.body.i.llc_shdlc_requeue_ack_pending.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.llc_shdlc_requeue_ack_pending.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_shdlc_requeue_ack_pending.exit

llc_shdlc_requeue_ack_pending.exit:               ; preds = %while.body.i.llc_shdlc_requeue_ack_pending.exit_crit_edge, %do.end.i152.llc_shdlc_requeue_ack_pending.exit_crit_edge
  %dnr6.i = getelementptr i8, ptr %work, i32 -176
  %42 = ptrtoint ptr %dnr6.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dnr6.i, align 4
  %ns.i154 = getelementptr i8, ptr %work, i32 -184
  %44 = ptrtoint ptr %ns.i154 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %ns.i154, align 4
  tail call fastcc void @llc_shdlc_handle_send_queue(ptr noundef %add.ptr)
  br label %if.end66

if.end66:                                         ; preds = %llc_shdlc_requeue_ack_pending.exit, %land.lhs.true45.if.end66_crit_edge, %if.end43.if.end66_crit_edge
  %hard_fault67 = getelementptr i8, ptr %work, i32 -356
  %45 = ptrtoint ptr %hard_fault67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hard_fault67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool68.not = icmp eq i32 %46, 0
  br i1 %tobool68.not, label %if.end66.sw.epilog_crit_edge, label %if.then69

if.end66.sw.epilog_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %llc_failure = getelementptr i8, ptr %work, i32 52
  %47 = ptrtoint ptr %llc_failure to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %llc_failure, align 4
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  tail call void %48(ptr noundef %50, i32 noundef %46) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then69, %if.end66.sw.epilog_crit_edge, %llc_shdlc_connect_complete.exit143, %if.end19.sw.epilog_crit_edge, %if.else7, %llc_shdlc_connect_complete.exit130, %llc_shdlc_connect_complete.exit, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_mutex) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llc_shdlc_connect_initiate(ptr nocapture noundef readonly %shdlc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_headroom.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 24
  %0 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_headroom.i, align 4
  %tx_tailroom.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 25
  %2 = ptrtoint ptr %tx_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tailroom.i, align 4
  %add1.i = add i32 %1, 4
  %add2.i = add i32 %add1.i, %3
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add2.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_headroom.i, align 4
  %add4.i = add i32 %5, 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add4.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %add4.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #5
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %call.i, align 1
  %call.i6 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #5
  %11 = ptrtoint ptr %call.i6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %call.i6, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_send_u_frame.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_connect_initiate, %if.then.i7)) #5
          to label %llc_shdlc_send_u_frame.exit [label %if.then.i7], !srcloc !163

if.then.i7:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_send_u_frame.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef 25) #5
  br label %llc_shdlc_send_u_frame.exit

llc_shdlc_send_u_frame.exit:                      ; preds = %if.then.i7, %if.end
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 1) #5
  %12 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -7, ptr %call3.i, align 1
  %xmit_to_drv.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 1
  %13 = ptrtoint ptr %xmit_to_drv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xmit_to_drv.i, align 4
  %15 = ptrtoint ptr %shdlc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shdlc, align 4
  %call4.i = tail call i32 %14(ptr noundef %16, ptr noundef nonnull %call.i.i) #5
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %llc_shdlc_send_u_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %llc_shdlc_send_u_frame.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_handle_rcv_queue(ptr noundef %shdlc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_q = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 19
  %qlen = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_handle_rcv_queue.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_handle_rcv_queue, %if.then4)) #5
          to label %if.end7 [label %if.then4], !srcloc !163

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_handle_rcv_queue.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %3) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.body, %entry.if.end7_crit_edge
  %call963 = tail call ptr @skb_dequeue(ptr noundef %rcv_q) #5
  %cmp.not64 = icmp eq ptr %call963, null
  br i1 %cmp.not64, label %if.end7.while.end_crit_edge, label %while.body.lr.ph

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end7
  %state21 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %call965 = phi ptr [ %call963, %while.body.lr.ph ], [ %call9, %sw.epilog.while.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call965, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %call10 = tail call ptr @skb_pull(ptr noundef nonnull %call965, i32 noundef 1) #5
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 224
  %8 = add nsw i32 %and, -128
  %9 = lshr exact i32 %8, 5
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %9, label %do.end37 [
    i32 0, label %while.body.sw.bb_crit_edge
    i32 1, label %while.body.sw.bb_crit_edge66
    i32 2, label %sw.bb20
    i32 3, label %sw.bb32
  ]

while.body.sw.bb_crit_edge66:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge66
  %11 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp11 = icmp eq i32 %12, 3
  br i1 %cmp11, label %if.then13, label %sw.bb.if.end15_crit_edge

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %state21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %state21, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %sw.bb.if.end15_crit_edge
  %and17 = lshr i32 %conv, 3
  %14 = and i32 %and17, 7
  %and19 = and i32 %conv, 7
  tail call fastcc void @llc_shdlc_rcv_i_frame(ptr noundef %shdlc, ptr noundef nonnull %call965, i32 noundef %14, i32 noundef %and19)
  br label %sw.epilog

sw.bb20:                                          ; preds = %while.body
  %15 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp22 = icmp eq i32 %16, 3
  br i1 %cmp22, label %if.then24, label %sw.bb20.if.end26_crit_edge

sw.bb20.if.end26_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then24:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %state21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %state21, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %sw.bb20.if.end26_crit_edge
  %and28 = lshr i32 %conv, 3
  %18 = and i32 %and28, 3
  %and31 = and i32 %conv, 7
  tail call fastcc void @llc_shdlc_rcv_s_frame(ptr noundef %shdlc, i32 noundef %18, i32 noundef %and31)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call965, i32 noundef 0) #5
  br label %sw.epilog

sw.bb32:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %and34 = and i32 %conv, 31
  tail call fastcc void @llc_shdlc_rcv_u_frame(ptr noundef %shdlc, ptr noundef nonnull %call965, i32 noundef %and34)
  br label %sw.epilog

do.end37:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30, i32 noundef %conv) #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call965, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end37, %sw.bb32, %if.end26, %if.end15
  %call9 = tail call ptr @skb_dequeue(ptr noundef %rcv_q) #5
  %cmp.not = icmp eq ptr %call9, null
  br i1 %cmp.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.end7.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_handle_send_queue(ptr noundef %shdlc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %send_q = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 20
  %qlen = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 20, i32 1
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %do.body

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_handle_send_queue, %if.then4)) #5
          to label %if.end14 [label %if.then4], !srcloc !163

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 4
  %ns = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 16
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ns, align 4
  %dnr = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 18
  %6 = ptrtoint ptr %dnr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dnr, align 4
  %rnr = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 21
  %8 = ptrtoint ptr %rnr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rnr, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  %cond = select i1 %cmp, ptr @.str.62, ptr @.str.63
  %w = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 10
  %10 = ptrtoint ptr %w to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %w, align 4
  %conv9 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not.i = icmp sgt i32 %7, %5
  %unack_count.0.p.v.i.neg = select i1 %cmp.not.i, i32 -8, i32 0
  %unack_count.0.p.i.neg = sub i32 %7, %5
  %unack_count.0.i.neg = add i32 %unack_count.0.p.i.neg, %unack_count.0.p.v.i.neg
  %sub = add i32 %unack_count.0.i.neg, %conv9
  %qlen13 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 22, i32 1
  %12 = ptrtoint ptr %qlen13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen13, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %cond, i32 noundef %sub, i32 noundef %13) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %do.body, %entry.if.end14_crit_edge
  %14 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not182 = icmp eq i32 %15, 0
  br i1 %tobool17.not182, label %if.end14.while.end_crit_edge, label %land.lhs.true.lr.ph

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.lhs.true.lr.ph:                              ; preds = %if.end14
  %ack_pending_q18 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 22
  %qlen19 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 22, i32 1
  %w20 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 10
  %rnr24 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 21
  %t1_active = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 13
  %t1_timer = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 12
  %ns52 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 16
  %nr = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 17
  %xmit_to_drv = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 1
  %t2_active = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 15
  %t2_timer = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end126.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %16 = ptrtoint ptr %qlen19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen19, align 4
  %18 = ptrtoint ptr %w20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %w20, align 4
  %conv21 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv21)
  %cmp22 = icmp ult i32 %17, %conv21
  br i1 %cmp22, label %land.rhs, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %20 = ptrtoint ptr %rnr24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rnr24, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp27 = icmp eq i8 %21, 0
  br i1 %cmp27, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %22 = ptrtoint ptr %t1_active to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %t1_active, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool29.not = icmp eq i8 %23, 0
  br i1 %tobool29.not, label %while.body.if.end49_crit_edge, label %if.then30

while.body.if.end49_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then30:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 @del_timer_sync(ptr noundef %t1_timer) #5
  %24 = ptrtoint ptr %t1_active to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %t1_active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_handle_send_queue, %if.then45)) #5
          to label %if.end49 [label %if.then45], !srcloc !163

if.then45:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.59) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.then30, %while.body.if.end49_crit_edge
  %call51 = tail call ptr @skb_dequeue(ptr noundef %send_q) #5
  %25 = ptrtoint ptr %ns52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ns52, align 4
  %shl = shl i32 %26, 3
  %27 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr, align 4
  %or = or i32 %shl, %28
  %29 = trunc i32 %or to i8
  %conv54 = or i8 %29, -128
  %call55 = tail call ptr @skb_push(ptr noundef %call51, i32 noundef 1) #5
  %30 = ptrtoint ptr %call55 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv54, ptr %call55, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_handle_send_queue, %if.then68)) #5
          to label %do.body75 [label %if.then68], !srcloc !163

if.then68:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %ns52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ns52, align 4
  %33 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.59, i32 noundef %32, i32 noundef %34) #5
  br label %do.body75

do.body75:                                        ; preds = %if.then68, %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_handle_send_queue, %if.then87)) #5
          to label %do.end90 [label %if.then87], !srcloc !163

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.70) #5
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %do.body75
  %data = getelementptr inbounds %struct.sk_buff, ptr %call51, i32 0, i32 19
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call51, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %36, i32 noundef %38, i1 noundef zeroext false) #5
  %39 = ptrtoint ptr %xmit_to_drv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xmit_to_drv, align 4
  %41 = ptrtoint ptr %shdlc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %shdlc, align 4
  %call93 = tail call i32 %40(ptr noundef %42, ptr noundef %call51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #7
  %hard_fault = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 5
  %43 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call93, ptr %hard_fault, align 4
  br label %while.end

if.end97:                                         ; preds = %do.end90
  %44 = ptrtoint ptr %ns52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ns52, align 4
  %add = add i32 %45, 1
  %rem = srem i32 %add, 8
  store i32 %rem, ptr %ns52, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call51, i32 0, i32 3
  %47 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %cb, align 8
  tail call void @skb_queue_tail(ptr noundef %ack_pending_q18, ptr noundef %call51) #5
  %48 = ptrtoint ptr %t2_active to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %t2_active, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp103 = icmp eq i8 %49, 0
  br i1 %cmp103, label %if.then105, label %if.end97.if.end126_crit_edge

if.end97.if.end126_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

if.then105:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %t2_active to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %t2_active, align 4
  %add108 = add i32 %46, 30
  %call109 = tail call i32 @mod_timer(ptr noundef %t2_timer, i32 noundef %add108) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_handle_send_queue, %if.then122)) #5
          to label %if.end126 [label %if.then122], !srcloc !163

if.then122:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.59) #5
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %if.then105, %if.end97.if.end126_crit_edge
  %51 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qlen, align 4
  %tobool17.not = icmp eq i32 %52, 0
  br i1 %tobool17.not, label %if.end126.while.end_crit_edge, label %if.end126.land.lhs.true_crit_edge

if.end126.land.lhs.true_crit_edge:                ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end126.while.end_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end126.while.end_crit_edge, %if.then96, %land.rhs.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %if.end14.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llc_shdlc_send_s_frame(ptr nocapture noundef readonly %shdlc, i32 noundef %sframe_type, i32 noundef %nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_send_s_frame.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_send_s_frame, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_send_s_frame.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %sframe_type, i32 noundef %nr) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_headroom.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 24
  %0 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_headroom.i, align 4
  %tx_tailroom.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 25
  %2 = ptrtoint ptr %tx_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tailroom.i, align 4
  %add1.i = add i32 %1, 2
  %add2.i = add i32 %add1.i, %3
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add2.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_headroom.i, align 4
  %add4.i = add i32 %5, 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add4.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %add4.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %shl = shl i32 %sframe_type, 3
  %or = or i32 %shl, %nr
  %10 = trunc i32 %or to i8
  %conv = or i8 %10, -64
  %call7 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 1) #5
  %11 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %call7, align 1
  %xmit_to_drv = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 1
  %12 = ptrtoint ptr %xmit_to_drv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xmit_to_drv, align 4
  %14 = ptrtoint ptr %shdlc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shdlc, align 4
  %call8 = tail call i32 %13(ptr noundef %15, ptr noundef nonnull %call.i.i) #5
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end5 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_rcv_i_frame(ptr noundef %shdlc, ptr noundef %skb, i32 noundef %ns, i32 noundef %nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_rcv_i_frame.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_rcv_i_frame, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_rcv_i_frame.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %ns, i32 noundef %nr) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end4, label %do.end.exit_crit_edge

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end4:                                          ; preds = %do.end
  %nr5 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 17
  %2 = ptrtoint ptr %nr5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ns)
  %cmp6.not = icmp eq i32 %3, %ns
  br i1 %cmp6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call fastcc i32 @llc_shdlc_send_s_frame(ptr noundef %shdlc, i32 noundef 1, i32 noundef %3)
  br label %exit

if.end10:                                         ; preds = %if.end4
  %t1_active = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 13
  %4 = ptrtoint ptr %t1_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %t1_active, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end32_crit_edge

if.end10.if.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %t1_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %t1_active, align 4
  %t1_timer = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %w = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 10
  %8 = ptrtoint ptr %w to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %w, align 4
  %conv = zext i8 %9 to i32
  %mul = mul nuw nsw i32 %conv, 5
  %div65 = lshr i32 %mul, 2
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div65) #5
  %add = add i32 %call2.i, %7
  %call15 = tail call i32 @mod_timer(ptr noundef %t1_timer, i32 noundef %add) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_rcv_i_frame.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_rcv_i_frame, %if.then28)) #5
          to label %if.end32 [label %if.then28], !srcloc !163

if.then28:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_rcv_i_frame.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.34) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then12, %if.end10.if.end32_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool33.not = icmp eq i32 %11, 0
  br i1 %tobool33.not, label %if.end32.if.end35_crit_edge, label %if.then34

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %rcv_to_hci = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 2
  %12 = ptrtoint ptr %rcv_to_hci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rcv_to_hci, align 4
  %14 = ptrtoint ptr %shdlc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shdlc, align 4
  tail call void %13(ptr noundef %15, ptr noundef %skb) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32.if.end35_crit_edge
  %skb.addr.0 = phi ptr [ null, %if.then34 ], [ %skb, %if.end32.if.end35_crit_edge ]
  %16 = ptrtoint ptr %nr5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr5, align 4
  %add37 = add i32 %17, 1
  %rem = srem i32 %add37, 8
  store i32 %rem, ptr %nr5, align 4
  %dnr = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 18
  %18 = ptrtoint ptr %dnr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dnr, align 4
  %ns39 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 16
  %20 = ptrtoint ptr %ns39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ns39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i = icmp slt i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %nr)
  %cmp1.i = icmp slt i32 %19, %nr
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %nr)
  %cmp2.i = icmp sge i32 %21, %nr
  br i1 %cmp.i, label %if.then.i, label %llc_shdlc_x_lt_y_lteq_z.exit

if.then.i:                                        ; preds = %if.end35
  %spec.select.i = and i1 %cmp1.i, %cmp2.i
  br i1 %spec.select.i, label %if.then.i.if.then41_crit_edge, label %if.then.i.exit_crit_edge

if.then.i.exit_crit_edge:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then.i.if.then41_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

llc_shdlc_x_lt_y_lteq_z.exit:                     ; preds = %if.end35
  %spec.select14.i = or i1 %cmp1.i, %cmp2.i
  br i1 %spec.select14.i, label %llc_shdlc_x_lt_y_lteq_z.exit.if.then41_crit_edge, label %llc_shdlc_x_lt_y_lteq_z.exit.exit_crit_edge

llc_shdlc_x_lt_y_lteq_z.exit.exit_crit_edge:      ; preds = %llc_shdlc_x_lt_y_lteq_z.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

llc_shdlc_x_lt_y_lteq_z.exit.if.then41_crit_edge: ; preds = %llc_shdlc_x_lt_y_lteq_z.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

if.then41:                                        ; preds = %llc_shdlc_x_lt_y_lteq_z.exit.if.then41_crit_edge, %if.then.i.if.then41_crit_edge
  tail call fastcc void @llc_shdlc_reset_t2(ptr noundef %shdlc, i32 noundef %nr)
  %22 = ptrtoint ptr %dnr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %nr, ptr %dnr, align 4
  br label %exit

exit:                                             ; preds = %if.then41, %llc_shdlc_x_lt_y_lteq_z.exit.exit_crit_edge, %if.then.i.exit_crit_edge, %if.then7, %do.end.exit_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %do.end.exit_crit_edge ], [ %skb, %if.then7 ], [ %skb.addr.0, %if.then41 ], [ %skb.addr.0, %llc_shdlc_x_lt_y_lteq_z.exit.exit_crit_edge ], [ %skb.addr.0, %if.then.i.exit_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.1, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_rcv_s_frame(ptr noundef %shdlc, i32 noundef %s_frame_type, i32 noundef %nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %s_frame_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %s_frame_type, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_rcv_ack.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_rcv_s_frame, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !163

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_rcv_ack.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef %nr) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb
  %dnr.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 18
  %3 = ptrtoint ptr %dnr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dnr.i, align 4
  %ns.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 16
  %5 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ns.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i.i = icmp slt i32 %4, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %nr)
  %cmp1.i.i = icmp slt i32 %4, %nr
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %nr)
  %cmp2.i.i = icmp sge i32 %6, %nr
  br i1 %cmp.i.i, label %if.then.i.i, label %llc_shdlc_x_lt_y_lteq_z.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  %spec.select.i.i = and i1 %cmp1.i.i, %cmp2.i.i
  br i1 %spec.select.i.i, label %if.then.i.i.if.then4.i_crit_edge, label %if.then.i.i.llc_shdlc_rcv_ack.exit_crit_edge

if.then.i.i.llc_shdlc_rcv_ack.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_shdlc_rcv_ack.exit

if.then.i.i.if.then4.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

llc_shdlc_x_lt_y_lteq_z.exit.i:                   ; preds = %do.end.i
  %spec.select14.i.i = or i1 %cmp1.i.i, %cmp2.i.i
  br i1 %spec.select14.i.i, label %llc_shdlc_x_lt_y_lteq_z.exit.i.if.then4.i_crit_edge, label %llc_shdlc_x_lt_y_lteq_z.exit.i.llc_shdlc_rcv_ack.exit_crit_edge

llc_shdlc_x_lt_y_lteq_z.exit.i.llc_shdlc_rcv_ack.exit_crit_edge: ; preds = %llc_shdlc_x_lt_y_lteq_z.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_shdlc_rcv_ack.exit

llc_shdlc_x_lt_y_lteq_z.exit.i.if.then4.i_crit_edge: ; preds = %llc_shdlc_x_lt_y_lteq_z.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

if.then4.i:                                       ; preds = %llc_shdlc_x_lt_y_lteq_z.exit.i.if.then4.i_crit_edge, %if.then.i.i.if.then4.i_crit_edge
  tail call fastcc void @llc_shdlc_reset_t2(ptr noundef %shdlc, i32 noundef %nr) #5
  %7 = ptrtoint ptr %dnr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nr, ptr %dnr.i, align 4
  br label %llc_shdlc_rcv_ack.exit

llc_shdlc_rcv_ack.exit:                           ; preds = %if.then4.i, %llc_shdlc_x_lt_y_lteq_z.exit.i.llc_shdlc_rcv_ack.exit_crit_edge, %if.then.i.i.llc_shdlc_rcv_ack.exit_crit_edge
  %rnr = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 21
  %8 = ptrtoint ptr %rnr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rnr, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %llc_shdlc_rcv_ack.exit.cleanup_crit_edge, label %if.then3

llc_shdlc_rcv_ack.exit.cleanup_crit_edge:         ; preds = %llc_shdlc_rcv_ack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %llc_shdlc_rcv_ack.exit
  %10 = ptrtoint ptr %rnr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %rnr, align 4
  %send_q = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 20
  %qlen = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.then3
  %tx_headroom.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 24
  %13 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_headroom.i, align 4
  %tx_tailroom.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 25
  %15 = ptrtoint ptr %tx_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_tailroom.i, align 4
  %add1.i = add i32 %14, 2
  %add2.i = add i32 %add1.i, %16
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add2.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then7.cleanup_crit_edge, label %if.then9

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_headroom.i, align 4
  %add4.i = add i32 %18, 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %add4.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %22, i32 %add4.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  tail call void @skb_queue_tail(ptr noundef %send_q, ptr noundef nonnull %call.i.i) #5
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @llc_shdlc_rcv_rej(ptr noundef %shdlc, i32 noundef %nr)
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_rcv_ack.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_rcv_s_frame, %if.then.i30)) #5
          to label %do.end.i36 [label %if.then.i30], !srcloc !163

if.then.i30:                                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_rcv_ack.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef %nr) #5
  br label %do.end.i36

do.end.i36:                                       ; preds = %if.then.i30, %sw.bb15
  %dnr.i31 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 18
  %23 = ptrtoint ptr %dnr.i31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dnr.i31, align 4
  %ns.i32 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 16
  %25 = ptrtoint ptr %ns.i32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ns.i32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i.i33 = icmp slt i32 %24, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %nr)
  %cmp1.i.i34 = icmp slt i32 %24, %nr
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %nr)
  %cmp2.i.i35 = icmp sge i32 %26, %nr
  br i1 %cmp.i.i33, label %if.then.i.i38, label %llc_shdlc_x_lt_y_lteq_z.exit.i40

if.then.i.i38:                                    ; preds = %do.end.i36
  %spec.select.i.i37 = and i1 %cmp1.i.i34, %cmp2.i.i35
  br i1 %spec.select.i.i37, label %if.then.i.i38.if.then4.i41_crit_edge, label %if.then.i.i38.llc_shdlc_rcv_ack.exit42_crit_edge

if.then.i.i38.llc_shdlc_rcv_ack.exit42_crit_edge: ; preds = %if.then.i.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_shdlc_rcv_ack.exit42

if.then.i.i38.if.then4.i41_crit_edge:             ; preds = %if.then.i.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i41

llc_shdlc_x_lt_y_lteq_z.exit.i40:                 ; preds = %do.end.i36
  %spec.select14.i.i39 = or i1 %cmp1.i.i34, %cmp2.i.i35
  br i1 %spec.select14.i.i39, label %llc_shdlc_x_lt_y_lteq_z.exit.i40.if.then4.i41_crit_edge, label %llc_shdlc_x_lt_y_lteq_z.exit.i40.llc_shdlc_rcv_ack.exit42_crit_edge

llc_shdlc_x_lt_y_lteq_z.exit.i40.llc_shdlc_rcv_ack.exit42_crit_edge: ; preds = %llc_shdlc_x_lt_y_lteq_z.exit.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_shdlc_rcv_ack.exit42

llc_shdlc_x_lt_y_lteq_z.exit.i40.if.then4.i41_crit_edge: ; preds = %llc_shdlc_x_lt_y_lteq_z.exit.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i41

if.then4.i41:                                     ; preds = %llc_shdlc_x_lt_y_lteq_z.exit.i40.if.then4.i41_crit_edge, %if.then.i.i38.if.then4.i41_crit_edge
  tail call fastcc void @llc_shdlc_reset_t2(ptr noundef %shdlc, i32 noundef %nr) #5
  %27 = ptrtoint ptr %dnr.i31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nr, ptr %dnr.i31, align 4
  br label %llc_shdlc_rcv_ack.exit42

llc_shdlc_rcv_ack.exit42:                         ; preds = %if.then4.i41, %llc_shdlc_x_lt_y_lteq_z.exit.i40.llc_shdlc_rcv_ack.exit42_crit_edge, %if.then.i.i38.llc_shdlc_rcv_ack.exit42_crit_edge
  %rnr16 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 21
  %28 = ptrtoint ptr %rnr16 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %rnr16, align 4
  br label %cleanup

cleanup:                                          ; preds = %llc_shdlc_rcv_ack.exit42, %sw.bb14, %if.then9, %if.then7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %llc_shdlc_rcv_ack.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_rcv_u_frame(ptr noundef %shdlc, ptr noundef %skb, i32 noundef %u_frame_modifier) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_rcv_u_frame.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_rcv_u_frame, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_rcv_u_frame.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef %u_frame_modifier) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %u_frame_modifier to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %u_frame_modifier, label %do.end.sw.epilog44_crit_edge [
    i32 25, label %sw.bb
    i32 6, label %sw.bb30
  ]

do.end.sw.epilog44_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44

sw.bb:                                            ; preds = %do.end
  %state = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %2, label %sw.bb.sw.epilog44_crit_edge [
    i32 2, label %sw.bb.sw.bb3_crit_edge
    i32 1, label %sw.bb.sw.bb3_crit_edge79
    i32 4, label %sw.bb29
  ]

sw.bb.sw.bb3_crit_edge79:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

sw.bb.sw.epilog44_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44

sw.bb3:                                           ; preds = %sw.bb.sw.bb3_crit_edge, %sw.bb.sw.bb3_crit_edge79
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %sw.bb3.if.end14_crit_edge, label %if.end5

sw.bb3.if.end14_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end5:                                          ; preds = %sw.bb3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp7.not = icmp eq i32 %5, 1
  br i1 %cmp7.not, label %if.end5.if.end14_crit_edge, label %if.then8

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %arrayidx10 = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11 = icmp ne i8 %14, 0
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end5.if.end14_crit_edge, %sw.bb3.if.end14_crit_edge
  %w.077 = phi i8 [ %9, %if.then8 ], [ %9, %if.end5.if.end14_crit_edge ], [ 4, %sw.bb3.if.end14_crit_edge ]
  %srej_support.0.off0 = phi i1 [ %tobool11, %if.then8 ], [ false, %if.end5.if.end14_crit_edge ], [ false, %sw.bb3.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %w.077)
  %cmp16 = icmp ugt i8 %w.077, 4
  %brmerge = select i1 %cmp16, i1 true, i1 %srej_support.0.off0
  br i1 %brmerge, label %if.end14.sw.epilog44_crit_edge, label %if.then22

if.end14.sw.epilog44_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44

if.then22:                                        ; preds = %if.end14
  %w23 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 10
  %15 = ptrtoint ptr %w23 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %w.077, ptr %w23, align 4
  %srej_support25 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 11
  %16 = ptrtoint ptr %srej_support25 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %srej_support25, align 1
  %call27 = tail call fastcc i32 @llc_shdlc_connect_send_ua(ptr noundef %shdlc)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_rcv_u_frame, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !163

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %call27) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then22
  %connect_timer.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 9
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %connect_timer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp.i = icmp eq i32 %call27, 0
  br i1 %cmp.i, label %if.then4.i, label %do.end.i.llc_shdlc_connect_complete.exit_crit_edge

do.end.i.llc_shdlc_connect_complete.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_shdlc_connect_complete.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %ns.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 16
  %17 = ptrtoint ptr %ns.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ns.i, align 4
  %nr.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 17
  %18 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %nr.i, align 4
  %dnr.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 18
  %19 = ptrtoint ptr %dnr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dnr.i, align 4
  br label %llc_shdlc_connect_complete.exit

llc_shdlc_connect_complete.exit:                  ; preds = %if.then4.i, %do.end.i.llc_shdlc_connect_complete.exit_crit_edge
  %.sink.i = phi i32 [ 3, %if.then4.i ], [ 0, %do.end.i.llc_shdlc_connect_complete.exit_crit_edge ]
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %state, align 4
  %connect_result.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 8
  %21 = ptrtoint ptr %connect_result.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call27, ptr %connect_result.i, align 4
  %connect_wq.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 6
  %22 = ptrtoint ptr %connect_wq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %connect_wq.i, align 4
  tail call void @__wake_up(ptr noundef %23, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %sw.epilog44

sw.bb29:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %hard_fault = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 5
  %24 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -104, ptr %hard_fault, align 4
  br label %sw.epilog44

sw.bb30:                                          ; preds = %do.end
  %state31 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 4
  %25 = ptrtoint ptr %state31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state31, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %26, label %sw.bb30.sw.epilog44_crit_edge [
    i32 1, label %land.lhs.true34
    i32 2, label %sw.bb30.if.then40_crit_edge
  ]

sw.bb30.if.then40_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

sw.bb30.sw.epilog44_crit_edge:                    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44

land.lhs.true34:                                  ; preds = %sw.bb30
  %connect_tries = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 7
  %28 = ptrtoint ptr %connect_tries to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %connect_tries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp35 = icmp sgt i32 %29, 0
  br i1 %cmp35, label %land.lhs.true34.if.then40_crit_edge, label %land.lhs.true34.sw.epilog44_crit_edge

land.lhs.true34.sw.epilog44_crit_edge:            ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44

land.lhs.true34.if.then40_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

if.then40:                                        ; preds = %land.lhs.true34.if.then40_crit_edge, %sw.bb30.if.then40_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_rcv_u_frame, %if.then.i62)) #5
          to label %llc_shdlc_connect_complete.exit73 [label %if.then.i62], !srcloc !163

if.then.i62:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 0) #5
  br label %llc_shdlc_connect_complete.exit73

llc_shdlc_connect_complete.exit73:                ; preds = %if.then.i62, %if.then40
  %connect_timer.i63 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 9
  %call3.i64 = tail call i32 @del_timer_sync(ptr noundef %connect_timer.i63) #5
  %ns.i66 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 16
  %30 = ptrtoint ptr %ns.i66 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ns.i66, align 4
  %nr.i67 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 17
  %31 = ptrtoint ptr %nr.i67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %nr.i67, align 4
  %dnr.i68 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 18
  %32 = ptrtoint ptr %dnr.i68 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dnr.i68, align 4
  %33 = ptrtoint ptr %state31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %state31, align 4
  %connect_result.i71 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 8
  %34 = ptrtoint ptr %connect_result.i71 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %connect_result.i71, align 4
  %connect_wq.i72 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 6
  %35 = ptrtoint ptr %connect_wq.i72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %connect_wq.i72, align 4
  tail call void @__wake_up(ptr noundef %36, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  %37 = ptrtoint ptr %state31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %state31, align 4
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %llc_shdlc_connect_complete.exit73, %land.lhs.true34.sw.epilog44_crit_edge, %sw.bb30.sw.epilog44_crit_edge, %sw.bb29, %llc_shdlc_connect_complete.exit, %if.end14.sw.epilog44_crit_edge, %sw.bb.sw.epilog44_crit_edge, %do.end.sw.epilog44_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_reset_t2(ptr noundef %shdlc, i32 noundef %y_nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dnr1 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 18
  %0 = ptrtoint ptr %dnr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dnr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_reset_t2, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %y_nr) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %y_nr)
  %cmp.not97 = icmp eq i32 %1, %y_nr
  br i1 %cmp.not97, label %do.end.while.end_crit_edge, label %do.body4.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body4.lr.ph:                                   ; preds = %do.end
  %ack_pending_q = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 22
  br label %do.body4

do.body4:                                         ; preds = %do.end19.do.body4_crit_edge, %do.body4.lr.ph
  %dnr.098 = phi i32 [ %1, %do.body4.lr.ph ], [ %rem, %do.end19.do.body4_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_reset_t2, %if.then16)) #5
          to label %do.end19 [label %if.then16], !srcloc !163

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, i32 noundef %dnr.098) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body4
  %call20 = tail call ptr @skb_dequeue(ptr noundef %ack_pending_q) #5
  tail call void @kfree_skb_reason(ptr noundef %call20, i32 noundef 0) #5
  %add = add i32 %dnr.098, 1
  %rem = srem i32 %add, 8
  %cmp.not = icmp eq i32 %rem, %y_nr
  br i1 %cmp.not, label %do.end19.while.end_crit_edge, label %do.end19.do.body4_crit_edge

do.end19.do.body4_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

do.end19.while.end_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %do.end19.while.end_crit_edge, %do.end.while.end_crit_edge
  %ack_pending_q21 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 22
  %2 = ptrtoint ptr %ack_pending_q21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ack_pending_q21, align 4
  %cmp.i = icmp eq ptr %3, %ack_pending_q21
  br i1 %cmp.i, label %if.then24, label %if.else

if.then24:                                        ; preds = %while.end
  %t2_active = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 15
  %4 = ptrtoint ptr %t2_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %t2_active, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool25.not = icmp eq i8 %5, 0
  br i1 %tobool25.not, label %if.then24.if.end69_crit_edge, label %if.then26

if.then24.if.end69_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %t2_timer = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 14
  %call27 = tail call i32 @del_timer_sync(ptr noundef %t2_timer) #5
  %6 = ptrtoint ptr %t2_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %t2_active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_reset_t2, %if.then41)) #5
          to label %if.end69 [label %if.then41], !srcloc !163

if.then41:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.39) #5
  br label %if.end69

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %t2_timer48 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 14
  %cb = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cb, align 8
  %add50 = add i32 %8, 30
  %call51 = tail call i32 @mod_timer(ptr noundef %t2_timer48, i32 noundef %add50) #5
  %t2_active52 = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 15
  %9 = ptrtoint ptr %t2_active52 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %t2_active52, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_reset_t2, %if.then65)) #5
          to label %if.end69 [label %if.then65], !srcloc !163

if.then65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.39) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.else, %if.then41, %if.then26, %if.then24.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_rcv_rej(ptr noundef %shdlc, i32 noundef %y_nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_rcv_rej.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_rcv_rej, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_rcv_rej.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %y_nr) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dnr = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 18
  %0 = ptrtoint ptr %dnr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dnr, align 4
  %ns = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 16
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp sgt i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %y_nr)
  %cmp3.not.i = icmp sle i32 %1, %y_nr
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %y_nr)
  %cmp4.i = icmp sgt i32 %3, %y_nr
  br i1 %cmp.not.i, label %llc_shdlc_x_lteq_y_lt_z.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end
  %spec.select.i = and i1 %cmp3.not.i, %cmp4.i
  br i1 %spec.select.i, label %if.then.i.if.then4_crit_edge, label %if.then.i.if.end33_crit_edge

if.then.i.if.end33_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then.i.if.then4_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

llc_shdlc_x_lteq_y_lt_z.exit:                     ; preds = %do.end
  %spec.select14.i = or i1 %cmp3.not.i, %cmp4.i
  br i1 %spec.select14.i, label %llc_shdlc_x_lteq_y_lt_z.exit.if.then4_crit_edge, label %llc_shdlc_x_lteq_y_lt_z.exit.if.end33_crit_edge

llc_shdlc_x_lteq_y_lt_z.exit.if.end33_crit_edge:  ; preds = %llc_shdlc_x_lteq_y_lt_z.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

llc_shdlc_x_lteq_y_lt_z.exit.if.then4_crit_edge:  ; preds = %llc_shdlc_x_lteq_y_lt_z.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %llc_shdlc_x_lteq_y_lt_z.exit.if.then4_crit_edge, %if.then.i.if.then4_crit_edge
  %t2_active = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 15
  %4 = ptrtoint ptr %t2_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %t2_active, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.then4.if.end25_crit_edge, label %if.then6

if.then4.if.end25_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %t2_timer = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 14
  %call7 = tail call i32 @del_timer_sync(ptr noundef %t2_timer) #5
  %6 = ptrtoint ptr %t2_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %t2_active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_rcv_rej.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_rcv_rej, %if.then21)) #5
          to label %if.end25 [label %if.then21], !srcloc !163

if.then21:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_rcv_rej.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.51) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then6, %if.then4.if.end25_crit_edge
  %7 = ptrtoint ptr %dnr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dnr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %y_nr)
  %cmp.not = icmp eq i32 %8, %y_nr
  br i1 %cmp.not, label %if.end25.if.end32_crit_edge, label %while.cond.preheader

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

while.cond.preheader:                             ; preds = %if.end25
  %9 = ptrtoint ptr %dnr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dnr, align 4
  %add53 = add i32 %10, 1
  %rem54 = srem i32 %add53, 8
  store i32 %rem54, ptr %dnr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem54, i32 %y_nr)
  %cmp30.not55 = icmp eq i32 %rem54, %y_nr
  br i1 %cmp30.not55, label %while.cond.preheader.if.end32_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end32_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ack_pending_q = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call31 = tail call ptr @skb_dequeue(ptr noundef %ack_pending_q) #5
  tail call void @kfree_skb_reason(ptr noundef %call31, i32 noundef 0) #5
  %11 = ptrtoint ptr %dnr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dnr, align 4
  %add = add i32 %12, 1
  %rem = srem i32 %add, 8
  store i32 %rem, ptr %dnr, align 4
  %cmp30.not = icmp eq i32 %rem, %y_nr
  br i1 %cmp30.not, label %while.body.if.end32_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.end32:                                         ; preds = %while.body.if.end32_crit_edge, %while.cond.preheader.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_requeue_ack_pending.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_rcv_rej, %if.then.i50)) #5
          to label %do.end.i [label %if.then.i50], !srcloc !163

if.then.i50:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dnr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dnr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_requeue_ack_pending.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %14) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i50, %if.end32
  %ack_pending_q.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 22
  %call313.i = tail call ptr @skb_dequeue_tail(ptr noundef %ack_pending_q.i) #5
  %tobool4.not14.i = icmp eq ptr %call313.i, null
  br i1 %tobool4.not14.i, label %do.end.i.llc_shdlc_requeue_ack_pending.exit_crit_edge, label %while.body.lr.ph.i

do.end.i.llc_shdlc_requeue_ack_pending.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_shdlc_requeue_ack_pending.exit

while.body.lr.ph.i:                               ; preds = %do.end.i
  %send_q.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 20
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call315.i = phi ptr [ %call313.i, %while.body.lr.ph.i ], [ %call3.i, %while.body.i.while.body.i_crit_edge ]
  %call5.i = tail call ptr @skb_pull(ptr noundef nonnull %call315.i, i32 noundef 1) #5
  tail call void @skb_queue_head(ptr noundef %send_q.i, ptr noundef nonnull %call315.i) #5
  %call3.i = tail call ptr @skb_dequeue_tail(ptr noundef %ack_pending_q.i) #5
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %while.body.i.llc_shdlc_requeue_ack_pending.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.llc_shdlc_requeue_ack_pending.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_shdlc_requeue_ack_pending.exit

llc_shdlc_requeue_ack_pending.exit:               ; preds = %while.body.i.llc_shdlc_requeue_ack_pending.exit_crit_edge, %do.end.i.llc_shdlc_requeue_ack_pending.exit_crit_edge
  %15 = ptrtoint ptr %dnr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dnr, align 4
  %17 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ns, align 4
  br label %if.end33

if.end33:                                         ; preds = %llc_shdlc_requeue_ack_pending.exit, %llc_shdlc_x_lteq_y_lt_z.exit.if.end33_crit_edge, %if.then.i.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @llc_shdlc_connect_send_ua(ptr nocapture noundef readonly %shdlc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_headroom.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 24
  %0 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_headroom.i, align 4
  %tx_tailroom.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 25
  %2 = ptrtoint ptr %tx_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tailroom.i, align 4
  %add1.i = add i32 %1, 2
  %add2.i = add i32 %add1.i, %3
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add2.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_headroom.i, align 4
  %add4.i = add i32 %5, 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add4.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %add4.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_send_u_frame.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_connect_send_ua, %if.then.i4)) #5
          to label %llc_shdlc_send_u_frame.exit [label %if.then.i4], !srcloc !163

if.then.i4:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_send_u_frame.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef 6) #5
  br label %llc_shdlc_send_u_frame.exit

llc_shdlc_send_u_frame.exit:                      ; preds = %if.then.i4, %if.end
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 1) #5
  %10 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -26, ptr %call3.i, align 1
  %xmit_to_drv.i = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 1
  %11 = ptrtoint ptr %xmit_to_drv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xmit_to_drv.i, align 4
  %13 = ptrtoint ptr %shdlc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shdlc, align 4
  %call4.i = tail call i32 %12(ptr noundef %14, ptr noundef nonnull %call.i.i) #5
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %llc_shdlc_send_u_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %llc_shdlc_send_u_frame.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue_tail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llc_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_recv_frame(ptr noundef %shdlc, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83) #9
  %hard_fault = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 5
  %0 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -121, ptr %hard_fault, align 4
  br label %if.end10

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_shdlc_recv_frame.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_shdlc_recv_frame, %if.then7)) #5
          to label %do.end8 [label %if.then7], !srcloc !163

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_shdlc_recv_frame.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then7, %do.body2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %2, i32 noundef %4, i1 noundef zeroext false) #5
  %rcv_q = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 19
  tail call void @skb_queue_tail(ptr noundef %rcv_q, ptr noundef nonnull %skb) #5
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %do.end
  %sm_work = getelementptr inbounds %struct.llc_shdlc, ptr %shdlc, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %sm_work) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !148, !149, !150, !151, !153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/hci/llc_shdlc.c", i32 817, i32 26}
!2 = !{ptr @llc_shdlc_ops, !3, !"llc_shdlc_ops", i1 false, i1 false}
!3 = !{!"../net/nfc/hci/llc_shdlc.c", i32 806, i32 33}
!4 = !{ptr @llc_shdlc_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../net/nfc/hci/llc_shdlc.c", i32 735, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @llc_shdlc_init.__key.2, !8, !"__key", i1 false, i1 false}
!8 = !{!"../net/nfc/hci/llc_shdlc.c", i32 738, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @llc_shdlc_init.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../net/nfc/hci/llc_shdlc.c", i32 739, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @llc_shdlc_init.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../net/nfc/hci/llc_shdlc.c", i32 740, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @llc_shdlc_init.__key.8, !17, !"__key", i1 false, i1 false}
!17 = !{!"../net/nfc/hci/llc_shdlc.c", i32 749, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/nfc/hci/llc_shdlc.c", i32 576, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @llc_shdlc_t1_timeout.__UNIQUE_ID_ddebug291, !20, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!25 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/nfc/hci/llc_shdlc.c", i32 585, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @llc_shdlc_t2_timeout.__UNIQUE_ID_ddebug292, !27, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!30 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @skb_queue_head_init.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/nfc/hci/llc_shdlc.c", i32 641, i32 4}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @llc_shdlc_sm_work.__UNIQUE_ID_ddebug293, !35, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!38 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/nfc/hci/llc_shdlc.c", i32 651, i32 4}
!41 = !{ptr @llc_shdlc_sm_work.__UNIQUE_ID_ddebug294, !40, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!42 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/nfc/hci/llc_shdlc.c", i32 343, i32 2}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @llc_shdlc_connect_complete.__UNIQUE_ID_ddebug283, !44, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!47 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/nfc/hci/llc_shdlc.c", i32 168, i32 2}
!50 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @llc_shdlc_send_u_frame.__UNIQUE_ID_ddebug272, !49, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!52 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/nfc/hci/llc_shdlc.c", i32 463, i32 3}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @llc_shdlc_handle_rcv_queue.__UNIQUE_ID_ddebug285, !54, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!57 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/nfc/hci/llc_shdlc.c", i32 492, i32 4}
!60 = !{ptr @llc_shdlc_handle_rcv_queue._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @llc_shdlc_handle_rcv_queue._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/nfc/hci/llc_shdlc.c", i32 227, i32 2}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @llc_shdlc_rcv_i_frame.__UNIQUE_ID_ddebug277, !63, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!66 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/nfc/hci/llc_shdlc.c", i32 241, i32 3}
!69 = !{ptr @llc_shdlc_rcv_i_frame.__UNIQUE_ID_ddebug278, !68, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!70 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/nfc/hci/llc_shdlc.c", i32 188, i32 2}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug273, !72, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!75 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/nfc/hci/llc_shdlc.c", i32 191, i32 3}
!78 = !{ptr @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug274, !77, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!79 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/nfc/hci/llc_shdlc.c", i32 204, i32 4}
!82 = !{ptr @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug275, !81, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!83 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/nfc/hci/llc_shdlc.c", i32 213, i32 3}
!86 = !{ptr @llc_shdlc_reset_t2.__UNIQUE_ID_ddebug276, !85, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!87 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/nfc/hci/llc_shdlc.c", i32 263, i32 2}
!90 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @llc_shdlc_rcv_ack.__UNIQUE_ID_ddebug279, !89, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!92 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/nfc/hci/llc_shdlc.c", i32 288, i32 2}
!95 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @llc_shdlc_rcv_rej.__UNIQUE_ID_ddebug281, !94, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!97 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/nfc/hci/llc_shdlc.c", i32 294, i32 4}
!100 = !{ptr @llc_shdlc_rcv_rej.__UNIQUE_ID_ddebug282, !99, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!101 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/nfc/hci/llc_shdlc.c", i32 395, i32 2}
!104 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @llc_shdlc_rcv_u_frame.__UNIQUE_ID_ddebug284, !103, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!106 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/nfc/hci/llc_shdlc.c", i32 519, i32 3}
!109 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug286, !108, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!111 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/nfc/hci/llc_shdlc.c", i32 531, i32 4}
!116 = !{ptr @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug287, !115, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!117 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/nfc/hci/llc_shdlc.c", i32 539, i32 3}
!120 = !{ptr @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug288, !119, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!121 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/nfc/hci/llc_shdlc.c", i32 541, i32 3}
!124 = !{ptr @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug289, !123, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!125 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.72, !123, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/nfc/hci/llc_shdlc.c", i32 560, i32 4}
!131 = !{ptr @llc_shdlc_handle_send_queue.__UNIQUE_ID_ddebug290, !130, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!132 = !{ptr @.str.74, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/nfc/hci/llc_shdlc.c", i32 146, i32 2}
!135 = !{ptr @.str.76, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @llc_shdlc_send_s_frame.__UNIQUE_ID_ddebug271, !134, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!137 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/nfc/hci/llc_shdlc.c", i32 275, i32 2}
!140 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @llc_shdlc_requeue_ack_pending.__UNIQUE_ID_ddebug280, !139, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!142 = !{ptr @.str.80, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @llc_shdlc_connect.__key, !144, !"__key", i1 false, i1 false}
!144 = !{!"../net/nfc/hci/llc_shdlc.c", i32 674, i32 2}
!145 = !{ptr @.str.81, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/nfc/hci/llc_shdlc.c", i32 711, i32 3}
!148 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @llc_shdlc_recv_frame._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @llc_shdlc_recv_frame._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @llc_shdlc_recv_frame.__UNIQUE_ID_ddebug295, !152, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!152 = !{!"../net/nfc/hci/llc_shdlc.c", i32 714, i32 3}
!153 = !{ptr @.str.84, !152, !"<string literal>", i1 false, i1 false}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i64 2148249513, i64 2148249518, i64 2148249531, i64 2148249575, i64 2148249609, i64 2148249630}
!164 = !{i8 0, i8 2}
