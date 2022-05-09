; ModuleID = '/llk/IR_all_yes/net/nfc/llcp_core.c_pt.bc'
source_filename = "../net/nfc/llcp_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.llcp_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sock_common = type { %union.anon.0, %union.anon.1, %union.anon.2, i16, i8, i8, i32, %union.anon.4, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.4 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.118 = type { i32 }
%struct.nfc_llcp_sock = type { %struct.sock, ptr, ptr, i32, i32, i8, i8, ptr, i32, i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.list_head, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.nfc_llcp_local = type { %struct.list_head, ptr, %struct.kref, %struct.mutex, %struct.timer_list, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, ptr, %struct.work_struct, i32, i8, i8, i8, i8, i16, i32, i32, i32, [16 x %struct.atomic_t], [48 x i8], i8, [48 x i8], i8, i8, i16, i16, i8, i16, %struct.mutex, %struct.hlist_head, %struct.timer_list, %struct.work_struct, i8, %struct.llcp_sock_list, %struct.llcp_sock_list, %struct.llcp_sock_list }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nfc_llcp_sdp_tlv = type { ptr, i8, ptr, i8, i8, i32, %struct.hlist_node }

@llcp_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @llcp_devices, ptr @llcp_devices }, [24 x i8] zeroinitializer }, align 32
@nfc_llcp_find_local.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfc_llcp_find_local\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/nfc/llcp_core.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No device found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"llcp: %s: No device found\0A\00", [37 x i8] zeroinitializer }, align 32
@nfc_llcp_get_sdp_ssap.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfc_llcp_get_sdp_ssap\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WKS %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llcp: %s: WKS %d\0A\00", [46 x i8] zeroinitializer }, align 32
@nfc_llcp_put_ssap.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfc_llcp_put_ssap\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d clients\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"llcp: %s: %d clients\0A\00", [42 x i8] zeroinitializer }, align 32
@nfc_llcp_put_ssap.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No more clients for SAP %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"llcp: %s: No more clients for SAP %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nfc_llcp_set_remote_gb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013llcp: %s: No LLCP device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfc_llcp_set_remote_gb\00", [41 x i8] zeroinitializer }, align 32
@nfc_llcp_set_remote_gb._entry_ptr = internal global ptr @nfc_llcp_set_remote_gb._entry, section ".printk_index", align 4
@llcp_magic = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"Ffm", [29 x i8] zeroinitializer }, align 32
@nfc_llcp_set_remote_gb._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013llcp: %s: MAC does not support LLCP\0A\00", [57 x i8] zeroinitializer }, align 32
@nfc_llcp_set_remote_gb._entry_ptr.17 = internal global ptr @nfc_llcp_set_remote_gb._entry.15, section ".printk_index", align 4
@nfc_llcp_queue_i_frames.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfc_llcp_queue_i_frames\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Remote ready %d tx queue len %d remote rw %d\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"llcp: %s: Remote ready %d tx queue len %d remote rw %d\00", [41 x i8] zeroinitializer }, align 32
@nfc_llcp_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013llcp: %s: LLCP PDU receive err %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfc_llcp_recv\00", [18 x i8] zeroinitializer }, align 32
@nfc_llcp_recv._entry_ptr = internal global ptr @nfc_llcp_recv._entry, section ".printk_index", align 4
@nfc_llcp_mac_is_up.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfc_llcp_mac_is_up\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rf mode %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"llcp: %s: rf mode %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfc_llcp_mac_is_up.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 1, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Queueing Tx work\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"llcp: %s: Queueing Tx work\0A\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfc_llcp_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&local->sdp_lock\00", [47 x i8] zeroinitializer }, align 32
@nfc_llcp_register_device.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&local->link_timer)\00", [43 x i8] zeroinitializer }, align 32
@nfc_llcp_register_device.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&local->tx_work)\00", [61 x i8] zeroinitializer }, align 32
@nfc_llcp_register_device.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&local->rx_work)\00", [61 x i8] zeroinitializer }, align 32
@nfc_llcp_register_device.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&local->timeout_work)\00", [56 x i8] zeroinitializer }, align 32
@nfc_llcp_register_device.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&local->sockets.lock\00", [43 x i8] zeroinitializer }, align 32
@nfc_llcp_register_device.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&local->connecting_sockets.lock\00", [32 x i8] zeroinitializer }, align 32
@nfc_llcp_register_device.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&local->raw_sockets.lock\00", [39 x i8] zeroinitializer }, align 32
@nfc_llcp_register_device.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&local->sdreq_lock\00", [45 x i8] zeroinitializer }, align 32
@nfc_llcp_register_device.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&local->sdreq_timer)\00", [42 x i8] zeroinitializer }, align 32
@nfc_llcp_register_device.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&local->sdreq_timeout_work)\00", [50 x i8] zeroinitializer }, align 32
@nfc_llcp_unregister_device.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 1, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfc_llcp_unregister_device\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No such device\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"llcp: %s: No such device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@nfc_llcp_wks_sap.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfc_llcp_wks_sap\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"llcp: %s: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"urn:nfc:sn:ip\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"urn:nfc:sn:obex\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"urn:nfc:sn:snep\00", [16 x i8] zeroinitializer }, align 32
@nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfc_llcp_sock_from_sn\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sn %zd %p\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"llcp: %s: sn %zd %p\0A\00", [43 x i8] zeroinitializer }, align 32
@nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.62, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"llcp sock %p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"llcp: %s: llcp sock %p\0A\00", [40 x i8] zeroinitializer }, align 32
@nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.64, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Found llcp sock %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"llcp: %s: Found llcp sock %p\0A\00", [34 x i8] zeroinitializer }, align 32
@nfc_llcp_sock_get.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfc_llcp_sock_get\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssap dsap %d %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"llcp: %s: ssap dsap %d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nfc_llcp_build_gb.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfc_llcp_build_gb\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Local wks 0x%lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"llcp: %s: Local wks 0x%lx\0A\00", [37 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfc_llcp_symm_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013llcp: %s: SYMM timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfc_llcp_symm_timer\00", [44 x i8] zeroinitializer }, align 32
@nfc_llcp_symm_timer._entry_ptr = internal global ptr @nfc_llcp_symm_timer._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@nfc_llcp_tx_work.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfc_llcp_tx_work\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sending pending skb\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"llcp: %s: Sending pending skb\0A\00", [33 x i8] zeroinitializer }, align 32
@nfc_llcp_tx_work.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.78, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LLCP Tx: \00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_work.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 1, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfc_llcp_rx_work\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No pending SKB\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"llcp: %s: No pending SKB\0A\00", [38 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 1, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfc_llcp_rx_skb\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ptype 0x%x dsap 0x%x ssap 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"llcp: %s: ptype 0x%x dsap 0x%x ssap 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.86, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LLCP Rx: \00", [22 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.87, i8 1, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SYMM\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"llcp: %s: SYMM\0A\00", [16 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.89, i8 1, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UI\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"llcp: %s: UI\0A\00", [18 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.91, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CONNECT\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"llcp: %s: CONNECT\0A\00", [45 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.93, i8 1, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DISC\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"llcp: %s: DISC\0A\00", [16 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.95, i8 1, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CC\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"llcp: %s: CC\0A\00", [18 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.97, i8 1, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DM\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"llcp: %s: DM\0A\00", [18 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.99, i8 1, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SNL\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"llcp: %s: SNL\0A\00", [17 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.101, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I frame\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"llcp: %s: I frame\0A\00", [45 x i8] zeroinitializer }, align 32
@nfc_llcp_rx_skb.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.103, i8 1, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AGF frame\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"llcp: %s: AGF frame\0A\00", [43 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_ui.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfc_llcp_recv_ui\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"llcp: %s: %d %d\0A\00", [47 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_ui._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.105, ptr @.str.2, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013llcp: %s: Receive queue is full\0A\00", [61 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_ui._entry_ptr = internal global ptr @nfc_llcp_recv_ui._entry, section ".printk_index", align 4
@nfc_llcp_recv_connect.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.106, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfc_llcp_recv_connect\00", [42 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_connect.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.110, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Service name length %zu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"llcp: %s: Service name length %zu\0A\00", [61 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_connect.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.112, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"First client, reserving %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"llcp: %s: First client, reserving %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_connect.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.114, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reserved_ssap %d for %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"llcp: %s: reserved_ssap %d for %p\0A\00", [61 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_connect.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.116, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"new sock %p sk %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"llcp: %s: new sock %p sk %p\0A\00", [35 x i8] zeroinitializer }, align 32
@nfc_llcp_connect_sn.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.119, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfc_llcp_connect_sn\00", [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"type 0x%x length %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"llcp: %s: type 0x%x length %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nfc_llcp_reserve_sdp_ssap.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.2, ptr @.str.122, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfc_llcp_reserve_sdp_ssap\00", [38 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SDP ssap %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"llcp: %s: SDP ssap %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_disc.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.124, ptr @.str.2, ptr @.str.125, i8 1, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfc_llcp_recv_disc\00", [45 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Connection termination\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"llcp: %s: Connection termination\00", [63 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_cc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013llcp: %s: Invalid CC\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfc_llcp_recv_cc\00", [47 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_cc._entry_ptr = internal global ptr @nfc_llcp_recv_cc._entry, section ".printk_index", align 4
@nfc_llcp_recv_dm.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.2, ptr @.str.130, i8 1, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfc_llcp_recv_dm\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d %d reason %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"llcp: %s: %d %d reason %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_dm.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.2, ptr @.str.132, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Already closed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"llcp: %s: Already closed\0A\00", [38 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_snl.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.106, i8 1, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfc_llcp_recv_snl\00", [46 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_snl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.134, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013llcp: %s: Wrong SNL SAP\0A\00", [37 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_snl._entry_ptr = internal global ptr @nfc_llcp_recv_snl._entry, section ".printk_index", align 4
@nfc_llcp_recv_snl.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.136, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Looking for %.16s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"llcp: %s: Looking for %.16s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"urn:nfc:sn:sdp\00", [17 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_snl.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.139, i8 1, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Reserving %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"llcp: %s: Reserving %d\0A\00", [40 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_snl.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.141, i8 1, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%p %d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"llcp: %s: %p %d\0A\00", [47 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_snl.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.143, i8 1, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"LLCP_TLV_SDRES: searching tid %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"llcp: %s: LLCP_TLV_SDRES: searching tid %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_snl.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.145, i8 1, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Found: uri=%s, sap=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"llcp: %s: Found: uri=%s, sap=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_snl._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.134, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013llcp: %s: Invalid SNL tlv value 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_snl._entry_ptr.149 = internal global ptr @nfc_llcp_recv_snl._entry.147, section ".printk_index", align 4
@nfc_llcp_recv_hdlc.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.150, ptr @.str.2, ptr @.str.151, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfc_llcp_recv_hdlc\00", [45 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d %d R %d S %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"llcp: %s: %d %d R %d S %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_hdlc.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.150, ptr @.str.2, ptr @.str.153, i8 1, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I frame, queueing on %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"llcp: %s: I frame, queueing on %p\0A\00", [61 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_hdlc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.150, ptr @.str.2, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013llcp: %s: Received out of sequence I PDU\0A\00", [52 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_hdlc._entry_ptr = internal global ptr @nfc_llcp_recv_hdlc._entry, section ".printk_index", align 4
@nfc_llcp_recv_hdlc._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.150, ptr @.str.2, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_hdlc._entry_ptr.157 = internal global ptr @nfc_llcp_recv_hdlc._entry.156, section ".printk_index", align 4
@nfc_llcp_recv_agf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013llcp: %s: Malformed AGF PDU\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfc_llcp_recv_agf\00", [46 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_agf._entry_ptr = internal global ptr @nfc_llcp_recv_agf._entry, section ".printk_index", align 4
@nfc_llcp_recv_agf._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_agf._entry_ptr.161 = internal global ptr @nfc_llcp_recv_agf._entry.160, section ".printk_index", align 4
@nfc_llcp_recv_agf._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.159, ptr @.str.2, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013llcp: %s: Could not allocate PDU\0A\00", [60 x i8] zeroinitializer }, align 32
@nfc_llcp_recv_agf._entry_ptr.164 = internal global ptr @nfc_llcp_recv_agf._entry.162, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.165 = internal global [12 x i64] [i64 10, i64 4, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 2]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 9]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 4, i64 13, i64 14]
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"llcp_devices\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 19, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 289, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 383, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 461, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 468, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 622, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [11 x i8] c"llcp_magic\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 17, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 631, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1003, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1507, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1549, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1560, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1580, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1581, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1584, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1587, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1589, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1591, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1592, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1593, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1605, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1607, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1608, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1620, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 729, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 306, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 297, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 298, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 299, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 331, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 343, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 368, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 190, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 545, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 235, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1984, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 736, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 737, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1480, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1417, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1420, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1425, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1429, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1434, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1439, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1444, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1449, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1454, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1461, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1466, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 854, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 870, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 886, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 904, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 927, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 960, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 972, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 826, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 510, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1124, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1169, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1202, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1216, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1246, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1249, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1268, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1271, i32 31 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1294, i32 5 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1313, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1327, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1335, i32 5 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1349, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1039, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1056, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1061, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1071, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1372, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1384, i32 4 }
@___asan_gen_.679 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.683 = private constant [23 x i8] c"../net/nfc/llcp_core.c\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.683, i32 1395, i32 4 }
@llvm.compiler.used = appending global [185 x ptr] [ptr @nfc_llcp_recv._entry, ptr @nfc_llcp_recv._entry_ptr, ptr @nfc_llcp_recv_agf._entry, ptr @nfc_llcp_recv_agf._entry.160, ptr @nfc_llcp_recv_agf._entry.162, ptr @nfc_llcp_recv_agf._entry_ptr, ptr @nfc_llcp_recv_agf._entry_ptr.161, ptr @nfc_llcp_recv_agf._entry_ptr.164, ptr @nfc_llcp_recv_cc._entry, ptr @nfc_llcp_recv_cc._entry_ptr, ptr @nfc_llcp_recv_hdlc._entry, ptr @nfc_llcp_recv_hdlc._entry.156, ptr @nfc_llcp_recv_hdlc._entry_ptr, ptr @nfc_llcp_recv_hdlc._entry_ptr.157, ptr @nfc_llcp_recv_snl._entry, ptr @nfc_llcp_recv_snl._entry.147, ptr @nfc_llcp_recv_snl._entry_ptr, ptr @nfc_llcp_recv_snl._entry_ptr.149, ptr @nfc_llcp_recv_ui._entry, ptr @nfc_llcp_recv_ui._entry_ptr, ptr @nfc_llcp_set_remote_gb._entry, ptr @nfc_llcp_set_remote_gb._entry.15, ptr @nfc_llcp_set_remote_gb._entry_ptr, ptr @nfc_llcp_set_remote_gb._entry_ptr.17, ptr @nfc_llcp_symm_timer._entry, ptr @nfc_llcp_symm_timer._entry_ptr, ptr @llcp_devices, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @llcp_magic, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @nfc_llcp_register_device.__key, ptr @.str.28, ptr @nfc_llcp_register_device.__key.29, ptr @.str.30, ptr @nfc_llcp_register_device.__key.31, ptr @.str.32, ptr @nfc_llcp_register_device.__key.33, ptr @.str.34, ptr @nfc_llcp_register_device.__key.35, ptr @.str.36, ptr @nfc_llcp_register_device.__key.37, ptr @.str.38, ptr @nfc_llcp_register_device.__key.39, ptr @.str.40, ptr @nfc_llcp_register_device.__key.41, ptr @.str.42, ptr @nfc_llcp_register_device.__key.43, ptr @.str.44, ptr @nfc_llcp_register_device.__key.45, ptr @.str.46, ptr @nfc_llcp_register_device.__key.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @skb_queue_head_init.__key, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.158, ptr @.str.159, ptr @.str.163], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcp_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_set_remote_gb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcp_magic to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_set_remote_gb._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_register_device.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_symm_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_recv_ui._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_recv_cc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_recv_snl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_recv_snl._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_recv_hdlc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_recv_hdlc._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_recv_agf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_recv_agf._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_llcp_recv_agf._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_sock_link(ptr noundef %l, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.llcp_sock_list, ptr %l, i32 0, i32 1
  tail call void @_raw_write_lock(ptr noundef %lock) #11
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !322
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !323

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !324

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %l, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %2, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %2, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  %7 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %2, ptr %l, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %8 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %l, ptr %pprev34.i.i.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_sock_unlink(ptr noundef %l, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.llcp_sock_list, ptr %l, i32 0, i32 1
  tail call void @_raw_write_lock(ptr noundef %lock) #11
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.not.i, label %entry.sk_del_node_init.exit_crit_edge, label %if.then.i.i

entry.sk_del_node_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %1, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %1, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %7 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !323

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 729, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_del_node_init.exit_crit_edge, !prof !323

if.end.i.sk_del_node_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i.sk_del_node_init.exit_crit_edge, %entry.sk_del_node_init.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfc_llcp_socket_remote_param_init(ptr nocapture noundef writeonly %sock) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_rw = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 11
  %0 = ptrtoint ptr %remote_rw to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %remote_rw, align 8
  %remote_miu = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 12
  %1 = ptrtoint ptr %remote_miu to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 2176, ptr %remote_miu, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_local_get(ptr noundef returned %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !322
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !323

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !324

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret ptr %local
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_local_put(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %local, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !324

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #11
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %local) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.local_release.exit.i_crit_edge

if.then.i.local_release.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %local_release.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i.i, align 4
  %3 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %local_release.exit.i

local_release.exit.i:                             ; preds = %if.end.i.i.i.i, %if.then.i.local_release.exit.i_crit_edge
  %7 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %local, align 4
  %prev.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call fastcc void @nfc_llcp_socket_release(ptr noundef nonnull %local, i1 noundef zeroext false, i32 noundef 6) #11
  %link_timer.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 4
  %call.i.i.i = tail call i32 @del_timer_sync(ptr noundef %link_timer.i.i.i) #11
  %tx_queue.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %tx_queue.i.i.i) #11
  %tx_work.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 6
  %call1.i.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work.i.i.i) #11
  %rx_work.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 7
  %call2.i.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %rx_work.i.i.i) #11
  %timeout_work.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 9
  %call3.i.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %timeout_work.i.i.i) #11
  %rx_pending.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 8
  %9 = ptrtoint ptr %rx_pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_pending.i.i.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %10, i32 noundef 0) #11
  %sdreq_timer.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 31
  %call4.i.i.i = tail call i32 @del_timer_sync(ptr noundef %sdreq_timer.i.i.i) #11
  %sdreq_timeout_work.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 32
  %call5.i.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %sdreq_timeout_work.i.i.i) #11
  %pending_sdreqs.i.i.i = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 30
  tail call void @nfc_llcp_free_sdp_tlv_list(ptr noundef %pending_sdreqs.i.i.i) #11
  tail call void @kfree(ptr noundef nonnull %local) #11
  br label %return

return:                                           ; preds = %local_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %local_release.exit.i ], [ 0, %if.end5.i.i.i.i.return_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_find_local(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %local.0.in = phi ptr [ @llcp_devices, %entry ], [ %local.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %local.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %local.0 = load ptr, ptr %local.0.in, align 4
  %cmp.not = icmp eq ptr %local.0, @llcp_devices
  br i1 %cmp.not, label %do.body, label %for.body

for.body:                                         ; preds = %for.cond
  %dev1 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local.0, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %cmp2 = icmp eq ptr %2, %dev
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_find_local, %if.then11)) #11
          to label %cleanup [label %if.then11], !srcloc !328

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.body, %for.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then11 ], [ null, %do.body ], [ %local.0, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nfc_llcp_get_sdp_ssap(ptr noundef %local, ptr nocapture noundef readonly %sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdp_lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %sdp_lock, i32 noundef 0) #11
  %service_name = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 7
  %0 = ptrtoint ptr %service_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %service_name, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %service_name_len = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 8
  %2 = ptrtoint ptr %service_name_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %service_name_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_wks_sap.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_get_sdp_ssap, %if.then.i)) #11
          to label %if.end8.2.i [label %if.then.i], !srcloc !328

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_wks_sap.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, ptr noundef nonnull %1) #11
  br label %if.end8.2.i

if.end8.2.i:                                      ; preds = %if.then.i, %if.then
  %call10.2.i = tail call i32 @strncmp(ptr noundef nonnull @.str.56, ptr noundef nonnull %1, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2.i)
  %cmp11.2.i = icmp eq i32 %call10.2.i, 0
  br i1 %cmp11.2.i, label %if.end8.2.i.do.body_crit_edge, label %if.end8.3.i

if.end8.2.i.do.body_crit_edge:                    ; preds = %if.end8.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end8.3.i:                                      ; preds = %if.end8.2.i
  %call10.3.i = tail call i32 @strncmp(ptr noundef nonnull @.str.57, ptr noundef nonnull %1, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.3.i)
  %cmp11.3.i = icmp eq i32 %call10.3.i, 0
  br i1 %cmp11.3.i, label %if.end8.3.i.do.body_crit_edge, label %if.end8.4.i

if.end8.3.i.do.body_crit_edge:                    ; preds = %if.end8.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end8.4.i:                                      ; preds = %if.end8.3.i
  %call10.4.i = tail call i32 @strncmp(ptr noundef nonnull @.str.58, ptr noundef nonnull %1, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.4.i)
  %cmp11.4.i = icmp eq i32 %call10.4.i, 0
  br i1 %cmp11.4.i, label %if.end8.4.i.do.body_crit_edge, label %if.end16

if.end8.4.i.do.body_crit_edge:                    ; preds = %if.end8.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %if.end8.4.i.do.body_crit_edge, %if.end8.3.i.do.body_crit_edge, %if.end8.2.i.do.body_crit_edge
  %retval.0.i77.ph = phi i32 [ 3, %if.end8.3.i.do.body_crit_edge ], [ 2, %if.end8.2.i.do.body_crit_edge ], [ 4, %if.end8.4.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_get_sdp_ssap.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_get_sdp_ssap, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !328

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_get_sdp_ssap.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i77.ph) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %local_wks = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 16
  %4 = ptrtoint ptr %local_wks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local_wks, align 4
  %shl = shl nuw nsw i32 1, %retval.0.i77.ph
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %sdp_lock) #11
  br label %return

if.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef %retval.0.i77.ph, ptr noundef %local_wks) #11
  tail call void @mutex_unlock(ptr noundef %sdp_lock) #11
  %conv = trunc i32 %retval.0.i77.ph to i8
  br label %return

if.end16:                                         ; preds = %if.end8.4.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %service_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %service_name, align 4
  %8 = ptrtoint ptr %service_name_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %service_name_len, align 8
  %call19 = tail call fastcc ptr @nfc_llcp_sock_from_sn(ptr noundef %local, ptr noundef %7, i32 noundef %9)
  %cmp20.not = icmp eq ptr %call19, null
  tail call void @mutex_unlock(ptr noundef %sdp_lock) #11
  %. = select i1 %cmp20.not, i8 65, i8 -1
  br label %return

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %ssap26 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 5
  %10 = ptrtoint ptr %ssap26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssap26, align 8
  %conv27 = zext i8 %11 to i32
  %12 = add i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %12)
  %13 = icmp ult i8 %12, 15
  br i1 %13, label %if.then35, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then35:                                        ; preds = %if.else
  %local_wks38 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 16
  %14 = ptrtoint ptr %local_wks38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %local_wks38, align 4
  %and.i = and i32 %conv27, 31
  %16 = shl nuw i32 1, %and.i
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool40.not = icmp eq i32 %17, 0
  br i1 %tobool40.not, label %if.then41, label %if.then35.if.end49_crit_edge

if.then35.if.end49_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then41:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef %conv27, ptr noundef %local_wks38) #11
  tail call void @mutex_unlock(ptr noundef %sdp_lock) #11
  %18 = ptrtoint ptr %ssap26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ssap26, align 8
  br label %return

if.end49:                                         ; preds = %if.then35.if.end49_crit_edge, %if.else.if.end49_crit_edge
  tail call void @mutex_unlock(ptr noundef %sdp_lock) #11
  br label %return

return:                                           ; preds = %if.end49, %if.then41, %if.end16, %if.end13, %if.then11
  %retval.1 = phi i8 [ -1, %if.end49 ], [ %19, %if.then41 ], [ -1, %if.then11 ], [ %conv, %if.end13 ], [ %., %if.end16 ]
  ret i8 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfc_llcp_sock_from_sn(ptr noundef %local, ptr noundef %sn, i32 noundef %sn_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_sock_from_sn, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !328

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef %sn_len, ptr noundef %sn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %sn, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sn_len)
  %cmp3 = icmp eq i32 %sn_len, 0
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 34
  %lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 34, i32 1
  tail call void @_raw_read_lock(ptr noundef %lock) #11
  %0 = ptrtoint ptr %sockets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sockets, align 4
  %tobool8.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -84
  %tobool10.not137141 = icmp eq ptr %add.ptr, null
  %tobool10.not137 = or i1 %tobool8.not, %tobool10.not137141
  br i1 %tobool10.not137, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %sk.0138 = phi ptr [ %add.ptr75, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end5.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_sock_from_sn, %if.then23)) #11
          to label %do.end26 [label %if.then23], !srcloc !328

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.59, ptr noundef nonnull %sk.0138) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %for.body
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk.0138, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %do.end26.if.end49_crit_edge [
    i16 1, label %land.lhs.true
    i16 2, label %land.lhs.true41
  ]

do.end26.if.end49_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true:                                    ; preds = %do.end26
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.0138, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %6)
  %cmp32.not = icmp eq i8 %6, 6
  br i1 %cmp32.not, label %land.lhs.true.if.end49_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true41:                                  ; preds = %do.end26
  %skc_state44 = getelementptr inbounds %struct.sock_common, ptr %sk.0138, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state44 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state44, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %cmp46.not = icmp eq i8 %8, 5
  br i1 %cmp46.not, label %land.lhs.true41.if.end49_crit_edge, label %land.lhs.true41.for.inc_crit_edge

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true41.if.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.end49:                                         ; preds = %land.lhs.true41.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %do.end26.if.end49_crit_edge
  %service_name = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.0138, i32 0, i32 7
  %9 = ptrtoint ptr %service_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %service_name, align 4
  %cmp50 = icmp eq ptr %10, null
  br i1 %cmp50, label %if.end49.for.inc_crit_edge, label %lor.lhs.false52

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false52:                                  ; preds = %if.end49
  %service_name_len = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.0138, i32 0, i32 8
  %11 = ptrtoint ptr %service_name_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %service_name_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp53 = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sn_len)
  %cmp58.not = icmp eq i32 %12, %sn_len
  %or.cond123 = and i1 %cmp53, %cmp58.not
  br i1 %or.cond123, label %if.end61, label %lor.lhs.false52.for.inc_crit_edge

lor.lhs.false52.for.inc_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end61:                                         ; preds = %lor.lhs.false52
  %bcmp = tail call i32 @bcmp(ptr nonnull %sn, ptr nonnull %10, i32 %sn_len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp64 = icmp eq i32 %bcmp, 0
  br i1 %cmp64, label %if.end61.for.end_crit_edge, label %if.end61.for.inc_crit_edge

if.end61.for.inc_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end61.for.inc_crit_edge, %lor.lhs.false52.for.inc_crit_edge, %if.end49.for.inc_crit_edge, %land.lhs.true41.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %13 = getelementptr inbounds %struct.sock_common, ptr %sk.0138, i32 0, i32 15
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool71.not = icmp eq ptr %15, null
  %add.ptr75 = getelementptr i8, ptr %15, i32 -84
  %tobool10.not142 = icmp eq ptr %add.ptr75, null
  %tobool10.not = or i1 %tobool71.not, %tobool10.not142
  br i1 %tobool10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end61.for.end_crit_edge, %if.end5.for.end_crit_edge
  %sk.0.lcssa = phi ptr [ null, %if.end5.for.end_crit_edge ], [ %sk.0138, %if.end61.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_sock_from_sn, %if.then93)) #11
          to label %cleanup [label %if.then93], !srcloc !328

if.then93:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.59, ptr noundef %sk.0.lcssa) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %for.end, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %sk.0.lcssa, %if.then93 ], [ %sk.0.lcssa, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nfc_llcp_get_local_ssap(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdp_lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %sdp_lock, i32 noundef 0) #11
  %local_sap = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 18
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %local_sap, i32 noundef 32) #11
  %conv1 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv1)
  %cmp = icmp eq i32 %conv1, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %sdp_lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef %conv1, ptr noundef %local_sap) #11
  tail call void @mutex_unlock(ptr noundef %sdp_lock) #11
  %0 = trunc i32 %call to i8
  %conv8 = add i8 %0, 32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ -1, %if.then ], [ %conv8, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_put_ssap(ptr noundef %local, i8 noundef zeroext %ssap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ssap to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %ssap)
  %cmp = icmp ult i8 %ssap, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %local_wks = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 16
  br label %if.end50

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %ssap)
  %cmp3 = icmp ult i8 %ssap, 32
  br i1 %cmp3, label %if.then5, label %if.else39

if.then5:                                         ; preds = %if.else
  %sub = add nsw i8 %ssap, -16
  %local_sdp = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 17
  %idxprom = zext i8 %sub to i32
  %arrayidx = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 19, i32 %idxprom
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_put_ssap.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_put_ssap, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !328

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_put_ssap.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.then5
  %sdp_lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %sdp_lock, i32 noundef 0) #11
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #11, !srcloc !330
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then13, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then13:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_put_ssap.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_put_ssap, %if.then26)) #11
          to label %do.end30 [label %if.then26], !srcloc !328

if.then26:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_put_ssap.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef %conv) #11
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %if.then13
  tail call void @_clear_bit(i32 noundef %idxprom, ptr noundef %local_sdp) #11
  %call32 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %local, i8 noundef zeroext %ssap, i8 noundef zeroext 1)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end30.cleanup.sink.split_crit_edge, label %if.then34

do.end30.cleanup.sink.split_crit_edge:            ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then34:                                        ; preds = %do.end30
  %ssap35 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call32, i32 0, i32 5
  %3 = ptrtoint ptr %ssap35 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 65, ptr %ssap35, align 8
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call32, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup.sink.split_crit_edge, label %if.then10.i.i.i.i.i, !prof !324

if.end5.i.i.i.i.i.cleanup.sink.split_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #11
  br label %cleanup.sink.split

if.then.i.i:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %call32) #11
  br label %cleanup.sink.split

if.else39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %ssap)
  %cmp41 = icmp ult i8 %ssap, 64
  br i1 %cmp41, label %if.then43, label %if.else39.cleanup_crit_edge

if.else39.cleanup_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #13
  %sub45 = add nsw i8 %ssap, -32
  %local_sap = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 18
  %.pre = zext i8 %sub45 to i32
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %if.then
  %conv52.pre-phi = phi i32 [ %.pre, %if.then43 ], [ %conv, %if.then ]
  %sdp.0 = phi ptr [ %local_sap, %if.then43 ], [ %local_wks, %if.then ]
  %sdp_lock51 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %sdp_lock51, i32 noundef 0) #11
  tail call void @_clear_bit(i32 noundef %conv52.pre-phi, ptr noundef %sdp.0) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end50, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup.sink.split_crit_edge, %do.end30.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %sdp_lock51.sink = phi ptr [ %sdp_lock51, %if.end50 ], [ %sdp_lock, %if.then.i.i ], [ %sdp_lock, %if.then10.i.i.i.i.i ], [ %sdp_lock, %if.end5.i.i.i.i.i.cleanup.sink.split_crit_edge ], [ %sdp_lock, %do.end30.cleanup.sink.split_crit_edge ], [ %sdp_lock, %do.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sdp_lock51.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else39.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfc_llcp_sock_get(ptr noundef %local, i8 noundef zeroext %ssap, i8 noundef zeroext %dsap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_sock_get.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_sock_get, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !328

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %ssap to i32
  %conv3 = zext i8 %dsap to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_sock_get.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %conv, i32 noundef %conv3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = or i8 %dsap, %ssap
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %1 = icmp eq i8 %0, 0
  br i1 %1, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 34
  %lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 34, i32 1
  tail call void @_raw_read_lock(ptr noundef %lock) #11
  %2 = ptrtoint ptr %sockets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sockets, align 4
  %tobool13.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -84
  %tobool15.not7175 = icmp eq ptr %add.ptr, null
  %tobool15.not71 = or i1 %tobool13.not, %tobool15.not7175
  br i1 %tobool15.not71, label %if.end10.for.end.thread_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %if.end10.for.end.thread_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %lock) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %sk.072 = phi ptr [ %add.ptr35, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end10.for.body_crit_edge ]
  %ssap16 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.072, i32 0, i32 5
  %4 = ptrtoint ptr %ssap16 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap16, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %ssap)
  %cmp19 = icmp eq i8 %5, %ssap
  br i1 %cmp19, label %land.lhs.true21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true21:                                  ; preds = %for.body
  %dsap22 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.072, i32 0, i32 6
  %6 = ptrtoint ptr %dsap22 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dsap22, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %dsap)
  %cmp25 = icmp eq i8 %7, %dsap
  br i1 %cmp25, label %if.end44, label %land.lhs.true21.for.inc_crit_edge

land.lhs.true21.for.inc_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk.072, i32 0, i32 15
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool31.not = icmp eq ptr %10, null
  %add.ptr35 = getelementptr i8, ptr %10, i32 -84
  %tobool15.not77 = icmp eq ptr %add.ptr35, null
  %tobool15.not = or i1 %tobool31.not, %tobool15.not77
  br i1 %tobool15.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

if.end44:                                         ; preds = %land.lhs.true21
  tail call void @_raw_read_unlock(ptr noundef %lock) #11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk.072, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !322
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end44.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !323

if.end44.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end44
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !324

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end44.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end44.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %for.end.thread, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.end.thread ], [ %sk.072, %if.else.i.i.i.i.cleanup_crit_edge ], [ %sk.072, %if.end15.sink.split.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_general_bytes(ptr noundef readnone %dev, ptr nocapture noundef writeonly %general_bytes_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %local.0.in.i = phi ptr [ @llcp_devices, %entry ], [ %local.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %local.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %local.0.i = load ptr, ptr %local.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %local.0.i, @llcp_devices
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %dev1.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i, label %for.body.i.nfc_llcp_find_local.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.nfc_llcp_find_local.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_find_local.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_general_bytes, %nfc_llcp_find_local.exit.thread)) #11
          to label %nfc_llcp_find_local.exit [label %nfc_llcp_find_local.exit.thread], !srcloc !328

nfc_llcp_find_local.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #11
  br label %if.then

nfc_llcp_find_local.exit:                         ; preds = %do.body.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.body.i ], [ %local.0.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %nfc_llcp_find_local.exit.if.then_crit_edge, label %if.end

nfc_llcp_find_local.exit.if.then_crit_edge:       ; preds = %nfc_llcp_find_local.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %nfc_llcp_find_local.exit.if.then_crit_edge, %nfc_llcp_find_local.exit.thread
  %3 = ptrtoint ptr %general_bytes_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %general_bytes_len, align 4
  br label %cleanup

if.end:                                           ; preds = %nfc_llcp_find_local.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nfc_llcp_build_gb(ptr noundef nonnull %retval.0.i)
  %gb_len = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i, i32 0, i32 21
  %4 = ptrtoint ptr %gb_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gb_len, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %general_bytes_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %general_bytes_len, align 4
  %gb = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i, i32 0, i32 20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %gb, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_build_gb(ptr noundef %local) unnamed_addr #0 align 64 {
entry:
  %version = alloca i8, align 1
  %version_length = alloca i8, align 1
  %lto_length = alloca i8, align 1
  %wks_length = alloca i8, align 1
  %miux_length = alloca i8, align 1
  %wks = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %version) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %version_length) #11
  %0 = ptrtoint ptr %version_length to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %version_length, align 1, !annotation !332
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lto_length) #11
  %1 = ptrtoint ptr %lto_length to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %lto_length, align 1, !annotation !332
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wks_length) #11
  %2 = ptrtoint ptr %wks_length to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %wks_length, align 1, !annotation !332
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %miux_length) #11
  %3 = ptrtoint ptr %miux_length to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %miux_length, align 1, !annotation !332
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wks) #11
  %local_wks = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 16
  %4 = ptrtoint ptr %local_wks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local_wks, align 4
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %wks to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %wks, align 2
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 17, ptr %version, align 1
  %call = call ptr @nfc_llcp_build_tlv(i8 noundef zeroext 1, ptr noundef nonnull %version, i8 noundef zeroext 1, ptr noundef nonnull %version_length) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %version_length to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %version_length, align 1
  %lto = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 13
  %call4 = call ptr @nfc_llcp_build_tlv(i8 noundef zeroext 4, ptr noundef %lto, i8 noundef zeroext 1, ptr noundef nonnull %lto_length) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %lto_length to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lto_length, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_build_gb.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_build_gb, %if.then16)) #11
          to label %do.end [label %if.then16], !srcloc !328

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %local_wks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %local_wks, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_build_gb.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69, i32 noundef %13) #11
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end7
  %call19 = call ptr @nfc_llcp_build_tlv(i8 noundef zeroext 3, ptr noundef nonnull %wks, i8 noundef zeroext 2, ptr noundef nonnull %wks_length) #11
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end.out_crit_edge, label %if.end22

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end22:                                         ; preds = %do.end
  %14 = ptrtoint ptr %wks_length to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wks_length, align 1
  %miux = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 15
  %call27 = call ptr @nfc_llcp_build_tlv(i8 noundef zeroext 2, ptr noundef %miux, i8 noundef zeroext 0, ptr noundef nonnull %miux_length) #11
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end22.out_crit_edge, label %if.end30

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end30:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %miux_length to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %miux_length, align 1
  %add10 = add i8 %9, 3
  %add25 = add i8 %add10, %11
  %add33 = add i8 %add25, %15
  %add36 = add i8 %add33, %17
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %add36)
  %cmp = icmp ugt i8 %add36, 48
  br i1 %cmp, label %if.end30.out_crit_edge, label %if.end41

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end41:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %gb = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 20
  %18 = call ptr @memcpy(ptr %gb, ptr @llcp_magic, i32 3)
  %add.ptr = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 20, i32 3
  %19 = ptrtoint ptr %version_length to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %version_length, align 1
  %conv42 = zext i8 %20 to i32
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %call, i32 %conv42)
  %add.ptr44 = getelementptr i8, ptr %add.ptr, i32 %conv42
  %22 = ptrtoint ptr %lto_length to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lto_length, align 1
  %conv45 = zext i8 %23 to i32
  %24 = call ptr @memcpy(ptr %add.ptr44, ptr %call4, i32 %conv45)
  %add.ptr47 = getelementptr i8, ptr %add.ptr44, i32 %conv45
  %25 = ptrtoint ptr %wks_length to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wks_length, align 1
  %conv48 = zext i8 %26 to i32
  %27 = call ptr @memcpy(ptr %add.ptr47, ptr %call19, i32 %conv48)
  %add.ptr50 = getelementptr i8, ptr %add.ptr47, i32 %conv48
  %conv51 = zext i8 %17 to i32
  %28 = call ptr @memcpy(ptr %add.ptr50, ptr %call27, i32 %conv51)
  %gb_len54 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 21
  %29 = ptrtoint ptr %gb_len54 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %add36, ptr %gb_len54, align 4
  br label %out

out:                                              ; preds = %if.end41, %if.end30.out_crit_edge, %if.end22.out_crit_edge, %do.end.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %lto_tlv.0 = phi ptr [ %call4, %if.end41 ], [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call4, %do.end.out_crit_edge ], [ %call4, %if.end22.out_crit_edge ], [ %call4, %if.end30.out_crit_edge ]
  %wks_tlv.0 = phi ptr [ %call19, %if.end41 ], [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %do.end.out_crit_edge ], [ %call19, %if.end22.out_crit_edge ], [ %call19, %if.end30.out_crit_edge ]
  %miux_tlv.0 = phi ptr [ %call27, %if.end41 ], [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %do.end.out_crit_edge ], [ null, %if.end22.out_crit_edge ], [ %call27, %if.end30.out_crit_edge ]
  call void @kfree(ptr noundef %call) #11
  call void @kfree(ptr noundef %lto_tlv.0) #11
  call void @kfree(ptr noundef %wks_tlv.0) #11
  call void @kfree(ptr noundef %miux_tlv.0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wks) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %miux_length) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wks_length) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lto_length) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %version_length) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %version) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_set_remote_gb(ptr noundef readnone %dev, ptr nocapture noundef readonly %gb, i8 noundef zeroext %gb_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %gb_len to i32
  %0 = add i8 %gb_len, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 -46, i8 %0)
  %1 = icmp ult i8 %0, -46
  br i1 %1, label %entry.cleanup_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %local.0.in.i = phi ptr [ %local.0.i, %for.body.i.for.cond.i_crit_edge ], [ @llcp_devices, %entry.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %local.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %local.0.i = load ptr, ptr %local.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %local.0.i, @llcp_devices
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %dev1.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %4, %dev
  br i1 %cmp2.i, label %for.body.i.nfc_llcp_find_local.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.nfc_llcp_find_local.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_find_local.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_set_remote_gb, %nfc_llcp_find_local.exit.thread)) #11
          to label %nfc_llcp_find_local.exit [label %nfc_llcp_find_local.exit.thread], !srcloc !328

nfc_llcp_find_local.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #11
  br label %do.end

nfc_llcp_find_local.exit:                         ; preds = %do.body.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.body.i ], [ %local.0.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge ]
  %cmp5 = icmp eq ptr %retval.0.i, null
  br i1 %cmp5, label %nfc_llcp_find_local.exit.do.end_crit_edge, label %if.end9

nfc_llcp_find_local.exit.do.end_crit_edge:        ; preds = %nfc_llcp_find_local.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %nfc_llcp_find_local.exit.do.end_crit_edge, %nfc_llcp_find_local.exit.thread
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end9:                                          ; preds = %nfc_llcp_find_local.exit
  %remote_gb = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i, i32 0, i32 22
  %5 = call ptr @memset(ptr %remote_gb, i32 0, i32 48)
  %6 = call ptr @memcpy(ptr %remote_gb, ptr %gb, i32 %conv)
  %remote_gb_len = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i, i32 0, i32 23
  %7 = ptrtoint ptr %remote_gb_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %gb_len, ptr %remote_gb_len, align 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %remote_gb, ptr noundef nonnull dereferenceable(3) @llcp_magic, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.nfc_llcp_local, ptr %retval.0.i, i32 0, i32 22, i32 3
  %8 = zext i8 %gb_len to i16
  %conv26 = add nsw i16 %8, -3
  %call27 = tail call i32 @nfc_llcp_parse_gb_tlv(ptr noundef nonnull %retval.0.i, ptr noundef %arrayidx, i16 noundef zeroext %conv26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end19 ], [ %call27, %if.end22 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_parse_gb_tlv(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_send_to_raw_sock(ptr noundef %local, ptr noundef %skb, i8 noundef zeroext %direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 36
  %lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 36, i32 1
  tail call void @_raw_read_lock(ptr noundef %lock) #11
  %0 = ptrtoint ptr %raw_sockets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_sockets, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -84
  %tobool3.not7073 = icmp eq ptr %add.ptr, null
  %tobool3.not70 = or i1 %tobool.not, %tobool3.not7073
  br i1 %tobool3.not70, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 1
  %2 = and i8 %direction, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb_copy.072 = phi ptr [ null, %for.body.lr.ph ], [ %skb_copy.2, %for.inc.for.body_crit_edge ]
  %sk.071 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr42, %for.inc.for.body_crit_edge ]
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.071, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp.not = icmp eq i8 %4, 5
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %cmp5 = icmp eq ptr %skb_copy.072, null
  br i1 %cmp5, label %if.then7, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then7:                                         ; preds = %if.end
  %call = tail call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef 2, i32 noundef 2592, i1 noundef zeroext true) #11
  %cmp8 = icmp eq ptr %call, null
  br i1 %cmp8, label %if.then7.for.inc_crit_edge, label %if.end11

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end11:                                         ; preds = %if.then7
  %call12 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 2) #11
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %if.end11.cond.end17_crit_edge, label %cond.true14

if.end11.cond.end17_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end17

cond.true14:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true14, %if.end11.cond.end17_crit_edge
  %cond18 = phi i32 [ %8, %cond.true14 ], [ 255, %if.end11.cond.end17_crit_edge ]
  %conv19 = trunc i32 %cond18 to i8
  %9 = ptrtoint ptr %call12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv19, ptr %call12, align 1
  %arrayidx22 = getelementptr i8, ptr %call12, i32 1
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %2, ptr %arrayidx22, align 1
  br label %if.end26

if.end26:                                         ; preds = %cond.end17, %if.end.if.end26_crit_edge
  %skb_copy.1 = phi ptr [ %call, %cond.end17 ], [ %skb_copy.072, %if.end.if.end26_crit_edge ]
  %call27 = tail call ptr @skb_clone(ptr noundef nonnull %skb_copy.1, i32 noundef 2592) #11
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.for.inc_crit_edge, label %if.end30

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end30:                                         ; preds = %if.end26
  %call31 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %sk.071, ptr noundef nonnull %call27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.for.inc_crit_edge, label %if.then33

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call27, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.end30.for.inc_crit_edge, %if.end26.for.inc_crit_edge, %if.then7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %skb_copy.2 = phi ptr [ %skb_copy.072, %for.body.for.inc_crit_edge ], [ null, %if.then7.for.inc_crit_edge ], [ %skb_copy.1, %if.then33 ], [ %skb_copy.1, %if.end30.for.inc_crit_edge ], [ %skb_copy.1, %if.end26.for.inc_crit_edge ]
  %11 = getelementptr inbounds %struct.sock_common, ptr %sk.071, i32 0, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool38.not = icmp eq ptr %13, null
  %add.ptr42 = getelementptr i8, ptr %13, i32 -84
  %tobool3.not74 = icmp eq ptr %add.ptr42, null
  %tobool3.not = or i1 %tobool38.not, %tobool3.not74
  br i1 %tobool3.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %skb_copy.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %skb_copy.2, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %lock) #11
  tail call void @kfree_skb_reason(ptr noundef %skb_copy.0.lcssa, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_queue_i_frames(ptr noundef %sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 2
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_queue_i_frames.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_queue_i_frames, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !328

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %remote_ready = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 17
  %2 = ptrtoint ptr %remote_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %remote_ready, align 8
  %conv = zext i8 %3 to i32
  %qlen.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  %remote_rw = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 11
  %6 = ptrtoint ptr %remote_rw to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %remote_rw, align 8
  %conv5 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_queue_i_frames.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %5, i32 noundef %conv5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %qlen.i33 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 20, i32 1
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 19
  %remote_ready6 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 17
  %8 = ptrtoint ptr %remote_ready6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %remote_ready6, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not38 = icmp eq i8 %9, 0
  br i1 %tobool8.not38, label %do.end.while.end_crit_edge, label %land.rhs.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %do.end
  %remote_rw11 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 11
  %send_n.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 13
  %recv_n.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 15
  %recv_ack_n.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock, i32 0, i32 16
  %tx_queue19 = getelementptr inbounds %struct.nfc_llcp_local, ptr %1, i32 0, i32 5
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %nr_frames.039 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %cleanup.land.rhs_crit_edge ]
  %10 = ptrtoint ptr %qlen.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i33, align 4
  %12 = ptrtoint ptr %remote_rw11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %remote_rw11, align 8
  %conv12 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv12)
  %cmp = icmp ult i32 %11, %conv12
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call14 = tail call ptr @skb_dequeue(ptr noundef %tx_queue) #11
  %cmp15 = icmp eq ptr %call14, null
  br i1 %cmp15, label %while.body.while.end_crit_edge, label %cleanup

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup:                                          ; preds = %while.body
  %14 = ptrtoint ptr %send_n.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %send_n.i, align 4
  %shl.i = shl i8 %15, 4
  %16 = ptrtoint ptr %recv_n.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %recv_n.i, align 2
  %or.i = or i8 %shl.i, %17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call14, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or.i, ptr %arrayidx.i, align 1
  %21 = load i8, ptr %send_n.i, align 4
  %22 = add i8 %21, 1
  %23 = and i8 %22, 15
  store i8 %23, ptr %send_n.i, align 4
  %24 = load i8, ptr %recv_n.i, align 2
  %conv8.i = zext i8 %24 to i16
  %sub.i = add nsw i16 %conv8.i, -1
  %rem916.i = srem i16 %sub.i, 16
  %conv10.i = trunc i16 %rem916.i to i8
  %25 = ptrtoint ptr %recv_ack_n.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10.i, ptr %recv_ack_n.i, align 1
  tail call void @skb_queue_tail(ptr noundef %tx_queue19, ptr noundef nonnull %call14) #11
  %inc = add i32 %nr_frames.039, 1
  %26 = ptrtoint ptr %remote_ready6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %remote_ready6, align 8
  %tobool8.not = icmp eq i8 %27, 0
  br i1 %tobool8.not, label %cleanup.while.end_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %do.end.while.end_crit_edge
  %nr_frames.0.lcssa = phi i32 [ 0, %do.end.while.end_crit_edge ], [ %nr_frames.039, %while.body.while.end_crit_edge ], [ %inc, %cleanup.while.end_crit_edge ], [ %nr_frames.039, %land.rhs.while.end_crit_edge ]
  ret i32 %nr_frames.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_recv(ptr noundef %data, ptr noundef %skb, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %cmp = icmp slt i32 %err, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %err) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rx_pending.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %skb, ptr %rx_pending.i, align 4
  %link_timer.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %data, i32 0, i32 4
  %call.i = tail call i32 @del_timer(ptr noundef %link_timer.i) #11
  %rx_work.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %data, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %rx_work.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_data_received(ptr noundef readnone %dev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %local.0.in.i = phi ptr [ @llcp_devices, %entry ], [ %local.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %local.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %local.0.i = load ptr, ptr %local.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %local.0.i, @llcp_devices
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %dev1.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i, label %for.body.i.nfc_llcp_find_local.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.nfc_llcp_find_local.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_find_local.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_data_received, %nfc_llcp_find_local.exit.thread)) #11
          to label %nfc_llcp_find_local.exit [label %nfc_llcp_find_local.exit.thread], !srcloc !328

nfc_llcp_find_local.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #11
  br label %if.then

nfc_llcp_find_local.exit:                         ; preds = %do.body.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.body.i ], [ %local.0.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %nfc_llcp_find_local.exit.if.then_crit_edge, label %if.end

nfc_llcp_find_local.exit.if.then_crit_edge:       ; preds = %nfc_llcp_find_local.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %nfc_llcp_find_local.exit.if.then_crit_edge, %nfc_llcp_find_local.exit.thread
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %nfc_llcp_find_local.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rx_pending.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i, i32 0, i32 8
  %3 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %skb, ptr %rx_pending.i, align 4
  %link_timer.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i, i32 0, i32 4
  %call.i = tail call i32 @del_timer(ptr noundef %link_timer.i) #11
  %rx_work.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %rx_work.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_mac_is_down(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %local.0.in.i = phi ptr [ @llcp_devices, %entry ], [ %local.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %local.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %local.0.i = load ptr, ptr %local.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %local.0.i, @llcp_devices
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %dev1.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i, label %for.body.i.nfc_llcp_find_local.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.nfc_llcp_find_local.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_find_local.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_mac_is_down, %nfc_llcp_find_local.exit.thread)) #11
          to label %nfc_llcp_find_local.exit [label %nfc_llcp_find_local.exit.thread], !srcloc !328

nfc_llcp_find_local.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #11
  br label %cleanup

nfc_llcp_find_local.exit:                         ; preds = %do.body.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.body.i ], [ %local.0.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %nfc_llcp_find_local.exit.cleanup_crit_edge, label %if.end

nfc_llcp_find_local.exit.cleanup_crit_edge:       ; preds = %nfc_llcp_find_local.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nfc_llcp_find_local.exit
  call void @__sanitizer_cov_trace_pc() #13
  %remote_miu = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i, i32 0, i32 25
  %3 = ptrtoint ptr %remote_miu to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 128, ptr %remote_miu, align 4
  %remote_lto = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i, i32 0, i32 26
  %4 = ptrtoint ptr %remote_lto to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 100, ptr %remote_lto, align 2
  tail call fastcc void @nfc_llcp_socket_release(ptr noundef nonnull %retval.0.i, i1 noundef zeroext true, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfc_llcp_find_local.exit.cleanup_crit_edge, %nfc_llcp_find_local.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_socket_release(ptr noundef %local, i1 noundef zeroext %device, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %tx_queue) #11
  %sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 34
  %lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 34, i32 1
  tail call void @_raw_write_lock(ptr noundef %lock) #11
  %0 = ptrtoint ptr %sockets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sockets, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -84
  %tobool4.not229234 = icmp eq ptr %add.ptr, null
  %tobool4.not229 = or i1 %tobool.not, %tobool4.not229234
  br i1 %tobool4.not229, label %entry.for.end66_crit_edge, label %land.rhs.lr.ph

entry.for.end66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end66

land.rhs.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool33.not = icmp eq i32 %err, 0
  br label %land.rhs

land.rhs:                                         ; preds = %sk_del_node_init.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %sk.0230 = phi ptr [ %add.ptr, %land.rhs.lr.ph ], [ %add.ptr62, %sk_del_node_init.exit.land.rhs_crit_edge ]
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk.0230, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %sk.0230, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #11
  %local1.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.0230, i32 0, i32 2
  %5 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local1.i, align 4
  %tx_queue.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.0230, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %tx_queue.i) #11
  %tx_pending_queue.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.0230, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %tx_pending_queue.i) #11
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %land.rhs.nfc_llcp_socket_purge.exit_crit_edge, label %if.end.i

land.rhs.nfc_llcp_socket_purge.exit_crit_edge:    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_socket_purge.exit

if.end.i:                                         ; preds = %land.rhs
  %tx_queue2.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %tx_queue2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_queue2.i, align 4
  %cmp5.not25.i = icmp eq ptr %8, %tx_queue2.i
  br i1 %cmp5.not25.i, label %if.end.i.nfc_llcp_socket_purge.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.nfc_llcp_socket_purge.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_socket_purge.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %s.026.i = phi ptr [ %tmp.027.i, %for.inc.i.for.body.i_crit_edge ], [ %8, %if.end.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %s.026.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.027.i = load ptr, ptr %s.026.i, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %s.026.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %cmp6.not.i = icmp eq ptr %12, %sk.0230
  br i1 %cmp6.not.i, label %if.end8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_unlink(ptr noundef %s.026.i, ptr noundef %tx_queue2.i) #11
  tail call void @kfree_skb_reason(ptr noundef %s.026.i, i32 noundef 0) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %for.body.i.for.inc.i_crit_edge
  %cmp5.not.i = icmp eq ptr %tmp.027.i, %tx_queue2.i
  br i1 %cmp5.not.i, label %for.inc.i.nfc_llcp_socket_purge.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.nfc_llcp_socket_purge.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_socket_purge.exit

nfc_llcp_socket_purge.exit:                       ; preds = %for.inc.i.nfc_llcp_socket_purge.exit_crit_edge, %if.end.i.nfc_llcp_socket_purge.exit_crit_edge, %land.rhs.nfc_llcp_socket_purge.exit_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.0230, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp eq i8 %14, 1
  br i1 %cmp, label %if.then, label %nfc_llcp_socket_purge.exit.if.end_crit_edge

nfc_llcp_socket_purge.exit.if.end_crit_edge:      ; preds = %nfc_llcp_socket_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %nfc_llcp_socket_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.0230, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %16, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %nfc_llcp_socket_purge.exit.if.end_crit_edge
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %18)
  %cmp12 = icmp eq i8 %18, 6
  br i1 %cmp12, label %if.then14, label %if.end.if.end45_crit_edge

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then14:                                        ; preds = %if.end
  %accept_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.0230, i32 0, i32 21
  %19 = ptrtoint ptr %accept_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %accept_queue, align 4
  %lsk.0223 = getelementptr i8, ptr %20, i32 -1116
  %cmp27.not225 = icmp eq ptr %lsk.0223, %sk.0230
  br i1 %cmp27.not225, label %if.then14.if.end45_crit_edge, label %if.then14.for.body29_crit_edge

if.then14.for.body29_crit_edge:                   ; preds = %if.then14
  br label %for.body29

if.then14.if.end45_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

for.body29:                                       ; preds = %if.end35.for.body29_crit_edge, %if.then14.for.body29_crit_edge
  %lsk.0227 = phi ptr [ %lsk.0, %if.end35.for.body29_crit_edge ], [ %lsk.0223, %if.then14.for.body29_crit_edge ]
  %.pn.in226 = phi ptr [ %.pn228, %if.end35.for.body29_crit_edge ], [ %20, %if.then14.for.body29_crit_edge ]
  %21 = ptrtoint ptr %.pn.in226 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn228 = load ptr, ptr %.pn.in226, align 4
  %sk_lock31 = getelementptr i8, ptr %.pn.in226, i32 -992
  tail call void @_raw_spin_lock(ptr noundef %sk_lock31) #11
  tail call void @nfc_llcp_accept_unlink(ptr noundef %lsk.0227) #11
  br i1 %tobool33.not, label %for.body29.if.end35_crit_edge, label %if.then34

for.body29.if.end35_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then34:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  %sk_err = getelementptr i8, ptr %.pn.in226, i32 -424
  %22 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %err, ptr %sk_err, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %for.body29.if.end35_crit_edge
  %skc_state37 = getelementptr i8, ptr %.pn.in226, i32 -1098
  %23 = ptrtoint ptr %skc_state37 to i32
  call void @__asan_store1_noabort(i32 %23)
  store volatile i8 4, ptr %skc_state37, align 2
  %sk_state_change = getelementptr i8, ptr %.pn.in226, i32 -208
  %24 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk_state_change, align 4
  tail call void %25(ptr noundef nonnull %sk.0230) #11
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock31) #11
  %lsk.0 = getelementptr i8, ptr %.pn228, i32 -1116
  %cmp27.not = icmp eq ptr %lsk.0, %sk.0230
  br i1 %cmp27.not, label %if.end35.if.end45_crit_edge, label %if.end35.for.body29_crit_edge

if.end35.for.body29_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body29

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end45:                                         ; preds = %if.end35.if.end45_crit_edge, %if.then14.if.end45_crit_edge, %if.end.if.end45_crit_edge
  br i1 %tobool33.not, label %if.end45.if.end49_crit_edge, label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %sk_err48 = getelementptr inbounds %struct.sock, ptr %sk.0230, i32 0, i32 51
  %26 = ptrtoint ptr %sk_err48 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %err, ptr %sk_err48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge
  %27 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %27)
  store volatile i8 4, ptr %skc_state, align 2
  %sk_state_change52 = getelementptr inbounds %struct.sock, ptr %sk.0230, i32 0, i32 76
  %28 = ptrtoint ptr %sk_state_change52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_state_change52, align 4
  tail call void %29(ptr noundef nonnull %sk.0230) #11
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #11
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.0230, i32 0, i32 15, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i.i.not.i, label %if.end49.sk_del_node_init.exit_crit_edge, label %if.then.i.i

if.end49.sk_del_node_init.exit_crit_edge:         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %if.end49
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %33, ptr %31, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %31, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %36 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk.0230, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  %37 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i183 = icmp eq i32 %38, 1
  br i1 %cmp.i183, label %do.end.i, label %if.then.i.if.end.i184_crit_edge, !prof !323

if.then.i.if.end.i184_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i184

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 729, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i184

if.end.i184:                                      ; preds = %do.end.i, %if.then.i.if.end.i184_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i184.sk_del_node_init.exit_crit_edge, !prof !323

if.end.i184.sk_del_node_init.exit_crit_edge:      ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i184.sk_del_node_init.exit_crit_edge, %if.end49.sk_del_node_init.exit_crit_edge
  %tobool58.not = icmp eq ptr %4, null
  %add.ptr62 = getelementptr i8, ptr %4, i32 -84
  %tobool4.not236 = icmp eq ptr %add.ptr62, null
  %tobool4.not = or i1 %tobool58.not, %tobool4.not236
  br i1 %tobool4.not, label %sk_del_node_init.exit.for.end66_crit_edge, label %sk_del_node_init.exit.land.rhs_crit_edge

sk_del_node_init.exit.land.rhs_crit_edge:         ; preds = %sk_del_node_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

sk_del_node_init.exit.for.end66_crit_edge:        ; preds = %sk_del_node_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end66

for.end66:                                        ; preds = %sk_del_node_init.exit.for.end66_crit_edge, %entry.for.end66_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %lock) #11
  br i1 %device, label %for.end66.cleanup_crit_edge, label %if.end74

for.end66.cleanup_crit_edge:                      ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end74:                                         ; preds = %for.end66
  %raw_sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 36
  %lock75 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 36, i32 1
  tail call void @_raw_write_lock(ptr noundef %lock75) #11
  %40 = ptrtoint ptr %raw_sockets to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %raw_sockets, align 4
  %tobool81.not = icmp eq ptr %41, null
  %add.ptr85 = getelementptr i8, ptr %41, i32 -84
  %tobool90.not232235 = icmp eq ptr %add.ptr85, null
  %tobool90.not232 = or i1 %tobool81.not, %tobool90.not232235
  br i1 %tobool90.not232, label %if.end74.for.end121_crit_edge, label %land.rhs91.lr.ph

if.end74.for.end121_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end121

land.rhs91.lr.ph:                                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool100.not = icmp eq i32 %err, 0
  br label %land.rhs91

land.rhs91:                                       ; preds = %sk_del_node_init.exit216.land.rhs91_crit_edge, %land.rhs91.lr.ph
  %sk.1233 = phi ptr [ %add.ptr85, %land.rhs91.lr.ph ], [ %add.ptr117, %sk_del_node_init.exit216.land.rhs91_crit_edge ]
  %42 = getelementptr inbounds %struct.sock_common, ptr %sk.1233, i32 0, i32 15
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %sk_lock98 = getelementptr inbounds %struct.sock, ptr %sk.1233, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock98) #11
  %local1.i185 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.1233, i32 0, i32 2
  %45 = ptrtoint ptr %local1.i185 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %local1.i185, align 4
  %tx_queue.i186 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.1233, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %tx_queue.i186) #11
  %tx_pending_queue.i187 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.1233, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %tx_pending_queue.i187) #11
  %cmp.i188 = icmp eq ptr %46, null
  br i1 %cmp.i188, label %land.rhs91.nfc_llcp_socket_purge.exit199_crit_edge, label %if.end.i191

land.rhs91.nfc_llcp_socket_purge.exit199_crit_edge: ; preds = %land.rhs91
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_socket_purge.exit199

if.end.i191:                                      ; preds = %land.rhs91
  %tx_queue2.i189 = getelementptr inbounds %struct.nfc_llcp_local, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %tx_queue2.i189 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_queue2.i189, align 4
  %cmp5.not25.i190 = icmp eq ptr %48, %tx_queue2.i189
  br i1 %cmp5.not25.i190, label %if.end.i191.nfc_llcp_socket_purge.exit199_crit_edge, label %if.end.i191.for.body.i195_crit_edge

if.end.i191.for.body.i195_crit_edge:              ; preds = %if.end.i191
  br label %for.body.i195

if.end.i191.nfc_llcp_socket_purge.exit199_crit_edge: ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_socket_purge.exit199

for.body.i195:                                    ; preds = %for.inc.i198.for.body.i195_crit_edge, %if.end.i191.for.body.i195_crit_edge
  %s.026.i192 = phi ptr [ %tmp.027.i193, %for.inc.i198.for.body.i195_crit_edge ], [ %48, %if.end.i191.for.body.i195_crit_edge ]
  %49 = ptrtoint ptr %s.026.i192 to i32
  call void @__asan_load4_noabort(i32 %49)
  %tmp.027.i193 = load ptr, ptr %s.026.i192, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %s.026.i192, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %cmp6.not.i194 = icmp eq ptr %52, %sk.1233
  br i1 %cmp6.not.i194, label %if.end8.i196, label %for.body.i195.for.inc.i198_crit_edge

for.body.i195.for.inc.i198_crit_edge:             ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i198

if.end8.i196:                                     ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_unlink(ptr noundef %s.026.i192, ptr noundef %tx_queue2.i189) #11
  tail call void @kfree_skb_reason(ptr noundef %s.026.i192, i32 noundef 0) #11
  br label %for.inc.i198

for.inc.i198:                                     ; preds = %if.end8.i196, %for.body.i195.for.inc.i198_crit_edge
  %cmp5.not.i197 = icmp eq ptr %tmp.027.i193, %tx_queue2.i189
  br i1 %cmp5.not.i197, label %for.inc.i198.nfc_llcp_socket_purge.exit199_crit_edge, label %for.inc.i198.for.body.i195_crit_edge

for.inc.i198.for.body.i195_crit_edge:             ; preds = %for.inc.i198
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i195

for.inc.i198.nfc_llcp_socket_purge.exit199_crit_edge: ; preds = %for.inc.i198
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_socket_purge.exit199

nfc_llcp_socket_purge.exit199:                    ; preds = %for.inc.i198.nfc_llcp_socket_purge.exit199_crit_edge, %if.end.i191.nfc_llcp_socket_purge.exit199_crit_edge, %land.rhs91.nfc_llcp_socket_purge.exit199_crit_edge
  br i1 %tobool100.not, label %nfc_llcp_socket_purge.exit199.if.end103_crit_edge, label %if.then101

nfc_llcp_socket_purge.exit199.if.end103_crit_edge: ; preds = %nfc_llcp_socket_purge.exit199
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then101:                                       ; preds = %nfc_llcp_socket_purge.exit199
  call void @__sanitizer_cov_trace_pc() #13
  %sk_err102 = getelementptr inbounds %struct.sock, ptr %sk.1233, i32 0, i32 51
  %53 = ptrtoint ptr %sk_err102 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %err, ptr %sk_err102, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %nfc_llcp_socket_purge.exit199.if.end103_crit_edge
  %skc_state105 = getelementptr inbounds %struct.sock_common, ptr %sk.1233, i32 0, i32 4
  %54 = ptrtoint ptr %skc_state105 to i32
  call void @__asan_store1_noabort(i32 %54)
  store volatile i8 4, ptr %skc_state105, align 2
  %sk_state_change106 = getelementptr inbounds %struct.sock, ptr %sk.1233, i32 0, i32 76
  %55 = ptrtoint ptr %sk_state_change106 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sk_state_change106, align 4
  tail call void %56(ptr noundef nonnull %sk.1233) #11
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock98) #11
  %pprev.i.i.i.i.i200 = getelementptr inbounds %struct.sock_common, ptr %sk.1233, i32 0, i32 15, i32 0, i32 1
  %57 = ptrtoint ptr %pprev.i.i.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pprev.i.i.i.i.i200, align 4
  %tobool.not.i.i.i.i.not.i201 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i.i.not.i201, label %if.end103.sk_del_node_init.exit216_crit_edge, label %if.then.i.i203

if.end103.sk_del_node_init.exit216_crit_edge:     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_del_node_init.exit216

if.then.i.i203:                                   ; preds = %if.end103
  %59 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %42, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %60, ptr %58, align 4
  %tobool.not.i.i.i.i202 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i.i202, label %if.then.i.i203.if.then.i209_crit_edge, label %do.body13.i.i.i.i205

if.then.i.i203.if.then.i209_crit_edge:            ; preds = %if.then.i.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i209

do.body13.i.i.i.i205:                             ; preds = %if.then.i.i203
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i.i204 = getelementptr inbounds %struct.hlist_node, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %pprev14.i.i.i.i204 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %58, ptr %pprev14.i.i.i.i204, align 4
  br label %if.then.i209

if.then.i209:                                     ; preds = %do.body13.i.i.i.i205, %if.then.i.i203.if.then.i209_crit_edge
  %63 = ptrtoint ptr %pprev.i.i.i.i.i200 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %pprev.i.i.i.i.i200, align 4
  %skc_refcnt.i206 = getelementptr inbounds %struct.sock_common, ptr %sk.1233, i32 0, i32 19
  %call.i.i.i.i207 = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i206, i32 noundef 4) #11
  %64 = ptrtoint ptr %skc_refcnt.i206 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %skc_refcnt.i206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i208 = icmp eq i32 %65, 1
  br i1 %cmp.i208, label %do.end.i210, label %if.then.i209.if.end.i214_crit_edge, !prof !323

if.then.i209.if.end.i214_crit_edge:               ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i214

do.end.i210:                                      ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 729, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i214

if.end.i214:                                      ; preds = %do.end.i210, %if.then.i209.if.end.i214_crit_edge
  %call.i.i.i.i.i.i211 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i206, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i206, i32 1, i32 3, i32 1) #11
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i206, ptr %skc_refcnt.i206, i32 1, ptr elementtype(i32) %skc_refcnt.i206) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i212 = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i212)
  %cmp.i.i.i.i213 = icmp slt i32 %asmresult.i.i.i.i.i.i.i212, 2
  br i1 %cmp.i.i.i.i213, label %if.then3.i.i.i.i215, label %if.end.i214.sk_del_node_init.exit216_crit_edge, !prof !323

if.end.i214.sk_del_node_init.exit216_crit_edge:   ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_del_node_init.exit216

if.then3.i.i.i.i215:                              ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i206, i32 noundef 4) #11
  br label %sk_del_node_init.exit216

sk_del_node_init.exit216:                         ; preds = %if.then3.i.i.i.i215, %if.end.i214.sk_del_node_init.exit216_crit_edge, %if.end103.sk_del_node_init.exit216_crit_edge
  %tobool113.not = icmp eq ptr %44, null
  %add.ptr117 = getelementptr i8, ptr %44, i32 -84
  %tobool90.not237 = icmp eq ptr %add.ptr117, null
  %tobool90.not = or i1 %tobool113.not, %tobool90.not237
  br i1 %tobool90.not, label %sk_del_node_init.exit216.for.end121_crit_edge, label %sk_del_node_init.exit216.land.rhs91_crit_edge

sk_del_node_init.exit216.land.rhs91_crit_edge:    ; preds = %sk_del_node_init.exit216
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs91

sk_del_node_init.exit216.for.end121_crit_edge:    ; preds = %sk_del_node_init.exit216
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end121

for.end121:                                       ; preds = %sk_del_node_init.exit216.for.end121_crit_edge, %if.end74.for.end121_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %lock75) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end121, %for.end66.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_mac_is_up(ptr noundef readnone %dev, i32 noundef %target_idx, i8 noundef zeroext %comm_mode, i8 noundef zeroext %rf_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_mac_is_up.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_mac_is_up, %if.then)) #11
          to label %for.cond.i [label %if.then], !srcloc !328

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %rf_mode to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_mac_is_up.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %conv) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then, %entry
  %local.0.in.i = phi ptr [ %local.0.i, %for.body.i.for.cond.i_crit_edge ], [ @llcp_devices, %entry ], [ @llcp_devices, %if.then ]
  %0 = ptrtoint ptr %local.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %local.0.i = load ptr, ptr %local.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %local.0.i, @llcp_devices
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %dev1.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i, label %for.body.i.nfc_llcp_find_local.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.nfc_llcp_find_local.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_find_local.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_mac_is_up, %nfc_llcp_find_local.exit.thread)) #11
          to label %nfc_llcp_find_local.exit [label %nfc_llcp_find_local.exit.thread], !srcloc !328

nfc_llcp_find_local.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #11
  br label %cleanup

nfc_llcp_find_local.exit:                         ; preds = %do.body.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge
  %retval.0.i47 = phi ptr [ null, %do.body.i ], [ %local.0.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i47, null
  br i1 %cmp, label %nfc_llcp_find_local.exit.cleanup_crit_edge, label %if.end6

nfc_llcp_find_local.exit.cleanup_crit_edge:       ; preds = %nfc_llcp_find_local.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %nfc_llcp_find_local.exit
  %target_idx7 = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i47, i32 0, i32 10
  %3 = ptrtoint ptr %target_idx7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %target_idx, ptr %target_idx7, align 4
  %comm_mode8 = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i47, i32 0, i32 12
  %4 = ptrtoint ptr %comm_mode8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %comm_mode, ptr %comm_mode8, align 1
  %rf_mode9 = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i47, i32 0, i32 11
  %5 = ptrtoint ptr %rf_mode9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %rf_mode, ptr %rf_mode9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rf_mode)
  %cmp11 = icmp eq i8 %rf_mode, 0
  br i1 %cmp11, label %do.body14, label %if.else

do.body14:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_mac_is_up.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_mac_is_up, %if.then26)) #11
          to label %do.end29 [label %if.then26], !srcloc !328

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_mac_is_up.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.23) #11
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %do.body14
  %tx_work = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i47, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %tx_work) #11
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %link_timer = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i47, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %remote_lto = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i47, i32 0, i32 26
  %8 = ptrtoint ptr %remote_lto to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %remote_lto, align 2
  %conv31 = zext i16 %9 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv31) #11
  %add = add i32 %call2.i, %7
  %call33 = tail call i32 @mod_timer(ptr noundef %link_timer, i32 noundef %add) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end29, %nfc_llcp_find_local.exit.cleanup_crit_edge, %nfc_llcp_find_local.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_register_device(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 880) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ndev, ptr %dev, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %ref = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %ref, align 4
  %sdp_lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %sdp_lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @nfc_llcp_register_device.__key) #11
  %link_timer = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %link_timer, ptr noundef nonnull @nfc_llcp_symm_timer, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @nfc_llcp_register_device.__key.29) #11
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %5 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_queue, ptr %tx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx_queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_work = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #11
  %8 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.32, ptr noundef nonnull @nfc_llcp_register_device.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry8 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry8, ptr %entry8, align 8
  %prev.i111 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry8, ptr %prev.i111, align 4
  %func = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nfc_llcp_tx_work, ptr %func, align 8
  %rx_pending = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rx_pending, align 4
  %rx_work = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %rx_work, i32 noundef 0) #11
  %13 = ptrtoint ptr %rx_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %rx_work, align 8
  %lockdep_map18 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map18, ptr noundef nonnull @.str.34, ptr noundef nonnull @nfc_llcp_register_device.__key.33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry20 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i112 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry20, ptr %prev.i112, align 8
  %func22 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %func22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nfc_llcp_rx_work, ptr %func22, align 4
  %timeout_work = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #11
  %17 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %timeout_work, align 8
  %lockdep_map31 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map31, ptr noundef nonnull @.str.36, ptr noundef nonnull @nfc_llcp_register_device.__key.35, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry33 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i113 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry33, ptr %prev.i113, align 8
  %func35 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nfc_llcp_timeout_work, ptr %func35, align 4
  %lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 34, i32 1
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @nfc_llcp_register_device.__key.37) #11
  %lock42 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 35, i32 1
  tail call void @__rwlock_init(ptr noundef %lock42, ptr noundef nonnull @.str.40, ptr noundef nonnull @nfc_llcp_register_device.__key.39) #11
  %lock46 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 36, i32 1
  tail call void @__rwlock_init(ptr noundef %lock46, ptr noundef nonnull @.str.42, ptr noundef nonnull @nfc_llcp_register_device.__key.41) #11
  %lto = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %lto to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -106, ptr %lto, align 2
  %rw = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 14
  %22 = ptrtoint ptr %rw to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 15, ptr %rw, align 1
  %miux = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %miux to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2047, ptr %miux, align 4
  %local_wks = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %local_wks to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %local_wks, align 8
  tail call fastcc void @nfc_llcp_build_gb(ptr noundef nonnull %call7.i.i)
  %remote_miu = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 25
  %25 = ptrtoint ptr %remote_miu to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 128, ptr %remote_miu, align 8
  %remote_lto = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 26
  %26 = ptrtoint ptr %remote_lto to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 100, ptr %remote_lto, align 2
  %sdreq_lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 29
  tail call void @__mutex_init(ptr noundef %sdreq_lock, ptr noundef nonnull @.str.44, ptr noundef nonnull @nfc_llcp_register_device.__key.43) #11
  %pending_sdreqs = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 30
  %27 = ptrtoint ptr %pending_sdreqs to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pending_sdreqs, align 4
  %sdreq_timer = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 31
  tail call void @init_timer_key(ptr noundef %sdreq_timer, ptr noundef nonnull @nfc_llcp_sdreq_timer, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @nfc_llcp_register_device.__key.45) #11
  %sdreq_timeout_work = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 32
  tail call void @__init_work(ptr noundef %sdreq_timeout_work, i32 noundef 0) #11
  %28 = ptrtoint ptr %sdreq_timeout_work to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %sdreq_timeout_work, align 8
  %lockdep_map62 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 32, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map62, ptr noundef nonnull @.str.48, ptr noundef nonnull @nfc_llcp_register_device.__key.47, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry64 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 32, i32 1
  %29 = ptrtoint ptr %entry64 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry64, ptr %entry64, align 4
  %prev.i114 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 32, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry64, ptr %prev.i114, align 8
  %func66 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call7.i.i, i32 0, i32 32, i32 2
  %31 = ptrtoint ptr %func66 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @nfc_llcp_sdreq_timeout_work, ptr %func66, align 4
  %32 = load ptr, ptr @llcp_devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @llcp_devices, ptr noundef %32) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %call7.i.i, align 8
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @llcp_devices, ptr %prev.i, align 4
  store volatile ptr %call7.i.i, ptr @llcp_devices, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfc_llcp_symm_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73) #15
  %timeout_work = getelementptr i8, ptr %t, i32 196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %timeout_work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfc_llcp_tx_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -212
  %tx_queue = getelementptr i8, ptr %work, i32 -56
  %call = tail call ptr @skb_dequeue(ptr noundef %tx_queue) #11
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.else71, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %land.lhs.true, label %land.lhs.true7

land.lhs.true:                                    ; preds = %if.then
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %7 = shl i8 %6, 2
  %8 = and i8 %7, 12
  %arrayidx2.i = getelementptr i8, ptr %4, i32 1
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2.i, align 1
  %11 = lshr i8 %10, 6
  %or7.i = or i8 %8, %11
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %or7.i)
  %cmp3 = icmp eq i8 %or7.i, 12
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.else13_crit_edge

land.lhs.true.if.else13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #11
  %dev = getelementptr i8, ptr %work, i32 -204
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call6 = tail call i32 @nfc_llcp_send_symm(ptr noundef %13) #11
  br label %out

land.lhs.true7:                                   ; preds = %if.then
  %remote_ready = getelementptr inbounds %struct.nfc_llcp_sock, ptr %2, i32 0, i32 17
  %14 = ptrtoint ptr %remote_ready to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %remote_ready, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true7.if.else13_crit_edge

land.lhs.true7.if.else13_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else13

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_head(ptr noundef %tx_queue, ptr noundef nonnull %call) #11
  %dev11 = getelementptr i8, ptr %work, i32 -204
  %16 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev11, align 4
  %call12 = tail call i32 @nfc_llcp_send_symm(ptr noundef %17) #11
  br label %out

if.else13:                                        ; preds = %land.lhs.true7.if.else13_crit_edge, %land.lhs.true.if.else13_crit_edge
  %data.i116 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %18 = ptrtoint ptr %data.i116 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i116, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %22 = shl i8 %21, 2
  %23 = and i8 %22, 12
  %arrayidx2.i117 = getelementptr i8, ptr %19, i32 1
  %24 = ptrtoint ptr %arrayidx2.i117 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2.i117, align 1
  %26 = lshr i8 %25, 6
  %or7.i118 = or i8 %23, %26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_tx_work.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_tx_work, %if.then20)) #11
          to label %do.body21 [label %if.then20], !srcloc !328

if.then20:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_tx_work.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75) #11
  br label %do.body21

do.body21:                                        ; preds = %if.then20, %if.else13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_tx_work.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_tx_work, %if.then33)) #11
          to label %do.end36 [label %if.then33], !srcloc !328

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %data.i116 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i116, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %28, i32 noundef %30, i1 noundef zeroext true) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %do.body21
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %or7.i118)
  %cmp38 = icmp ne i8 %or7.i118, 5
  %brmerge = select i1 %cmp38, i1 true, i1 %cmp1
  br i1 %brmerge, label %if.end48, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %do.end36
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %31 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp45 = icmp eq i8 %32, 3
  br i1 %cmp45, label %if.then47, label %land.lhs.true43.if.end54_crit_edge

land.lhs.true43.if.end54_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then47:                                        ; preds = %land.lhs.true43
  %sockets = getelementptr i8, ptr %work, i32 524
  tail call void @nfc_llcp_sock_unlink(ptr noundef %sockets, ptr noundef nonnull %2)
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #11
  %33 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %or.i.i.i = or i32 %35, 1
  store i32 %or.i.i.i, ptr %33, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 71
  %36 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %sk_socket.i.i, align 8
  %37 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 17
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %37, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end54_crit_edge, label %if.then10.i.i.i.i, !prof !324

if.end5.i.i.i.i.if.end54_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %if.end54

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %2) #11
  br label %if.end54

if.end48:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %or7.i118)
  %cmp50 = icmp eq i8 %or7.i118, 12
  br i1 %cmp50, label %if.then52, label %if.end48.if.end54_crit_edge

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = tail call ptr @skb_copy(ptr noundef nonnull %call, i32 noundef 2592) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end48.if.end54_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end54_crit_edge, %land.lhs.true43.if.end54_crit_edge
  %cmp50123 = phi i1 [ false, %if.then52 ], [ true, %if.end48.if.end54_crit_edge ], [ true, %if.then.i ], [ true, %if.then10.i.i.i.i ], [ true, %if.end5.i.i.i.i.if.end54_crit_edge ], [ true, %land.lhs.true43.if.end54_crit_edge ]
  %copy_skb.0 = phi ptr [ %call53, %if.then52 ], [ null, %if.end48.if.end54_crit_edge ], [ null, %if.then.i ], [ null, %if.then10.i.i.i.i ], [ null, %if.end5.i.i.i.i.if.end54_crit_edge ], [ null, %land.lhs.true43.if.end54_crit_edge ]
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %40 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %call.i.i, ptr %40, align 8
  tail call void @nfc_llcp_send_to_raw_sock(ptr noundef %add.ptr, ptr noundef nonnull %call, i8 noundef zeroext 1)
  %dev55 = getelementptr i8, ptr %work, i32 -204
  %42 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev55, align 4
  %target_idx = getelementptr i8, ptr %work, i32 136
  %44 = ptrtoint ptr %target_idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %target_idx, align 4
  %call56 = tail call i32 @nfc_data_exchange(ptr noundef %43, i32 noundef %45, ptr noundef nonnull %call, ptr noundef nonnull @nfc_llcp_recv, ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %copy_skb.0, i32 noundef 0) #11
  br label %out

if.end59:                                         ; preds = %if.end54
  %tobool64.not = icmp eq ptr %copy_skb.0, null
  %or.cond = select i1 %cmp50123, i1 true, i1 %tobool64.not
  br i1 %or.cond, label %if.end59.out_crit_edge, label %if.then65

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %tx_pending_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %2, i32 0, i32 20
  tail call void @skb_queue_tail(ptr noundef %tx_pending_queue, ptr noundef nonnull %copy_skb.0) #11
  br label %out

if.else71:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev72 = getelementptr i8, ptr %work, i32 -204
  %46 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev72, align 4
  %call73 = tail call i32 @nfc_llcp_send_symm(ptr noundef %47) #11
  br label %out

out:                                              ; preds = %if.else71, %if.then65, %if.end59.out_crit_edge, %if.then58, %if.then9, %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %remote_lto = getelementptr i8, ptr %work, i32 326
  %49 = ptrtoint ptr %remote_lto to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %remote_lto, align 2
  %conv75 = zext i16 %50 to i32
  %mul = shl nuw nsw i32 %conv75, 1
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #11
  %link_timer = getelementptr i8, ptr %work, i32 -104
  %add = add i32 %call2.i, %48
  %call77 = tail call i32 @mod_timer(ptr noundef %link_timer, i32 noundef %add) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfc_llcp_rx_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pending = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_pending, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_work.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_work, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !328

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_work.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %work, i32 -256
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i.i, ptr %2, align 8
  tail call void @nfc_llcp_send_to_raw_sock(ptr noundef %add.ptr, ptr noundef nonnull %1, i8 noundef zeroext 0)
  tail call fastcc void @nfc_llcp_rx_skb(ptr noundef %add.ptr, ptr noundef nonnull %1)
  %tx_work = getelementptr i8, ptr %work, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i18 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %tx_work) #11
  %5 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_pending, align 4
  tail call void @kfree_skb_reason(ptr noundef %6, i32 noundef 0) #11
  %7 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rx_pending, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfc_llcp_timeout_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -296
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @nfc_dep_link_down(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfc_llcp_sdreq_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdreq_timeout_work = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %sdreq_timeout_work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfc_llcp_sdreq_timeout_work(ptr noundef %work) #0 align 64 {
entry:
  %nl_sdres_list = alloca %struct.hlist_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nl_sdres_list) #11
  %0 = ptrtoint ptr %nl_sdres_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nl_sdres_list, align 4
  %sdreq_lock = getelementptr i8, ptr %work, i32 -144
  tail call void @mutex_lock_nested(ptr noundef %sdreq_lock, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %remote_lto = getelementptr i8, ptr %work, i32 -150
  %2 = ptrtoint ptr %remote_lto to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %remote_lto, align 2
  %conv = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv, 3
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #11
  %pending_sdreqs = getelementptr i8, ptr %work, i32 -52
  %4 = ptrtoint ptr %pending_sdreqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending_sdreqs, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr4 = getelementptr i8, ptr %5, i32 -20
  %tobool5.not6870 = icmp eq ptr %add.ptr4, null
  %tobool5.not68 = or i1 %tobool.not, %tobool5.not6870
  br i1 %tobool5.not68, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %sdp.069 = phi ptr [ %add.ptr19, %for.inc.land.rhs_crit_edge ], [ %add.ptr4, %entry.land.rhs_crit_edge ]
  %node = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.069, i32 0, i32 6
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %time8 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.069, i32 0, i32 5
  %8 = ptrtoint ptr %time8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time8, align 4
  %10 = add i32 %call2.i, %9
  %sub9 = sub i32 %1, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9)
  %cmp = icmp slt i32 %sub9, 0
  br i1 %cmp, label %land.rhs.for.inc_crit_edge, label %if.end

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %land.rhs
  %sap = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.069, i32 0, i32 4
  %11 = ptrtoint ptr %sap to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 65, ptr %sap, align 1
  %pprev2.i.i = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.069, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev2.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %7, ptr %13, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end.hlist_del.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end.hlist_del.exit_crit_edge
  %16 = ptrtoint ptr %nl_sdres_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nl_sdres_list, align 4
  %18 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %node, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %hlist_del.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

hlist_del.exit.hlist_add_head.exit_crit_edge:     ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %node, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %hlist_del.exit.hlist_add_head.exit_crit_edge
  %20 = ptrtoint ptr %nl_sdres_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %node, ptr %nl_sdres_list, align 4
  %21 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %nl_sdres_list, ptr %pprev2.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %hlist_add_head.exit, %land.rhs.for.inc_crit_edge
  %tobool15.not = icmp eq ptr %7, null
  %add.ptr19 = getelementptr i8, ptr %7, i32 -20
  %tobool5.not71 = icmp eq ptr %add.ptr19, null
  %tobool5.not = or i1 %tobool15.not, %tobool5.not71
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %22 = ptrtoint ptr %pending_sdreqs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %pending_sdreqs, align 4
  %tobool.not.i62.not = icmp eq ptr %23, null
  br i1 %tobool.not.i62.not, label %for.end.if.end32_crit_edge, label %if.then26

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %sdreq_timer = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %remote_lto to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %remote_lto, align 2
  %conv28 = zext i16 %26 to i32
  %mul29 = mul nuw nsw i32 %conv28, 3
  %call2.i58 = call i32 @__msecs_to_jiffies(i32 noundef %mul29) #11
  %add = add i32 %call2.i58, %24
  %call31 = call i32 @mod_timer(ptr noundef %sdreq_timer, i32 noundef %add) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %for.end.if.end32_crit_edge
  call void @mutex_unlock(ptr noundef %sdreq_lock) #11
  %27 = ptrtoint ptr %nl_sdres_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %nl_sdres_list, align 4
  %tobool.not.i63.not = icmp eq ptr %28, null
  br i1 %tobool.not.i63.not, label %if.end32.if.end38_crit_edge, label %if.then36

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %work, i32 -680
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %call37 = call i32 @nfc_genl_llc_send_sdres(ptr noundef %30, ptr noundef nonnull %nl_sdres_list) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nl_sdres_list) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_unregister_device(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %local.0.in.i = phi ptr [ @llcp_devices, %entry ], [ %local.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %local.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %local.0.i = load ptr, ptr %local.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %local.0.i, @llcp_devices
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %dev1.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i, label %for.body.i.nfc_llcp_find_local.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.nfc_llcp_find_local.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_find_local.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_unregister_device, %nfc_llcp_find_local.exit.thread)) #11
          to label %nfc_llcp_find_local.exit [label %nfc_llcp_find_local.exit.thread], !srcloc !328

nfc_llcp_find_local.exit.thread:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #11
  br label %do.body

nfc_llcp_find_local.exit:                         ; preds = %do.body.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge
  %retval.0.i9 = phi ptr [ null, %do.body.i ], [ %local.0.i, %for.body.i.nfc_llcp_find_local.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i9, null
  br i1 %cmp, label %nfc_llcp_find_local.exit.do.body_crit_edge, label %if.end5

nfc_llcp_find_local.exit.do.body_crit_edge:       ; preds = %nfc_llcp_find_local.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %nfc_llcp_find_local.exit.do.body_crit_edge, %nfc_llcp_find_local.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_unregister_device.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_unregister_device, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !328

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_unregister_device.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49) #11
  br label %cleanup

if.end5:                                          ; preds = %nfc_llcp_find_local.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nfc_llcp_socket_release(ptr noundef nonnull %retval.0.i9, i1 noundef zeroext false, i32 noundef 6) #11
  %link_timer.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i9, i32 0, i32 4
  %call.i = tail call i32 @del_timer_sync(ptr noundef %link_timer.i) #11
  %tx_queue.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i9, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %tx_queue.i) #11
  %tx_work.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i9, i32 0, i32 6
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work.i) #11
  %rx_work.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i9, i32 0, i32 7
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %rx_work.i) #11
  %timeout_work.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i9, i32 0, i32 9
  %call3.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %timeout_work.i) #11
  %rx_pending.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i9, i32 0, i32 8
  %3 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_pending.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #11
  %sdreq_timer.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i9, i32 0, i32 31
  %call4.i = tail call i32 @del_timer_sync(ptr noundef %sdreq_timer.i) #11
  %sdreq_timeout_work.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i9, i32 0, i32 32
  %call5.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %sdreq_timeout_work.i) #11
  %pending_sdreqs.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %retval.0.i9, i32 0, i32 30
  tail call void @nfc_llcp_free_sdp_tlv_list(ptr noundef %pending_sdreqs.i) #11
  %call6 = tail call i32 @nfc_llcp_local_put(ptr noundef nonnull %retval.0.i9)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %do.body
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfc_llcp_sock_init() #15
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @nfc_llcp_sock_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llcp_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfc_llcp_sock_exit() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_sock_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_build_tlv(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_accept_unlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_symm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_data_exchange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_rx_skb(ptr noundef %local, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = shl i8 %3, 2
  %5 = and i8 %4, 12
  %arrayidx2.i = getelementptr i8, ptr %1, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i, align 1
  %8 = lshr i8 %7, 6
  %or7.i = or i8 %5, %8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !328

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = and i8 %7, 63
  %10 = lshr i8 %3, 2
  %conv = zext i8 %or7.i to i32
  %conv6 = zext i8 %10 to i32
  %conv7 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or7.i)
  %cond = icmp eq i8 %or7.i, 0
  br i1 %cond, label %do.body29, label %do.body11

do.body11:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then23)) #11
          to label %if.end27 [label %if.then23], !srcloc !328

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.86, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %12, i32 noundef %14, i1 noundef zeroext true) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %do.body11
  %trunc = trunc i8 %or7.i to i4
  %15 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.165)
  switch i4 %trunc, label %if.end27.sw.epilog_crit_edge [
    i4 2, label %do.body165
    i4 3, label %do.body46
    i4 4, label %do.body63
    i4 5, label %do.body80
    i4 6, label %do.body97
    i4 7, label %do.body114
    i4 -7, label %do.body131
    i4 -4, label %if.end27.do.body148_crit_edge
    i4 -3, label %if.end27.do.body148_crit_edge258
    i4 -2, label %if.end27.do.body148_crit_edge259
  ]

if.end27.do.body148_crit_edge259:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body148

if.end27.do.body148_crit_edge258:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body148

if.end27.do.body148_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body148

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then41)) #11
          to label %sw.epilog [label %if.then41], !srcloc !328

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.83) #11
  br label %sw.epilog

do.body46:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then58)) #11
          to label %do.end61 [label %if.then58], !srcloc !328

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.83) #11
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body46
  tail call fastcc void @nfc_llcp_recv_ui(ptr noundef %local, ptr noundef %skb)
  br label %sw.epilog

do.body63:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then75)) #11
          to label %do.end78 [label %if.then75], !srcloc !328

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.83) #11
  br label %do.end78

do.end78:                                         ; preds = %if.then75, %do.body63
  tail call fastcc void @nfc_llcp_recv_connect(ptr noundef %local, ptr noundef %skb)
  br label %sw.epilog

do.body80:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then92)) #11
          to label %do.end95 [label %if.then92], !srcloc !328

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.83) #11
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.body80
  tail call fastcc void @nfc_llcp_recv_disc(ptr noundef %local, ptr noundef %skb)
  br label %sw.epilog

do.body97:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then109)) #11
          to label %do.end112 [label %if.then109], !srcloc !328

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.83) #11
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %do.body97
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %20 = lshr i8 %19, 2
  %arrayidx.i.i = getelementptr i8, ptr %17, i32 1
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i, align 1
  %23 = and i8 %22, 63
  %call2.i = tail call fastcc ptr @nfc_llcp_connecting_sock_get(ptr noundef %local, i8 noundef zeroext %20) #11
  %cmp.i = icmp eq ptr %call2.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128) #15
  %call4.i = tail call i32 @nfc_llcp_send_dm(ptr noundef %local, i8 noundef zeroext %20, i8 noundef zeroext %23, i8 noundef zeroext 1) #11
  br label %sw.epilog

if.end.i:                                         ; preds = %do.end112
  %connecting_sockets.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 35
  tail call void @nfc_llcp_sock_unlink(ptr noundef %connecting_sockets.i, ptr noundef nonnull %call2.i) #11
  %sockets.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 34
  %lock.i.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 34, i32 1
  tail call void @_raw_write_lock(ptr noundef %lock.i.i) #11
  %skc_refcnt.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i.i, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i.i, ptr %skc_refcnt.i.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i.i) #11, !srcloc !322
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !323

if.end.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !324

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #11
  br label %sock_hold.exit.i.i.i

sock_hold.exit.i.i.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge
  %26 = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 15
  %27 = ptrtoint ptr %sockets.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sockets.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %26, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i.i.i, label %sock_hold.exit.i.i.i.nfc_llcp_sock_link.exit.i_crit_edge, label %do.body12.i.i.i.i.i

sock_hold.exit.i.i.i.nfc_llcp_sock_link.exit.i_crit_edge: ; preds = %sock_hold.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_sock_link.exit.i

do.body12.i.i.i.i.i:                              ; preds = %sock_hold.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %26, ptr %pprev.i.i.i.i.i, align 4
  br label %nfc_llcp_sock_link.exit.i

nfc_llcp_sock_link.exit.i:                        ; preds = %do.body12.i.i.i.i.i, %sock_hold.exit.i.i.i.nfc_llcp_sock_link.exit.i_crit_edge
  %31 = ptrtoint ptr %sockets.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %26, ptr %sockets.i, align 4
  %pprev34.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 15, i32 0, i32 1
  %32 = ptrtoint ptr %pprev34.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %sockets.i, ptr %pprev34.i.i.i.i.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock.i.i) #11
  %dsap6.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call2.i, i32 0, i32 6
  %33 = ptrtoint ptr %dsap6.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %23, ptr %dsap6.i, align 1
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %arrayidx.i234 = getelementptr i8, ptr %35, i32 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %38 = trunc i32 %37 to i16
  %conv.i = add i16 %38, -2
  %call7.i = tail call i32 @nfc_llcp_parse_connection_tlv(ptr noundef nonnull %call2.i, ptr noundef %arrayidx.i234, i16 noundef zeroext %conv.i) #11
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %call2.i, i32 0, i32 4
  %39 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store volatile i8 1, ptr %skc_state.i, align 2
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %call2.i, i32 0, i32 76
  %40 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %41(ptr noundef nonnull %call2.i) #11
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i.i, i32 1, i32 3, i32 1) #11
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i.i, ptr %skc_refcnt.i.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i.i) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i.i28.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i28.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i28.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %nfc_llcp_sock_link.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i28.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i28.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !324

if.end5.i.i.i.i.i.i.sw.epilog_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef 3) #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %nfc_llcp_sock_link.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %call2.i) #11
  br label %sw.epilog

do.body114:                                       ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then126)) #11
          to label %do.end129 [label %if.then126], !srcloc !328

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.83) #11
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %do.body114
  tail call fastcc void @nfc_llcp_recv_dm(ptr noundef %local, ptr noundef %skb)
  br label %sw.epilog

do.body131:                                       ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then143)) #11
          to label %do.end146 [label %if.then143], !srcloc !328

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.83) #11
  br label %do.end146

do.end146:                                        ; preds = %if.then143, %do.body131
  tail call fastcc void @nfc_llcp_recv_snl(ptr noundef %local, ptr noundef %skb)
  br label %sw.epilog

do.body148:                                       ; preds = %if.end27.do.body148_crit_edge, %if.end27.do.body148_crit_edge258, %if.end27.do.body148_crit_edge259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then160)) #11
          to label %do.end163 [label %if.then160], !srcloc !328

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.83) #11
  br label %do.end163

do.end163:                                        ; preds = %if.then160, %do.body148
  tail call fastcc void @nfc_llcp_recv_hdlc(ptr noundef %local, ptr noundef %skb)
  br label %sw.epilog

do.body165:                                       ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_rx_skb, %if.then177)) #11
          to label %do.end180 [label %if.then177], !srcloc !328

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.83) #11
  br label %do.end180

do.end180:                                        ; preds = %if.then177, %do.body165
  %len.i235 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %43 = ptrtoint ptr %len.i235 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp.i236 = icmp ult i32 %44, 3
  br i1 %cmp.i236, label %do.end.i237, label %if.end.i238

do.end.i237:                                      ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159) #15
  br label %sw.epilog

if.end.i238:                                      ; preds = %do.end180
  %call1.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #11
  %45 = ptrtoint ptr %len.i235 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp3.i257 = icmp ugt i32 %46, 2
  br i1 %cmp3.i257, label %if.end.i238.while.body.i_crit_edge, label %if.end.i238.sw.epilog_crit_edge

if.end.i238.sw.epilog_crit_edge:                  ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i238.while.body.i_crit_edge:               ; preds = %if.end.i238
  br label %while.body.i

while.body.i:                                     ; preds = %next.i.while.body.i_crit_edge, %if.end.i238.while.body.i_crit_edge
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv.i240 = zext i8 %50 to i32
  %shl.i = shl nuw nsw i32 %conv.i240, 8
  %arrayidx5.i = getelementptr i8, ptr %48, i32 1
  %51 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %52 to i32
  %or.i = or i32 %shl.i, %conv6.i
  %call8.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or.i)
  %cmp10.i = icmp ult i32 %or.i, 2
  br i1 %cmp10.i, label %while.body.i.do.end19.i_crit_edge, label %lor.lhs.false.i

while.body.i.do.end19.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %53 = ptrtoint ptr %len.i235 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i235, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %54)
  %cmp14.i = icmp ugt i32 %or.i, %54
  br i1 %cmp14.i, label %lor.lhs.false.i.do.end19.i_crit_edge, label %if.end22.i

lor.lhs.false.i.do.end19.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19.i

do.end19.i:                                       ; preds = %lor.lhs.false.i.do.end19.i_crit_edge, %while.body.i.do.end19.i_crit_edge
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159) #15
  br label %sw.epilog

if.end22.i:                                       ; preds = %lor.lhs.false.i
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %arrayidx2.i243 = getelementptr i8, ptr %56, i32 1
  %59 = ptrtoint ptr %arrayidx2.i243 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx2.i243, align 1
  %or7.i244 = tail call i8 @llvm.fshl.i8(i8 %58, i8 %60, i8 2)
  %trunc256 = trunc i8 %or7.i244 to i4
  %61 = zext i4 %trunc256 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.166)
  switch i4 %trunc256, label %if.end32.i [
    i4 0, label %if.end22.i.next.i_crit_edge
    i4 2, label %if.end22.i.next.i_crit_edge260
  ]

if.end22.i.next.i_crit_edge260:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next.i

if.end22.i.next.i_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next.i

if.end32.i:                                       ; preds = %if.end22.i
  %call34.i = tail call ptr @nfc_alloc_recv_skb(i32 noundef %or.i, i32 noundef 3264) #11
  %cmp35.i = icmp eq ptr %call34.i, null
  br i1 %cmp35.i, label %do.end40.i, label %if.end43.i

do.end40.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.159) #15
  br label %sw.epilog

if.end43.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i, align 4
  %call.i241 = tail call ptr @skb_put(ptr noundef nonnull %call34.i, i32 noundef %or.i) #11
  %64 = call ptr @memcpy(ptr %call.i241, ptr %63, i32 %or.i)
  tail call fastcc void @nfc_llcp_rx_skb(ptr noundef %local, ptr noundef nonnull %call34.i) #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call34.i, i32 noundef 0) #11
  br label %next.i

next.i:                                           ; preds = %if.end43.i, %if.end22.i.next.i_crit_edge, %if.end22.i.next.i_crit_edge260
  %call48.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %or.i) #11
  %65 = ptrtoint ptr %len.i235 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i235, align 4
  %cmp3.i = icmp ugt i32 %66, 2
  br i1 %cmp3.i, label %next.i.while.body.i_crit_edge, label %next.i.sw.epilog_crit_edge

next.i.sw.epilog_crit_edge:                       ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

next.i.while.body.i_crit_edge:                    ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

sw.epilog:                                        ; preds = %next.i.sw.epilog_crit_edge, %do.end40.i, %do.end19.i, %if.end.i238.sw.epilog_crit_edge, %do.end.i237, %do.end163, %do.end146, %do.end129, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.sw.epilog_crit_edge, %do.end.i, %do.end95, %do.end78, %do.end61, %if.then41, %do.body29, %if.end27.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_recv_ui(ptr noundef %local, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = lshr i8 %3, 2
  %arrayidx.i = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = and i8 %6, 63
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %4, ptr %cb, align 1
  %ssap3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %ssap3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %7, ptr %ssap3, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_ui.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_ui, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !328

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %4 to i32
  %conv7 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_ui.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105, i32 noundef %conv, i32 noundef %conv7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call8 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %local, i8 noundef zeroext %4, i8 noundef zeroext 1)
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %sk_type = getelementptr inbounds %struct.sock, ptr %call8, i32 0, i32 45
  %10 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp11.not = icmp eq i16 %11, 2
  br i1 %cmp11.not, label %if.end14, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %call15 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #11
  %call17 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %call8, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %do.end23

if.then19:                                        ; preds = %if.end14
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #11, !srcloc !322
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then19.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !323

if.then19.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then19
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end26_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !324

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end26_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then19.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then19.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end26

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.105) #15
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end26_crit_edge
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call8, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !324

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_recv_connect(ptr noundef %local, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = lshr i8 %3, 2
  %arrayidx.i = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = and i8 %6, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_connect, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !328

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %4 to i32
  %conv5 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.109, i32 noundef %conv, i32 noundef %conv5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end
  %call9 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %local, i8 noundef zeroext %4, i8 noundef zeroext 1)
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.then8.fail_crit_edge, label %lor.lhs.false

if.then8.fail_crit_edge:                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

lor.lhs.false:                                    ; preds = %if.then8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call9, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp13.not = icmp eq i8 %9, 6
  br i1 %cmp13.not, label %lor.lhs.false.if.end44_crit_edge, label %lor.lhs.false.fail_crit_edge

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

lor.lhs.false.if.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.else:                                          ; preds = %do.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp32.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp32.not.i, label %if.else.fail_crit_edge, label %while.body.preheader.i

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

while.body.preheader.i:                           ; preds = %if.else
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %arrayidx.i263 = getelementptr i8, ptr %13, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %while.body.preheader.i
  %offset.034.i = phi i32 [ %add14.i, %if.end12.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %tlv.033.i = phi ptr [ %add.ptr.i, %if.end12.i.while.body.i_crit_edge ], [ %arrayidx.i263, %while.body.preheader.i ]
  %14 = ptrtoint ptr %tlv.033.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tlv.033.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %tlv.033.i, i32 1
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_connect_sn.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_connect, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !328

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %15 to i32
  %conv5.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_connect_sn.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.118, i32 noundef %conv.i, i32 noundef %conv5.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp7.i = icmp eq i8 %15, 6
  %conv10.i = zext i8 %17 to i32
  br i1 %cmp7.i, label %nfc_llcp_connect_sn.exit, label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i
  %add.i = add nuw nsw i32 %conv10.i, 2
  %add14.i = add i32 %add.i, %offset.034.i
  %add.ptr.i = getelementptr i8, ptr %tlv.033.i, i32 %add.i
  %cmp.i = icmp ult i32 %add14.i, %sub.i
  br i1 %cmp.i, label %if.end12.i.while.body.i_crit_edge, label %if.end12.i.fail_crit_edge

if.end12.i.fail_crit_edge:                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

nfc_llcp_connect_sn.exit:                         ; preds = %do.end.i
  %conv10.i.le = zext i8 %17 to i32
  %arrayidx11.i = getelementptr i8, ptr %tlv.033.i, i32 2
  %cmp18 = icmp eq ptr %arrayidx11.i, null
  br i1 %cmp18, label %nfc_llcp_connect_sn.exit.fail_crit_edge, label %do.body22

nfc_llcp_connect_sn.exit.fail_crit_edge:          ; preds = %nfc_llcp_connect_sn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.body22:                                        ; preds = %nfc_llcp_connect_sn.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_connect, %if.then34)) #11
          to label %do.end37 [label %if.then34], !srcloc !328

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109, i32 noundef %conv10.i.le) #11
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body22
  %call.i = tail call fastcc ptr @nfc_llcp_sock_from_sn(ptr noundef %local, ptr noundef nonnull %arrayidx11.i, i32 noundef %conv10.i.le) #11
  %cmp.i265 = icmp eq ptr %call.i, null
  br i1 %cmp.i265, label %do.end37.fail_crit_edge, label %if.end.i

do.end37.fail_crit_edge:                          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end.i:                                         ; preds = %do.end37
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !322
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !323

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end44_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !324

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end44_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %if.end44

if.end44:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end44_crit_edge, %lor.lhs.false.if.end44_crit_edge
  %sock.1 = phi ptr [ %call9, %lor.lhs.false.if.end44_crit_edge ], [ %call.i, %if.else.i.i.i.i.i.if.end44_crit_edge ], [ %call.i, %if.end15.sink.split.i.i.i.i.i ]
  tail call void @lock_sock_nested(ptr noundef nonnull %sock.1, i32 noundef 0) #11
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sock.1, i32 0, i32 53
  %20 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sock.1, i32 0, i32 54
  %22 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i266 = icmp ugt i32 %21, %23
  br i1 %cmp.i266, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end44
  tail call void @release_sock(ptr noundef nonnull %sock.1) #11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sock.1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i267 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i267)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i267, 1
  br i1 %cmp.i.i.i.i, label %if.then.i268, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i267)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i267, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.fail_crit_edge, label %if.then10.i.i.i.i, !prof !324

if.end5.i.i.i.i.fail_crit_edge:                   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %fail

if.then.i268:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %sock.1) #11
  br label %fail

if.end51:                                         ; preds = %if.end44
  %ssap52 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock.1, i32 0, i32 5
  %25 = ptrtoint ptr %ssap52 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ssap52, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %26)
  %cmp54 = icmp eq i8 %26, 65
  br i1 %cmp54, label %if.then56, label %if.end51.if.end87_crit_edge

if.end51.if.end87_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then56:                                        ; preds = %if.end51
  %call58 = tail call fastcc zeroext i8 @nfc_llcp_reserve_sdp_ssap(ptr noundef %local)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_connect, %if.then71)) #11
          to label %do.end75 [label %if.then71], !srcloc !328

if.then71:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  %conv72 = zext i8 %call58 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.109, i32 noundef %conv72) #11
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %if.then56
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call58)
  %cmp77 = icmp eq i8 %call58, -1
  br i1 %cmp77, label %if.then79, label %cleanup84

if.then79:                                        ; preds = %do.end75
  tail call void @release_sock(ptr noundef nonnull %sock.1) #11
  %skc_refcnt.i270 = getelementptr inbounds %struct.sock_common, ptr %sock.1, i32 0, i32 19
  %call.i.i.i.i.i.i271 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i270, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i270, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i270, ptr %skc_refcnt.i270, i32 1, ptr elementtype(i32) %skc_refcnt.i270) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i272 = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i272)
  %cmp.i.i.i.i273 = icmp eq i32 %asmresult.i.i.i.i.i.i.i272, 1
  br i1 %cmp.i.i.i.i273, label %if.then.i277, label %if.end5.i.i.i.i275

if.end5.i.i.i.i275:                               ; preds = %if.then79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i272)
  %.not.i.i.i.i274 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i272, 0
  br i1 %.not.i.i.i.i274, label %if.end5.i.i.i.i275.fail_crit_edge, label %if.then10.i.i.i.i276, !prof !324

if.end5.i.i.i.i275.fail_crit_edge:                ; preds = %if.end5.i.i.i.i275
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then10.i.i.i.i276:                             ; preds = %if.end5.i.i.i.i275
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i270, i32 noundef 3) #11
  br label %fail

if.then.i277:                                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %sock.1) #11
  br label %fail

cleanup84:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %ssap52 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call58, ptr %ssap52, align 8
  br label %if.end87

if.end87:                                         ; preds = %cleanup84, %if.end51.if.end87_crit_edge
  %sk_type = getelementptr inbounds %struct.sock, ptr %sock.1, i32 0, i32 45
  %29 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sk_type, align 2
  %conv88 = zext i16 %30 to i32
  %call89 = tail call ptr @nfc_llcp_sock_alloc(ptr noundef null, i32 noundef %conv88, i32 noundef 2592, i32 noundef 0) #11
  %cmp90 = icmp eq ptr %call89, null
  br i1 %cmp90, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.end87
  tail call void @release_sock(ptr noundef nonnull %sock.1) #11
  %skc_refcnt.i280 = getelementptr inbounds %struct.sock_common, ptr %sock.1, i32 0, i32 19
  %call.i.i.i.i.i.i281 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i280, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i280, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i280, ptr %skc_refcnt.i280, i32 1, ptr elementtype(i32) %skc_refcnt.i280) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i282 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i282)
  %cmp.i.i.i.i283 = icmp eq i32 %asmresult.i.i.i.i.i.i.i282, 1
  br i1 %cmp.i.i.i.i283, label %if.then.i287, label %if.end5.i.i.i.i285

if.end5.i.i.i.i285:                               ; preds = %if.then92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i282)
  %.not.i.i.i.i284 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i282, 0
  br i1 %.not.i.i.i.i284, label %if.end5.i.i.i.i285.fail_crit_edge, label %if.then10.i.i.i.i286, !prof !324

if.end5.i.i.i.i285.fail_crit_edge:                ; preds = %if.end5.i.i.i.i285
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then10.i.i.i.i286:                             ; preds = %if.end5.i.i.i.i285
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i280, i32 noundef 3) #11
  br label %fail

if.then.i287:                                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %sock.1) #11
  br label %fail

if.end95:                                         ; preds = %if.end87
  %dev = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %dev96 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call89, i32 0, i32 1
  %34 = ptrtoint ptr %dev96 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %dev96, align 8
  %ref.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 2
  %call.i.i.i.i.i.i.i290 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !322
  %asmresult.i.i.i.i.i.i.i291 = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i291)
  %tobool1.not.i.i.i.i.i292 = icmp eq i32 %asmresult.i.i.i.i.i.i.i291, 0
  br i1 %tobool1.not.i.i.i.i.i292, label %if.end95.if.end15.sink.split.i.i.i.i.i297_crit_edge, label %if.else.i.i.i.i.i295, !prof !323

if.end95.if.end15.sink.split.i.i.i.i.i297_crit_edge: ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i297

if.else.i.i.i.i.i295:                             ; preds = %if.end95
  %add.i.i.i.i.i293 = add i32 %asmresult.i.i.i.i.i.i.i291, 1
  %36 = or i32 %add.i.i.i.i.i293, %asmresult.i.i.i.i.i.i.i291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i.i294 = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i.i294, label %if.else.i.i.i.i.i295.nfc_llcp_local_get.exit_crit_edge, label %if.else.i.i.i.i.i295.if.end15.sink.split.i.i.i.i.i297_crit_edge, !prof !324

if.else.i.i.i.i.i295.if.end15.sink.split.i.i.i.i.i297_crit_edge: ; preds = %if.else.i.i.i.i.i295
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i297

if.else.i.i.i.i.i295.nfc_llcp_local_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i295
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_local_get.exit

if.end15.sink.split.i.i.i.i.i297:                 ; preds = %if.else.i.i.i.i.i295.if.end15.sink.split.i.i.i.i.i297_crit_edge, %if.end95.if.end15.sink.split.i.i.i.i.i297_crit_edge
  %.sink.i.i.i.i.i296 = phi i32 [ 2, %if.end95.if.end15.sink.split.i.i.i.i.i297_crit_edge ], [ 1, %if.else.i.i.i.i.i295.if.end15.sink.split.i.i.i.i.i297_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i296) #11
  br label %nfc_llcp_local_get.exit

nfc_llcp_local_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i297, %if.else.i.i.i.i.i295.nfc_llcp_local_get.exit_crit_edge
  %local98 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call89, i32 0, i32 2
  %37 = ptrtoint ptr %local98 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %local, ptr %local98, align 4
  %rw = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock.1, i32 0, i32 9
  %38 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rw, align 4
  %rw99 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call89, i32 0, i32 9
  %40 = ptrtoint ptr %rw99 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %rw99, align 4
  %miux = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock.1, i32 0, i32 10
  %41 = ptrtoint ptr %miux to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %miux, align 2
  %miux100 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call89, i32 0, i32 10
  %43 = ptrtoint ptr %miux100 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %miux100, align 2
  %nfc_protocol = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sock.1, i32 0, i32 4
  %44 = ptrtoint ptr %nfc_protocol to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nfc_protocol, align 4
  %nfc_protocol101 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call89, i32 0, i32 4
  %46 = ptrtoint ptr %nfc_protocol101 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %nfc_protocol101, align 4
  %dsap102 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call89, i32 0, i32 6
  %47 = ptrtoint ptr %dsap102 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %7, ptr %dsap102, align 1
  %target_idx = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 10
  %48 = ptrtoint ptr %target_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %target_idx, align 4
  %target_idx103 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call89, i32 0, i32 3
  %50 = ptrtoint ptr %target_idx103 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %target_idx103, align 8
  %parent104 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call89, i32 0, i32 22
  %51 = ptrtoint ptr %parent104 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %sock.1, ptr %parent104, align 4
  %52 = ptrtoint ptr %ssap52 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ssap52, align 8
  %ssap106 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call89, i32 0, i32 5
  %54 = ptrtoint ptr %ssap106 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %ssap106, align 8
  %55 = load i8, ptr %ssap52, align 8
  %56 = and i8 %55, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %56)
  %57 = icmp eq i8 %56, 16
  br i1 %57, label %if.then115, label %nfc_llcp_local_get.exit.if.end137_crit_edge

nfc_llcp_local_get.exit.if.end137_crit_edge:      ; preds = %nfc_llcp_local_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then115:                                       ; preds = %nfc_llcp_local_get.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_connect, %if.then128)) #11
          to label %do.end133 [label %if.then128], !srcloc !328

if.then128:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %ssap52 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ssap52, align 8
  %conv130 = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.109, i32 noundef %conv130, ptr noundef nonnull %call89) #11
  br label %do.end133

do.end133:                                        ; preds = %if.then128, %if.then115
  %60 = ptrtoint ptr %ssap52 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ssap52, align 8
  %conv135 = zext i8 %61 to i32
  %sub = add nsw i32 %conv135, -16
  %arrayidx = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 19, i32 %sub
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #11
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #11, !srcloc !333
  %63 = ptrtoint ptr %ssap52 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ssap52, align 8
  %reserved_ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call89, i32 0, i32 18
  %65 = ptrtoint ptr %reserved_ssap to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %reserved_ssap, align 1
  br label %if.end137

if.end137:                                        ; preds = %do.end133, %nfc_llcp_local_get.exit.if.end137_crit_edge
  %66 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i, align 4
  %arrayidx138 = getelementptr i8, ptr %67, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %68 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len, align 4
  %70 = trunc i32 %69 to i16
  %conv140 = add i16 %70, -2
  %call141 = tail call i32 @nfc_llcp_parse_connection_tlv(ptr noundef nonnull %call89, ptr noundef %arrayidx138, i16 noundef zeroext %conv140) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_connect, %if.then154)) #11
          to label %do.end158 [label %if.then154], !srcloc !328

if.then154:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.109, ptr noundef nonnull %call89, ptr noundef nonnull %call89) #11
  br label %do.end158

do.end158:                                        ; preds = %if.then154, %if.end137
  %sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 34
  %lock.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 34, i32 1
  tail call void @_raw_write_lock(ptr noundef %lock.i) #11
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call89, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #11
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #11, !srcloc !322
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %do.end158.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !323

do.end158.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %do.end158
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %72 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %.not.i.i.i.i.i.i = icmp sgt i32 %72, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !324

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %do.end158.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %do.end158.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %73 = getelementptr inbounds %struct.sock_common, ptr %call89, i32 0, i32 15
  %74 = ptrtoint ptr %sockets to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sockets, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %75, ptr %73, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i.i.i, label %sock_hold.exit.i.i.nfc_llcp_sock_link.exit_crit_edge, label %do.body12.i.i.i.i

sock_hold.exit.i.i.nfc_llcp_sock_link.exit_crit_edge: ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_sock_link.exit

do.body12.i.i.i.i:                                ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %75, i32 0, i32 1
  %77 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %73, ptr %pprev.i.i.i.i, align 4
  br label %nfc_llcp_sock_link.exit

nfc_llcp_sock_link.exit:                          ; preds = %do.body12.i.i.i.i, %sock_hold.exit.i.i.nfc_llcp_sock_link.exit_crit_edge
  %78 = ptrtoint ptr %sockets to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %73, ptr %sockets, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call89, i32 0, i32 15, i32 0, i32 1
  %79 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %sockets, ptr %pprev34.i.i.i.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock.i) #11
  tail call void @nfc_llcp_accept_enqueue(ptr noundef nonnull %sock.1, ptr noundef nonnull %call89) #11
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %call161 = tail call ptr @nfc_get_device(i32 noundef %83) #11
  %skc_state163 = getelementptr inbounds %struct.sock_common, ptr %call89, i32 0, i32 4
  %84 = ptrtoint ptr %skc_state163 to i32
  call void @__asan_store1_noabort(i32 %84)
  store volatile i8 1, ptr %skc_state163, align 2
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sock.1, i32 0, i32 77
  %85 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sk_data_ready, align 8
  tail call void %86(ptr noundef nonnull %sock.1) #11
  %call164 = tail call i32 @nfc_llcp_send_cc(ptr noundef nonnull %call89) #11
  tail call void @release_sock(ptr noundef nonnull %sock.1) #11
  %skc_refcnt.i298 = getelementptr inbounds %struct.sock_common, ptr %sock.1, i32 0, i32 19
  %call.i.i.i.i.i.i299 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i298, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i298, i32 1, i32 3, i32 1) #11
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i298, ptr %skc_refcnt.i298, i32 1, ptr elementtype(i32) %skc_refcnt.i298) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i300 = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i300)
  %cmp.i.i.i.i301 = icmp eq i32 %asmresult.i.i.i.i.i.i.i300, 1
  br i1 %cmp.i.i.i.i301, label %if.then.i305, label %if.end5.i.i.i.i303

if.end5.i.i.i.i303:                               ; preds = %nfc_llcp_sock_link.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i300)
  %.not.i.i.i.i302 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i300, 0
  br i1 %.not.i.i.i.i302, label %if.end5.i.i.i.i303.cleanup168_crit_edge, label %if.then10.i.i.i.i304, !prof !324

if.end5.i.i.i.i303.cleanup168_crit_edge:          ; preds = %if.end5.i.i.i.i303
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup168

if.then10.i.i.i.i304:                             ; preds = %if.end5.i.i.i.i303
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i298, i32 noundef 3) #11
  br label %cleanup168

if.then.i305:                                     ; preds = %nfc_llcp_sock_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %sock.1) #11
  br label %cleanup168

fail:                                             ; preds = %if.then.i287, %if.then10.i.i.i.i286, %if.end5.i.i.i.i285.fail_crit_edge, %if.then.i277, %if.then10.i.i.i.i276, %if.end5.i.i.i.i275.fail_crit_edge, %if.then.i268, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fail_crit_edge, %do.end37.fail_crit_edge, %nfc_llcp_connect_sn.exit.fail_crit_edge, %if.end12.i.fail_crit_edge, %if.else.fail_crit_edge, %lor.lhs.false.fail_crit_edge, %if.then8.fail_crit_edge
  %reason.3 = phi i8 [ 2, %lor.lhs.false.fail_crit_edge ], [ 2, %if.then8.fail_crit_edge ], [ 3, %if.end5.i.i.i.i.fail_crit_edge ], [ 3, %if.then10.i.i.i.i ], [ 3, %if.then.i268 ], [ 3, %if.end5.i.i.i.i285.fail_crit_edge ], [ 3, %if.then10.i.i.i.i286 ], [ 3, %if.then.i287 ], [ 2, %nfc_llcp_connect_sn.exit.fail_crit_edge ], [ 2, %if.else.fail_crit_edge ], [ 3, %if.end5.i.i.i.i275.fail_crit_edge ], [ 3, %if.then10.i.i.i.i276 ], [ 3, %if.then.i277 ], [ 2, %do.end37.fail_crit_edge ], [ 2, %if.end12.i.fail_crit_edge ]
  %call167 = tail call i32 @nfc_llcp_send_dm(ptr noundef %local, i8 noundef zeroext %4, i8 noundef zeroext %7, i8 noundef zeroext %reason.3) #11
  br label %cleanup168

cleanup168:                                       ; preds = %fail, %if.then.i305, %if.then10.i.i.i.i304, %if.end5.i.i.i.i303.cleanup168_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_recv_disc(ptr noundef %local, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = lshr i8 %3, 2
  %arrayidx.i = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = and i8 %6, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp ult i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp4 = icmp eq i8 %7, 0
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_disc.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_disc, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !328

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_disc.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.124) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %dev = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call10 = tail call i32 @nfc_dep_link_down(ptr noundef %9) #11
  br label %cleanup

if.end11:                                         ; preds = %entry
  %call12 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %local, i8 noundef zeroext %4, i8 noundef zeroext %7)
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 @nfc_llcp_send_dm(ptr noundef %local, i8 noundef zeroext %4, i8 noundef zeroext %7, i8 noundef zeroext 1) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  tail call void @lock_sock_nested(ptr noundef nonnull %call12, i32 noundef 0) #11
  %local1.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call12, i32 0, i32 2
  %10 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %local1.i, align 4
  %tx_queue.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call12, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %tx_queue.i) #11
  %tx_pending_queue.i = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call12, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %tx_pending_queue.i) #11
  %cmp.i = icmp eq ptr %11, null
  br i1 %cmp.i, label %if.end17.nfc_llcp_socket_purge.exit_crit_edge, label %if.end.i

if.end17.nfc_llcp_socket_purge.exit_crit_edge:    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_socket_purge.exit

if.end.i:                                         ; preds = %if.end17
  %tx_queue2.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %tx_queue2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_queue2.i, align 4
  %cmp5.not25.i = icmp eq ptr %13, %tx_queue2.i
  br i1 %cmp5.not25.i, label %if.end.i.nfc_llcp_socket_purge.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.nfc_llcp_socket_purge.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_socket_purge.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %s.026.i = phi ptr [ %tmp.027.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %if.end.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %s.026.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.027.i = load ptr, ptr %s.026.i, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %s.026.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %cmp6.not.i = icmp eq ptr %17, %call12
  br i1 %cmp6.not.i, label %if.end8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_unlink(ptr noundef %s.026.i, ptr noundef %tx_queue2.i) #11
  tail call void @kfree_skb_reason(ptr noundef %s.026.i, i32 noundef 0) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %for.body.i.for.inc.i_crit_edge
  %cmp5.not.i = icmp eq ptr %tmp.027.i, %tx_queue2.i
  br i1 %cmp5.not.i, label %for.inc.i.nfc_llcp_socket_purge.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.nfc_llcp_socket_purge.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfc_llcp_socket_purge.exit

nfc_llcp_socket_purge.exit:                       ; preds = %for.inc.i.nfc_llcp_socket_purge.exit_crit_edge, %if.end.i.nfc_llcp_socket_purge.exit_crit_edge, %if.end17.nfc_llcp_socket_purge.exit_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call12, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %cmp20 = icmp eq i8 %19, 4
  br i1 %cmp20, label %if.then22, label %nfc_llcp_socket_purge.exit.if.end23_crit_edge

nfc_llcp_socket_purge.exit.if.end23_crit_edge:    ; preds = %nfc_llcp_socket_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then22:                                        ; preds = %nfc_llcp_socket_purge.exit
  tail call void @release_sock(ptr noundef nonnull %call12) #11
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call12, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end23_crit_edge, label %if.then10.i.i.i.i.i, !prof !324

if.end5.i.i.i.i.i.if.end23_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #11
  br label %if.end23

if.then.i.i:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %call12) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end23_crit_edge, %nfc_llcp_socket_purge.exit.if.end23_crit_edge
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp27 = icmp eq i8 %22, 1
  br i1 %cmp27, label %if.then29, label %if.end23.if.end33_crit_edge

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %dev30 = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 1
  %23 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev30, align 4
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %24, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #11
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %25)
  store volatile i8 4, ptr %skc_state, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %call12, i32 0, i32 76
  %26 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk_state_change, align 4
  tail call void %27(ptr noundef nonnull %call12) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end23.if.end33_crit_edge
  %call34 = tail call i32 @nfc_llcp_send_dm(ptr noundef %local, i8 noundef zeroext %4, i8 noundef zeroext %7, i8 noundef zeroext 0) #11
  tail call void @release_sock(ptr noundef nonnull %call12) #11
  %skc_refcnt.i.i61 = getelementptr inbounds %struct.sock_common, ptr %call12, i32 0, i32 19
  %call.i.i.i.i.i.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i61, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i61, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i61, ptr %skc_refcnt.i.i61, i32 1, ptr elementtype(i32) %skc_refcnt.i.i61) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i.i63 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i63)
  %cmp.i.i.i.i.i64 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i63, 1
  br i1 %cmp.i.i.i.i.i64, label %if.then.i.i68, label %if.end5.i.i.i.i.i66

if.end5.i.i.i.i.i66:                              ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i63)
  %.not.i.i.i.i.i65 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i63, 0
  br i1 %.not.i.i.i.i.i65, label %if.end5.i.i.i.i.i66.cleanup_crit_edge, label %if.then10.i.i.i.i.i67, !prof !324

if.end5.i.i.i.i.i66.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i67:                            ; preds = %if.end5.i.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i61, i32 noundef 3) #11
  br label %cleanup

if.then.i.i68:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %call12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i68, %if.then10.i.i.i.i.i67, %if.end5.i.i.i.i.i66.cleanup_crit_edge, %if.then15, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_recv_dm(ptr noundef %local, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = lshr i8 %3, 2
  %arrayidx.i = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = and i8 %6, 63
  %arrayidx = getelementptr i8, ptr %1, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_dm.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_dm, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !328

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %7 to i32
  %conv5 = zext i8 %4 to i32
  %conv6 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_dm.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.129, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = and i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %switch = icmp eq i8 %10, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call fastcc ptr @nfc_llcp_connecting_sock_get(ptr noundef %local, i8 noundef zeroext %4)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %local, i8 noundef zeroext %4, i8 noundef zeroext %7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %llcp_sock.0 = phi ptr [ %call9, %sw.default ], [ %call8, %sw.bb ]
  %cmp = icmp eq ptr %llcp_sock.0, null
  br i1 %cmp, label %do.body12, label %if.end28

do.body12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_dm.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_dm, %if.then24)) #11
          to label %cleanup [label %if.then24], !srcloc !328

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_dm.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.129) #11
  br label %cleanup

if.end28:                                         ; preds = %sw.epilog
  %sk_err = getelementptr inbounds %struct.sock, ptr %llcp_sock.0, i32 0, i32 51
  %11 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %sk_err, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %llcp_sock.0, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 4, ptr %skc_state, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %llcp_sock.0, i32 0, i32 76
  %13 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_state_change, align 4
  tail call void %14(ptr noundef nonnull %llcp_sock.0) #11
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %llcp_sock.0, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !324

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %llcp_sock.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then24, %do.body12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_recv_snl(ptr noundef %local, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %llc_sdres_list = alloca %struct.hlist_head, align 4
  %nl_sdres_list = alloca %struct.hlist_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %llc_sdres_list) #11
  %0 = ptrtoint ptr %llc_sdres_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %llc_sdres_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nl_sdres_list) #11
  %1 = ptrtoint ptr %nl_sdres_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nl_sdres_list, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = lshr i8 %5, 2
  %arrayidx.i = getelementptr i8, ptr %3, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_snl, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !328

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %6 to i32
  %conv5 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.134, i32 noundef %conv, i32 noundef %conv5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp9.not = icmp eq i8 %9, 1
  %or.cond = select i1 %cmp.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end17, label %do.end14

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.134) #15
  br label %cleanup203

if.end17:                                         ; preds = %do.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %conv18 = add i32 %11, 65534
  %conv20 = and i32 %conv18, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20)
  %cmp21311.not = icmp eq i32 %conv20, 0
  br i1 %cmp21311.not, label %if.end17.exit_crit_edge, label %while.body.lr.ph

if.end17.exit_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

while.body.lr.ph:                                 ; preds = %if.end17
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 2
  %sdreq_lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 29
  %pending_sdreqs = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 30
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %conv19317 = phi i32 [ 0, %while.body.lr.ph ], [ %conv19, %sw.epilog.while.body_crit_edge ]
  %tlv.0313 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %add.ptr192, %sw.epilog.while.body_crit_edge ]
  %sdres_tlvs_len.0312 = phi i32 [ 0, %while.body.lr.ph ], [ %sdres_tlvs_len.1, %sw.epilog.while.body_crit_edge ]
  %14 = ptrtoint ptr %tlv.0313 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tlv.0313, align 1
  %arrayidx24 = getelementptr i8, ptr %tlv.0313, i32 1
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx24, align 1
  %18 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.167)
  switch i8 %15, label %do.end181 [
    i8 8, label %sw.bb
    i8 9, label %sw.bb114
  ]

sw.bb:                                            ; preds = %while.body
  %arrayidx26 = getelementptr i8, ptr %tlv.0313, i32 2
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx26, align 1
  %arrayidx27 = getelementptr i8, ptr %tlv.0313, i32 3
  %conv28 = zext i8 %17 to i32
  %sub29 = add nsw i32 %conv28, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_snl, %if.then42)) #11
          to label %do.end45 [label %if.then42], !srcloc !328

if.then42:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.134, ptr noundef %arrayidx27) #11
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub29)
  %cmp46 = icmp eq i32 %sub29, 14
  br i1 %cmp46, label %land.lhs.true, label %do.end45.if.end51_crit_edge

do.end45.if.end51_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true:                                    ; preds = %do.end45
  %call48 = call i32 @strncmp(ptr noundef %arrayidx27, ptr noundef nonnull dereferenceable(15) @.str.138, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true.add_snl_crit_edge, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true.add_snl_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_snl

if.end51:                                         ; preds = %land.lhs.true.if.end51_crit_edge, %do.end45.if.end51_crit_edge
  %call52 = call fastcc ptr @nfc_llcp_sock_from_sn(ptr noundef %local, ptr noundef %arrayidx27, i32 noundef %sub29)
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end51.add_snl_crit_edge, label %if.end55

if.end51.add_snl_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_snl

if.end55:                                         ; preds = %if.end51
  %ssap56 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call52, i32 0, i32 5
  %21 = ptrtoint ptr %ssap56 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ssap56, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %22)
  %cmp58 = icmp eq i8 %22, 65
  br i1 %cmp58, label %if.then60, label %if.end55.do.body90_crit_edge

if.end55.do.body90_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body90

if.then60:                                        ; preds = %if.end55
  %call61 = call fastcc zeroext i8 @nfc_llcp_reserve_sdp_ssap(ptr noundef %local)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_snl, %if.then74)) #11
          to label %do.end78 [label %if.then74], !srcloc !328

if.then74:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %conv75 = zext i8 %call61 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.134, i32 noundef %conv75) #11
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %if.then60
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call61)
  %cmp80 = icmp eq i8 %call61, -1
  br i1 %cmp80, label %do.end78.add_snl_crit_edge, label %cleanup.thread

do.end78.add_snl_crit_edge:                       ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_snl

cleanup.thread:                                   ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  %conv79 = zext i8 %call61 to i32
  %sub85 = add nsw i32 %conv79, -16
  %arrayidx86 = getelementptr %struct.nfc_llcp_local, ptr %local, i32 0, i32 19, i32 %sub85
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx86, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx86, i32 1, i32 3, i32 1) #11
  %23 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx86, ptr %arrayidx86, i32 1, ptr elementtype(i32) %arrayidx86) #11, !srcloc !333
  %24 = ptrtoint ptr %ssap56 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call61, ptr %ssap56, align 8
  %reserved_ssap = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call52, i32 0, i32 18
  %25 = ptrtoint ptr %reserved_ssap to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call61, ptr %reserved_ssap, align 1
  br label %do.body90

do.body90:                                        ; preds = %cleanup.thread, %if.end55.do.body90_crit_edge
  %sap.1 = phi i8 [ %22, %if.end55.do.body90_crit_edge ], [ %call61, %cleanup.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_snl, %if.then102)) #11
          to label %add_snl [label %if.then102], !srcloc !328

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  %conv103 = zext i8 %sap.1 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.134, ptr noundef nonnull %call52, i32 noundef %conv103) #11
  br label %add_snl

add_snl:                                          ; preds = %if.then102, %do.body90, %do.end78.add_snl_crit_edge, %if.end51.add_snl_crit_edge, %land.lhs.true.add_snl_crit_edge
  %sap.2 = phi i8 [ %sap.1, %if.then102 ], [ 1, %land.lhs.true.add_snl_crit_edge ], [ 0, %if.end51.add_snl_crit_edge ], [ 0, %do.end78.add_snl_crit_edge ], [ %sap.1, %do.body90 ]
  %call107 = call ptr @nfc_llcp_build_sdres_tlv(i8 noundef zeroext %20, i8 noundef zeroext %sap.2) #11
  %cmp108 = icmp eq ptr %call107, null
  br i1 %cmp108, label %add_snl.exit_crit_edge, label %if.end111

add_snl.exit_crit_edge:                           ; preds = %add_snl
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end111:                                        ; preds = %add_snl
  %tlv_len112 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call107, i32 0, i32 1
  %26 = ptrtoint ptr %tlv_len112 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tlv_len112, align 4
  %conv113 = zext i8 %27 to i32
  %add = add i32 %sdres_tlvs_len.0312, %conv113
  %node = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call107, i32 0, i32 6
  %28 = ptrtoint ptr %llc_sdres_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %llc_sdres_list, align 4
  %30 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %node, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end111.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end111.hlist_add_head.exit_crit_edge:          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %node, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end111.hlist_add_head.exit_crit_edge
  %32 = ptrtoint ptr %llc_sdres_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %node, ptr %llc_sdres_list, align 4
  %pprev34.i = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call107, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %llc_sdres_list, ptr %pprev34.i, align 4
  br label %sw.epilog

sw.bb114:                                         ; preds = %while.body
  call void @mutex_lock_nested(ptr noundef %sdreq_lock, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_snl, %if.then127)) #11
          to label %do.end132 [label %if.then127], !srcloc !328

if.then127:                                       ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx128 = getelementptr i8, ptr %tlv.0313, i32 2
  %34 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %35 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.134, i32 noundef %conv129) #11
  br label %do.end132

do.end132:                                        ; preds = %if.then127, %sw.bb114
  %36 = ptrtoint ptr %pending_sdreqs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pending_sdreqs, align 4
  %tobool134.not = icmp eq ptr %37, null
  %add.ptr = getelementptr i8, ptr %37, i32 -20
  %tobool136.not309319 = icmp eq ptr %add.ptr, null
  %tobool136.not309 = or i1 %tobool134.not, %tobool136.not309319
  br i1 %tobool136.not309, label %do.end132.for.end_crit_edge, label %for.body.lr.ph

do.end132.for.end_crit_edge:                      ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end132
  %arrayidx139 = getelementptr i8, ptr %tlv.0313, i32 2
  %38 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx139, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sdp.0310 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr174, %for.inc.for.body_crit_edge ]
  %tid137 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.0310, i32 0, i32 3
  %40 = ptrtoint ptr %tid137 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tid137, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %39)
  %cmp141.not = icmp eq i8 %41, %39
  br i1 %cmp141.not, label %if.end144, label %for.inc

if.end144:                                        ; preds = %for.body
  %arrayidx145 = getelementptr i8, ptr %tlv.0313, i32 3
  %42 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx145, align 1
  %sap146 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.0310, i32 0, i32 4
  %44 = ptrtoint ptr %sap146 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %sap146, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_snl, %if.then159)) #11
          to label %do.end164 [label %if.then159], !srcloc !328

if.then159:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  %uri = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.0310, i32 0, i32 2
  %45 = ptrtoint ptr %uri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %uri, align 4
  %47 = ptrtoint ptr %sap146 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sap146, align 1
  %conv161 = zext i8 %48 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.134, ptr noundef %46, i32 noundef %conv161) #11
  br label %do.end164

do.end164:                                        ; preds = %if.then159, %if.end144
  %node165 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.0310, i32 0, i32 6
  %49 = ptrtoint ptr %node165 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %node165, align 4
  %pprev2.i.i = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.0310, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pprev2.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %50, ptr %52, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %do.end164.hlist_del.exit_crit_edge, label %do.body13.i.i

do.end164.hlist_del.exit_crit_edge:               ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  %54 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %do.end164.hlist_del.exit_crit_edge
  %55 = ptrtoint ptr %nl_sdres_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nl_sdres_list, align 4
  %57 = ptrtoint ptr %node165 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %56, ptr %node165, align 4
  %tobool.not.i290 = icmp eq ptr %56, null
  br i1 %tobool.not.i290, label %hlist_del.exit.hlist_add_head.exit294_crit_edge, label %do.body12.i292

hlist_del.exit.hlist_add_head.exit294_crit_edge:  ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit294

do.body12.i292:                                   ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i291 = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %pprev.i291 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %node165, ptr %pprev.i291, align 4
  br label %hlist_add_head.exit294

hlist_add_head.exit294:                           ; preds = %do.body12.i292, %hlist_del.exit.hlist_add_head.exit294_crit_edge
  %59 = ptrtoint ptr %nl_sdres_list to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %node165, ptr %nl_sdres_list, align 4
  %60 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %nl_sdres_list, ptr %pprev2.i.i, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %node168 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdp.0310, i32 0, i32 6
  %61 = ptrtoint ptr %node168 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %node168, align 4
  %tobool170.not = icmp eq ptr %62, null
  %add.ptr174 = getelementptr i8, ptr %62, i32 -20
  %tobool136.not322 = icmp eq ptr %add.ptr174, null
  %tobool136.not = or i1 %tobool170.not, %tobool136.not322
  br i1 %tobool136.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %hlist_add_head.exit294, %do.end132.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %sdreq_lock) #11
  br label %sw.epilog

do.end181:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv25 = zext i8 %15 to i32
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.134, i32 noundef %conv25) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end181, %for.end, %hlist_add_head.exit
  %sdres_tlvs_len.1 = phi i32 [ %sdres_tlvs_len.0312, %do.end181 ], [ %sdres_tlvs_len.0312, %for.end ], [ %add, %hlist_add_head.exit ]
  %conv185 = zext i8 %17 to i32
  %add186 = add nuw nsw i32 %conv185, 2
  %add188 = add nuw nsw i32 %add186, %conv19317
  %add.ptr192 = getelementptr i8, ptr %tlv.0313, i32 %add186
  %conv19 = and i32 %add188, 65535
  %cmp21 = icmp ult i32 %conv19, %conv20
  br i1 %cmp21, label %sw.epilog.while.body_crit_edge, label %sw.epilog.exit_crit_edge

sw.epilog.exit_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

exit:                                             ; preds = %sw.epilog.exit_crit_edge, %add_snl.exit_crit_edge, %if.end17.exit_crit_edge
  %sdres_tlvs_len.0.lcssa = phi i32 [ 0, %if.end17.exit_crit_edge ], [ %sdres_tlvs_len.1, %sw.epilog.exit_crit_edge ], [ %sdres_tlvs_len.0312, %add_snl.exit_crit_edge ]
  %63 = ptrtoint ptr %nl_sdres_list to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %nl_sdres_list, align 4
  %tobool.not.i295.not = icmp eq ptr %64, null
  br i1 %tobool.not.i295.not, label %exit.if.end197_crit_edge, label %if.then195

exit.if.end197_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end197

if.then195:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 1
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  %call196 = call i32 @nfc_genl_llc_send_sdres(ptr noundef %66, ptr noundef nonnull %nl_sdres_list) #11
  br label %if.end197

if.end197:                                        ; preds = %if.then195, %exit.if.end197_crit_edge
  %67 = ptrtoint ptr %llc_sdres_list to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %llc_sdres_list, align 4
  %tobool.not.i296.not = icmp eq ptr %68, null
  br i1 %tobool.not.i296.not, label %if.end197.cleanup203_crit_edge, label %if.then200

if.end197.cleanup203_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup203

if.then200:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #13
  %call201 = call i32 @nfc_llcp_send_snl_sdres(ptr noundef %local, ptr noundef nonnull %llc_sdres_list, i32 noundef %sdres_tlvs_len.0.lcssa) #11
  br label %cleanup203

cleanup203:                                       ; preds = %if.then200, %if.end197.cleanup203_crit_edge, %do.end14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nl_sdres_list) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %llc_sdres_list) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfc_llcp_recv_hdlc(ptr noundef %local, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = shl i8 %3, 2
  %5 = and i8 %4, 12
  %arrayidx2.i = getelementptr i8, ptr %1, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i, align 1
  %8 = lshr i8 %7, 6
  %or7.i = or i8 %5, %8
  %9 = lshr i8 %3, 2
  %10 = and i8 %7, 63
  %arrayidx.i191 = getelementptr i8, ptr %1, i32 2
  %11 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i191, align 1
  %13 = lshr i8 %12, 4
  %14 = and i8 %12, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_hdlc.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_hdlc, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !328

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %9 to i32
  %conv8 = zext i8 %10 to i32
  %conv9 = zext i8 %14 to i32
  %conv10 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_hdlc.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.150, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call11 = tail call fastcc ptr @nfc_llcp_sock_get(ptr noundef %local, i8 noundef zeroext %9, i8 noundef zeroext %10)
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 @nfc_llcp_send_dm(ptr noundef %local, i8 noundef zeroext %9, i8 noundef zeroext %10, i8 noundef zeroext 1) #11
  br label %cleanup

if.end15:                                         ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef nonnull %call11, i32 noundef 0) #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call11, i32 0, i32 4
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp18 = icmp eq i8 %16, 4
  br i1 %cmp18, label %if.then20, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  tail call void @release_sock(ptr noundef nonnull %call11) #11
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call11, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end21_crit_edge, label %if.then10.i.i.i.i.i, !prof !324

if.end5.i.i.i.i.i.if.end21_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #11
  br label %if.end21

if.then.i.i:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %call11) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %or7.i)
  %cmp23 = icmp eq i8 %or7.i, 12
  br i1 %cmp23, label %do.body26, label %if.end21.if.end71_crit_edge

if.end21.if.end71_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

do.body26:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_recv_hdlc.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_recv_hdlc, %if.then38)) #11
          to label %do.end42 [label %if.then38], !srcloc !328

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_recv_hdlc.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.150, ptr noundef nonnull %call11) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body26
  %recv_n = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call11, i32 0, i32 15
  %18 = ptrtoint ptr %recv_n to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %recv_n, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %19)
  %cmp45 = icmp eq i8 %13, %19
  br i1 %cmp45, label %if.then47, label %do.end54

if.then47:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  %20 = add nuw nsw i8 %13, 1
  %21 = and i8 %20, 15
  %22 = ptrtoint ptr %recv_n to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %recv_n, align 2
  br label %if.end57

do.end54:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.150) #15
  br label %if.end57

if.end57:                                         ; preds = %do.end54, %if.then47
  %call58 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #11
  %call60 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %call11, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %do.end67

if.then62:                                        ; preds = %if.end57
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #11, !srcloc !322
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then62.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !323

if.then62.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then62
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end71_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !324

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end71_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then62.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then62.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end71

do.end67:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.150) #15
  br label %if.end71

if.end71:                                         ; preds = %do.end67, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end71_crit_edge, %if.end21.if.end71_crit_edge
  %send_ack_n = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call11, i32 0, i32 14
  %25 = ptrtoint ptr %send_ack_n to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %send_ack_n, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %14)
  %cmp74.not = icmp eq i8 %26, %14
  br i1 %cmp74.not, label %if.end71.if.end103_crit_edge, label %if.then76

if.end71.if.end103_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then76:                                        ; preds = %if.end71
  %27 = ptrtoint ptr %send_ack_n to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %14, ptr %send_ack_n, align 1
  %tx_pending_queue = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call11, i32 0, i32 20
  %28 = ptrtoint ptr %tx_pending_queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_pending_queue, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then76
  %s.0 = phi ptr [ %29, %if.then76 ], [ %tmp77.0, %for.body.for.cond_crit_edge ]
  %cmp81.not = icmp eq ptr %s.0, %tx_pending_queue
  br i1 %cmp81.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %30 = ptrtoint ptr %s.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %tmp77.0 = load ptr, ptr %s.0, align 8
  %data.i194 = getelementptr inbounds %struct.sk_buff, ptr %s.0, i32 0, i32 19
  %31 = ptrtoint ptr %data.i194 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i194, align 4
  %arrayidx.i195 = getelementptr i8, ptr %32, i32 2
  %33 = ptrtoint ptr %arrayidx.i195 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i195, align 1
  %35 = lshr i8 %34, 4
  tail call void @skb_unlink(ptr noundef %s.0, ptr noundef %tx_pending_queue) #11
  tail call void @kfree_skb_reason(ptr noundef %s.0, i32 noundef 0) #11
  %cmp87 = icmp eq i8 %35, %14
  br i1 %cmp87, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %prev = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call11, i32 0, i32 20, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev, align 4
  %cmp96.not207 = icmp eq ptr %37, %tx_pending_queue
  br i1 %cmp96.not207, label %for.end.if.end103_crit_edge, label %for.body98.lr.ph

for.end.if.end103_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

for.body98.lr.ph:                                 ; preds = %for.end
  %tx_queue = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 5
  br label %for.body98

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %for.body98.lr.ph
  %s.1208 = phi ptr [ %37, %for.body98.lr.ph ], [ %tmp77.1, %for.body98.for.body98_crit_edge ]
  %tmp77.1.in = getelementptr inbounds %struct.anon.44, ptr %s.1208, i32 0, i32 1
  %38 = ptrtoint ptr %tmp77.1.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp77.1 = load ptr, ptr %tmp77.1.in, align 4
  tail call void @skb_unlink(ptr noundef %s.1208, ptr noundef %tx_pending_queue) #11
  tail call void @skb_queue_head(ptr noundef %tx_queue, ptr noundef %s.1208) #11
  %cmp96.not = icmp eq ptr %tmp77.1, %tx_pending_queue
  br i1 %cmp96.not, label %for.body98.if.end103_crit_edge, label %for.body98.for.body98_crit_edge

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body98

for.body98.if.end103_crit_edge:                   ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.end103:                                        ; preds = %for.body98.if.end103_crit_edge, %for.end.if.end103_crit_edge, %if.end71.if.end103_crit_edge
  %trunc = trunc i8 %or7.i to i4
  %39 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.168)
  switch i4 %trunc, label %if.end103.if.end115_crit_edge [
    i4 -3, label %if.end103.if.end115.sink.split_crit_edge
    i4 -2, label %if.then112
  ]

if.end103.if.end115.sink.split_crit_edge:         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115.sink.split

if.end103.if.end115_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then112:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115.sink.split

if.end115.sink.split:                             ; preds = %if.then112, %if.end103.if.end115.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then112 ], [ 1, %if.end103.if.end115.sink.split_crit_edge ]
  %remote_ready113 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %call11, i32 0, i32 17
  %40 = ptrtoint ptr %remote_ready113 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink, ptr %remote_ready113, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.end115.sink.split, %if.end103.if.end115_crit_edge
  %call116 = tail call i32 @nfc_llcp_queue_i_frames(ptr noundef nonnull %call11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp ne i32 %call116, 0
  %cmp23.not = xor i1 %cmp23, true
  %brmerge = select i1 %cmp117, i1 true, i1 %cmp23.not
  br i1 %brmerge, label %if.end115.if.end124_crit_edge, label %if.then122

if.end115.if.end124_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.then122:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %call123 = tail call i32 @nfc_llcp_send_rr(ptr noundef nonnull %call11) #11
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end115.if.end124_crit_edge
  tail call void @release_sock(ptr noundef nonnull %call11) #11
  %skc_refcnt.i.i196 = getelementptr inbounds %struct.sock_common, ptr %call11, i32 0, i32 19
  %call.i.i.i.i.i.i.i197 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i196, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i196, i32 1, i32 3, i32 1) #11
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i196, ptr %skc_refcnt.i.i196, i32 1, ptr elementtype(i32) %skc_refcnt.i.i196) #11, !srcloc !326
  %asmresult.i.i.i.i.i.i.i.i198 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i198)
  %cmp.i.i.i.i.i199 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i198, 1
  br i1 %cmp.i.i.i.i.i199, label %if.then.i.i203, label %if.end5.i.i.i.i.i201

if.end5.i.i.i.i.i201:                             ; preds = %if.end124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i198)
  %.not.i.i.i.i.i200 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i198, 0
  br i1 %.not.i.i.i.i.i200, label %if.end5.i.i.i.i.i201.cleanup_crit_edge, label %if.then10.i.i.i.i.i202, !prof !324

if.end5.i.i.i.i.i201.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i201
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i202:                           ; preds = %if.end5.i.i.i.i.i201
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i196, i32 noundef 3) #11
  br label %cleanup

if.then.i.i203:                                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @sk_free(ptr noundef nonnull %call11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i203, %if.then10.i.i.i.i.i202, %if.end5.i.i.i.i.i201.cleanup_crit_edge, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @nfc_llcp_reserve_sdp_ssap(ptr noundef %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdp_lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %sdp_lock, i32 noundef 0) #11
  %local_sdp = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 17
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %local_sdp, i32 noundef 16) #11
  %conv1 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv1)
  %cmp = icmp eq i32 %conv1, 16
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %sdp_lock) #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_llcp_reserve_sdp_ssap.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_llcp_reserve_sdp_ssap, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !328

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw nsw i32 %conv1, 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_llcp_reserve_sdp_ssap.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121, i32 noundef %add) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  tail call void @_set_bit(i32 noundef %conv1, ptr noundef %local_sdp) #11
  tail call void @mutex_unlock(ptr noundef %sdp_lock) #11
  %0 = trunc i32 %call to i8
  %conv15 = add i8 %0, 16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i8 [ -1, %if.then ], [ %conv15, %do.end ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_sock_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_parse_connection_tlv(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_accept_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_cc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_dm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfc_llcp_connecting_sock_get(ptr noundef %local, i8 noundef zeroext %ssap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %connecting_sockets = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 35
  %lock = getelementptr inbounds %struct.nfc_llcp_local, ptr %local, i32 0, i32 35, i32 1
  tail call void @_raw_read_lock(ptr noundef %lock) #11
  %0 = ptrtoint ptr %connecting_sockets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connecting_sockets, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -84
  %tobool3.not3437 = icmp eq ptr %add.ptr, null
  %tobool3.not34 = or i1 %tobool.not, %tobool3.not3437
  br i1 %tobool3.not34, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sk.035 = phi ptr [ %add.ptr14, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %ssap4 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %sk.035, i32 0, i32 5
  %2 = ptrtoint ptr %ssap4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ssap4, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %ssap)
  %cmp = icmp eq i8 %3, %ssap
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk.035, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !322
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !323

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.out_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !324

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.out_crit_edge:                    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %out

for.inc:                                          ; preds = %for.body
  %6 = getelementptr inbounds %struct.sock_common, ptr %sk.035, i32 0, i32 15
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool10.not = icmp eq ptr %8, null
  %add.ptr14 = getelementptr i8, ptr %8, i32 -84
  %tobool3.not39 = icmp eq ptr %add.ptr14, null
  %tobool3.not = or i1 %tobool10.not, %tobool3.not39
  br i1 %tobool3.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.out_crit_edge, %entry.out_crit_edge
  %sk.033 = phi ptr [ %sk.035, %if.end15.sink.split.i.i.i.i ], [ %sk.035, %if.else.i.i.i.i.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %for.inc.out_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %lock) #11
  ret ptr %sk.033
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_build_sdres_tlv(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_llc_send_sdres(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_snl_sdres(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_rr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_recv_skb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_free_sdp_tlv_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !86, !87, !89, !91, !93, !94, !95, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !257, !258, !259, !261, !262, !263, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !303, !304, !305, !306, !308, !309, !311, !312}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318, !319, !320}
!llvm.ident = !{!321}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/llcp_core.c", i32 289, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nfc_llcp_find_local.__UNIQUE_ID_ddebug458, !1, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/nfc/llcp_core.c", i32 383, i32 4}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nfc_llcp_get_sdp_ssap.__UNIQUE_ID_ddebug463, !8, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/nfc/llcp_core.c", i32 461, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfc_llcp_put_ssap.__UNIQUE_ID_ddebug464, !13, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/nfc/llcp_core.c", i32 468, i32 4}
!19 = !{ptr @nfc_llcp_put_ssap.__UNIQUE_ID_ddebug465, !18, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/nfc/llcp_core.c", i32 622, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nfc_llcp_set_remote_gb._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfc_llcp_set_remote_gb._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/nfc/llcp_core.c", i32 631, i32 3}
!28 = !{ptr @nfc_llcp_set_remote_gb._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nfc_llcp_set_remote_gb._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/nfc/llcp_core.c", i32 1003, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nfc_llcp_queue_i_frames.__UNIQUE_ID_ddebug477, !31, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!34 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/nfc/llcp_core.c", i32 1507, i32 3}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nfc_llcp_recv._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @nfc_llcp_recv._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/nfc/llcp_core.c", i32 1549, i32 2}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nfc_llcp_mac_is_up.__UNIQUE_ID_ddebug501, !41, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!44 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/nfc/llcp_core.c", i32 1560, i32 3}
!47 = !{ptr @nfc_llcp_mac_is_up.__UNIQUE_ID_ddebug502, !46, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!48 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @nfc_llcp_register_device.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../net/nfc/llcp_core.c", i32 1580, i32 2}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @nfc_llcp_register_device.__key.29, !53, !"__key", i1 false, i1 false}
!53 = !{!"../net/nfc/llcp_core.c", i32 1581, i32 2}
!54 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @nfc_llcp_register_device.__key.31, !56, !"__key", i1 false, i1 false}
!56 = !{!"../net/nfc/llcp_core.c", i32 1584, i32 2}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @nfc_llcp_register_device.__key.33, !59, !"__key", i1 false, i1 false}
!59 = !{!"../net/nfc/llcp_core.c", i32 1587, i32 2}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nfc_llcp_register_device.__key.35, !62, !"__key", i1 false, i1 false}
!62 = !{!"../net/nfc/llcp_core.c", i32 1589, i32 2}
!63 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @nfc_llcp_register_device.__key.37, !65, !"__key", i1 false, i1 false}
!65 = !{!"../net/nfc/llcp_core.c", i32 1591, i32 2}
!66 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nfc_llcp_register_device.__key.39, !68, !"__key", i1 false, i1 false}
!68 = !{!"../net/nfc/llcp_core.c", i32 1592, i32 2}
!69 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nfc_llcp_register_device.__key.41, !71, !"__key", i1 false, i1 false}
!71 = !{!"../net/nfc/llcp_core.c", i32 1593, i32 2}
!72 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @nfc_llcp_register_device.__key.43, !74, !"__key", i1 false, i1 false}
!74 = !{!"../net/nfc/llcp_core.c", i32 1605, i32 2}
!75 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @nfc_llcp_register_device.__key.45, !77, !"__key", i1 false, i1 false}
!77 = !{!"../net/nfc/llcp_core.c", i32 1607, i32 2}
!78 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @nfc_llcp_register_device.__key.47, !80, !"__key", i1 false, i1 false}
!80 = !{!"../net/nfc/llcp_core.c", i32 1608, i32 2}
!81 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/nfc/llcp_core.c", i32 1620, i32 3}
!84 = !{ptr @.str.50, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @nfc_llcp_unregister_device.__UNIQUE_ID_ddebug503, !83, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!86 = !{ptr @.str.51, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/net/sock.h", i32 729, i32 3}
!89 = !{ptr @llcp_devices, !90, !"llcp_devices", i1 false, i1 false}
!90 = !{!"../net/nfc/llcp_core.c", i32 19, i32 8}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/nfc/llcp_core.c", i32 306, i32 2}
!93 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @nfc_llcp_wks_sap.__UNIQUE_ID_ddebug459, !92, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!95 = !{ptr @.str.55, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/nfc/llcp_core.c", i32 297, i32 2}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/nfc/llcp_core.c", i32 298, i32 2}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/nfc/llcp_core.c", i32 299, i32 2}
!102 = distinct !{null, !103, !"wks", i1 false, i1 false}
!103 = !{!"../net/nfc/llcp_core.c", i32 294, i32 14}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/nfc/llcp_core.c", i32 331, i32 2}
!106 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug460, !105, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!108 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/nfc/llcp_core.c", i32 343, i32 3}
!111 = !{ptr @nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug461, !110, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!112 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/nfc/llcp_core.c", i32 368, i32 2}
!115 = !{ptr @nfc_llcp_sock_from_sn.__UNIQUE_ID_ddebug462, !114, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!116 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/nfc/llcp_core.c", i32 190, i32 2}
!119 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @nfc_llcp_sock_get.__UNIQUE_ID_ddebug457, !118, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!121 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/nfc/llcp_core.c", i32 545, i32 2}
!124 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @nfc_llcp_build_gb.__UNIQUE_ID_ddebug467, !123, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!126 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @llcp_magic, !128, !"llcp_magic", i1 false, i1 false}
!128 = !{!"../net/nfc/llcp_core.c", i32 17, i32 11}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/nfc/llcp_core.c", i32 235, i32 2}
!131 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @nfc_llcp_symm_timer._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @nfc_llcp_symm_timer._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @skb_queue_head_init.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!136 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/nfc/llcp_core.c", i32 736, i32 4}
!139 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @nfc_llcp_tx_work.__UNIQUE_ID_ddebug468, !138, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!141 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/nfc/llcp_core.c", i32 737, i32 4}
!144 = !{ptr @nfc_llcp_tx_work.__UNIQUE_ID_ddebug469, !143, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!145 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/nfc/llcp_core.c", i32 1480, i32 3}
!148 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @nfc_llcp_rx_work.__UNIQUE_ID_ddebug500, !147, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!150 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/nfc/llcp_core.c", i32 1417, i32 2}
!153 = !{ptr @.str.84, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug489, !152, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!155 = !{ptr @.str.85, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/nfc/llcp_core.c", i32 1420, i32 3}
!158 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug490, !157, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/nfc/llcp_core.c", i32 1425, i32 3}
!161 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug491, !160, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!162 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/nfc/llcp_core.c", i32 1429, i32 3}
!165 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug492, !164, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!166 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/nfc/llcp_core.c", i32 1434, i32 3}
!169 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug493, !168, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!170 = !{ptr @.str.92, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/nfc/llcp_core.c", i32 1439, i32 3}
!173 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug494, !172, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!174 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/nfc/llcp_core.c", i32 1444, i32 3}
!177 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug495, !176, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!178 = !{ptr @.str.96, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/nfc/llcp_core.c", i32 1449, i32 3}
!181 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug496, !180, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!182 = !{ptr @.str.98, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/nfc/llcp_core.c", i32 1454, i32 3}
!185 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug497, !184, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!186 = !{ptr @.str.100, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/nfc/llcp_core.c", i32 1461, i32 3}
!189 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug498, !188, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!190 = !{ptr @.str.102, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/nfc/llcp_core.c", i32 1466, i32 3}
!193 = !{ptr @nfc_llcp_rx_skb.__UNIQUE_ID_ddebug499, !192, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!194 = !{ptr @.str.104, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../net/nfc/llcp_core.c", i32 854, i32 2}
!197 = !{ptr @.str.106, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @nfc_llcp_recv_ui.__UNIQUE_ID_ddebug471, !196, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!199 = !{ptr @.str.107, !196, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.108, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../net/nfc/llcp_core.c", i32 870, i32 3}
!202 = !{ptr @nfc_llcp_recv_ui._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @nfc_llcp_recv_ui._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.109, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/nfc/llcp_core.c", i32 886, i32 2}
!206 = !{ptr @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug472, !205, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!207 = !{ptr @.str.110, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/nfc/llcp_core.c", i32 904, i32 3}
!209 = !{ptr @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug473, !208, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!210 = !{ptr @.str.111, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.112, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../net/nfc/llcp_core.c", i32 927, i32 3}
!213 = !{ptr @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug474, !212, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!214 = !{ptr @.str.113, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.114, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../net/nfc/llcp_core.c", i32 960, i32 3}
!217 = !{ptr @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug475, !216, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!218 = !{ptr @.str.115, !216, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.116, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../net/nfc/llcp_core.c", i32 972, i32 2}
!221 = !{ptr @nfc_llcp_recv_connect.__UNIQUE_ID_ddebug476, !220, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!222 = !{ptr @.str.117, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.118, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../net/nfc/llcp_core.c", i32 826, i32 3}
!225 = !{ptr @.str.119, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @nfc_llcp_connect_sn.__UNIQUE_ID_ddebug470, !224, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!227 = !{ptr @.str.120, !224, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.121, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../net/nfc/llcp_core.c", i32 510, i32 2}
!230 = !{ptr @.str.122, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @nfc_llcp_reserve_sdp_ssap.__UNIQUE_ID_ddebug466, !229, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!232 = !{ptr @.str.123, !229, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.124, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../net/nfc/llcp_core.c", i32 1124, i32 3}
!235 = !{ptr @.str.125, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @nfc_llcp_recv_disc.__UNIQUE_ID_ddebug480, !234, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!237 = !{ptr @.str.126, !234, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.127, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../net/nfc/llcp_core.c", i32 1169, i32 3}
!240 = !{ptr @.str.128, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @nfc_llcp_recv_cc._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @nfc_llcp_recv_cc._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.129, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../net/nfc/llcp_core.c", i32 1202, i32 2}
!245 = !{ptr @.str.130, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @nfc_llcp_recv_dm.__UNIQUE_ID_ddebug481, !244, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!247 = !{ptr @.str.131, !244, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.132, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../net/nfc/llcp_core.c", i32 1216, i32 3}
!250 = !{ptr @nfc_llcp_recv_dm.__UNIQUE_ID_ddebug482, !249, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!251 = !{ptr @.str.133, !249, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.134, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../net/nfc/llcp_core.c", i32 1246, i32 2}
!254 = !{ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug483, !253, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!255 = !{ptr @.str.135, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../net/nfc/llcp_core.c", i32 1249, i32 3}
!257 = !{ptr @nfc_llcp_recv_snl._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @nfc_llcp_recv_snl._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.136, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../net/nfc/llcp_core.c", i32 1268, i32 4}
!261 = !{ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug484, !260, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!262 = !{ptr @.str.137, !260, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.138, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../net/nfc/llcp_core.c", i32 1271, i32 31}
!265 = !{ptr @.str.139, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../net/nfc/llcp_core.c", i32 1294, i32 5}
!267 = !{ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug485, !266, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!268 = !{ptr @.str.140, !266, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.141, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../net/nfc/llcp_core.c", i32 1313, i32 4}
!271 = !{ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug486, !270, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!272 = !{ptr @.str.142, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.143, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../net/nfc/llcp_core.c", i32 1327, i32 4}
!275 = !{ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug487, !274, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!276 = !{ptr @.str.144, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.145, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../net/nfc/llcp_core.c", i32 1335, i32 5}
!279 = !{ptr @nfc_llcp_recv_snl.__UNIQUE_ID_ddebug488, !278, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!280 = !{ptr @.str.146, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.148, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../net/nfc/llcp_core.c", i32 1349, i32 4}
!283 = !{ptr @nfc_llcp_recv_snl._entry.147, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @nfc_llcp_recv_snl._entry_ptr.149, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.150, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../net/nfc/llcp_core.c", i32 1039, i32 2}
!287 = !{ptr @.str.151, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @nfc_llcp_recv_hdlc.__UNIQUE_ID_ddebug478, !286, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!289 = !{ptr @.str.152, !286, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.153, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../net/nfc/llcp_core.c", i32 1056, i32 3}
!292 = !{ptr @nfc_llcp_recv_hdlc.__UNIQUE_ID_ddebug479, !291, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!293 = !{ptr @.str.154, !291, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.155, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../net/nfc/llcp_core.c", i32 1061, i32 4}
!296 = !{ptr @nfc_llcp_recv_hdlc._entry, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @nfc_llcp_recv_hdlc._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @nfc_llcp_recv_hdlc._entry.156, !299, !"_entry", i1 false, i1 false}
!299 = !{!"../net/nfc/llcp_core.c", i32 1071, i32 4}
!300 = !{ptr @nfc_llcp_recv_hdlc._entry_ptr.157, !299, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.158, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../net/nfc/llcp_core.c", i32 1372, i32 3}
!303 = !{ptr @.str.159, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @nfc_llcp_recv_agf._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @nfc_llcp_recv_agf._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @nfc_llcp_recv_agf._entry.160, !307, !"_entry", i1 false, i1 false}
!307 = !{!"../net/nfc/llcp_core.c", i32 1384, i32 4}
!308 = !{ptr @nfc_llcp_recv_agf._entry_ptr.161, !307, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.163, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../net/nfc/llcp_core.c", i32 1395, i32 4}
!311 = !{ptr @nfc_llcp_recv_agf._entry.162, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @nfc_llcp_recv_agf._entry_ptr.164, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{i32 1, !"wchar_size", i32 2}
!314 = !{i32 1, !"min_enum_size", i32 4}
!315 = !{i32 8, !"branch-target-enforcement", i32 0}
!316 = !{i32 8, !"sign-return-address", i32 0}
!317 = !{i32 8, !"sign-return-address-all", i32 0}
!318 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!319 = !{i32 7, !"uwtable", i32 1}
!320 = !{i32 7, !"frame-pointer", i32 2}
!321 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!322 = !{i64 2148256716, i64 2148256748, i64 2148256777, i64 2148256811, i64 2148256842, i64 2148256865}
!323 = !{!"branch_weights", i32 1, i32 2000}
!324 = !{!"branch_weights", i32 2000, i32 1}
!325 = !{i64 2148344717}
!326 = !{i64 2148259181, i64 2148259213, i64 2148259242, i64 2148259276, i64 2148259307, i64 2148259330}
!327 = !{i64 2149316941}
!328 = !{i64 2148724517, i64 2148724522, i64 2148724535, i64 2148724579, i64 2148724613, i64 2148724634}
!329 = !{i64 2148343638}
!330 = !{i64 2148258371, i64 2148258403, i64 2148258432, i64 2148258466, i64 2148258497, i64 2148258520}
!331 = !{i64 2148343867}
!332 = !{!"auto-init"}
!333 = !{i64 2148255186, i64 2148255212, i64 2148255241, i64 2148255275, i64 2148255306, i64 2148255329}
