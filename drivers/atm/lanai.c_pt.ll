; ModuleID = '/llk/IR_all_yes/drivers/atm/lanai.c_pt.bc'
source_filename = "../drivers/atm/lanai.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.lanai_dev = type { ptr, %struct.lanai_dev_stats, %struct.lanai_buffer, ptr, i32, i32, [128 x i8], i32, i32, ptr, [32 x i32], [32 x i32], %struct.timer_list, i32, %struct.lanai_buffer, i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, i32, i32 }
%struct.lanai_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lanai_buffer = type { ptr, ptr, ptr, i32 }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.150, i8, %union.anon.152 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { i8, i8 }
%union.anon.152 = type { %struct.anon.155 }
%struct.anon.155 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.156 }
%struct.anon.156 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.lanai_vcc = type { ptr, %struct.lanai_vcc_stats, i32, i32, %struct.anon.149, %struct.anon.157 }
%struct.lanai_vcc_stats = type { i32, %union.anon.146 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, i32, i32, i32 }
%struct.anon.149 = type { %struct.lanai_buffer, ptr }
%struct.anon.157 = type { %struct.lanai_buffer, ptr, i32, %struct.sk_buff_head, ptr }
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

@__initcall__kmod_lanai__459_2599_lanai_driver_init6 = internal global ptr @lanai_driver_init, section ".initcall6.init", align 4
@lanai_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @lanai_pci_tbl, ptr @lanai_init_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lanai_driver_exit = internal global ptr @lanai_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author460 = internal constant [50 x i8] c"lanai.author=Mitchell Blank Jr <mitch@sfgoth.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description461 = internal constant [61 x i8] c"lanai.description=Efficient Networks Speedstream 3010 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file462 = internal constant [29 x i8] c"lanai.file=drivers/atm/lanai\00", section ".modinfo", align 1
@__UNIQUE_ID_license463 = internal constant [18 x i8] c"lanai.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lanai\00", [26 x i8] zeroinitializer }, align 32
@lanai_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4378, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4378, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@lanai_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013lanai: couldn't allocate dev_data structure!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lanai_init_one\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/atm/lanai.c\00", [44 x i8] zeroinitializer }, align 32
@lanai_init_one._entry_ptr = internal global ptr @lanai_init_one._entry, section ".printk_index", align 4
@ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr @lanai_dev_close, ptr @lanai_open, ptr @lanai_close, ptr null, ptr @lanai_send, ptr null, ptr null, ptr null, ptr null, ptr @lanai_change_qos, ptr @lanai_proc_read, ptr null }, [48 x i8] zeroinitializer }, align 32
@lanai_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 2568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013lanai: couldn't register atm device!\0A\00", [56 x i8] zeroinitializer }, align 32
@lanai_init_one._entry_ptr.6 = internal global ptr @lanai_init_one._entry.4, section ".printk_index", align 4
@lanai_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 2579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017lanai: lanai_start() failed, err=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@lanai_init_one._entry_ptr.9 = internal global ptr @lanai_init_one._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lanai_dev_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 2252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016lanai(itf %d): shutting down interface\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lanai_dev_close\00", [16 x i8] zeroinitializer }, align 32
@lanai_dev_close._entry_ptr = internal global ptr @lanai_dev_close._entry, section ".printk_index", align 4
@reset_board._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017lanai: about to reset board\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset_board\00", [20 x i8] zeroinitializer }, align 32
@reset_board._entry_ptr = internal global ptr @reset_board._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@lanai_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 2328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017lanai: lanai(itf %d): open %d.%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lanai_open\00", [21 x i8] zeroinitializer }, align 32
@lanai_open._entry_ptr = internal global ptr @lanai_open._entry, section ".printk_index", align 4
@lanai_open._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 2339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013lanai: rx.atmvcc!=NULL, vci=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@lanai_open._entry_ptr.18 = internal global ptr @lanai_open._entry.16, section ".printk_index", align 4
@lanai_open._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 2359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013lanai: tx.atmvcc!=NULL, vci=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@lanai_open._entry_ptr.21 = internal global ptr @lanai_open._entry.19, section ".printk_index", align 4
@lanai_open._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.3, i32 2366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013lanai: cbrvcc!=NULL, vci=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@lanai_open._entry_ptr.24 = internal global ptr @lanai_open._entry.22, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@aal0_buffer_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017lanai: aal0_buffer_allocate: allocating AAL0 RX buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aal0_buffer_allocate\00", [43 x i8] zeroinitializer }, align 32
@aal0_buffer_allocate._entry_ptr = internal global ptr @aal0_buffer_allocate._entry, section ".printk_index", align 4
@lanai_buf_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013lanai: bad dmaaddr: 0x%lx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lanai_buf_allocate\00", [45 x i8] zeroinitializer }, align 32
@lanai_buf_allocate._entry_ptr = internal global ptr @lanai_buf_allocate._entry, section ".printk_index", align 4
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@lanai_get_sized_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014lanai(itf %d): wanted %d bytes for %s buffer, got only %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lanai_get_sized_buffer\00", [41 x i8] zeroinitializer }, align 32
@lanai_get_sized_buffer._entry_ptr = internal global ptr @lanai_get_sized_buffer._entry, section ".printk_index", align 4
@lanai_get_sized_buffer._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017lanai: Allocated %zu byte %s buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@lanai_get_sized_buffer._entry_ptr.35 = internal global ptr @lanai_get_sized_buffer._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@vcc_tx_unqueue_aal0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016lanai: vcc_tx_unqueue_aal0: not implemented\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vcc_tx_unqueue_aal0\00", [44 x i8] zeroinitializer }, align 32
@vcc_tx_unqueue_aal0._entry_ptr = internal global ptr @vcc_tx_unqueue_aal0._entry, section ".printk_index", align 4
@vcc_tx_unqueue_aal5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013lanai: vcc_tx_unqueue() called with empty backlog (vci=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vcc_tx_unqueue_aal5\00", [44 x i8] zeroinitializer }, align 32
@vcc_tx_unqueue_aal5._entry_ptr = internal global ptr @vcc_tx_unqueue_aal5._entry, section ".printk_index", align 4
@lanai_send_one_aal5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013lanai: lanai_send_one_aal5: wrong size packet (%d != %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lanai_send_one_aal5\00", [44 x i8] zeroinitializer }, align 32
@lanai_send_one_aal5._entry_ptr = internal global ptr @lanai_send_one_aal5._entry, section ".printk_index", align 4
@lanai_send_one_aal5._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 1286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013lanai: pad is negative (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@lanai_send_one_aal5._entry_ptr.45 = internal global ptr @lanai_send_one_aal5._entry.43, section ".printk_index", align 4
@lanai_send_one_aal5._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013lanai: pad is too big (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@lanai_send_one_aal5._entry_ptr.48 = internal global ptr @lanai_send_one_aal5._entry.46, section ".printk_index", align 4
@vcc_tx_add_aal5_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013lanai: vcc_tx_add_aal5_descriptor: bad ptr=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vcc_tx_add_aal5_descriptor\00", [37 x i8] zeroinitializer }, align 32
@vcc_tx_add_aal5_descriptor._entry_ptr = internal global ptr @vcc_tx_add_aal5_descriptor._entry, section ".printk_index", align 4
@vcc_tx_add_aal5_descriptor._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013lanai: vcc_tx_add_aal5_descriptor: bad pos (%d) before, vci=%d, start,ptr,end=%p,%p,%p\0A\00", [38 x i8] zeroinitializer }, align 32
@vcc_tx_add_aal5_descriptor._entry_ptr.53 = internal global ptr @vcc_tx_add_aal5_descriptor._entry.51, section ".printk_index", align 4
@vcc_tx_add_aal5_descriptor._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.3, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013lanai: vcc_tx_add_aal5_descriptor: bad pos (%d) after, vci=%d, start,ptr,end=%p,%p,%p\0A\00", [39 x i8] zeroinitializer }, align 32
@vcc_tx_add_aal5_descriptor._entry_ptr.56 = internal global ptr @vcc_tx_add_aal5_descriptor._entry.54, section ".printk_index", align 4
@vcc_tx_add_aal5_trailer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013lanai: vcc_tx_add_aal5_trailer: bad ptr=%p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vcc_tx_add_aal5_trailer\00", [40 x i8] zeroinitializer }, align 32
@vcc_tx_add_aal5_trailer._entry_ptr = internal global ptr @vcc_tx_add_aal5_trailer._entry, section ".printk_index", align 4
@lanai_endtx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013lanai: lanai_endtx: bad ptr (%d), vci=%d, start,ptr,end=%p,%p,%p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lanai_endtx\00", [20 x i8] zeroinitializer }, align 32
@lanai_endtx._entry_ptr = internal global ptr @lanai_endtx._entry, section ".printk_index", align 4
@lanai_endtx._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013lanai(itf %d): butt register always busy!\0A\00", [51 x i8] zeroinitializer }, align 32
@lanai_endtx._entry_ptr.63 = internal global ptr @lanai_endtx._entry.61, section ".printk_index", align 4
@host_vcc_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 1528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017lanai: Binding vci %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host_vcc_bind\00", [18 x i8] zeroinitializer }, align 32
@host_vcc_bind._entry_ptr = internal global ptr @host_vcc_bind._entry, section ".printk_index", align 4
@cardvcc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013lanai: cardvcc_write: unbound vcc!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cardvcc_write\00", [18 x i8] zeroinitializer }, align 32
@cardvcc_write._entry_ptr = internal global ptr @cardvcc_write._entry, section ".printk_index", align 4
@cardvcc_write._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013lanai: cardvcc_write: bad val 0x%X (vci=%d, addr=0x%02X)\0A\00", [36 x i8] zeroinitializer }, align 32
@cardvcc_write._entry_ptr.70 = internal global ptr @cardvcc_write._entry.68, section ".printk_index", align 4
@pcr_to_cbricg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 2085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017lanai: pcr_to_cbricg: pcr=%d rounddown=%c icg=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcr_to_cbricg\00", [18 x i8] zeroinitializer }, align 32
@pcr_to_cbricg._entry_ptr = internal global ptr @pcr_to_cbricg._entry, section ".printk_index", align 4
@aal0_buffer_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017lanai: aal0_buffer_allocate: freeing AAL0 RX buffer\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aal0_buffer_free\00", [47 x i8] zeroinitializer }, align 32
@aal0_buffer_free._entry_ptr = internal global ptr @aal0_buffer_free._entry, section ".printk_index", align 4
@vcc_sklist_lock = external dso_local global %struct.rwlock_t, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lanai_shutdown_tx_vci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013lanai(itf %d): Timed out on backlog closing vci %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lanai_shutdown_tx_vci\00", [42 x i8] zeroinitializer }, align 32
@lanai_shutdown_tx_vci._entry_ptr = internal global ptr @lanai_shutdown_tx_vci._entry, section ".printk_index", align 4
@lanai_shutdown_tx_vci._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017lanai: read, write = %d, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@lanai_shutdown_tx_vci._entry_ptr.79 = internal global ptr @lanai_shutdown_tx_vci._entry.77, section ".printk_index", align 4
@cardvcc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013lanai: cardvcc_read: unbound vcc!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cardvcc_read\00", [19 x i8] zeroinitializer }, align 32
@cardvcc_read._entry_ptr = internal global ptr @cardvcc_read._entry, section ".printk_index", align 4
@host_vcc_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017lanai: Unbinding vci %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"host_vcc_unbind\00", [16 x i8] zeroinitializer }, align 32
@host_vcc_unbind._entry_ptr = internal global ptr @host_vcc_unbind._entry, section ".printk_index", align 4
@lanai_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 2401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017lanai: lanai_send: skb==NULL for vci=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lanai_send\00", [21 x i8] zeroinitializer }, align 32
@lanai_send._entry_ptr = internal global ptr @lanai_send._entry, section ".printk_index", align 4
@lanai_send._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 2405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017lanai: lanai_send: lanai==NULL for vci=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@lanai_send._entry_ptr.88 = internal global ptr @lanai_send._entry.86, section ".printk_index", align 4
@lanai_send._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.3, i32 2427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017lanai: lanai_send: bad aal=%d on vci=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@lanai_send._entry_ptr.91 = internal global ptr @lanai_send._entry.89, section ".printk_index", align 4
@vcc_tx_aal5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013lanai: vcc_tx_aal5: n too small (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vcc_tx_aal5\00", [20 x i8] zeroinitializer }, align 32
@vcc_tx_aal5._entry_ptr = internal global ptr @vcc_tx_aal5._entry, section ".printk_index", align 4
@vcc_tx_aal0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lanai: vcc_tx_aal0: not implemented\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vcc_tx_aal0\00", [20 x i8] zeroinitializer }, align 32
@vcc_tx_aal0._entry_ptr = internal global ptr @vcc_tx_aal0._entry, section ".printk_index", align 4
@.str.96 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"lanai(itf %d): chip=LANAI%s, serial=%u, magic=0x%08X, num_vci=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HB\00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"revision: board=%d, pci_if=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EEPROM ESI: %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"status: SOOL=%d, LOCD=%d, LED=%d, GPIN=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"global buffer sizes: service=%zu, aal0_rx=%zu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"cells in error: overflow=%u, closed_vci=%u, bad_HEC=%u, rx_fifo=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"PCI errors: parity_detect=%u, master_abort=%u, master_target_abort=%u,\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"            slave_target_abort=%u, master_parity=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"                     no_tx=%u, no_rx=%u, bad_rx_aal=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"resets: dma=%u, card=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VCI %4d: nref=%d, rx_nomem=%u\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c",\0A          rx_AAL=%d\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c", rx_buf_size=%zu, rx_bad_len=%u,\0A          rx_service_trash=%u, rx_service_stream=%u, rx_bad_crc=%u\00", [59 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c",\0A          tx_AAL=%d, tx_buf_size=%zu, tx_qos=%cBR, tx_backlogged=%c\00", [58 x i8] zeroinitializer }, align 32
@lanai_dev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.3, i32 2112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017lanai: In lanai_dev_open()\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lanai_dev_open\00", [17 x i8] zeroinitializer }, align 32
@lanai_dev_open._entry_ptr = internal global ptr @lanai_dev_open._entry, section ".printk_index", align 4
@lanai_dev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&lanai->endtxlock\00", [46 x i8] zeroinitializer }, align 32
@lanai_dev_open.__key.115 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&lanai->servicelock\00", [44 x i8] zeroinitializer }, align 32
@lanai_dev_open._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.3, i32 2138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013lanai: couldn't remap I/O space\0A\00", [61 x i8] zeroinitializer }, align 32
@lanai_dev_open._entry_ptr.119 = internal global ptr @lanai_dev_open._entry.117, section ".printk_index", align 4
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"register\00", [23 x i8] zeroinitializer }, align 32
@lanai_dev_open._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.113, ptr @.str.3, i32 2198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013lanai: can't allocate interrupt\0A\00", [61 x i8] zeroinitializer }, align 32
@lanai_dev_open._entry_ptr.123 = internal global ptr @lanai_dev_open._entry.121, section ".printk_index", align 4
@lanai_dev_open._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.113, ptr @.str.3, i32 2218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015lanai(itf %d): rev.%d, base=%p, irq=%u (%pMF)\0A\00", [47 x i8] zeroinitializer }, align 32
@lanai_dev_open._entry_ptr.126 = internal global ptr @lanai_dev_open._entry.124, section ".printk_index", align 4
@lanai_dev_open._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.113, ptr @.str.3, i32 2222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015lanai(itf %d): LANAI%s, serialno=%u(0x%X), board_rev=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@lanai_dev_open._entry_ptr.129 = internal global ptr @lanai_dev_open._entry.127, section ".printk_index", align 4
@lanai_pci_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 1937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013lanai(itf %d): can't enable PCI device\00", [55 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lanai_pci_start\00", [16 x i8] zeroinitializer }, align 32
@lanai_pci_start._entry_ptr = internal global ptr @lanai_pci_start._entry, section ".printk_index", align 4
@lanai_pci_start._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.3, i32 1943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014lanai(itf %d): No suitable DMA available.\0A\00", [51 x i8] zeroinitializer }, align 32
@lanai_pci_start._entry_ptr.134 = internal global ptr @lanai_pci_start._entry.132, section ".printk_index", align 4
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@lanai_pci_start._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.131, ptr @.str.3, i32 1953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013lanai(itf %d): can't write PCI_LATENCY_TIMER: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@lanai_pci_start._entry_ptr.138 = internal global ptr @lanai_pci_start._entry.136, section ".printk_index", align 4
@pcistatus_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013lanai(itf %d): can't read PCI_STATUS: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcistatus_check\00", [16 x i8] zeroinitializer }, align 32
@pcistatus_check._entry_ptr = internal global ptr @pcistatus_check._entry, section ".printk_index", align 4
@pcistatus_check._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.3, i32 1113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013lanai(itf %d): can't write PCI_STATUS: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@pcistatus_check._entry_ptr.143 = internal global ptr @pcistatus_check._entry.141, section ".printk_index", align 4
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parity\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"signalled system\00", [47 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"master target\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"master parity\00", [18 x i8] zeroinitializer }, align 32
@pcistatus_got._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.3, i32 1092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016lanai(itf %d): PCI got %s error\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcistatus_got\00", [18 x i8] zeroinitializer }, align 32
@pcistatus_got._entry_ptr = internal global ptr @pcistatus_got._entry, section ".printk_index", align 4
@check_board_id_and_rev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.3, i32 1917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017lanai: %s says board_id=%d, board_rev=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"check_board_id_and_rev\00", [41 x i8] zeroinitializer }, align 32
@check_board_id_and_rev._entry_ptr = internal global ptr @check_board_id_and_rev._entry, section ".printk_index", align 4
@check_board_id_and_rev._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.3, i32 1920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013lanai: Found %s board-id %d -- not a Lanai 25.6\0A\00", [45 x i8] zeroinitializer }, align 32
@check_board_id_and_rev._entry_ptr.156 = internal global ptr @check_board_id_and_rev._entry.154, section ".printk_index", align 4
@eeprom_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.3, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lanai(itf %d): *NOT* reading EEPROM\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eeprom_read\00", [20 x i8] zeroinitializer }, align 32
@eeprom_read._entry_ptr = internal global ptr @eeprom_read._entry, section ".printk_index", align 4
@sram_test_and_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.3, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017lanai: testing SRAM\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sram_test_and_clear\00", [44 x i8] zeroinitializer }, align 32
@sram_test_and_clear._entry_ptr = internal global ptr @sram_test_and_clear._entry, section ".printk_index", align 4
@sram_test_and_clear._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.3, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017lanai: clearing SRAM\0A\00", [40 x i8] zeroinitializer }, align 32
@sram_test_and_clear._entry_ptr.163 = internal global ptr @sram_test_and_clear._entry.161, section ".printk_index", align 4
@sram_test_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.3, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013lanai(itf %d): SRAM word at %d bad: wrote 0x%X, read 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sram_test_word\00", [17 x i8] zeroinitializer }, align 32
@sram_test_word._entry_ptr = internal global ptr @sram_test_word._entry, section ".printk_index", align 4
@service_buffer_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.3, i32 1587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017lanai: allocated service buffer at %p, size %zu(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"service_buffer_allocate\00", [40 x i8] zeroinitializer }, align 32
@service_buffer_allocate._entry_ptr = internal global ptr @service_buffer_allocate._entry, section ".printk_index", align 4
@lanai_int_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.3, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013lanai(itf %d): driver error - DMA shutdown, reason=0x%08X, address=0x%08X\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lanai_int_1\00", [20 x i8] zeroinitializer }, align 32
@lanai_int_1._entry_ptr = internal global ptr @lanai_int_1._entry, section ".printk_index", align 4
@lanai_int_1._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.3, i32 1835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013lanai(itf %d): re-enabling DMA\0A\00", [62 x i8] zeroinitializer }, align 32
@lanai_int_1._entry_ptr.172 = internal global ptr @lanai_int_1._entry.170, section ".printk_index", align 4
@lanai_int_1._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.169, ptr @.str.3, i32 1843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013lanai(itf %d): sent PCI target abort\0A\00", [56 x i8] zeroinitializer }, align 32
@lanai_int_1._entry_ptr.175 = internal global ptr @lanai_int_1._entry.173, section ".printk_index", align 4
@lanai_int_1._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.169, ptr @.str.3, i32 1849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013lanai(itf %d): driver error - segmentation shutdown, reason=0x%08X\0A\00", [58 x i8] zeroinitializer }, align 32
@lanai_int_1._entry_ptr.178 = internal global ptr @lanai_int_1._entry.176, section ".printk_index", align 4
@lanai_int_1._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.169, ptr @.str.3, i32 1857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013lanai(itf %d): driver error - unexpected interrupt 0x%08X, resetting\0A\00", [56 x i8] zeroinitializer }, align 32
@lanai_int_1._entry_ptr.181 = internal global ptr @lanai_int_1._entry.179, section ".printk_index", align 4
@lanai_int_1._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.169, ptr @.str.3, i32 1864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017lanai: unacked ints: 0x%08X\0A\00", [33 x i8] zeroinitializer }, align 32
@lanai_int_1._entry_ptr.184 = internal global ptr @lanai_int_1._entry.182, section ".printk_index", align 4
@handle_service._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.3, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017lanai: (itf %d) got service entry 0x%X for nonexistent vcc %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_service\00", [17 x i8] zeroinitializer }, align 32
@handle_service._entry_ptr = internal global ptr @handle_service._entry, section ".printk_index", align 4
@handle_service._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.186, ptr @.str.3, i32 1636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017lanai: (itf %d) got service entry 0x%X for non-TX vcc %d\0A\00", [36 x i8] zeroinitializer }, align 32
@handle_service._entry_ptr.189 = internal global ptr @handle_service._entry.187, section ".printk_index", align 4
@handle_service._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.186, ptr @.str.3, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017lanai: (itf %d) got service entry 0x%X for non-RX vcc %d\0A\00", [36 x i8] zeroinitializer }, align 32
@handle_service._entry_ptr.192 = internal global ptr @handle_service._entry.190, section ".printk_index", align 4
@handle_service._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.186, ptr @.str.3, i32 1655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017lanai: (itf %d) got RX service entry 0x%X for non-AAL5 vcc %d\0A\00", [63 x i8] zeroinitializer }, align 32
@handle_service._entry_ptr.195 = internal global ptr @handle_service._entry.193, section ".printk_index", align 4
@handle_service._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.186, ptr @.str.3, i32 1668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017lanai: got trashed rx pdu on vci %d\0A\00", [57 x i8] zeroinitializer }, align 32
@handle_service._entry_ptr.198 = internal global ptr @handle_service._entry.196, section ".printk_index", align 4
@handle_service._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.186, ptr @.str.3, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013lanai(itf %d): Got AAL5 stream PDU on VCI %d!\0A\00", [47 x i8] zeroinitializer }, align 32
@handle_service._entry_ptr.201 = internal global ptr @handle_service._entry.199, section ".printk_index", align 4
@handle_service._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.186, ptr @.str.3, i32 1688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017lanai: got rx crc error on vci %d\0A\00", [59 x i8] zeroinitializer }, align 32
@handle_service._entry_ptr.204 = internal global ptr @handle_service._entry.202, section ".printk_index", align 4
@vcc_rx_aal5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.3, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013lanai: vcc_rx_aal5: n out of range (%d/%zu)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vcc_rx_aal5\00", [20 x i8] zeroinitializer }, align 32
@vcc_rx_aal5._entry_ptr = internal global ptr @vcc_rx_aal5._entry, section ".printk_index", align 4
@vcc_rx_aal5._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.206, ptr @.str.3, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016lanai(itf %d): Got bad AAL5 length on vci=%d - size=%d n=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@vcc_rx_aal5._entry_ptr.209 = internal global ptr @vcc_rx_aal5._entry.207, section ".printk_index", align 4
@vcc_rx_aal0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.3, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lanai: vcc_rx_aal0: not implemented\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vcc_rx_aal0\00", [20 x i8] zeroinitializer }, align 32
@vcc_rx_aal0._entry_ptr = internal global ptr @vcc_rx_aal0._entry, section ".printk_index", align 4
@.str.212 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SOOL\00", [27 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOCD\00", [27 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LED\00", [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIN\00", [27 x i8] zeroinitializer }, align 32
@status_message.onoff = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.216, ptr @.str.217], [24 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"off to on\00", [22 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"on to off\00", [22 x i8] zeroinitializer }, align 32
@status_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.3, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016lanai(itf %d): %s changed from %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status_message\00", [17 x i8] zeroinitializer }, align 32
@status_message._entry_ptr = internal global ptr @status_message._entry, section ".printk_index", align 4
@lanai_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.3, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\012lanai(itf %d): *NOT* resetting - not implemented\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lanai_reset\00", [20 x i8] zeroinitializer }, align 32
@lanai_reset._entry_ptr = internal global ptr @lanai_reset._entry, section ".printk_index", align 4
@lanai_timed_poll_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.222 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&lanai->timer)\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.223 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.225 = internal global [12 x i64] [i64 10, i64 64, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.226 = private unnamed_addr constant [13 x i8] c"lanai_driver\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2593, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2599, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"lanai_pci_tbl\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2586, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2560, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2538, i32 32 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2567, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2579, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2251, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 514, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2327, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2338, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2358, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2365, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1984, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 819, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 349, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1502, i32 45 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1490, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1493, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1520, i32 18 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1348, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1303, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1281, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1286, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1287, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1162, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1167, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1172, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1188, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1237, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1257, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1528, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 660, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 661, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2084, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 827, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 797, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 800, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 650, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1546, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2401, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2405, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2426, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1335, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1355, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2448, i32 24 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2450, i32 45 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2450, i32 51 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2454, i32 24 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2457, i32 24 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2460, i32 24 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2466, i32 24 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2471, i32 24 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2477, i32 24 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2483, i32 24 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2487, i32 24 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2492, i32 24 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2506, i32 23 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2509, i32 32 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2512, i32 33 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2522, i32 32 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2112, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2124, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2125, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2138, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2161, i32 34 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2198, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2216, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 2219, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1936, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1942, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1946, i32 34 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1952, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1101, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1112, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1121, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1122, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1123, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1124, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1125, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1126, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1092, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1915, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1919, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 852, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 578, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 584, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 559, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1584, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1825, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1834, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1842, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1847, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1854, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1863, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1624, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1635, i32 4 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1647, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1654, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1668, i32 3 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1683, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1688, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1386, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1400, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1424, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1083, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1084, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1085, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1086, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant [6 x i8] c"onoff\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1070, i32 21 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1070, i32 34 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1070, i32 47 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1071, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1562, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.919 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.920 = private constant [23 x i8] c"../drivers/atm/lanai.c\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.920, i32 1788, i32 2 }
@llvm.compiler.used = appending global [313 x ptr] [ptr @__UNIQUE_ID_author460, ptr @__UNIQUE_ID_description461, ptr @__UNIQUE_ID_file462, ptr @__UNIQUE_ID_license463, ptr @__exitcall_lanai_driver_exit, ptr @__initcall__kmod_lanai__459_2599_lanai_driver_init6, ptr @aal0_buffer_allocate._entry, ptr @aal0_buffer_allocate._entry_ptr, ptr @aal0_buffer_free._entry, ptr @aal0_buffer_free._entry_ptr, ptr @cardvcc_read._entry, ptr @cardvcc_read._entry_ptr, ptr @cardvcc_write._entry, ptr @cardvcc_write._entry.68, ptr @cardvcc_write._entry_ptr, ptr @cardvcc_write._entry_ptr.70, ptr @check_board_id_and_rev._entry, ptr @check_board_id_and_rev._entry.154, ptr @check_board_id_and_rev._entry_ptr, ptr @check_board_id_and_rev._entry_ptr.156, ptr @eeprom_read._entry, ptr @eeprom_read._entry_ptr, ptr @handle_service._entry, ptr @handle_service._entry.187, ptr @handle_service._entry.190, ptr @handle_service._entry.193, ptr @handle_service._entry.196, ptr @handle_service._entry.199, ptr @handle_service._entry.202, ptr @handle_service._entry_ptr, ptr @handle_service._entry_ptr.189, ptr @handle_service._entry_ptr.192, ptr @handle_service._entry_ptr.195, ptr @handle_service._entry_ptr.198, ptr @handle_service._entry_ptr.201, ptr @handle_service._entry_ptr.204, ptr @host_vcc_bind._entry, ptr @host_vcc_bind._entry_ptr, ptr @host_vcc_unbind._entry, ptr @host_vcc_unbind._entry_ptr, ptr @lanai_buf_allocate._entry, ptr @lanai_buf_allocate._entry_ptr, ptr @lanai_dev_close._entry, ptr @lanai_dev_close._entry_ptr, ptr @lanai_dev_open._entry, ptr @lanai_dev_open._entry.117, ptr @lanai_dev_open._entry.121, ptr @lanai_dev_open._entry.124, ptr @lanai_dev_open._entry.127, ptr @lanai_dev_open._entry_ptr, ptr @lanai_dev_open._entry_ptr.119, ptr @lanai_dev_open._entry_ptr.123, ptr @lanai_dev_open._entry_ptr.126, ptr @lanai_dev_open._entry_ptr.129, ptr @lanai_driver_exit, ptr @lanai_endtx._entry, ptr @lanai_endtx._entry.61, ptr @lanai_endtx._entry_ptr, ptr @lanai_endtx._entry_ptr.63, ptr @lanai_get_sized_buffer._entry, ptr @lanai_get_sized_buffer._entry.33, ptr @lanai_get_sized_buffer._entry_ptr, ptr @lanai_get_sized_buffer._entry_ptr.35, ptr @lanai_init_one._entry, ptr @lanai_init_one._entry.4, ptr @lanai_init_one._entry.7, ptr @lanai_init_one._entry_ptr, ptr @lanai_init_one._entry_ptr.6, ptr @lanai_init_one._entry_ptr.9, ptr @lanai_int_1._entry, ptr @lanai_int_1._entry.170, ptr @lanai_int_1._entry.173, ptr @lanai_int_1._entry.176, ptr @lanai_int_1._entry.179, ptr @lanai_int_1._entry.182, ptr @lanai_int_1._entry_ptr, ptr @lanai_int_1._entry_ptr.172, ptr @lanai_int_1._entry_ptr.175, ptr @lanai_int_1._entry_ptr.178, ptr @lanai_int_1._entry_ptr.181, ptr @lanai_int_1._entry_ptr.184, ptr @lanai_open._entry, ptr @lanai_open._entry.16, ptr @lanai_open._entry.19, ptr @lanai_open._entry.22, ptr @lanai_open._entry_ptr, ptr @lanai_open._entry_ptr.18, ptr @lanai_open._entry_ptr.21, ptr @lanai_open._entry_ptr.24, ptr @lanai_pci_start._entry, ptr @lanai_pci_start._entry.132, ptr @lanai_pci_start._entry.136, ptr @lanai_pci_start._entry_ptr, ptr @lanai_pci_start._entry_ptr.134, ptr @lanai_pci_start._entry_ptr.138, ptr @lanai_reset._entry, ptr @lanai_reset._entry_ptr, ptr @lanai_send._entry, ptr @lanai_send._entry.86, ptr @lanai_send._entry.89, ptr @lanai_send._entry_ptr, ptr @lanai_send._entry_ptr.88, ptr @lanai_send._entry_ptr.91, ptr @lanai_send_one_aal5._entry, ptr @lanai_send_one_aal5._entry.43, ptr @lanai_send_one_aal5._entry.46, ptr @lanai_send_one_aal5._entry_ptr, ptr @lanai_send_one_aal5._entry_ptr.45, ptr @lanai_send_one_aal5._entry_ptr.48, ptr @lanai_shutdown_tx_vci._entry, ptr @lanai_shutdown_tx_vci._entry.77, ptr @lanai_shutdown_tx_vci._entry_ptr, ptr @lanai_shutdown_tx_vci._entry_ptr.79, ptr @pcistatus_check._entry, ptr @pcistatus_check._entry.141, ptr @pcistatus_check._entry_ptr, ptr @pcistatus_check._entry_ptr.143, ptr @pcistatus_got._entry, ptr @pcistatus_got._entry_ptr, ptr @pcr_to_cbricg._entry, ptr @pcr_to_cbricg._entry_ptr, ptr @reset_board._entry, ptr @reset_board._entry_ptr, ptr @service_buffer_allocate._entry, ptr @service_buffer_allocate._entry_ptr, ptr @sram_test_and_clear._entry, ptr @sram_test_and_clear._entry.161, ptr @sram_test_and_clear._entry_ptr, ptr @sram_test_and_clear._entry_ptr.163, ptr @sram_test_word._entry, ptr @sram_test_word._entry_ptr, ptr @status_message._entry, ptr @status_message._entry_ptr, ptr @vcc_rx_aal0._entry, ptr @vcc_rx_aal0._entry_ptr, ptr @vcc_rx_aal5._entry, ptr @vcc_rx_aal5._entry.207, ptr @vcc_rx_aal5._entry_ptr, ptr @vcc_rx_aal5._entry_ptr.209, ptr @vcc_tx_aal0._entry, ptr @vcc_tx_aal0._entry_ptr, ptr @vcc_tx_aal5._entry, ptr @vcc_tx_aal5._entry_ptr, ptr @vcc_tx_add_aal5_descriptor._entry, ptr @vcc_tx_add_aal5_descriptor._entry.51, ptr @vcc_tx_add_aal5_descriptor._entry.54, ptr @vcc_tx_add_aal5_descriptor._entry_ptr, ptr @vcc_tx_add_aal5_descriptor._entry_ptr.53, ptr @vcc_tx_add_aal5_descriptor._entry_ptr.56, ptr @vcc_tx_add_aal5_trailer._entry, ptr @vcc_tx_add_aal5_trailer._entry_ptr, ptr @vcc_tx_unqueue_aal0._entry, ptr @vcc_tx_unqueue_aal0._entry_ptr, ptr @vcc_tx_unqueue_aal5._entry, ptr @vcc_tx_unqueue_aal5._entry_ptr, ptr @lanai_driver, ptr @.str, ptr @lanai_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ops, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @skb_queue_head_init.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @lanai_dev_open.__key, ptr @.str.114, ptr @lanai_dev_open.__key.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @.str.188, ptr @.str.191, ptr @.str.194, ptr @.str.197, ptr @.str.200, ptr @.str.203, ptr @.str.205, ptr @.str.206, ptr @.str.208, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @status_message.onoff, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @lanai_timed_poll_start.__key, ptr @.str.222], section "llvm.metadata"
@0 = internal global [232 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_dev_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_board._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_open._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_open._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_open._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aal0_buffer_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_buf_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_get_sized_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_get_sized_buffer._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_tx_unqueue_aal0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_tx_unqueue_aal5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_send_one_aal5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_send_one_aal5._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_send_one_aal5._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_tx_add_aal5_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_tx_add_aal5_descriptor._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_tx_add_aal5_descriptor._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_tx_add_aal5_trailer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_endtx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_endtx._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_vcc_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cardvcc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cardvcc_write._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_to_cbricg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aal0_buffer_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_shutdown_tx_vci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_shutdown_tx_vci._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cardvcc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_vcc_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_send._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_send._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_tx_aal5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_tx_aal0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_dev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_dev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_dev_open.__key.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_dev_open._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_dev_open._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_dev_open._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_dev_open._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_pci_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_pci_start._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_pci_start._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcistatus_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcistatus_check._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcistatus_got._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_board_id_and_rev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_board_id_and_rev._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_test_and_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_test_and_clear._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_test_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_buffer_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_int_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_int_1._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_int_1._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_int_1._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_int_1._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_int_1._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_service._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_service._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_service._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_service._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_service._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_service._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_service._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_rx_aal5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_rx_aal5._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcc_rx_aal0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_message.onoff to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanai_timed_poll_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lanai_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @lanai_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lanai_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @lanai_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lanai_init_one(ptr noundef %pci, ptr nocapture noundef readonly %ident) #2 align 64 {
entry:
  %s.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 668) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call2 = tail call ptr @atm_dev_register(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @ops, i32 noundef -1, ptr noundef null) #12
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %call2, i32 0, i32 4
  %1 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %dev_data, align 8
  %pci11 = getelementptr inbounds %struct.lanai_dev, ptr %call7.i.i, i32 0, i32 9
  %2 = ptrtoint ptr %pci11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pci, ptr %pci11, align 4
  %device = getelementptr inbounds %struct.pci_device_id, ptr %ident, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device, align 4
  %type = getelementptr inbounds %struct.lanai_dev, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %type, align 4
  %6 = load ptr, ptr %dev_data, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #16
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %call2, i32 0, i32 3
  %7 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number.i, align 4
  %number1.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 21
  %9 = ptrtoint ptr %number1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %number1.i, align 4
  %num_vci.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 5
  %10 = ptrtoint ptr %num_vci.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1024, ptr %num_vci.i, align 4
  %backlog_vccs.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 10
  %naal0.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 13
  %11 = ptrtoint ptr %naal0.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %naal0.i, align 4
  %cbrvcc.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 20
  %12 = ptrtoint ptr %cbrvcc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %cbrvcc.i, align 4
  %stats.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 1
  %13 = call ptr @memset(ptr %stats.i, i32 0, i32 60)
  %endtxlock.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 18
  %14 = call ptr @memset(ptr %backlog_vccs.i, i32 0, i32 256)
  tail call void @__raw_spin_lock_init(ptr noundef %endtxlock.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @lanai_dev_open.__key, i16 noundef signext 3) #12
  %servicelock.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %servicelock.i, ptr noundef nonnull @.str.116, ptr noundef nonnull @lanai_dev_open.__key.115, i16 noundef signext 3) #12
  %ci_range.i = getelementptr inbounds %struct.atm_dev, ptr %call2, i32 0, i32 10
  %15 = ptrtoint ptr %ci_range.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ci_range.i, align 2
  %vci_bits.i = getelementptr inbounds %struct.atm_dev, ptr %call2, i32 0, i32 10, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end10
  %storemerge.i = phi i8 [ 0, %if.end10 ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %16 = ptrtoint ptr %vci_bits.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %storemerge.i, ptr %vci_bits.i, align 1
  %conv205.i = zext i8 %storemerge.i to i32
  %shl.i = shl nuw i32 1, %conv205.i
  %17 = ptrtoint ptr %num_vci.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_vci.i, align 4
  %cmp.i = icmp slt i32 %shl.i, %18
  %inc.i = add i8 %storemerge.i, 1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %link_rate.i = getelementptr inbounds %struct.atm_dev, ptr %call2, i32 0, i32 13
  %19 = ptrtoint ptr %link_rate.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 59111, ptr %link_rate.i, align 4
  %pci1.i.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 9
  %20 = ptrtoint ptr %pci1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci1.i.i, align 4
  %call.i.i = tail call i32 @pci_enable_device(ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number1.i, align 4
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %23) #16
  br label %do.end17

if.end.i.i:                                       ; preds = %while.end.i
  tail call void @pci_set_master(ptr noundef %21) #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call.i.i.i = tail call i32 @dma_set_mask(ptr noundef %dev.i.i, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end12.i.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number1.i, align 4
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %25) #16
  br label %do.end17

if.end12.i.i:                                     ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i.i, i64 noundef 4294967295) #12
  %subsystem_device.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 10
  %26 = ptrtoint ptr %subsystem_device.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %subsystem_device.i.i, align 2
  %conv.i.i = zext i16 %27 to i32
  %shr.i.i.i = lshr i32 %conv.i.i, 2
  %and.i.i.i = and i32 %shr.i.i.i, 3
  %and2.i.i.i = and i32 %conv.i.i, 3
  %call.i42.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.135, i32 noundef %and.i.i.i, i32 noundef %and2.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end17.i.i, label %check_board_id_and_rev.exit.i.i

check_board_id_and_rev.exit.i.i:                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.135, i32 noundef %and.i.i.i) #16
  br label %do.end17

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %call18.i.i = tail call i32 @pci_write_config_byte(ptr noundef %21, i32 noundef 13, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %cmp19.not.i.i, label %if.end28.i.i, label %do.end24.i.i

do.end24.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number1.i, align 4
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %29, i32 noundef %call18.i.i) #16
  br label %do.end17

if.end28.i.i:                                     ; preds = %if.end17.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %s.i.i.i) #12
  %30 = ptrtoint ptr %s.i.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %s.i.i.i, align 2, !annotation !439
  %31 = ptrtoint ptr %pci1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci1.i.i, align 4
  %call.i43.i.i = call i32 @pci_read_config_word(ptr noundef %32, i32 noundef 6, ptr noundef nonnull %s.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i.i)
  %cmp.not.i44.i.i = icmp eq i32 %call.i43.i.i, 0
  br i1 %cmp.not.i44.i.i, label %if.end.i46.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %number1.i, align 4
  %call1.i45.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %34, i32 noundef %call.i43.i.i) #16
  br label %if.end.i

if.end.i46.i.i:                                   ; preds = %if.end28.i.i
  %35 = ptrtoint ptr %s.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %s.i.i.i, align 2
  %37 = and i16 %36, -1792
  store i16 %37, ptr %s.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp4.i.i.i = icmp eq i16 %37, 0
  br i1 %cmp4.i.i.i, label %if.end.i46.i.i.if.end.i_crit_edge, label %if.end7.i.i.i

if.end.i46.i.i.if.end.i_crit_edge:                ; preds = %if.end.i46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end7.i.i.i:                                    ; preds = %if.end.i46.i.i
  %38 = ptrtoint ptr %pci1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci1.i.i, align 4
  %call9.i.i.i = call i32 @pci_write_config_word(ptr noundef %39, i32 noundef 6, i16 noundef zeroext %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %cmp10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %cmp10.not.i.i.i, label %if.end7.i.i.i.if.end.i_crit_edge, label %do.end15.i.i.i

if.end7.i.i.i.if.end.i_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end15.i.i.i:                                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %number1.i, align 4
  %call18.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %41, i32 noundef %call9.i.i.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end15.i.i.i, %if.end7.i.i.i.if.end.i_crit_edge, %if.end.i46.i.i.if.end.i_crit_edge, %do.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %s.i.i.i) #12
  call fastcc void @pcistatus_check(ptr noundef %6, i32 noundef 0) #12
  %42 = ptrtoint ptr %pci1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci1.i.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 47
  %44 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %resource.i, align 8
  %call21.i = call ptr @ioremap(i32 noundef %45, i32 noundef 262144) #12
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call21.i, ptr %6, align 4
  %cmp23.i = icmp eq ptr %call21.i, null
  br i1 %cmp23.i, label %do.end28.i, label %if.end31.i

do.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #16
  br label %error_pci.i

if.end31.i:                                       ; preds = %if.end.i
  %call.i206.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #12, !srcloc !441
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 1073740) #12
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 44
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %conf1.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 15
  %53 = and i32 %52, -538836993
  %54 = call i32 @llvm.bswap.i32(i32 %53) #12
  %55 = ptrtoint ptr %conf1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %conf1.i, align 4
  %or36.i = or i32 %54, 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %56 = call i32 @llvm.bswap.i32(i32 %or36.i) #12
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %6, align 4
  %add.ptr.i.i207.i = getelementptr i8, ptr %58, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i207.i, i32 %56) #12, !srcloc !441
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748000) #12
  %60 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %conf1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %62 = call i32 @llvm.bswap.i32(i32 %61) #12
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %64, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %62) #12, !srcloc !441
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %6, align 4
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #12, !srcloc !442
  %68 = call i32 @llvm.bswap.i32(i32 %67) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %board_rev.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 22
  %shr.i.i = lshr i32 %68, 2
  %and.i.i = and i32 %shr.i.i, 3
  %and2.i.i = and i32 %68, 3
  %call.i208.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.120, i32 noundef %and.i.i, i32 noundef %and2.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i209.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i209.i, label %if.end.i210.i, label %check_board_id_and_rev.exit.i

if.end.i210.i:                                    ; preds = %if.end31.i
  %69 = ptrtoint ptr %board_rev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and2.i.i, ptr %board_rev.i, align 4
  %70 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %number1.i, align 4
  %call.i213.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, i32 noundef %71) #16
  %arrayidx.i.i = getelementptr %struct.lanai_dev, ptr %6, i32 0, i32 6, i32 64
  %72 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 6)
  %serialno.i.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 7
  %73 = ptrtoint ptr %serialno.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %serialno.i.i, align 4
  %magicno.i.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 8
  %74 = ptrtoint ptr %magicno.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1521776850, ptr %magicno.i.i, align 4
  %75 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %conf1.i, align 4
  %or54.i = or i32 %76, 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %77 = call i32 @llvm.bswap.i32(i32 %or54.i) #12
  %78 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %6, align 4
  %add.ptr.i.i214.i = getelementptr i8, ptr %79, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i214.i, i32 %77) #12, !srcloc !441
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #12
  %81 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %conf1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %83 = call i32 @llvm.bswap.i32(i32 %82) #12
  %84 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i216.i = getelementptr i8, ptr %85, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i216.i, i32 %83) #12, !srcloc !441
  %86 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %conf1.i, align 4
  %or56.i = or i32 %87, 24592
  store i32 %or56.i, ptr %conf1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %88 = call i32 @llvm.bswap.i32(i32 %or56.i) #12
  %89 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i218.i = getelementptr i8, ptr %90, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i218.i, i32 %88) #12, !srcloc !441
  %call.i219.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #16
  br label %for.body.i.i.i

check_board_id_and_rev.exit.i:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.120, i32 noundef %and.i.i) #16
  br label %error_unmap.i

for.body.i.i.i:                                   ; preds = %sram_test_word.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end.i210.i
  %offset.05.i.i.i = phi i32 [ 0, %if.end.i210.i ], [ %add.i.i.i, %sram_test_word.exit.i.i.i.for.body.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  call void @arm_heavy_mb() #12
  %91 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %92, i32 131072
  %add.ptr1.i.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i.i, i32 %offset.05.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i.i.i.i, i32 1431633920) #12, !srcloc !441
  %93 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %6, align 4
  %add.ptr.i.i10.i.i.i.i = getelementptr i8, ptr %94, i32 131072
  %add.ptr1.i.i11.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i10.i.i.i.i, i32 %offset.05.i.i.i
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i11.i.i.i.i) #12, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431633920, i32 %95)
  %cmp.i.i.i.i = icmp eq i32 %95, 1431633920
  br i1 %cmp.i.i.i.i, label %sram_test_word.exit.i.i.i, label %sram_test_pass.exit.i.i, !prof !446

sram_test_word.exit.i.i.i:                        ; preds = %for.body.i.i.i
  %add.i.i.i = add nuw nsw i32 %offset.05.i.i.i, 4
  %cmp.i.i220.i = icmp ult i32 %offset.05.i.i.i, 131068
  br i1 %cmp.i.i220.i, label %sram_test_word.exit.i.i.i.for.body.i.i.i_crit_edge, label %sram_test_word.exit.i.i.i.for.body.i22.i.i_crit_edge

sram_test_word.exit.i.i.i.for.body.i22.i.i_crit_edge: ; preds = %sram_test_word.exit.i.i.i
  br label %for.body.i22.i.i

sram_test_word.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %sram_test_word.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

sram_test_pass.exit.i.i:                          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %96 = call i32 @llvm.bswap.i32(i32 %95) #12
  %97 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %number1.i, align 4
  %call2.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %98, i32 noundef %offset.05.i.i.i, i32 noundef 21845, i32 noundef %96) #16
  br label %error_unmap.i

for.body.i22.i.i:                                 ; preds = %sram_test_word.exit.i28.i.i.for.body.i22.i.i_crit_edge, %sram_test_word.exit.i.i.i.for.body.i22.i.i_crit_edge
  %offset.05.i16.i.i = phi i32 [ %add.i25.i.i, %sram_test_word.exit.i28.i.i.for.body.i22.i.i_crit_edge ], [ 0, %sram_test_word.exit.i.i.i.for.body.i22.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  call void @arm_heavy_mb() #12
  %99 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i.i17.i.i = getelementptr i8, ptr %100, i32 131072
  %add.ptr1.i.i.i.i18.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i17.i.i, i32 %offset.05.i16.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i.i18.i.i, i32 -1431699456) #12, !srcloc !441
  %101 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %6, align 4
  %add.ptr.i.i10.i.i19.i.i = getelementptr i8, ptr %102, i32 131072
  %add.ptr1.i.i11.i.i20.i.i = getelementptr i8, ptr %add.ptr.i.i10.i.i19.i.i, i32 %offset.05.i16.i.i
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i11.i.i20.i.i) #12, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431699456, i32 %103)
  %cmp.i.i21.i.i = icmp eq i32 %103, -1431699456
  br i1 %cmp.i.i21.i.i, label %sram_test_word.exit.i28.i.i, label %sram_test_pass.exit30.i.i, !prof !446

sram_test_word.exit.i28.i.i:                      ; preds = %for.body.i22.i.i
  %add.i25.i.i = add nuw nsw i32 %offset.05.i16.i.i, 4
  %cmp.i26.i.i = icmp ult i32 %offset.05.i16.i.i, 131068
  br i1 %cmp.i26.i.i, label %sram_test_word.exit.i28.i.i.for.body.i22.i.i_crit_edge, label %do.end8.i222.i

sram_test_word.exit.i28.i.i.for.body.i22.i.i_crit_edge: ; preds = %sram_test_word.exit.i28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i22.i.i

sram_test_pass.exit30.i.i:                        ; preds = %for.body.i22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %104 = call i32 @llvm.bswap.i32(i32 %103) #12
  %105 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %number1.i, align 4
  %call2.i.i23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %106, i32 noundef %offset.05.i16.i.i, i32 noundef 43690, i32 noundef %104) #16
  br label %error_unmap.i

do.end8.i222.i:                                   ; preds = %sram_test_word.exit.i28.i.i
  %call10.i221.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #16
  br label %for.body.i38.i.i

for.body.i38.i.i:                                 ; preds = %sram_test_word.exit.i44.i.i.for.body.i38.i.i_crit_edge, %do.end8.i222.i
  %offset.05.i32.i.i = phi i32 [ 0, %do.end8.i222.i ], [ %add.i41.i.i, %sram_test_word.exit.i44.i.i.for.body.i38.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  call void @arm_heavy_mb() #12
  %107 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i.i33.i.i = getelementptr i8, ptr %108, i32 131072
  %add.ptr1.i.i.i.i34.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i33.i.i, i32 %offset.05.i32.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i.i34.i.i, i32 0) #12, !srcloc !441
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %6, align 4
  %add.ptr.i.i10.i.i35.i.i = getelementptr i8, ptr %110, i32 131072
  %add.ptr1.i.i11.i.i36.i.i = getelementptr i8, ptr %add.ptr.i.i10.i.i35.i.i, i32 %offset.05.i32.i.i
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i11.i.i36.i.i) #12, !srcloc !442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i.i37.i.i = icmp eq i32 %111, 0
  br i1 %cmp.i.i37.i.i, label %sram_test_word.exit.i44.i.i, label %sram_test_word.exit.thread.i40.i.i, !prof !446

sram_test_word.exit.thread.i40.i.i:               ; preds = %for.body.i38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = call i32 @llvm.bswap.i32(i32 %111) #12
  %113 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %number1.i, align 4
  %call2.i.i39.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %114, i32 noundef %offset.05.i32.i.i, i32 noundef 0, i32 noundef %112) #16
  br label %error_unmap.i

sram_test_word.exit.i44.i.i:                      ; preds = %for.body.i38.i.i
  %add.i41.i.i = add nuw nsw i32 %offset.05.i32.i.i, 4
  %cmp.i42.i.i = icmp ult i32 %offset.05.i32.i.i, 131068
  br i1 %cmp.i42.i.i, label %sram_test_word.exit.i44.i.i.for.body.i38.i.i_crit_edge, label %if.end61.i

sram_test_word.exit.i44.i.i.for.body.i38.i.i_crit_edge: ; preds = %sram_test_word.exit.i44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i38.i.i

if.end61.i:                                       ; preds = %sram_test_word.exit.i44.i.i
  %115 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %conf1.i, align 4
  %or63.i = or i32 %116, 16
  store i32 %or63.i, ptr %conf1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %117 = call i32 @llvm.bswap.i32(i32 %or63.i) #12
  %118 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i225.i = getelementptr i8, ptr %119, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i225.i, i32 %117) #12, !srcloc !441
  %120 = ptrtoint ptr %pci1.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pci1.i.i, align 4
  %service.i.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 2
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  %dmaaddr.i.i.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 2, i32 3
  %call.i.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i.i, i32 noundef 4096, ptr noundef %dmaaddr.i.i.i, i32 noundef 3264, i32 noundef 0) #12
  %122 = ptrtoint ptr %service.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call.i.i.i.i, ptr %service.i.i, align 4
  %cmp6.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %cmp6.not.i.i.i, label %if.end61.i.error_unmap.i_crit_edge, label %do.body8.i.i.i

if.end61.i.error_unmap.i_crit_edge:               ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_unmap.i

do.body8.i.i.i:                                   ; preds = %if.end61.i
  %123 = ptrtoint ptr %dmaaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dmaaddr.i.i.i, align 4
  %and.i.i226.i = and i32 %124, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i226.i)
  %cmp10.not.i.i227.i = icmp eq i32 %and.i.i226.i, 0
  br i1 %cmp10.not.i.i227.i, label %do.body8.i.i.i.lanai_buf_allocate.exit.i.i_crit_edge, label %do.end.i.i228.i, !prof !446

do.body8.i.i.i.lanai_buf_allocate.exit.i.i_crit_edge: ; preds = %do.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lanai_buf_allocate.exit.i.i

do.end.i.i228.i:                                  ; preds = %do.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %124) #16
  br label %lanai_buf_allocate.exit.i.i

lanai_buf_allocate.exit.i.i:                      ; preds = %do.end.i.i228.i, %do.body8.i.i.i.lanai_buf_allocate.exit.i.i_crit_edge
  %125 = ptrtoint ptr %service.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %service.i.i, align 4
  %ptr.i.i.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 2, i32 2
  %127 = ptrtoint ptr %ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %ptr.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %126, i32 4096
  %end.i.i.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 2, i32 1
  %128 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %arrayidx.i.i.i, ptr %end.i.i.i, align 4
  %129 = call ptr @memset(ptr %126, i32 0, i32 4096)
  %.pr.i.i = load ptr, ptr %service.i.i, align 4
  %cmp.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %cmp.i.i, label %lanai_buf_allocate.exit.i.i.error_unmap.i_crit_edge, label %do.end.i229.i, !prof !447

lanai_buf_allocate.exit.i.i.error_unmap.i_crit_edge: ; preds = %lanai_buf_allocate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_unmap.i

do.end.i229.i:                                    ; preds = %lanai_buf_allocate.exit.i.i
  %130 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i.i.i, align 4
  %132 = ptrtoint ptr %131 to i32
  %133 = ptrtoint ptr %.pr.i.i to i32
  %sub.i.i.i = sub i32 %132, %133
  %dec.i.i.i.i = add i32 %sub.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp ult i32 %dec.i.i.i.i, 4096
  %shr.i.i.i.i = lshr i32 %dec.i.i.i.i, 12
  %134 = call i32 @llvm.ctlz.i32(i32 %shr.i.i.i.i, i1 true) #12, !range !448
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %134
  %135 = call i32 @llvm.smin.i32(i32 %sub.i.i.i.i.i, i32 5)
  %.op = add nuw nsw i32 %135, 2
  %136 = select i1 %tobool.not.i.i.i.i.i, i32 2, i32 %.op
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull %.pr.i.i, i32 noundef %sub.i.i.i, i32 noundef %136) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %137 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i231.i = getelementptr i8, ptr %138, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i231.i, i32 0) #12, !srcloc !441
  %139 = ptrtoint ptr %service.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %service.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  %142 = xor i32 %141, -1
  %143 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %end.i.i.i, align 4
  %145 = ptrtoint ptr %144 to i32
  %dec.i.i34.i.i = add i32 %142, %145
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i34.i.i)
  %tobool.not.i.i.i36.i.i = icmp ult i32 %dec.i.i34.i.i, 4096
  %shr.i.i35.i.i = lshr i32 %dec.i.i34.i.i, 12
  %146 = call i32 @llvm.ctlz.i32(i32 %shr.i.i35.i.i, i1 true) #12, !range !448
  %sub.i.i.i37.i.i = sub nuw nsw i32 32, %146
  %147 = call i32 @llvm.smin.i32(i32 %sub.i.i.i37.i.i, i32 5)
  %.op69 = shl nuw i32 %147, 29
  %.op69.op = add i32 %.op69, 1073741824
  %mul.i.i = select i1 %tobool.not.i.i.i36.i.i, i32 1073741824, i32 %.op69.op
  %148 = ptrtoint ptr %dmaaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dmaaddr.i.i.i, align 4
  %shr.i232.i = lshr i32 %149, 8
  %or.i.i = or i32 %mul.i.i, %shr.i232.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %150 = call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %151 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %6, align 4
  %add.ptr.i.i42.i.i = getelementptr i8, ptr %152, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42.i.i, i32 %150) #12, !srcloc !441
  %153 = ptrtoint ptr %num_vci.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_vci.i, align 4
  %mul.i234.i = shl i32 %154, 2
  %call.i235.i = call noalias ptr @vzalloc(i32 noundef %mul.i234.i) #17
  %vccs.i.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 3
  %155 = ptrtoint ptr %vccs.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call.i235.i, ptr %vccs.i.i, align 4
  %cmp.i236.not.i = icmp eq ptr %call.i235.i, null
  br i1 %cmp.i236.not.i, label %do.end.i229.i.error_service.i_crit_edge, label %if.end73.i

do.end.i229.i.error_service.i_crit_edge:          ; preds = %do.end.i229.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_service.i

if.end73.i:                                       ; preds = %do.end.i229.i
  %156 = ptrtoint ptr %num_vci.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %num_vci.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %157)
  %cmp75.i = icmp sgt i32 %157, 511
  %cond.i = zext i1 %cmp75.i to i32
  %or78.i = or i32 %cond.i, 10
  %conf2.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 16
  %158 = ptrtoint ptr %conf2.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %or78.i, ptr %conf2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %159 = shl nuw nsw i32 %or78.i, 24
  %160 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i237.i = getelementptr i8, ptr %161, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i237.i, i32 %159) #12, !srcloc !441
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %162 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %6, align 4
  %add.ptr.i.i238.i = getelementptr i8, ptr %163, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i238.i, i32 117440512) #12, !srcloc !441
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %164 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %6, align 4
  %add.ptr.i.i239.i = getelementptr i8, ptr %165, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i239.i, i32 0) #12, !srcloc !441
  %166 = ptrtoint ptr %pci1.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pci1.i.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %167, i32 0, i32 46
  %168 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %irq.i, align 4
  %call.i240.i = call i32 @request_threaded_irq(i32 noundef %169, ptr noundef nonnull @lanai_int, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240.i)
  %cmp81.not.i = icmp eq i32 %call.i240.i, 0
  br i1 %cmp81.not.i, label %lanai_dev_open.exit, label %do.end86.i

do.end86.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  %call88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #16
  %170 = ptrtoint ptr %vccs.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %vccs.i.i, align 4
  call void @vfree(ptr noundef %171) #12
  br label %error_service.i

error_service.i:                                  ; preds = %do.end86.i, %do.end.i229.i.error_service.i_crit_edge
  %result.0.i = phi i32 [ -12, %do.end.i229.i.error_service.i_crit_edge ], [ %call.i240.i, %do.end86.i ]
  call fastcc void @service_buffer_deallocate(ptr noundef %6) #12
  br label %error_unmap.i

error_unmap.i:                                    ; preds = %error_service.i, %lanai_buf_allocate.exit.i.i.error_unmap.i_crit_edge, %if.end61.i.error_unmap.i_crit_edge, %sram_test_word.exit.thread.i40.i.i, %sram_test_pass.exit30.i.i, %sram_test_pass.exit.i.i, %check_board_id_and_rev.exit.i
  %result.1.i = phi i32 [ -19, %check_board_id_and_rev.exit.i ], [ %result.0.i, %error_service.i ], [ -5, %sram_test_pass.exit.i.i ], [ -5, %sram_test_pass.exit30.i.i ], [ -5, %sram_test_word.exit.thread.i40.i.i ], [ -12, %lanai_buf_allocate.exit.i.i.error_unmap.i_crit_edge ], [ -12, %if.end61.i.error_unmap.i_crit_edge ]
  %call.i247.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %172 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 0) #12, !srcloc !441
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %174(i32 noundef 1073740) #12
  %175 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %6, align 4
  call void @iounmap(ptr noundef %176) #12
  %177 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %6, align 4
  br label %error_pci.i

error_pci.i:                                      ; preds = %error_unmap.i, %do.end28.i
  %result.2.i = phi i32 [ -12, %do.end28.i ], [ %result.1.i, %error_unmap.i ]
  %178 = ptrtoint ptr %pci1.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pci1.i.i, align 4
  call void @pci_disable_device(ptr noundef %179) #12
  br label %do.end17

lanai_dev_open.exit:                              ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !449
  call void @arm_heavy_mb() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %180 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i242.i = getelementptr i8, ptr %181, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i242.i, i32 1056899840) #12, !srcloc !441
  %182 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %conf1.i, align 4
  %and94.i = and i32 %183, -24961
  %or97.i = or i32 %and94.i, 24576
  store i32 %or97.i, ptr %conf1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @arm_heavy_mb() #12
  %184 = call i32 @llvm.bswap.i32(i32 %or97.i) #12
  %185 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i244.i = getelementptr i8, ptr %186, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i244.i, i32 %184) #12, !srcloc !441
  %187 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %6, align 4
  %add.ptr.i.i245.i = getelementptr i8, ptr %188, i32 40
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i245.i) #12, !srcloc !442
  %190 = call i32 @llvm.bswap.i32(i32 %189) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %status.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 17
  %191 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %status.i, align 4
  %esi.i = getelementptr inbounds %struct.atm_dev, ptr %call2, i32 0, i32 9
  %192 = call ptr @memcpy(ptr %esi.i, ptr %arrayidx.i.i, i32 6)
  call fastcc void @lanai_timed_poll_start(ptr noundef %6) #12
  %193 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %number1.i, align 4
  %195 = ptrtoint ptr %pci1.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pci1.i.i, align 4
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %196, i32 0, i32 12
  %197 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %revision.i, align 4
  %conv108.i = zext i8 %198 to i32
  %199 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %6, align 4
  %irq111.i = getelementptr inbounds %struct.pci_dev, ptr %196, i32 0, i32 46
  %201 = ptrtoint ptr %irq111.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %irq111.i, align 4
  %call114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %194, i32 noundef %conv108.i, ptr noundef %200, i32 noundef %202, ptr noundef %esi.i) #16
  %203 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %number1.i, align 4
  %type.i = getelementptr inbounds %struct.lanai_dev, ptr %6, i32 0, i32 4
  %205 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %206)
  %cmp120.i = icmp eq i32 %206, 3
  %cond122.i = select i1 %cmp120.i, ptr @.str.97, ptr @.str.98
  %207 = ptrtoint ptr %serialno.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %serialno.i.i, align 4
  %209 = ptrtoint ptr %board_rev.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %board_rev.i, align 4
  %call125.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %204, ptr noundef nonnull %cond122.i, i32 noundef %208, i32 noundef %208, i32 noundef %210) #16
  br label %cleanup

do.end17:                                         ; preds = %error_pci.i, %do.end24.i.i, %check_board_id_and_rev.exit.i.i, %do.end8.i.i, %do.end.i.i
  %retval.0.i.ph = phi i32 [ -6, %do.end.i.i ], [ -16, %do.end8.i.i ], [ -22, %do.end24.i.i ], [ -19, %check_board_id_and_rev.exit.i.i ], [ %result.2.i, %error_pci.i ]
  %sub = sub i32 0, %retval.0.i.ph
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %sub) #16
  call void @atm_dev_deregister(ptr noundef nonnull %call2) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %lanai_dev_open.exit, %do.end7, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -16, %do.end7 ], [ %retval.0.i.ph, %do.end17 ], [ 0, %lanai_dev_open.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lanai_dev_close(ptr nocapture noundef readonly %atmdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %atmdev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  %number = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %5) #16
  %timer.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 12
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -16841984) #12, !srcloc !441
  %pci = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %1) #12
  %call.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #12, !srcloc !441
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #12
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 4
  tail call void @pci_disable_device(ptr noundef %16) #12
  %vccs.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %vccs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vccs.i, align 4
  tail call void @vfree(ptr noundef %18) #12
  %service.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %service.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %service.i, align 4
  %cmp.not.i.i = icmp eq ptr %20, null
  br i1 %cmp.not.i.i, label %do.end.service_buffer_deallocate.exit_crit_edge, label %if.then.i.i

do.end.service_buffer_deallocate.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %service_buffer_deallocate.exit

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %end.i.i.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = ptrtoint ptr %20 to i32
  %sub.i.i.i = sub i32 %25, %26
  %dmaaddr.i.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %dmaaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dmaaddr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull %20, i32 noundef %28, i32 noundef 0) #12
  %ptr.i.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %ptr.i.i, align 4
  %30 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %end.i.i.i, align 4
  %31 = ptrtoint ptr %service.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %service.i, align 4
  br label %service_buffer_deallocate.exit

service_buffer_deallocate.exit:                   ; preds = %if.then.i.i, %do.end.service_buffer_deallocate.exit_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %33) #12
  tail call void @kfree(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %service_buffer_deallocate.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lanai_open(ptr noundef %atmvcc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vci1 = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 3
  %0 = ptrtoint ptr %vci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vci1, align 8
  %vpi2 = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 2
  %2 = ptrtoint ptr %vpi2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vpi2, align 4
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %3)
  %cmp = icmp eq i16 %3, -2
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %cmp5 = icmp eq i32 %1, -2
  %or.cond285 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond285, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_data, align 8
  %conv.i = sext i16 %3 to i32
  %11 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv.i, label %if.end.cleanup_crit_edge [
    i32 -1, label %sw.bb.i
    i32 0, label %if.end.sw.epilog.i_crit_edge
  ]

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end.sw.epilog.i_crit_edge
  %vpi.0 = phi i16 [ %3, %if.end.sw.epilog.i_crit_edge ], [ 0, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cond.i = icmp eq i32 %1, -1
  %num_vci.i = getelementptr inbounds %struct.lanai_dev, ptr %10, i32 0, i32 5
  %12 = ptrtoint ptr %num_vci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_vci.i, align 4
  br i1 %cond.i, label %for.cond.preheader.i, label %sw.default3.i

for.cond.preheader.i:                             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp28.i = icmp sgt i32 %13, 32
  br i1 %cmp28.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.cleanup_crit_edge

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %vci.0 = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 32, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call.i = tail call fastcc i32 @vci_is_ok(ptr noundef %10, i32 noundef %vci.0, ptr noundef %atmvcc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.if.end13_crit_edge

for.body.i.if.end13_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %vci.0, 1
  %14 = ptrtoint ptr %num_vci.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_vci.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sw.default3.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %13)
  %cmp5.not.i = icmp sge i32 %1, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.i = icmp slt i32 %1, 0
  %or.cond.i = or i1 %cmp7.i, %cmp5.not.i
  br i1 %or.cond.i, label %sw.default3.i.cleanup_crit_edge, label %lor.lhs.false9.i

sw.default3.i.cleanup_crit_edge:                  ; preds = %sw.default3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9.i:                                 ; preds = %sw.default3.i
  %call10.i = tail call fastcc i32 @vci_is_ok(ptr noundef %10, i32 noundef %1, ptr noundef %atmvcc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false9.i.cleanup_crit_edge, label %lor.lhs.false9.i.if.end13_crit_edge

lor.lhs.false9.i.if.end13_crit_edge:              ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false9.i.if.end13_crit_edge, %for.body.i.if.end13_crit_edge
  %vci.1 = phi i32 [ %1, %lor.lhs.false9.i.if.end13_crit_edge ], [ %vci.0, %for.body.i.if.end13_crit_edge ]
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #12
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %aal, align 8
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.223)
  switch i8 %17, label %if.end13.cleanup_crit_edge [
    i8 13, label %if.end13.do.end_crit_edge
    i8 5, label %if.end13.do.end_crit_edge292
  ]

if.end13.do.end_crit_edge292:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end13.do.end_crit_edge, %if.end13.do.end_crit_edge292
  %number = getelementptr inbounds %struct.lanai_dev, ptr %10, i32 0, i32 21
  %19 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number, align 4
  %conv25 = sext i16 %vpi.0 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %20, i32 noundef %conv25, i32 noundef %vci.1) #16
  %vccs = getelementptr inbounds %struct.lanai_dev, ptr %10, i32 0, i32 3
  %21 = ptrtoint ptr %vccs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vccs, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %vci.1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %cmp27 = icmp eq ptr %24, null
  br i1 %cmp27, label %if.then29, label %do.end.if.end42_crit_edge

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then29:                                        ; preds = %do.end
  %call30 = tail call fastcc ptr @new_lanai_vcc()
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %if.then29.cleanup_crit_edge, label %if.end40, !prof !447

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %dev_data41 = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 14
  %25 = ptrtoint ptr %dev_data41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call30, ptr %dev_data41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %do.end.if.end42_crit_edge
  %lvcc.0 = phi ptr [ %call30, %if.end40 ], [ %24, %do.end.if.end42_crit_edge ]
  %nref = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc.0, i32 0, i32 2
  %26 = ptrtoint ptr %nref to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nref, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %nref, align 4
  %rxtp = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rxtp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp45.not = icmp eq i8 %29, 0
  br i1 %cmp45.not, label %if.end42.if.end111_crit_edge, label %do.body48

if.end42.if.end111_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

do.body48:                                        ; preds = %if.end42
  %atmvcc49 = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc.0, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %atmvcc49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %atmvcc49, align 4
  %cmp50.not = icmp eq ptr %31, null
  br i1 %cmp50.not, label %do.body48.do.end68_crit_edge, label %do.end63, !prof !446

do.body48.do.end68_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

do.end63:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %vci.1) #16
  br label %do.end68

do.end68:                                         ; preds = %do.end63, %do.body48.do.end68_crit_edge
  %32 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %33)
  %cmp72 = icmp eq i8 %33, 13
  br i1 %cmp72, label %if.then74, label %if.else

if.then74:                                        ; preds = %do.end68
  %naal0 = getelementptr inbounds %struct.lanai_dev, ptr %10, i32 0, i32 13
  %34 = ptrtoint ptr %naal0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %naal0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp75 = icmp eq i32 %35, 0
  br i1 %cmp75, label %if.then77, label %if.then74.if.end92_crit_edge

if.then74.if.end92_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.then77:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %call78 = tail call fastcc i32 @aal0_buffer_allocate(ptr noundef %10)
  br label %if.end82

if.else:                                          ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #14
  %rx.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc.0, i32 0, i32 4
  %max_sdu.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 1, i32 5
  %36 = ptrtoint ptr %max_sdu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_sdu.i, align 4
  %call.i265 = tail call fastcc i32 @lanai_get_sized_buffer(ptr noundef %10, ptr noundef %rx.i, i32 noundef %37, i32 noundef 3, ptr noundef nonnull @.str.30) #12
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then77
  %result.0 = phi i32 [ %call78, %if.then77 ], [ %call.i265, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %cmp83.not = icmp eq i32 %result.0, 0
  br i1 %cmp83.not, label %if.end82.if.end92_crit_edge, label %if.end82.out_free_crit_edge, !prof !446

if.end82.out_free_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end82.if.end92_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.end92:                                         ; preds = %if.end82.if.end92_crit_edge, %if.then74.if.end92_crit_edge
  %38 = ptrtoint ptr %atmvcc49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %atmvcc, ptr %atmvcc49, align 4
  %stats = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc.0, i32 0, i32 1
  %39 = call ptr @memset(ptr %stats, i32 0, i32 20)
  %40 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %41)
  %cmp105 = icmp eq i8 %41, 13
  br i1 %cmp105, label %if.then107, label %if.end92.if.end111_crit_edge

if.end92.if.end111_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then107:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  %naal0108 = getelementptr inbounds %struct.lanai_dev, ptr %10, i32 0, i32 13
  %42 = ptrtoint ptr %naal0108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %naal0108, align 4
  %inc109 = add i32 %43, 1
  store i32 %inc109, ptr %naal0108, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end92.if.end111_crit_edge, %if.end42.if.end111_crit_edge
  %44 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp115.not = icmp eq i8 %45, 0
  br i1 %cmp115.not, label %if.end111.if.end182_crit_edge, label %do.body118

if.end111.if.end182_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

do.body118:                                       ; preds = %if.end111
  %atmvcc119 = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc.0, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %atmvcc119 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %atmvcc119, align 4
  %cmp120.not = icmp eq ptr %47, null
  br i1 %cmp120.not, label %do.body118.do.end138_crit_edge, label %do.end133, !prof !446

do.body118.do.end138_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end138

do.end133:                                        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #14
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %vci.1) #16
  br label %do.end138

do.end138:                                        ; preds = %do.end133, %do.body118.do.end138_crit_edge
  %48 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %aal, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %49)
  %cmp.i266 = icmp eq i8 %49, 13
  %unqueue.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc.0, i32 0, i32 5, i32 4
  br i1 %cmp.i266, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %unqueue.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @vcc_tx_unqueue_aal0, ptr %unqueue.i, align 4
  br label %lanai_setup_tx_vci.exit

if.else.i:                                        ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %unqueue.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @vcc_tx_unqueue_aal5, ptr %unqueue.i, align 4
  %max_sdu4.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 0, i32 5
  %52 = ptrtoint ptr %max_sdu4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_sdu4.i, align 4
  br label %lanai_setup_tx_vci.exit

lanai_setup_tx_vci.exit:                          ; preds = %if.else.i, %if.then.i
  %max_sdu.0.i = phi i32 [ 52, %if.then.i ], [ %53, %if.else.i ]
  %multiplier.0.i = phi i32 [ 40, %if.then.i ], [ 3, %if.else.i ]
  %tx5.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc.0, i32 0, i32 5
  %call.i267 = tail call fastcc i32 @lanai_get_sized_buffer(ptr noundef %10, ptr noundef %tx5.i, i32 noundef %max_sdu.0.i, i32 noundef %multiplier.0.i, ptr noundef nonnull @.str.36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %cmp141.not = icmp eq i32 %call.i267, 0
  br i1 %cmp141.not, label %if.end150, label %lanai_setup_tx_vci.exit.out_free_crit_edge, !prof !446

lanai_setup_tx_vci.exit.out_free_crit_edge:       ; preds = %lanai_setup_tx_vci.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end150:                                        ; preds = %lanai_setup_tx_vci.exit
  %54 = ptrtoint ptr %atmvcc119 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %atmvcc, ptr %atmvcc119, align 4
  %55 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp157 = icmp eq i8 %56, 2
  br i1 %cmp157, label %do.body160, label %if.end150.if.end182_crit_edge

if.end150.if.end182_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

do.body160:                                       ; preds = %if.end150
  %cbrvcc = getelementptr inbounds %struct.lanai_dev, ptr %10, i32 0, i32 20
  %57 = ptrtoint ptr %cbrvcc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cbrvcc, align 4
  %cmp161.not = icmp eq ptr %58, null
  br i1 %cmp161.not, label %do.body160.do.end179_crit_edge, label %do.end174, !prof !446

do.body160.do.end179_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end179

do.end174:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #14
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %vci.1) #16
  br label %do.end179

do.end179:                                        ; preds = %do.end174, %do.body160.do.end179_crit_edge
  %59 = ptrtoint ptr %cbrvcc to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %atmvcc, ptr %cbrvcc, align 4
  br label %if.end182

if.end182:                                        ; preds = %do.end179, %if.end150.if.end182_crit_edge, %if.end111.if.end182_crit_edge
  %60 = ptrtoint ptr %lvcc.0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lvcc.0, align 4
  %cmp.not.i = icmp eq ptr %61, null
  br i1 %cmp.not.i, label %do.end.i, label %if.end182.host_vcc_bind.exit_crit_edge

if.end182.host_vcc_bind.exit_crit_edge:           ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  br label %host_vcc_bind.exit

do.end.i:                                         ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  %call.i268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %vci.1) #16
  %mul.i.i = shl i32 %vci.1, 6
  %62 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %10, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 131072
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i
  %64 = ptrtoint ptr %lvcc.0 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr1.i.i.i, ptr %lvcc.0, align 4
  %65 = ptrtoint ptr %vccs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vccs, align 4
  %vci3.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc.0, i32 0, i32 3
  %67 = ptrtoint ptr %vci3.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %vci.1, ptr %vci3.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %66, i32 %vci.1
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %lvcc.0, ptr %arrayidx.i, align 4
  br label %host_vcc_bind.exit

host_vcc_bind.exit:                               ; preds = %do.end.i, %if.end182.host_vcc_bind.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !450
  tail call void @arm_heavy_mb() #12
  %atmvcc187 = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc.0, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %atmvcc187 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %atmvcc187, align 4
  %cmp188 = icmp eq ptr %70, %atmvcc
  br i1 %cmp188, label %if.then190, label %host_vcc_bind.exit.if.end191_crit_edge

host_vcc_bind.exit.if.end191_crit_edge:           ; preds = %host_vcc_bind.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

if.then190:                                       ; preds = %host_vcc_bind.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @host_vcc_start_rx(ptr noundef nonnull %lvcc.0)
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %host_vcc_bind.exit.if.end191_crit_edge
  %atmvcc193 = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc.0, i32 0, i32 5, i32 1
  %71 = ptrtoint ptr %atmvcc193 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %atmvcc193, align 4
  %cmp194 = icmp eq ptr %72, %atmvcc
  br i1 %cmp194, label %if.then196, label %if.end191.if.end202_crit_edge

if.end191.if.end202_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

if.then196:                                       ; preds = %if.end191
  tail call fastcc void @host_vcc_start_tx(ptr noundef nonnull %lvcc.0)
  %cbrvcc197 = getelementptr inbounds %struct.lanai_dev, ptr %10, i32 0, i32 20
  %73 = ptrtoint ptr %cbrvcc197 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cbrvcc197, align 4
  %cmp198 = icmp eq ptr %74, %atmvcc
  br i1 %cmp198, label %if.then200, label %if.then196.if.end202_crit_edge

if.then196.if.end202_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

if.then200:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @lanai_cbr_setup(ptr noundef %10)
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.then196.if.end202_crit_edge, %if.end191.if.end202_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  br label %cleanup

out_free:                                         ; preds = %lanai_setup_tx_vci.exit.out_free_crit_edge, %if.end82.out_free_crit_edge
  %result.1 = phi i32 [ %result.0, %if.end82.out_free_crit_edge ], [ %call.i267, %lanai_setup_tx_vci.exit.out_free_crit_edge ]
  tail call void @lanai_close(ptr noundef %atmvcc)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end202, %if.then29.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %lor.lhs.false9.i.cleanup_crit_edge, %sw.default3.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end202 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -12, %if.then29.cleanup_crit_edge ], [ %result.1, %out_free ], [ -98, %if.end.cleanup_crit_edge ], [ -98, %sw.default3.i.cleanup_crit_edge ], [ -98, %for.cond.preheader.i.cleanup_crit_edge ], [ -98, %lor.lhs.false9.i.cleanup_crit_edge ], [ -98, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lanai_close(ptr noundef %atmvcc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 14
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev_data1 = getelementptr inbounds %struct.atm_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data1, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #12
  %rx = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 4
  %atmvcc3 = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %atmvcc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atmvcc3, align 4
  %cmp4 = icmp eq ptr %7, %atmvcc
  br i1 %cmp4, label %if.then5, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then5:                                         ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %9, null
  br i1 %cmp.i, label %if.then5.lanai_shutdown_rx_vci.exit_crit_edge, label %cardvcc_write.exit.i

if.then5.lanai_shutdown_rx_vci.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lanai_shutdown_rx_vci.exit

cardvcc_write.exit.i:                             ; preds = %if.then5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #12, !srcloc !441
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 3221220) #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %cmp.not.i8.i = icmp eq ptr %14, null
  br i1 %cmp.not.i8.i, label %do.end.i10.i, label %cardvcc_write.exit.i.cardvcc_write.exit11.i_crit_edge, !prof !447

cardvcc_write.exit.i.cardvcc_write.exit11.i_crit_edge: ; preds = %cardvcc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit11.i

do.end.i10.i:                                     ; preds = %cardvcc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit11.i

cardvcc_write.exit11.i:                           ; preds = %do.end.i10.i, %cardvcc_write.exit.i.cardvcc_write.exit11.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !441
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %cmp.not.i12.i = icmp eq ptr %18, null
  br i1 %cmp.not.i12.i, label %do.end.i14.i, label %cardvcc_write.exit11.i.cardvcc_write.exit16.i_crit_edge, !prof !447

cardvcc_write.exit11.i.cardvcc_write.exit16.i_crit_edge: ; preds = %cardvcc_write.exit11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit16.i

do.end.i14.i:                                     ; preds = %cardvcc_write.exit11.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit16.i

cardvcc_write.exit16.i:                           ; preds = %do.end.i14.i, %cardvcc_write.exit11.i.cardvcc_write.exit16.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #12, !srcloc !441
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %cmp.not.i17.i = icmp eq ptr %22, null
  br i1 %cmp.not.i17.i, label %do.end.i19.i, label %cardvcc_write.exit16.i.cardvcc_write.exit21.i_crit_edge, !prof !447

cardvcc_write.exit16.i.cardvcc_write.exit21.i_crit_edge: ; preds = %cardvcc_write.exit16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit21.i

do.end.i19.i:                                     ; preds = %cardvcc_write.exit16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit21.i

cardvcc_write.exit21.i:                           ; preds = %do.end.i19.i, %cardvcc_write.exit16.i.cardvcc_write.exit21.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 0) #12, !srcloc !441
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %cmp.not.i22.i = icmp eq ptr %26, null
  br i1 %cmp.not.i22.i, label %do.end.i24.i, label %cardvcc_write.exit21.i.cardvcc_write.exit26.i_crit_edge, !prof !447

cardvcc_write.exit21.i.cardvcc_write.exit26.i_crit_edge: ; preds = %cardvcc_write.exit21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit26.i

do.end.i24.i:                                     ; preds = %cardvcc_write.exit21.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit26.i

cardvcc_write.exit26.i:                           ; preds = %do.end.i24.i, %cardvcc_write.exit21.i.cardvcc_write.exit26.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #12, !srcloc !441
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %cmp.not.i27.i = icmp eq ptr %30, null
  br i1 %cmp.not.i27.i, label %do.end.i29.i, label %cardvcc_write.exit26.i.cardvcc_write.exit31.i_crit_edge, !prof !447

cardvcc_write.exit26.i.cardvcc_write.exit31.i_crit_edge: ; preds = %cardvcc_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit31.i

do.end.i29.i:                                     ; preds = %cardvcc_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit31.i

cardvcc_write.exit31.i:                           ; preds = %do.end.i29.i, %cardvcc_write.exit26.i.cardvcc_write.exit31.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 0) #12, !srcloc !441
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %cmp.not.i32.i = icmp eq ptr %34, null
  br i1 %cmp.not.i32.i, label %do.end.i34.i, label %cardvcc_write.exit31.i.cardvcc_write.exit36.i_crit_edge, !prof !447

cardvcc_write.exit31.i.cardvcc_write.exit36.i_crit_edge: ; preds = %cardvcc_write.exit31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit36.i

do.end.i34.i:                                     ; preds = %cardvcc_write.exit31.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit36.i

cardvcc_write.exit36.i:                           ; preds = %do.end.i34.i, %cardvcc_write.exit31.i.cardvcc_write.exit36.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %36, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 0) #12, !srcloc !441
  br label %lanai_shutdown_rx_vci.exit

lanai_shutdown_rx_vci.exit:                       ; preds = %cardvcc_write.exit36.i, %if.then5.lanai_shutdown_rx_vci.exit_crit_edge
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 2
  %37 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %38)
  %cmp6 = icmp eq i8 %38, 13
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %lanai_shutdown_rx_vci.exit
  %naal0 = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 13
  %39 = ptrtoint ptr %naal0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %naal0, align 4
  %dec = add i32 %40, -1
  store i32 %dec, ptr %naal0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp9 = icmp slt i32 %dec, 1
  br i1 %cmp9, label %if.then11, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #16
  %aal0buf.i = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 14
  %41 = ptrtoint ptr %aal0buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %aal0buf.i, align 4
  %cmp.not.i.i = icmp eq ptr %42, null
  br i1 %cmp.not.i.i, label %if.then11.if.end14_crit_edge, label %if.then.i.i

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %pci.i = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 9
  %43 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %end.i.i.i = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 14, i32 1
  %45 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = ptrtoint ptr %42 to i32
  %sub.i.i.i = sub i32 %47, %48
  %dmaaddr.i.i = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 14, i32 3
  %49 = ptrtoint ptr %dmaaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dmaaddr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull %42, i32 noundef %50, i32 noundef 0) #12
  %ptr.i.i = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 14, i32 2
  br label %if.end14.sink.split

if.else:                                          ; preds = %lanai_shutdown_rx_vci.exit
  %51 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx, align 4
  %cmp.not.i = icmp eq ptr %52, null
  br i1 %cmp.not.i, label %if.else.if.end14_crit_edge, label %if.then.i

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %pci = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 9
  %53 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %end.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 4, i32 0, i32 1
  %55 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = ptrtoint ptr %52 to i32
  %sub.i.i = sub i32 %57, %58
  %dmaaddr.i = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 4, i32 0, i32 3
  %59 = ptrtoint ptr %dmaaddr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dmaaddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %sub.i.i, ptr noundef nonnull %52, i32 noundef %60, i32 noundef 0) #12
  %ptr.i = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 4, i32 0, i32 2
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then.i, %if.then.i.i
  %ptr.i.sink = phi ptr [ %ptr.i, %if.then.i ], [ %ptr.i.i, %if.then.i.i ]
  %end.i.i.sink = phi ptr [ %end.i.i, %if.then.i ], [ %end.i.i.i, %if.then.i.i ]
  %rx.sink = phi ptr [ %rx, %if.then.i ], [ %aal0buf.i, %if.then.i.i ]
  %61 = ptrtoint ptr %ptr.i.sink to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %ptr.i.sink, align 4
  %62 = ptrtoint ptr %end.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %end.i.i.sink, align 4
  %63 = ptrtoint ptr %rx.sink to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %rx.sink, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else.if.end14_crit_edge, %if.then11.if.end14_crit_edge, %if.then8.if.end14_crit_edge
  %64 = ptrtoint ptr %atmvcc3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %atmvcc3, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end.if.end17_crit_edge
  %tx = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5
  %atmvcc18 = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5, i32 1
  %65 = ptrtoint ptr %atmvcc18 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %atmvcc18, align 4
  %cmp19 = icmp eq ptr %66, %atmvcc
  br i1 %cmp19, label %if.then21, label %if.end17.if.end36_crit_edge

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then21:                                        ; preds = %if.end17
  %cbrvcc = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 20
  %67 = ptrtoint ptr %cbrvcc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cbrvcc, align 4
  %cmp22 = icmp eq ptr %68, %atmvcc
  br i1 %cmp22, label %if.then24, label %if.then21.if.end30_crit_edge

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then24:                                        ; preds = %if.then21
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %cmp25.not = icmp eq ptr %70, null
  br i1 %cmp25.not, label %if.then24.if.end28_crit_edge, label %if.then27

if.then24.if.end28_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %conf2.i = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 16
  %71 = ptrtoint ptr %conf2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %conf2.i, align 4
  %and.i = and i32 %72, -33
  store i32 %and.i, ptr %conf2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %73 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %5, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %75, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %73) #12, !srcloc !441
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then24.if.end28_crit_edge
  %76 = ptrtoint ptr %cbrvcc to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %cbrvcc, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.then21.if.end30_crit_edge
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %cmp.i74 = icmp eq ptr %78, null
  br i1 %cmp.i74, label %if.end30.lanai_shutdown_tx_vci.exit_crit_edge, label %while.cond.preheader.i

if.end30.lanai_shutdown_tx_vci.exit_crit_edge:    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %lanai_shutdown_tx_vci.exit

while.cond.preheader.i:                           ; preds = %if.end30
  %backlog.i = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5, i32 3
  %call130.i = tail call ptr @skb_dequeue(ptr noundef %backlog.i) #12
  %cmp1.not131.i = icmp eq ptr %call130.i, null
  br i1 %cmp1.not131.i, label %while.cond.preheader.i.do.body.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.do.body.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

while.body.i:                                     ; preds = %lanai_free_skb.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call132.i = phi ptr [ %call.i77, %lanai_free_skb.exit.i.while.body.i_crit_edge ], [ %call130.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %79 = ptrtoint ptr %atmvcc18 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %atmvcc18, align 4
  %pop.i.i = getelementptr inbounds %struct.atm_vcc, ptr %80, i32 0, i32 11
  %81 = ptrtoint ptr %pop.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pop.i.i, align 4
  %cmp.not.i.i75 = icmp eq ptr %82, null
  br i1 %cmp.not.i.i75, label %if.else.i.i, label %if.then.i.i76

if.then.i.i76:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %82(ptr noundef %80, ptr noundef nonnull %call132.i) #12
  br label %lanai_free_skb.exit.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call132.i, i32 noundef 1) #12
  br label %lanai_free_skb.exit.i

lanai_free_skb.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i76
  %call.i77 = tail call ptr @skb_dequeue(ptr noundef %backlog.i) #12
  %cmp1.not.i = icmp eq ptr %call.i77, null
  br i1 %cmp1.not.i, label %lanai_free_skb.exit.i.do.body.i_crit_edge, label %lanai_free_skb.exit.i.while.body.i_crit_edge

lanai_free_skb.exit.i.while.body.i_crit_edge:     ; preds = %lanai_free_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

lanai_free_skb.exit.i.do.body.i_crit_edge:        ; preds = %lanai_free_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %lanai_free_skb.exit.i.do.body.i_crit_edge, %while.cond.preheader.i.do.body.i_crit_edge
  %call4.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @vcc_sklist_lock) #12
  %vci.i = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vci.i, align 4
  %backlog_vccs.i = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 10
  %rem.i.i = and i32 %84, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %84, 5
  %add.ptr.i.i78 = getelementptr i32, ptr %backlog_vccs.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %85 = ptrtoint ptr %add.ptr.i.i78 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.i78, align 4
  %and.i.i = and i32 %86, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i78, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @vcc_sklist_lock, i32 noundef %call4.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %end.i.i79 = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5, i32 0, i32 1
  %88 = ptrtoint ptr %end.i.i79 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i79, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tx, align 4
  %93 = ptrtoint ptr %92 to i32
  %sub.i.i80 = sub i32 %90, %93
  %div81.i = lshr i32 %sub.i.i80, 10
  %mul.i = mul nuw nsw i32 %div81.i, 100
  %shr.i = lshr i32 %mul.i, 7
  %add.i = add i32 %shr.i, %87
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %cmp.not.i83.i = icmp eq ptr %95, null
  br i1 %cmp.not.i83.i, label %do.end.i.i, label %do.body.i.cardvcc_read.exit.i_crit_edge, !prof !447

do.body.i.cardvcc_read.exit.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_read.exit.i

do.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  br label %cardvcc_read.exit.i

cardvcc_read.exit.i:                              ; preds = %do.end.i.i, %do.body.i.cardvcc_read.exit.i_crit_edge
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %97, i32 56
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i) #12, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !452
  %99 = and i32 %98, -14745600
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #12
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end53.i, %cardvcc_read.exit.i
  %lastread.0.i = phi i32 [ -1, %cardvcc_read.exit.i ], [ %107, %if.end53.i ]
  %timeout.0.i = phi i32 [ %add.i, %cardvcc_read.exit.i ], [ %spec.select82.i, %if.end53.i ]
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %cmp.not.i85.i = icmp eq ptr %102, null
  br i1 %cmp.not.i85.i, label %do.end.i87.i, label %for.cond.i.cardvcc_read.exit89.i_crit_edge, !prof !447

for.cond.i.cardvcc_read.exit89.i_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_read.exit89.i

do.end.i87.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  br label %cardvcc_read.exit89.i

cardvcc_read.exit89.i:                            ; preds = %do.end.i87.i, %for.cond.i.cardvcc_read.exit89.i_crit_edge
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %104, i32 48
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i) #12, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !452
  %106 = and i32 %105, -14745600
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %99)
  %cmp18.i = icmp eq i32 %106, %99
  br i1 %cmp18.i, label %land.lhs.true.i, label %cardvcc_read.exit89.i.if.end30.i_crit_edge

cardvcc_read.exit89.i.if.end30.i_crit_edge:       ; preds = %cardvcc_read.exit89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %cardvcc_read.exit89.i
  %108 = ptrtoint ptr %atmvcc18 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %atmvcc18, align 4
  %qos.i = getelementptr inbounds %struct.atm_vcc, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %qos.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %qos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp23.not.i = icmp eq i8 %111, 2
  br i1 %cmp23.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.for.end.i_crit_edge

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %cmp.not.i90.i = icmp eq ptr %113, null
  br i1 %cmp.not.i90.i, label %do.end.i92.i, label %lor.lhs.false.i.cardvcc_read.exit94.i_crit_edge, !prof !447

lor.lhs.false.i.cardvcc_read.exit94.i_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_read.exit94.i

do.end.i92.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i91.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  br label %cardvcc_read.exit94.i

cardvcc_read.exit94.i:                            ; preds = %do.end.i92.i, %lor.lhs.false.i.cardvcc_read.exit94.i_crit_edge
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %115, i32 60
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.i) #12, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !452
  %117 = and i32 %116, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp27.i = icmp eq i32 %117, 0
  br i1 %cmp27.i, label %cardvcc_read.exit94.i.for.end.i_crit_edge, label %cardvcc_read.exit94.i.if.end30.i_crit_edge

cardvcc_read.exit94.i.if.end30.i_crit_edge:       ; preds = %cardvcc_read.exit94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

cardvcc_read.exit94.i.for.end.i_crit_edge:        ; preds = %cardvcc_read.exit94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end30.i:                                       ; preds = %cardvcc_read.exit94.i.if.end30.i_crit_edge, %cardvcc_read.exit89.i.if.end30.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %lastread.0.i)
  %cmp31.not.i = icmp eq i32 %107, %lastread.0.i
  %add34.i = add i32 %timeout.0.i, 10
  %spec.select82.i = select i1 %cmp31.not.i, i32 %timeout.0.i, i32 %add34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %118 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %spec.select82.i, %118
  %cmp36.i = icmp slt i32 %sub.i, 0
  br i1 %cmp36.i, label %do.end42.i, label %if.end53.i, !prof !447

do.end42.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %atmvcc18 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %atmvcc18, align 4
  %dev.i81 = getelementptr inbounds %struct.atm_vcc, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %dev.i81 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i81, align 4
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %number.i, align 4
  %125 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %vci.i, align 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %124, i32 noundef %126) #16
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %107, i32 noundef %100) #16
  br label %for.end.i

if.end53.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 40) #12
  br label %for.cond.i

for.end.i:                                        ; preds = %do.end42.i, %cardvcc_read.exit94.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %cmp.not.i95.i = icmp eq ptr %128, null
  br i1 %cmp.not.i95.i, label %do.end.i97.i, label %for.end.i.cardvcc_write.exit.i82_crit_edge, !prof !447

for.end.i.cardvcc_write.exit.i82_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit.i82

do.end.i97.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i96.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit.i82

cardvcc_write.exit.i82:                           ; preds = %do.end.i97.i, %for.end.i.cardvcc_write.exit.i82_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %130, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i, i32 0) #12, !srcloc !441
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  %cmp.not.i99.i = icmp eq ptr %132, null
  br i1 %cmp.not.i99.i, label %do.end.i101.i, label %cardvcc_write.exit.i82.cardvcc_write.exit103.i_crit_edge, !prof !447

cardvcc_write.exit.i82.cardvcc_write.exit103.i_crit_edge: ; preds = %cardvcc_write.exit.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit103.i

do.end.i101.i:                                    ; preds = %cardvcc_write.exit.i82
  call void @__sanitizer_cov_trace_pc() #14
  %call.i100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit103.i

cardvcc_write.exit103.i:                          ; preds = %do.end.i101.i, %cardvcc_write.exit.i82.cardvcc_write.exit103.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %134, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 0) #12, !srcloc !441
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  %cmp.not.i104.i = icmp eq ptr %136, null
  br i1 %cmp.not.i104.i, label %do.end.i106.i, label %cardvcc_write.exit103.i.cardvcc_write.exit108.i_crit_edge, !prof !447

cardvcc_write.exit103.i.cardvcc_write.exit108.i_crit_edge: ; preds = %cardvcc_write.exit103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit108.i

do.end.i106.i:                                    ; preds = %cardvcc_write.exit103.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit108.i

cardvcc_write.exit108.i:                          ; preds = %do.end.i106.i, %cardvcc_write.exit103.i.cardvcc_write.exit108.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %138, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 0) #12, !srcloc !441
  %139 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %1, align 4
  %cmp.not.i109.i = icmp eq ptr %140, null
  br i1 %cmp.not.i109.i, label %do.end.i111.i, label %cardvcc_write.exit108.i.cardvcc_write.exit113.i_crit_edge, !prof !447

cardvcc_write.exit108.i.cardvcc_write.exit113.i_crit_edge: ; preds = %cardvcc_write.exit108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit113.i

do.end.i111.i:                                    ; preds = %cardvcc_write.exit108.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit113.i

cardvcc_write.exit113.i:                          ; preds = %do.end.i111.i, %cardvcc_write.exit108.i.cardvcc_write.exit113.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %142, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112.i, i32 0) #12, !srcloc !441
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 4
  %cmp.not.i114.i = icmp eq ptr %144, null
  br i1 %cmp.not.i114.i, label %do.end.i116.i, label %cardvcc_write.exit113.i.cardvcc_write.exit118.i_crit_edge, !prof !447

cardvcc_write.exit113.i.cardvcc_write.exit118.i_crit_edge: ; preds = %cardvcc_write.exit113.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit118.i

do.end.i116.i:                                    ; preds = %cardvcc_write.exit113.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i115.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit118.i

cardvcc_write.exit118.i:                          ; preds = %do.end.i116.i, %cardvcc_write.exit113.i.cardvcc_write.exit118.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %146, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 0) #12, !srcloc !441
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %cmp.not.i119.i = icmp eq ptr %148, null
  br i1 %cmp.not.i119.i, label %do.end.i121.i, label %cardvcc_write.exit118.i.cardvcc_write.exit123.i_crit_edge, !prof !447

cardvcc_write.exit118.i.cardvcc_write.exit123.i_crit_edge: ; preds = %cardvcc_write.exit118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit123.i

do.end.i121.i:                                    ; preds = %cardvcc_write.exit118.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit123.i

cardvcc_write.exit123.i:                          ; preds = %do.end.i121.i, %cardvcc_write.exit118.i.cardvcc_write.exit123.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 4
  %add.ptr.i122.i = getelementptr i8, ptr %150, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i, i32 0) #12, !srcloc !441
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 4
  %cmp.not.i124.i = icmp eq ptr %152, null
  br i1 %cmp.not.i124.i, label %do.end.i126.i, label %cardvcc_write.exit123.i.cardvcc_write.exit128.i_crit_edge, !prof !447

cardvcc_write.exit123.i.cardvcc_write.exit128.i_crit_edge: ; preds = %cardvcc_write.exit123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit128.i

do.end.i126.i:                                    ; preds = %cardvcc_write.exit123.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit128.i

cardvcc_write.exit128.i:                          ; preds = %do.end.i126.i, %cardvcc_write.exit123.i.cardvcc_write.exit128.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %154, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 0) #12, !srcloc !441
  br label %lanai_shutdown_tx_vci.exit

lanai_shutdown_tx_vci.exit:                       ; preds = %cardvcc_write.exit128.i, %if.end30.lanai_shutdown_tx_vci.exit_crit_edge
  %155 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %tx, align 4
  %cmp.not.i83 = icmp eq ptr %156, null
  br i1 %cmp.not.i83, label %lanai_shutdown_tx_vci.exit.lanai_buf_deallocate.exit90_crit_edge, label %if.then.i89

lanai_shutdown_tx_vci.exit.lanai_buf_deallocate.exit90_crit_edge: ; preds = %lanai_shutdown_tx_vci.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lanai_buf_deallocate.exit90

if.then.i89:                                      ; preds = %lanai_shutdown_tx_vci.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pci33 = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 9
  %157 = ptrtoint ptr %pci33 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pci33, align 4
  %dev.i84 = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 44
  %end.i.i85 = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5, i32 0, i32 1
  %159 = ptrtoint ptr %end.i.i85 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %end.i.i85, align 4
  %161 = ptrtoint ptr %160 to i32
  %162 = ptrtoint ptr %156 to i32
  %sub.i.i86 = sub i32 %161, %162
  %dmaaddr.i87 = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5, i32 0, i32 3
  %163 = ptrtoint ptr %dmaaddr.i87 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %dmaaddr.i87, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i84, i32 noundef %sub.i.i86, ptr noundef nonnull %156, i32 noundef %164, i32 noundef 0) #12
  %ptr.i88 = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5, i32 0, i32 2
  %165 = ptrtoint ptr %ptr.i88 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %ptr.i88, align 4
  %166 = ptrtoint ptr %end.i.i85 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %end.i.i85, align 4
  %167 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %tx, align 4
  br label %lanai_buf_deallocate.exit90

lanai_buf_deallocate.exit90:                      ; preds = %if.then.i89, %lanai_shutdown_tx_vci.exit.lanai_buf_deallocate.exit90_crit_edge
  %168 = ptrtoint ptr %atmvcc18 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %atmvcc18, align 4
  br label %if.end36

if.end36:                                         ; preds = %lanai_buf_deallocate.exit90, %if.end17.if.end36_crit_edge
  %nref = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 2
  %169 = ptrtoint ptr %nref to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %nref, align 4
  %dec37 = add i32 %170, -1
  store i32 %dec37, ptr %nref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec37)
  %cmp38 = icmp eq i32 %dec37, 0
  br i1 %cmp38, label %if.then40, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %if.end36
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %cmp.i91 = icmp eq ptr %172, null
  br i1 %cmp.i91, label %if.then40.host_vcc_unbind.exit_crit_edge, label %do.end.i

if.then40.host_vcc_unbind.exit_crit_edge:         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %host_vcc_unbind.exit

do.end.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %vci.i92 = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 3
  %173 = ptrtoint ptr %vci.i92 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %vci.i92, align 4
  %call.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %174) #16
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %1, align 4
  %vccs.i = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 3
  %176 = ptrtoint ptr %vccs.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %vccs.i, align 4
  %178 = ptrtoint ptr %vci.i92 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %vci.i92, align 4
  %arrayidx.i = getelementptr ptr, ptr %177, i32 %179
  %180 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %arrayidx.i, align 4
  br label %host_vcc_unbind.exit

host_vcc_unbind.exit:                             ; preds = %do.end.i, %if.then40.host_vcc_unbind.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %if.end41

if.end41:                                         ; preds = %host_vcc_unbind.exit, %if.end36.if.end41_crit_edge
  %181 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %dev_data, align 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lanai_send(ptr noundef %atmvcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 14
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev_data1 = getelementptr inbounds %struct.atm_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data1, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.einval_crit_edge, label %lor.lhs.false, !prof !447

entry.einval_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %einval

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %lor.lhs.false.einval_crit_edge, label %lor.rhs, !prof !447

lor.lhs.false.einval_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %einval

lor.rhs:                                          ; preds = %lor.lhs.false
  %atmvcc3 = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %atmvcc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %atmvcc3, align 4
  %cmp4.not = icmp eq ptr %9, %atmvcc
  br i1 %cmp4.not, label %if.end, label %lor.rhs.einval_crit_edge, !prof !446

lor.rhs.einval_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %einval

if.end:                                           ; preds = %lor.rhs
  %cmp6 = icmp eq ptr %skb, null
  br i1 %cmp6, label %do.end, label %if.end14, !prof !447

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 3
  %10 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vci, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %11) #16
  br label %einval

if.end14:                                         ; preds = %if.end
  %cmp15 = icmp eq ptr %5, null
  br i1 %cmp15, label %do.end25, label %if.end29, !prof !447

do.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %vci27 = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 3
  %12 = ptrtoint ptr %vci27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vci27, align 8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %13) #16
  br label %einval

if.end29:                                         ; preds = %if.end14
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %14 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %atmvcc, ptr %cb, align 8
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %aal, align 8
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.224)
  switch i8 %16, label %do.end78 [
    i8 5, label %do.body30
    i8 13, label %sw.bb45
  ]

do.body30:                                        ; preds = %if.end29
  %call34 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @vcc_sklist_lock) #12
  %backlog.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %backlog.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %19, %backlog.i.i
  br i1 %cmp.i.i.not.i, label %if.end.i, label %do.body30.queue_it.i_crit_edge

do.body30.queue_it.i_crit_edge:                   ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_it.i

if.end.i:                                         ; preds = %do.body30
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %cmp.not.i.i = icmp eq ptr %21, null
  br i1 %cmp.not.i.i, label %do.end.i.i, label %if.end.i.cardvcc_read.exit.i_crit_edge, !prof !447

if.end.i.cardvcc_read.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_read.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  br label %cardvcc_read.exit.i

cardvcc_read.exit.i:                              ; preds = %do.end.i.i, %if.end.i.cardvcc_read.exit.i_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %23, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #12, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !452
  %25 = and i32 %24, -14745600
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %mul.i.i = shl nuw nsw i32 %26, 4
  %tx.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5
  %ptr.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5, i32 0, i32 2
  %27 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptr.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %sub.neg.i.i = add nsw i32 %mul.i.i, -16
  %sub3.i.i = sub i32 %sub.neg.i.i, %29
  %sub4.i.i = add i32 %sub3.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i.i)
  %cmp.i.i = icmp slt i32 %sub4.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %cardvcc_read.exit.i.vcc_tx_space.exit.i_crit_edge

cardvcc_read.exit.i.vcc_tx_space.exit.i_crit_edge: ; preds = %cardvcc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vcc_tx_space.exit.i

if.then.i.i:                                      ; preds = %cardvcc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %add.i.i = add i32 %sub3.i.i, %35
  br label %vcc_tx_space.exit.i

vcc_tx_space.exit.i:                              ; preds = %if.then.i.i, %cardvcc_read.exit.i.vcc_tx_space.exit.i_crit_edge
  %r.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %sub4.i.i, %cardvcc_read.exit.i.vcc_tx_space.exit.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %add1.i.i = add i32 %37, 55
  %38 = srem i32 %add1.i.i, 48
  %mul.i30.i = sub i32 %add1.i.i, %38
  %add.i = add i32 %mul.i30.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add.i)
  %cmp.i = icmp slt i32 %add.i, 64
  br i1 %cmp.i, label %do.end.i, label %vcc_tx_space.exit.i.do.end12.i_crit_edge, !prof !447

vcc_tx_space.exit.i.do.end12.i_crit_edge:         ; preds = %vcc_tx_space.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

do.end.i:                                         ; preds = %vcc_tx_space.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %mul.i30.i) #16
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %vcc_tx_space.exit.i.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0.i.i, i32 %add.i)
  %cmp14.i = icmp slt i32 %r.0.i.i, %add.i
  br i1 %cmp14.i, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %vci.i = getelementptr inbounds %struct.lanai_vcc, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vci.i, align 4
  %backlog_vccs.i = getelementptr inbounds %struct.lanai_dev, ptr %5, i32 0, i32 10
  %rem.i.i = and i32 %40, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %40, 5
  %add.ptr.i.i = getelementptr i32, ptr %backlog_vccs.i, i32 %div2.i.i
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %42
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %queue_it.i

queue_it.i:                                       ; preds = %if.then15.i, %do.body30.queue_it.i_crit_edge
  tail call void @skb_queue_tail(ptr noundef %backlog.i.i, ptr noundef nonnull %skb) #12
  br label %vcc_tx_aal5.exit

if.end16.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @lanai_send_one_aal5(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull %skb, i32 noundef %mul.i30.i) #12
  br label %vcc_tx_aal5.exit

vcc_tx_aal5.exit:                                 ; preds = %if.end16.i, %queue_it.i
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @vcc_sklist_lock, i32 noundef %call34) #12
  br label %cleanup

sw.bb45:                                          ; preds = %if.end29
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %44)
  %cmp46.not = icmp eq i32 %44, 52
  br i1 %cmp46.not, label %do.body56, label %sw.bb45.einval_crit_edge, !prof !446

sw.bb45.einval_crit_edge:                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #14
  br label %einval

do.body56:                                        ; preds = %sw.bb45
  %call65 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @vcc_sklist_lock) #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #16
  %45 = ptrtoint ptr %atmvcc3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %atmvcc3, align 4
  %pop.i.i = getelementptr inbounds %struct.atm_vcc, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %pop.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pop.i.i, align 4
  %cmp.not.i.i111 = icmp eq ptr %48, null
  br i1 %cmp.not.i.i111, label %if.else.i.i, label %if.then.i.i112

if.then.i.i112:                                   ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %48(ptr noundef %46, ptr noundef nonnull %skb) #12
  br label %vcc_tx_aal0.exit

if.else.i.i:                                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #12
  br label %vcc_tx_aal0.exit

vcc_tx_aal0.exit:                                 ; preds = %if.else.i.i, %if.then.i.i112
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @vcc_sklist_lock, i32 noundef %call65) #12
  br label %cleanup

do.end78:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %16 to i32
  %vci83 = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 3
  %49 = ptrtoint ptr %vci83 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vci83, align 8
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv, i32 noundef %50) #16
  br label %einval

einval:                                           ; preds = %do.end78, %sw.bb45.einval_crit_edge, %do.end25, %do.end, %lor.rhs.einval_crit_edge, %lor.lhs.false.einval_crit_edge, %entry.einval_crit_edge
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 11
  %51 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pop.i, align 4
  %cmp.not.i = icmp eq ptr %52, null
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %einval
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %52(ptr noundef %atmvcc, ptr noundef %skb) #12
  br label %cleanup

if.else.i:                                        ; preds = %einval
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %vcc_tx_aal0.exit, %vcc_tx_aal5.exit
  %retval.0 = phi i32 [ 0, %vcc_tx_aal0.exit ], [ 0, %vcc_tx_aal5.exit ], [ -22, %if.then.i ], [ -22, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lanai_change_qos(ptr nocapture noundef readnone %atmvcc, ptr nocapture noundef readnone %qos, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lanai_proc_read(ptr nocapture noundef readonly %atmdev, ptr nocapture noundef %pos, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %atmdev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.225)
  switch i64 %3, label %if.end84 [
    i64 0, label %if.then
    i64 1, label %if.then4
    i64 2, label %if.then10
    i64 3, label %if.then16
    i64 4, label %if.then35
    i64 5, label %if.then45
    i64 6, label %if.then54
    i64 7, label %if.then63
    i64 8, label %if.then71
    i64 9, label %if.then80
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %number = getelementptr inbounds %struct.atm_dev, ptr %atmdev, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %type = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp1 = icmp eq i32 %7, 3
  %cond = select i1 %cmp1, ptr @.str.97, ptr @.str.98
  %serialno = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %serialno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %serialno, align 4
  %magicno = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %magicno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %magicno, align 4
  %num_vci = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %num_vci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_vci, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.96, i32 noundef %5, ptr noundef nonnull %cond, i32 noundef %9, i32 noundef %11, i32 noundef %13)
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %board_rev = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 22
  %14 = ptrtoint ptr %board_rev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %board_rev, align 4
  %pci = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %revision, align 4
  %conv = zext i8 %19 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.99, i32 noundef %15, i32 noundef %conv)
  br label %cleanup

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.lanai_dev, ptr %1, i32 0, i32 6, i32 64
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, ptr noundef %arrayidx)
  br label %cleanup

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %status = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  %and = lshr i32 %21, 2
  %and.lobit = and i32 %and, 1
  %and19 = lshr i32 %21, 3
  %and19.lobit = and i32 %and19, 1
  %and23 = lshr i32 %21, 4
  %and23.lobit = and i32 %and23, 1
  %and27 = lshr i32 %21, 5
  %and27.lobit = and i32 %and27, 1
  %call30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.101, i32 noundef %and.lobit, i32 noundef %and19.lobit, i32 noundef %and23.lobit, i32 noundef %and27.lobit)
  br label %cleanup

if.then35:                                        ; preds = %entry
  %service = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 2
  %end.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %service, align 4
  %27 = ptrtoint ptr %26 to i32
  %sub.i = sub i32 %24, %27
  %naal0 = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %naal0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %naal0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  br i1 %tobool37.not, label %if.then35.cond.end_crit_edge, label %cond.true

if.then35.cond.end_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %aal0buf = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 14
  %end.i258 = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 14, i32 1
  %30 = ptrtoint ptr %end.i258 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i258, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %aal0buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aal0buf, align 4
  %35 = ptrtoint ptr %34 to i32
  %sub.i259 = sub i32 %32, %35
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then35.cond.end_crit_edge
  %cond39 = phi i32 [ %sub.i259, %cond.true ], [ 0, %if.then35.cond.end_crit_edge ]
  %call40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.102, i32 noundef %sub.i, i32 noundef %cond39)
  br label %cleanup

if.then45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 52
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !442
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %and.i = and i32 %39, 255
  %stats.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1
  %atm_ovfl.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %atm_ovfl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %atm_ovfl.i, align 4
  %add.i = add i32 %41, %and.i
  store i32 %add.i, ptr %atm_ovfl.i, align 4
  %shr1.i = lshr i32 %39, 8
  %and2.i = and i32 %shr1.i, 255
  %hec_err.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %hec_err.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hec_err.i, align 4
  %add4.i = add i32 %43, %and2.i
  store i32 %add4.i, ptr %hec_err.i, align 4
  %shr5.i = lshr i32 %39, 16
  %and6.i = and i32 %shr5.i, 255
  %vci_trash.i = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %vci_trash.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vci_trash.i, align 4
  %add8.i = add i32 %45, %and6.i
  store i32 %add8.i, ptr %vci_trash.i, align 4
  %shr9.i = lshr i32 %39, 24
  %46 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stats.i, align 4
  %add12.i = add i32 %47, %shr9.i
  store i32 %add12.i, ptr %stats.i, align 4
  %call49 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.103, i32 noundef %add12.i, i32 noundef %add8.i, i32 noundef %add4.i, i32 noundef %add.i)
  br label %cleanup

if.then54:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pcierr_parity_detect = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %pcierr_parity_detect to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pcierr_parity_detect, align 4
  %pcierr_serr_set = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 5
  %50 = ptrtoint ptr %pcierr_serr_set to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pcierr_serr_set, align 4
  %pcierr_m_target_abort = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 7
  %52 = ptrtoint ptr %pcierr_m_target_abort to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pcierr_m_target_abort, align 4
  %call58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.104, i32 noundef %49, i32 noundef %51, i32 noundef %53)
  br label %cleanup

if.then63:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pcierr_s_target_abort = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 8
  %54 = ptrtoint ptr %pcierr_s_target_abort to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pcierr_s_target_abort, align 4
  %pcierr_master_parity = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 9
  %56 = ptrtoint ptr %pcierr_master_parity to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pcierr_master_parity, align 4
  %call66 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.105, i32 noundef %55, i32 noundef %57)
  br label %cleanup

if.then71:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %service_norx = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 11
  %58 = ptrtoint ptr %service_norx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %service_norx, align 4
  %service_notx = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 10
  %60 = ptrtoint ptr %service_notx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %service_notx, align 4
  %service_rxnotaal5 = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 12
  %62 = ptrtoint ptr %service_rxnotaal5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %service_rxnotaal5, align 4
  %call75 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.106, i32 noundef %59, i32 noundef %61, i32 noundef %63)
  br label %cleanup

if.then80:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dma_reenable = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 13
  %64 = ptrtoint ptr %dma_reenable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_reenable, align 4
  %card_reset = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 1, i32 14
  %66 = ptrtoint ptr %card_reset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %card_reset, align 4
  %call83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.107, i32 noundef %65, i32 noundef %67)
  br label %cleanup

if.end84:                                         ; preds = %entry
  %dec77 = add i64 %3, -10
  tail call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 1023, i64 %dec77)
  %cmp85270 = icmp sgt i64 %dec77, 1023
  br i1 %cmp85270, label %if.end84.out_crit_edge, label %if.end88.lr.ph

if.end84.out_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end88.lr.ph:                                   ; preds = %if.end84
  %vccs = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 3
  br label %if.end88

if.end88:                                         ; preds = %if.end93.if.end88_crit_edge, %if.end88.lr.ph
  %left.0271 = phi i64 [ %dec77, %if.end88.lr.ph ], [ %inc94, %if.end93.if.end88_crit_edge ]
  %68 = ptrtoint ptr %vccs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vccs, align 4
  %idxprom = trunc i64 %left.0271 to i32
  %arrayidx89 = getelementptr ptr, ptr %69, i32 %idxprom
  %70 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx89, align 4
  %cmp90.not = icmp eq ptr %71, null
  br i1 %cmp90.not, label %if.end93, label %for.end

if.end93:                                         ; preds = %if.end88
  %72 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %pos, align 8
  %inc = add i64 %73, 1
  store i64 %inc, ptr %pos, align 8
  %inc94 = add nsw i64 %left.0271, 1
  %cmp85 = icmp sgt i64 %left.0271, 1022
  br i1 %cmp85, label %if.end93.out_crit_edge, label %if.end93.if.end88_crit_edge

if.end93.if.end88_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end93.out_crit_edge:                           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.end:                                          ; preds = %if.end88
  %idxprom.le = trunc i64 %left.0271 to i32
  %nref = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 2
  %74 = ptrtoint ptr %nref to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nref, align 4
  %stats96 = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %stats96 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %stats96, align 4
  %call97 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.108, i32 noundef %idxprom.le, i32 noundef %75, i32 noundef %77)
  %rx = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 4
  %atmvcc = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %atmvcc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %atmvcc, align 4
  %cmp99.not = icmp eq ptr %79, null
  br i1 %cmp99.not, label %for.end.if.end135_crit_edge, label %if.then101

for.end.if.end135_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then101:                                       ; preds = %for.end
  %arrayidx103 = getelementptr i8, ptr %page, i32 %call97
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %79, i32 0, i32 7, i32 2
  %80 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %81)
  %cmp107 = icmp eq i8 %81, 5
  %cond109 = select i1 %cmp107, i32 5, i32 0
  %call110 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx103, ptr noundef nonnull @.str.109, i32 noundef %cond109)
  %add = add i32 %call110, %call97
  %82 = ptrtoint ptr %atmvcc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %atmvcc, align 4
  %aal115 = getelementptr inbounds %struct.atm_vcc, ptr %83, i32 0, i32 7, i32 2
  %84 = ptrtoint ptr %aal115 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %aal115, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %85)
  %cmp117 = icmp eq i8 %85, 5
  br i1 %cmp117, label %if.then119, label %if.then101.if.end135_crit_edge

if.then101.if.end135_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then119:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx121 = getelementptr i8, ptr %page, i32 %add
  %end.i260 = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 4, i32 0, i32 1
  %86 = ptrtoint ptr %end.i260 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %end.i260, align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rx, align 4
  %91 = ptrtoint ptr %90 to i32
  %sub.i261 = sub i32 %88, %91
  %x = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %x, align 4
  %service_trash = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 1, i32 1, i32 0, i32 1
  %94 = ptrtoint ptr %service_trash to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %service_trash, align 4
  %service_stream = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 1, i32 1, i32 0, i32 2
  %96 = ptrtoint ptr %service_stream to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %service_stream, align 4
  %service_rxcrc = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 1, i32 1, i32 0, i32 3
  %98 = ptrtoint ptr %service_rxcrc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %service_rxcrc, align 4
  %call131 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx121, ptr noundef nonnull @.str.110, i32 noundef %sub.i261, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99)
  %extract.t266 = add i32 %call131, %add
  br label %if.end135

if.end135:                                        ; preds = %if.then119, %if.then101.if.end135_crit_edge, %for.end.if.end135_crit_edge
  %left.1.off0 = phi i32 [ %extract.t266, %if.then119 ], [ %add, %if.then101.if.end135_crit_edge ], [ %call97, %for.end.if.end135_crit_edge ]
  %atmvcc136 = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 5, i32 1
  %100 = ptrtoint ptr %atmvcc136 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %atmvcc136, align 4
  %cmp137.not = icmp eq ptr %101, null
  br i1 %cmp137.not, label %if.end135.if.end164_crit_edge, label %if.then139

if.end135.if.end164_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end164

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  %tx = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 5
  %arrayidx141 = getelementptr i8, ptr %page, i32 %left.1.off0
  %aal145 = getelementptr inbounds %struct.atm_vcc, ptr %101, i32 0, i32 7, i32 2
  %102 = ptrtoint ptr %aal145 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %aal145, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %103)
  %cmp147 = icmp eq i8 %103, 5
  %cond149 = select i1 %cmp147, i32 5, i32 0
  %end.i262 = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 5, i32 0, i32 1
  %104 = ptrtoint ptr %end.i262 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %end.i262, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tx, align 4
  %109 = ptrtoint ptr %108 to i32
  %sub.i263 = sub i32 %106, %109
  %cbrvcc = getelementptr inbounds %struct.lanai_dev, ptr %1, i32 0, i32 20
  %110 = ptrtoint ptr %cbrvcc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cbrvcc, align 4
  %cmp155 = icmp eq ptr %101, %111
  %cond157 = select i1 %cmp155, i32 67, i32 85
  %backlog.i = getelementptr inbounds %struct.lanai_vcc, ptr %71, i32 0, i32 5, i32 3
  %112 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %backlog.i, align 4
  %cmp.i.i.not = icmp eq ptr %113, %backlog.i
  %cond160 = select i1 %cmp.i.i.not, i32 78, i32 89
  %call161 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx141, ptr noundef nonnull @.str.111, i32 noundef %cond149, i32 noundef %sub.i263, i32 noundef %cond157, i32 noundef %cond160)
  %extract.t = add i32 %call161, %left.1.off0
  br label %if.end164

if.end164:                                        ; preds = %if.then139, %if.end135.if.end164_crit_edge
  %left.2.off0 = phi i32 [ %extract.t, %if.then139 ], [ %left.1.off0, %if.end135.if.end164_crit_edge ]
  %arrayidx167 = getelementptr i8, ptr %page, i32 %left.2.off0
  %114 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 10, ptr %arrayidx167, align 1
  %idxprom168 = add i32 %left.2.off0, 1
  %arrayidx169 = getelementptr i8, ptr %page, i32 %idxprom168
  %115 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %arrayidx169, align 1
  br label %out

out:                                              ; preds = %if.end164, %if.end93.out_crit_edge, %if.end84.out_crit_edge
  %left.3.off0 = phi i32 [ %idxprom168, %if.end164 ], [ 0, %if.end84.out_crit_edge ], [ 0, %if.end93.out_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then80, %if.then71, %if.then63, %if.then54, %if.then45, %cond.end, %if.then16, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then4 ], [ %call11, %if.then10 ], [ %call30, %if.then16 ], [ %call40, %cond.end ], [ %call49, %if.then45 ], [ %call58, %if.then54 ], [ %call66, %if.then63 ], [ %call75, %if.then71 ], [ %call83, %if.then80 ], [ %left.3.off0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @service_buffer_deallocate(ptr nocapture noundef %lanai) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %service = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 2
  %0 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %service, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %entry.lanai_buf_deallocate.exit_crit_edge, label %if.then.i

entry.lanai_buf_deallocate.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lanai_buf_deallocate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pci = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 9
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %end.i.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = ptrtoint ptr %1 to i32
  %sub.i.i = sub i32 %6, %7
  %dmaaddr.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %dmaaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dmaaddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %sub.i.i, ptr noundef nonnull %1, i32 noundef %9, i32 noundef 0) #12
  %ptr.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ptr.i, align 4
  %11 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %end.i.i, align 4
  %12 = ptrtoint ptr %service to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %service, align 4
  br label %lanai_buf_deallocate.exit

lanai_buf_deallocate.exit:                        ; preds = %if.then.i, %entry.lanai_buf_deallocate.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @new_lanai_vcc() unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #15
  %cmp.not = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !447

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %backlog = getelementptr inbounds %struct.lanai_vcc, ptr %call7.i.i, i32 0, i32 5, i32 3
  %lock.i = getelementptr inbounds %struct.lanai_vcc, ptr %call7.i.i, i32 0, i32 5, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %1 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %backlog, ptr %backlog, align 4
  %prev.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %call7.i.i, i32 0, i32 5, i32 3, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %backlog, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %call7.i.i, i32 0, i32 5, i32 3, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %vci = getelementptr inbounds %struct.lanai_vcc, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %vci to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vci, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aal0_buffer_allocate(ptr noundef %lanai) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  %pci = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 9
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %aal0buf = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dmaaddr.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 14, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef %dmaaddr.i, i32 noundef 3264, i32 noundef 0) #12
  %2 = ptrtoint ptr %aal0buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %aal0buf, align 4
  %cmp6.not.i = icmp eq ptr %call.i.i, null
  br i1 %cmp6.not.i, label %entry.lanai_buf_allocate.exit_crit_edge, label %do.body8.i

entry.lanai_buf_allocate.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lanai_buf_allocate.exit

do.body8.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %dmaaddr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dmaaddr.i, align 4
  %and.i = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp10.not.i, label %do.body8.i.do.end19.i_crit_edge, label %do.end.i, !prof !446

do.body8.i.do.end19.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19.i

do.end.i:                                         ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %4) #16
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end.i, %do.body8.i.do.end19.i_crit_edge
  %5 = ptrtoint ptr %aal0buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aal0buf, align 4
  %ptr.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ptr.i, align 4
  %arrayidx.i = getelementptr i8, ptr %6, i32 4096
  %end.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.i, ptr %end.i, align 4
  %9 = call ptr @memset(ptr %6, i32 0, i32 4096)
  br label %lanai_buf_allocate.exit

lanai_buf_allocate.exit:                          ; preds = %do.end19.i, %entry.lanai_buf_allocate.exit_crit_edge
  %10 = ptrtoint ptr %aal0buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aal0buf, align 4
  %cmp = icmp eq ptr %11, null
  %cond = select i1 %cmp, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @host_vcc_start_rx(ptr nocapture noundef readonly %lvcc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %atmvcc = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %atmvcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atmvcc, align 4
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp eq i8 %3, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %rx = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 4
  %dmaaddr3 = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 4, i32 0, i32 3
  %4 = ptrtoint ptr %dmaaddr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dmaaddr3, align 4
  %6 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lvcc, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %do.end.i, label %if.then.cardvcc_write.exit_crit_edge, !prof !447

if.then.cardvcc_write.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit

cardvcc_write.exit:                               ; preds = %do.end.i, %if.then.cardvcc_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lvcc, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -65536) #12, !srcloc !441
  %10 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lvcc, align 4
  %cmp.not.i20 = icmp eq ptr %11, null
  br i1 %cmp.not.i20, label %do.end.i22, label %cardvcc_write.exit.cardvcc_write.exit24_crit_edge, !prof !447

cardvcc_write.exit.cardvcc_write.exit24_crit_edge: ; preds = %cardvcc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit24

do.end.i22:                                       ; preds = %cardvcc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit24

cardvcc_write.exit24:                             ; preds = %do.end.i22, %cardvcc_write.exit.cardvcc_write.exit24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lvcc, align 4
  %add.ptr.i23 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 -65536) #12, !srcloc !441
  %14 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lvcc, align 4
  %cmp.not.i25 = icmp eq ptr %15, null
  br i1 %cmp.not.i25, label %do.end.i27, label %cardvcc_write.exit24.cardvcc_write.exit29_crit_edge, !prof !447

cardvcc_write.exit24.cardvcc_write.exit29_crit_edge: ; preds = %cardvcc_write.exit24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit29

do.end.i27:                                       ; preds = %cardvcc_write.exit24
  call void @__sanitizer_cov_trace_pc() #14
  %call.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit29

cardvcc_write.exit29:                             ; preds = %do.end.i27, %cardvcc_write.exit24.cardvcc_write.exit29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lvcc, align 4
  %add.ptr.i28 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 0) #12, !srcloc !441
  %18 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lvcc, align 4
  %cmp.not.i30 = icmp eq ptr %19, null
  br i1 %cmp.not.i30, label %do.end.i32, label %cardvcc_write.exit29.cardvcc_write.exit34_crit_edge, !prof !447

cardvcc_write.exit29.cardvcc_write.exit34_crit_edge: ; preds = %cardvcc_write.exit29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit34

do.end.i32:                                       ; preds = %cardvcc_write.exit29
  call void @__sanitizer_cov_trace_pc() #14
  %call.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit34

cardvcc_write.exit34:                             ; preds = %do.end.i32, %cardvcc_write.exit29.cardvcc_write.exit34_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lvcc, align 4
  %add.ptr.i33 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #12, !srcloc !441
  %22 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lvcc, align 4
  %cmp.not.i35 = icmp eq ptr %23, null
  br i1 %cmp.not.i35, label %do.end.i37, label %cardvcc_write.exit34.cardvcc_write.exit39_crit_edge, !prof !447

cardvcc_write.exit34.cardvcc_write.exit39_crit_edge: ; preds = %cardvcc_write.exit34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit39

do.end.i37:                                       ; preds = %cardvcc_write.exit34
  call void @__sanitizer_cov_trace_pc() #14
  %call.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit39

cardvcc_write.exit39:                             ; preds = %do.end.i37, %cardvcc_write.exit34.cardvcc_write.exit39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lvcc, align 4
  %add.ptr.i38 = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 0) #12, !srcloc !441
  %26 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lvcc, align 4
  %cmp.not.i40 = icmp eq ptr %27, null
  br i1 %cmp.not.i40, label %do.end.i42, label %cardvcc_write.exit39.cardvcc_write.exit44_crit_edge, !prof !447

cardvcc_write.exit39.cardvcc_write.exit44_crit_edge: ; preds = %cardvcc_write.exit39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit44

do.end.i42:                                       ; preds = %cardvcc_write.exit39
  call void @__sanitizer_cov_trace_pc() #14
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit44

cardvcc_write.exit44:                             ; preds = %do.end.i42, %cardvcc_write.exit39.cardvcc_write.exit44_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %28 = tail call i32 @llvm.bswap.i32(i32 %5)
  %29 = shl i32 %28, 16
  %30 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lvcc, align 4
  %add.ptr.i43 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %29) #12, !srcloc !441
  %shr4 = lshr i32 %5, 8
  %and5 = and i32 %shr4, 255
  %32 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = xor i32 %34, -1
  %end.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %dec.i.i = add i32 %35, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %39 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #12, !range !448
  %sub.i.i.i = sub nuw nsw i32 32, %39
  %40 = call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 5)
  %.op = shl nuw nsw i32 %40, 8
  %.op.op = add nuw nsw i32 %.op, 512
  %mul = select i1 %tobool.not.i.i.i, i32 512, i32 %.op.op
  %or = or i32 %mul, %and5
  %or9 = or i32 %or, 32768
  br label %if.end

if.end:                                           ; preds = %cardvcc_write.exit44, %entry.if.end_crit_edge
  %addr1.0 = phi i32 [ %or9, %cardvcc_write.exit44 ], [ 26624, %entry.if.end_crit_edge ]
  %41 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lvcc, align 4
  %cmp.not.i45 = icmp eq ptr %42, null
  br i1 %cmp.not.i45, label %do.end.i47, label %if.end.do.body5.i_crit_edge, !prof !447

if.end.do.body5.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.end.i47:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %do.body5.i

do.body5.i:                                       ; preds = %do.end.i47, %if.end.do.body5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %addr1.0)
  %cmp6.i = icmp ugt i32 %addr1.0, 65535
  br i1 %cmp6.i, label %do.end17.i, label %do.body5.i.cardvcc_write.exit48_crit_edge, !prof !447

do.body5.i.cardvcc_write.exit48_crit_edge:        ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit48

do.end17.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  %vci.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 3
  %43 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vci.i, align 4
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %addr1.0, i32 noundef %44, i32 noundef 0) #16
  br label %cardvcc_write.exit48

cardvcc_write.exit48:                             ; preds = %do.end17.i, %do.body5.i.cardvcc_write.exit48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %45 = tail call i32 @llvm.bswap.i32(i32 %addr1.0) #12
  %46 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lvcc, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #12, !srcloc !441
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @host_vcc_start_tx(ptr noundef readonly %lvcc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dmaaddr1 = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5, i32 0, i32 3
  %0 = ptrtoint ptr %dmaaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dmaaddr1, align 4
  %2 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lvcc, align 4
  %cmp.not.i = icmp eq ptr %3, null
  br i1 %cmp.not.i, label %do.end.i, label %entry.cardvcc_write.exit_crit_edge, !prof !447

entry.cardvcc_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit

cardvcc_write.exit:                               ; preds = %do.end.i, %entry.cardvcc_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lvcc, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !441
  %6 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lvcc, align 4
  %cmp.not.i22 = icmp eq ptr %7, null
  br i1 %cmp.not.i22, label %do.end.i24, label %cardvcc_write.exit.cardvcc_write.exit26_crit_edge, !prof !447

cardvcc_write.exit.cardvcc_write.exit26_crit_edge: ; preds = %cardvcc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit26

do.end.i24:                                       ; preds = %cardvcc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit26

cardvcc_write.exit26:                             ; preds = %do.end.i24, %cardvcc_write.exit.cardvcc_write.exit26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lvcc, align 4
  %add.ptr.i25 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 -65536) #12, !srcloc !441
  %10 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lvcc, align 4
  %cmp.not.i27 = icmp eq ptr %11, null
  br i1 %cmp.not.i27, label %do.end.i29, label %cardvcc_write.exit26.cardvcc_write.exit31_crit_edge, !prof !447

cardvcc_write.exit26.cardvcc_write.exit31_crit_edge: ; preds = %cardvcc_write.exit26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit31

do.end.i29:                                       ; preds = %cardvcc_write.exit26
  call void @__sanitizer_cov_trace_pc() #14
  %call.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit31

cardvcc_write.exit31:                             ; preds = %do.end.i29, %cardvcc_write.exit26.cardvcc_write.exit31_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lvcc, align 4
  %add.ptr.i30 = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 -65536) #12, !srcloc !441
  %14 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lvcc, align 4
  %cmp.not.i32 = icmp eq ptr %15, null
  br i1 %cmp.not.i32, label %do.end.i34, label %cardvcc_write.exit31.cardvcc_write.exit36_crit_edge, !prof !447

cardvcc_write.exit31.cardvcc_write.exit36_crit_edge: ; preds = %cardvcc_write.exit31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit36

do.end.i34:                                       ; preds = %cardvcc_write.exit31
  call void @__sanitizer_cov_trace_pc() #14
  %call.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit36

cardvcc_write.exit36:                             ; preds = %do.end.i34, %cardvcc_write.exit31.cardvcc_write.exit36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lvcc, align 4
  %add.ptr.i35 = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 0) #12, !srcloc !441
  %18 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lvcc, align 4
  %cmp.not.i37 = icmp eq ptr %19, null
  br i1 %cmp.not.i37, label %do.end.i39, label %cardvcc_write.exit36.cardvcc_write.exit41_crit_edge, !prof !447

cardvcc_write.exit36.cardvcc_write.exit41_crit_edge: ; preds = %cardvcc_write.exit36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit41

do.end.i39:                                       ; preds = %cardvcc_write.exit36
  call void @__sanitizer_cov_trace_pc() #14
  %call.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit41

cardvcc_write.exit41:                             ; preds = %do.end.i39, %cardvcc_write.exit36.cardvcc_write.exit41_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lvcc, align 4
  %add.ptr.i40 = getelementptr i8, ptr %21, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 0) #12, !srcloc !441
  %22 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lvcc, align 4
  %cmp.not.i42 = icmp eq ptr %23, null
  br i1 %cmp.not.i42, label %do.end.i44, label %cardvcc_write.exit41.cardvcc_write.exit46_crit_edge, !prof !447

cardvcc_write.exit41.cardvcc_write.exit46_crit_edge: ; preds = %cardvcc_write.exit41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit46

do.end.i44:                                       ; preds = %cardvcc_write.exit41
  call void @__sanitizer_cov_trace_pc() #14
  %call.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit46

cardvcc_write.exit46:                             ; preds = %do.end.i44, %cardvcc_write.exit41.cardvcc_write.exit46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lvcc, align 4
  %add.ptr.i45 = getelementptr i8, ptr %25, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 0) #12, !srcloc !441
  %atmvcc = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %atmvcc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %atmvcc, align 4
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp = icmp eq i8 %29, 2
  br i1 %cmp, label %cond.true, label %cardvcc_write.exit46.cond.end_crit_edge

cardvcc_write.exit46.cond.end_crit_edge:          ; preds = %cardvcc_write.exit46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %cardvcc_write.exit46
  call void @__sanitizer_cov_trace_pc() #14
  %vci = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 3
  %30 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vci, align 4
  %or = or i32 %31, 32768
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %cardvcc_write.exit46.cond.end_crit_edge
  %cond = phi i32 [ %or, %cond.true ], [ 0, %cardvcc_write.exit46.cond.end_crit_edge ]
  %tx = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5
  %32 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lvcc, align 4
  %cmp.not.i47 = icmp eq ptr %33, null
  br i1 %cmp.not.i47, label %do.end.i49, label %cond.end.do.body5.i_crit_edge, !prof !447

cond.end.do.body5.i_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.end.i49:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %do.body5.i

do.body5.i:                                       ; preds = %do.end.i49, %cond.end.do.body5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %cond)
  %cmp6.i = icmp ugt i32 %cond, 65535
  br i1 %cmp6.i, label %do.end17.i, label %do.body5.i.cardvcc_write.exit51_crit_edge, !prof !447

do.body5.i.cardvcc_write.exit51_crit_edge:        ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit51

do.end17.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  %vci.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 3
  %34 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vci.i, align 4
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %cond, i32 noundef %35, i32 noundef 60) #16
  br label %cardvcc_write.exit51

cardvcc_write.exit51:                             ; preds = %do.end17.i, %do.body5.i.cardvcc_write.exit51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %36 = tail call i32 @llvm.bswap.i32(i32 %cond) #12
  %37 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lvcc, align 4
  %add.ptr.i50 = getelementptr i8, ptr %38, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %36) #12, !srcloc !441
  %39 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lvcc, align 4
  %cmp.not.i52 = icmp eq ptr %40, null
  br i1 %cmp.not.i52, label %do.end.i54, label %cardvcc_write.exit51.cardvcc_write.exit57_crit_edge, !prof !447

cardvcc_write.exit51.cardvcc_write.exit57_crit_edge: ; preds = %cardvcc_write.exit51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit57

do.end.i54:                                       ; preds = %cardvcc_write.exit51
  call void @__sanitizer_cov_trace_pc() #14
  %call.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit57

cardvcc_write.exit57:                             ; preds = %do.end.i54, %cardvcc_write.exit51.cardvcc_write.exit57_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %1)
  %42 = shl i32 %41, 16
  %43 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lvcc, align 4
  %add.ptr.i56 = getelementptr i8, ptr %44, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %42) #12, !srcloc !441
  %shr4 = lshr i32 %1, 8
  %and5 = and i32 %shr4, 255
  %45 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = xor i32 %47, -1
  %end.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5, i32 0, i32 1
  %49 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %dec.i.i = add i32 %48, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %52 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #12, !range !448
  %sub.i.i.i = sub nuw nsw i32 32, %52
  %53 = call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 5)
  %.op = shl nuw nsw i32 %53, 8
  %.op.op = add nuw nsw i32 %.op, 512
  %mul = select i1 %tobool.not.i.i.i, i32 512, i32 %.op.op
  %or8 = or i32 %mul, %and5
  %54 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lvcc, align 4
  %cmp.not.i58 = icmp eq ptr %55, null
  br i1 %cmp.not.i58, label %do.end.i60, label %cardvcc_write.exit57.do.body5.i62_crit_edge, !prof !447

cardvcc_write.exit57.do.body5.i62_crit_edge:      ; preds = %cardvcc_write.exit57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i62

do.end.i60:                                       ; preds = %cardvcc_write.exit57
  call void @__sanitizer_cov_trace_pc() #14
  %call.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %do.body5.i62

do.body5.i62:                                     ; preds = %do.end.i60, %cardvcc_write.exit57.do.body5.i62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or8)
  %cmp6.i61 = icmp ugt i32 %or8, 65535
  br i1 %cmp6.i61, label %do.end17.i65, label %do.body5.i62.cardvcc_write.exit67_crit_edge, !prof !447

do.body5.i62.cardvcc_write.exit67_crit_edge:      ; preds = %do.body5.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit67

do.end17.i65:                                     ; preds = %do.body5.i62
  call void @__sanitizer_cov_trace_pc() #14
  %vci.i63 = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 3
  %56 = ptrtoint ptr %vci.i63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vci.i63, align 4
  %call19.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %or8, i32 noundef %57, i32 noundef 32) #16
  br label %cardvcc_write.exit67

cardvcc_write.exit67:                             ; preds = %do.end17.i65, %do.body5.i62.cardvcc_write.exit67_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %58 = tail call i32 @llvm.bswap.i32(i32 %or8) #12
  %59 = ptrtoint ptr %lvcc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lvcc, align 4
  %add.ptr.i66 = getelementptr i8, ptr %60, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %58) #12, !srcloc !441
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lanai_cbr_setup(ptr nocapture noundef %lanai) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %cbrvcc = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 20
  %0 = ptrtoint ptr %cbrvcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cbrvcc, align 4
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @atm_pcr_goal(ptr noundef %qos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %entry.pcr_to_cbricg.exit_crit_edge, label %if.end.i

entry.pcr_to_cbricg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcr_to_cbricg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  %2 = tail call i32 @llvm.abs.i32(i32 %call.i, i1 false) #12
  %mul.i = mul i32 %2, 27
  %shl.neg.i = mul i32 %2, -432
  %sub4.i = add i32 %shl.neg.i, 25600000
  %sub6.i = add i32 %mul.i, -1
  %cond.i = select i1 %cmp1.i, i32 89, i32 78
  %add.i = select i1 %cmp1.i, i32 %sub6.i, i32 0
  %icg.0.i = add i32 %sub4.i, %add.i
  %div.i = sdiv i32 %icg.0.i, %mul.i
  %3 = tail call i32 @llvm.smin.i32(i32 %div.i, i32 32736) #12
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %2, i32 noundef %cond.i, i32 noundef %3) #16
  br label %pcr_to_cbricg.exit

pcr_to_cbricg.exit:                               ; preds = %if.end.i, %entry.pcr_to_cbricg.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %if.end.i ], [ 0, %entry.pcr_to_cbricg.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #12
  %5 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #12, !srcloc !441
  %7 = ptrtoint ptr %cbrvcc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cbrvcc, align 4
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vci, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  %12 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %13, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 %11) #12, !srcloc !441
  %conf2 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 16
  %14 = ptrtoint ptr %conf2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %conf2, align 4
  %or = or i32 %15, 32
  store i32 %or, ptr %conf2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %17 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %16) #12, !srcloc !441
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vci_is_ok(ptr nocapture noundef %lanai, i32 noundef %vci, ptr noundef readonly %atmvcc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qos1 = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7
  %vccs = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 3
  %0 = ptrtoint ptr %vccs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vccs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %vci
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vci)
  %cmp = icmp eq i32 %vci, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %qos1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %qos1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp eq i8 %5, 2
  br i1 %cmp.i, label %land.lhs.true.cleanup74_crit_edge, label %lor.lhs.false.i

land.lhs.true.cleanup74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %aal.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %aal.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %7)
  %cmp3.i = icmp eq i8 %7, 13
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup74_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup74_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.end.i:                                         ; preds = %lor.lhs.false.i
  %rxtp.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %rxtp.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rxtp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp7.not.i = icmp eq i8 %9, 0
  br i1 %cmp7.not.i, label %if.end.i.if.end_crit_edge, label %if.then9.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then9.i:                                       ; preds = %if.end.i
  %naal0.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 13
  %10 = ptrtoint ptr %naal0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %naal0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10.not.i = icmp eq i32 %11, 0
  br i1 %cmp10.not.i, label %if.end13.i, label %if.then9.i.cleanup74_crit_edge

if.then9.i.cleanup74_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %conf2.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 16
  %12 = ptrtoint ptr %conf2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %conf2.i, align 4
  %or.i = or i32 %13, 16
  store i32 %or.i, ptr %conf2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %15 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %14) #12, !srcloc !441
  br label %if.end

if.end:                                           ; preds = %if.end13.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cmp2.not = icmp eq ptr %3, null
  br i1 %cmp2.not, label %if.end.if.end48_crit_edge, label %if.then5, !prof !446

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then5:                                         ; preds = %if.end
  %rxtp = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rxtp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp6.not = icmp eq i8 %18, 0
  br i1 %cmp6.not, label %if.then5.if.end18_crit_edge, label %land.lhs.true8

if.then5.if.end18_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true8:                                   ; preds = %if.then5
  %atmvcc9 = getelementptr inbounds %struct.lanai_vcc, ptr %3, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %atmvcc9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %atmvcc9, align 4
  %cmp10.not = icmp eq ptr %20, null
  %cmp15.not = icmp eq ptr %20, %atmvcc
  %or.cond = or i1 %cmp10.not, %cmp15.not
  br i1 %or.cond, label %land.lhs.true8.if.end18_crit_edge, label %land.lhs.true8.cleanup74_crit_edge

land.lhs.true8.cleanup74_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

land.lhs.true8.if.end18_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true8.if.end18_crit_edge, %if.then5.if.end18_crit_edge
  %21 = ptrtoint ptr %qos1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %qos1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp21.not = icmp eq i8 %22, 0
  br i1 %cmp21.not, label %if.end18.if.end48_crit_edge, label %land.lhs.true23

if.end18.if.end48_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

land.lhs.true23:                                  ; preds = %if.end18
  %atmvcc24 = getelementptr inbounds %struct.lanai_vcc, ptr %3, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %atmvcc24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %atmvcc24, align 4
  %cmp25.not = icmp eq ptr %24, null
  %cmp30.not = icmp eq ptr %24, %atmvcc
  %or.cond101 = or i1 %cmp25.not, %cmp30.not
  br i1 %or.cond101, label %if.end33, label %land.lhs.true23.cleanup74_crit_edge

land.lhs.true23.cleanup74_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.end33:                                         ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp37 = icmp eq i8 %22, 2
  br i1 %cmp37, label %land.lhs.true39, label %if.end33.if.end48_crit_edge

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

land.lhs.true39:                                  ; preds = %if.end33
  %cbrvcc = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 20
  %25 = ptrtoint ptr %cbrvcc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cbrvcc, align 4
  %cmp40.not = icmp eq ptr %26, null
  %cmp44.not = icmp eq ptr %26, %atmvcc
  %or.cond102 = or i1 %cmp40.not, %cmp44.not
  br i1 %or.cond102, label %land.lhs.true39.if.end48_crit_edge, label %land.lhs.true39.cleanup74_crit_edge

land.lhs.true39.cleanup74_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

land.lhs.true39.if.end48_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true39.if.end48_crit_edge, %if.end33.if.end48_crit_edge, %if.end18.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %aal, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %28)
  %cmp50 = icmp eq i8 %28, 13
  br i1 %cmp50, label %land.lhs.true52, label %if.end48.cleanup74_crit_edge

if.end48.cleanup74_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

land.lhs.true52:                                  ; preds = %if.end48
  %naal0 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 13
  %29 = ptrtoint ptr %naal0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %naal0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp53 = icmp eq i32 %30, 0
  br i1 %cmp53, label %land.lhs.true55, label %land.lhs.true52.cleanup74_crit_edge

land.lhs.true52.cleanup74_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %rxtp56 = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %rxtp56 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rxtp56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp59.not = icmp eq i8 %32, 0
  br i1 %cmp59.not, label %land.lhs.true55.cleanup74_crit_edge, label %if.then61

land.lhs.true55.cleanup74_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.then61:                                        ; preds = %land.lhs.true55
  %33 = ptrtoint ptr %vccs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vccs, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %cmp64.not = icmp eq ptr %36, null
  br i1 %cmp64.not, label %if.then61.if.end72_crit_edge, label %land.lhs.true66

if.then61.if.end72_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

land.lhs.true66:                                  ; preds = %if.then61
  %atmvcc68 = getelementptr inbounds %struct.lanai_vcc, ptr %36, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %atmvcc68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %atmvcc68, align 4
  %cmp69.not = icmp eq ptr %38, null
  br i1 %cmp69.not, label %land.lhs.true66.if.end72_crit_edge, label %land.lhs.true66.cleanup74_crit_edge

land.lhs.true66.cleanup74_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

land.lhs.true66.if.end72_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true66.if.end72_crit_edge, %if.then61.if.end72_crit_edge
  %conf2 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 16
  %39 = ptrtoint ptr %conf2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %conf2, align 4
  %and = and i32 %40, -17
  store i32 %and, ptr %conf2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %42 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %43, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %41) #12, !srcloc !441
  br label %cleanup74

cleanup74:                                        ; preds = %if.end72, %land.lhs.true66.cleanup74_crit_edge, %land.lhs.true55.cleanup74_crit_edge, %land.lhs.true52.cleanup74_crit_edge, %if.end48.cleanup74_crit_edge, %land.lhs.true39.cleanup74_crit_edge, %land.lhs.true23.cleanup74_crit_edge, %land.lhs.true8.cleanup74_crit_edge, %if.then9.i.cleanup74_crit_edge, %lor.lhs.false.i.cleanup74_crit_edge, %land.lhs.true.cleanup74_crit_edge
  %retval.1 = phi i32 [ 0, %land.lhs.true8.cleanup74_crit_edge ], [ 0, %land.lhs.true23.cleanup74_crit_edge ], [ 0, %land.lhs.true39.cleanup74_crit_edge ], [ 0, %land.lhs.true66.cleanup74_crit_edge ], [ 1, %if.end72 ], [ 1, %land.lhs.true55.cleanup74_crit_edge ], [ 1, %land.lhs.true52.cleanup74_crit_edge ], [ 1, %if.end48.cleanup74_crit_edge ], [ 0, %lor.lhs.false.i.cleanup74_crit_edge ], [ 0, %land.lhs.true.cleanup74_crit_edge ], [ 0, %if.then9.i.cleanup74_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lanai_get_sized_buffer(ptr nocapture noundef readonly %lanai, ptr noundef %buf, i32 noundef %max_sdu, i32 noundef %multiplier, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_sdu)
  %cmp = icmp slt i32 %max_sdu, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !447

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_sdu.addr.0 = phi i32 [ 1, %if.then ], [ %max_sdu, %entry.if.end_crit_edge ]
  %add1.i = add nuw i32 %max_sdu.addr.0, 55
  %0 = srem i32 %add1.i, 48
  %mul.i = sub i32 %add1.i, %0
  %add = add nuw i32 %mul.i, 16
  %mul = mul i32 %add, %multiplier
  %add2 = add i32 %mul, 16
  %pci = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 9
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %add2, i32 131072) #12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end
  %size.0.i = phi i32 [ 4096, %if.end ], [ %mul.i42, %for.cond.i.for.cond.i_crit_edge ]
  %cmp1.i = icmp ult i32 %size.0.i, %3
  %mul.i42 = shl i32 %size.0.i, 1
  br i1 %cmp1.i, label %for.cond.i.for.cond.i_crit_edge, label %for.end.i

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %4 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 4064)
  %5 = add nuw i32 %4, 32
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %dmaaddr.i = getelementptr inbounds %struct.lanai_buffer, ptr %buf, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end23.i.do.body.i_crit_edge, %for.end.i
  %size.1.i = phi i32 [ %size.0.i, %for.end.i ], [ %div.i, %if.end23.i.do.body.i_crit_edge ]
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %size.1.i, ptr noundef %dmaaddr.i, i32 noundef 3264, i32 noundef 0) #12
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %buf, align 4
  %cmp6.not.i = icmp eq ptr %call.i.i, null
  br i1 %cmp6.not.i, label %if.end23.i, label %do.body8.i

do.body8.i:                                       ; preds = %do.body.i
  %7 = ptrtoint ptr %dmaaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dmaaddr.i, align 4
  %and.i = and i32 %8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp10.not.i, label %do.body8.i.lanai_buf_allocate.exit_crit_edge, label %do.end.i, !prof !446

do.body8.i.lanai_buf_allocate.exit_crit_edge:     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lanai_buf_allocate.exit

do.end.i:                                         ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %8) #16
  br label %lanai_buf_allocate.exit

if.end23.i:                                       ; preds = %do.body.i
  %div.i = sdiv i32 %size.1.i, 2
  %cmp25.not.i = icmp ult i32 %div.i, %5
  br i1 %cmp25.not.i, label %if.end23.i.cleanup_crit_edge, label %if.end23.i.do.body.i_crit_edge

if.end23.i.do.body.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lanai_buf_allocate.exit:                          ; preds = %do.end.i, %do.body8.i.lanai_buf_allocate.exit_crit_edge
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  %ptr.i = getelementptr inbounds %struct.lanai_buffer, ptr %buf, i32 0, i32 2
  %11 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %ptr.i, align 4
  %arrayidx.i = getelementptr i8, ptr %10, i32 %size.1.i
  %end.i = getelementptr inbounds %struct.lanai_buffer, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %end.i, align 4
  %13 = call ptr @memset(ptr %10, i32 0, i32 %size.1.i)
  %.pr = load ptr, ptr %buf, align 4
  %cmp4 = icmp eq ptr %.pr, null
  br i1 %cmp4, label %lanai_buf_allocate.exit.cleanup_crit_edge, label %if.end12, !prof !447

lanai_buf_allocate.exit.cleanup_crit_edge:        ; preds = %lanai_buf_allocate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %lanai_buf_allocate.exit
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %.pr to i32
  %sub.i = sub i32 %16, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add2)
  %cmp14 = icmp ult i32 %sub.i, %add2
  br i1 %cmp14, label %do.end, label %if.end12.do.end27_crit_edge, !prof !447

if.end12.do.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %number = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %18 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %19, i32 noundef %add2, ptr noundef %name, i32 noundef %sub.i) #16
  br label %do.end27

do.end27:                                         ; preds = %do.end, %if.end12.do.end27_crit_edge
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  %25 = ptrtoint ptr %24 to i32
  %sub.i47 = sub i32 %22, %25
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %sub.i47, ptr noundef %name) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %lanai_buf_allocate.exit.cleanup_crit_edge, %if.end23.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end27 ], [ -12, %lanai_buf_allocate.exit.cleanup_crit_edge ], [ -12, %if.end23.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vcc_tx_unqueue_aal0(ptr nocapture noundef readnone %lanai, ptr nocapture noundef readnone %lvcc, i32 noundef %endptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vcc_tx_unqueue_aal5(ptr noundef %lanai, ptr noundef %lvcc, i32 noundef %endptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = shl i32 %endptr, 4
  %tx.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5
  %ptr.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5, i32 0, i32 2
  %0 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %sub.neg.i = add i32 %mul.i, -16
  %sub3.i = sub i32 %sub.neg.i, %2
  %sub4.i = add i32 %sub3.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i)
  %cmp.i = icmp slt i32 %sub4.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.vcc_tx_space.exit_crit_edge

entry.vcc_tx_space.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vcc_tx_space.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %add.i = add i32 %sub3.i, %8
  br label %vcc_tx_space.exit

vcc_tx_space.exit:                                ; preds = %if.then.i, %entry.vcc_tx_space.exit_crit_edge
  %r.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub4.i, %entry.vcc_tx_space.exit_crit_edge ]
  %backlog.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %backlog.i, align 4
  %cmp.i.i.not = icmp eq ptr %10, %backlog.i
  br i1 %cmp.i.i.not, label %do.end, label %vcc_tx_space.exit.do.end8_crit_edge, !prof !447

vcc_tx_space.exit.do.end8_crit_edge:              ; preds = %vcc_tx_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %vcc_tx_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  %vci = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 3
  %11 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vci, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %12) #16
  br label %do.end8

do.end8:                                          ; preds = %do.end, %vcc_tx_space.exit.do.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %r.0.i)
  %cmp47 = icmp sgt i32 %r.0.i, 63
  br i1 %cmp47, label %do.end8.while.body_crit_edge, label %do.end8.while.end_crit_edge

do.end8.while.end_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end8.while.body_crit_edge:                     ; preds = %do.end8
  br label %while.body

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %do.end8.while.body_crit_edge
  %space.048 = phi i32 [ %sub, %if.end18.while.body_crit_edge ], [ %r.0.i, %do.end8.while.body_crit_edge ]
  %call9 = tail call ptr @skb_dequeue(ptr noundef %backlog.i) #12
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %while.body.no_backlog_crit_edge, label %if.end12

while.body.no_backlog_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_backlog

if.end12:                                         ; preds = %while.body
  %len = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %add1.i = add i32 %14, 55
  %15 = srem i32 %add1.i, 48
  %mul.i42 = sub i32 %add1.i, %15
  %add = add i32 %mul.i42, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %space.048, i32 %add)
  %cmp14 = icmp slt i32 %space.048, %add
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_queue_head(ptr noundef %backlog.i, ptr noundef nonnull %call9) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  tail call fastcc void @lanai_send_one_aal5(ptr noundef %lanai, ptr noundef %lvcc, ptr noundef nonnull %call9, i32 noundef %mul.i42)
  %sub = sub i32 %space.048, %add
  %cmp = icmp sgt i32 %sub, 63
  br i1 %cmp, label %if.end18.while.body_crit_edge, label %if.end18.while.end_crit_edge

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %do.end8.while.end_crit_edge
  %16 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %backlog.i, align 4
  %cmp.i.i44.not = icmp eq ptr %17, %backlog.i
  br i1 %cmp.i.i44.not, label %while.end.no_backlog_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.end.no_backlog_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_backlog

no_backlog:                                       ; preds = %while.end.no_backlog_crit_edge, %while.body.no_backlog_crit_edge
  %vci23 = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 3
  %18 = ptrtoint ptr %vci23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vci23, align 4
  %backlog_vccs = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 10
  %rem.i = and i32 %19, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %19, 5
  %add.ptr.i = getelementptr i32, ptr %backlog_vccs, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %21, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %no_backlog, %while.end.cleanup_crit_edge, %if.then15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lanai_send_one_aal5(ptr noundef %lanai, ptr noundef %lvcc, ptr noundef %skb, i32 noundef %pdusize) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add1.i = add i32 %1, 55
  %2 = srem i32 %add1.i, 48
  %mul.i = sub i32 %add1.i, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %pdusize)
  %cmp.not = icmp eq i32 %mul.i, %pdusize
  br i1 %cmp.not, label %entry.do.end8_crit_edge, label %do.end, !prof !446

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %pdusize, i32 noundef %mul.i) #16
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %tx.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5
  %ptr.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5, i32 0, i32 2
  %3 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %and.i = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %do.end8.do.end8.i_crit_edge, label %do.end.i, !prof !446

do.end8.do.end8.i_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

do.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %4) #16
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %do.end8.do.end8.i_crit_edge
  %6 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr.i, align 4
  %add.ptr.i = getelementptr i32, ptr %7, i32 4
  store ptr %add.ptr.i, ptr %ptr.i, align 4
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %and18.i = and i32 %sub.ptr.sub.i, -131057
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %cmp19.not.i = icmp eq i32 %and18.i, 0
  br i1 %cmp19.not.i, label %do.end8.i.do.end44.i_crit_edge, label %do.end31.i, !prof !446

do.end8.i.do.end44.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44.i

do.end31.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %vci.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 3
  %10 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vci.i, align 4
  %end.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %sub.ptr.sub.i, i32 noundef %11, ptr noundef %9, ptr noundef %add.ptr.i, ptr noundef %13) #16
  br label %do.end44.i

do.end44.i:                                       ; preds = %do.end31.i, %do.end8.i.do.end44.i_crit_edge
  %add.i = add i32 %sub.ptr.sub.i, %pdusize
  %end.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = xor i32 %19, -1
  %sub.i = add i32 %20, %16
  %and48.i = and i32 %sub.i, %add.i
  %and50.i = and i32 %and48.i, -131057
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %cmp51.not.i = icmp eq i32 %and50.i, 0
  br i1 %cmp51.not.i, label %do.end44.i.do.end78.i_crit_edge, label %do.end63.i, !prof !446

do.end44.i.do.end78.i_crit_edge:                  ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78.i

do.end63.i:                                       ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %vci65.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 3
  %21 = ptrtoint ptr %vci65.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vci65.i, align 4
  %23 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr.i, align 4
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %and48.i, i32 noundef %22, ptr noundef %18, ptr noundef %24, ptr noundef %15) #16
  br label %do.end78.i

do.end78.i:                                       ; preds = %do.end63.i, %do.end44.i.do.end78.i_crit_edge
  %atmvcc.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %atmvcc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %atmvcc.i, align 4
  %atm_options.i = getelementptr inbounds %struct.atm_vcc, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %atm_options.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %atm_options.i, align 8
  %and80.i = shl i32 %28, 13
  %29 = and i32 %and80.i, 8192
  %shr.i = ashr i32 %and48.i, 4
  %or.i = or i32 %shr.i, %29
  %or83.i = or i32 %or.i, -805273600
  %30 = tail call i32 @llvm.bswap.i32(i32 %or83.i) #12
  %31 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %32, i32 -1
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %arrayidx.i, align 4
  %34 = load ptr, ptr %ptr.i, align 4
  %35 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i.i, align 4
  %cmp93.not.i = icmp ult ptr %34, %36
  br i1 %cmp93.not.i, label %do.end78.i.vcc_tx_add_aal5_descriptor.exit_crit_edge, label %if.then94.i

do.end78.i.vcc_tx_add_aal5_descriptor.exit_crit_edge: ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vcc_tx_add_aal5_descriptor.exit

if.then94.i:                                      ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx.i, align 4
  %39 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %ptr.i, align 4
  br label %vcc_tx_add_aal5_descriptor.exit

vcc_tx_add_aal5_descriptor.exit:                  ; preds = %if.then94.i, %do.end78.i.vcc_tx_add_aal5_descriptor.exit_crit_edge
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %sub = sub i32 %pdusize, %41
  %sub10 = add i32 %sub, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %cmp12 = icmp slt i32 %sub10, 0
  br i1 %cmp12, label %vcc_tx_add_aal5_descriptor.exit.do.end48.sink.split_crit_edge, label %do.body30, !prof !447

vcc_tx_add_aal5_descriptor.exit.do.end48.sink.split_crit_edge: ; preds = %vcc_tx_add_aal5_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48.sink.split

do.body30:                                        ; preds = %vcc_tx_add_aal5_descriptor.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %sub10)
  %cmp31 = icmp ugt i32 %sub10, 47
  br i1 %cmp31, label %do.body30.do.end48.sink.split_crit_edge, label %do.body30.do.end48_crit_edge, !prof !447

do.body30.do.end48_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48

do.body30.do.end48.sink.split_crit_edge:          ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48.sink.split

do.end48.sink.split:                              ; preds = %do.body30.do.end48.sink.split_crit_edge, %vcc_tx_add_aal5_descriptor.exit.do.end48.sink.split_crit_edge
  %.str.44.sink = phi ptr [ @.str.44, %vcc_tx_add_aal5_descriptor.exit.do.end48.sink.split_crit_edge ], [ @.str.47, %do.body30.do.end48.sink.split_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.44.sink, i32 noundef %sub10) #16
  br label %do.end48

do.end48:                                         ; preds = %do.end48.sink.split, %do.body30.do.end48_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %46 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ptr.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %47, i32 %45
  %48 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i.i, align 4
  %sub.ptr.lhs.cast.i78 = ptrtoint ptr %add.ptr.i76 to i32
  %sub.ptr.rhs.cast.i79 = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i80 = sub i32 %sub.ptr.lhs.cast.i78, %sub.ptr.rhs.cast.i79
  %50 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub.i80, i32 0) #12
  %sub.i81 = sub i32 %45, %50
  %51 = call ptr @memcpy(ptr %47, ptr %43, i32 %sub.i81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i80)
  %cmp6.not.i = icmp slt i32 %sub.ptr.sub.i80, 1
  br i1 %cmp6.not.i, label %do.end48.vcc_tx_memcpy.exit_crit_edge, label %if.then7.i

do.end48.vcc_tx_memcpy.exit_crit_edge:            ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %vcc_tx_memcpy.exit

if.then7.i:                                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %43, i32 %45
  %idx.neg.i = sub nsw i32 0, %50
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 %idx.neg.i
  %54 = call ptr @memcpy(ptr %53, ptr %add.ptr11.i, i32 %50)
  %55 = load ptr, ptr %tx.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %55, i32 %50
  br label %vcc_tx_memcpy.exit

vcc_tx_memcpy.exit:                               ; preds = %if.then7.i, %do.end48.vcc_tx_memcpy.exit_crit_edge
  %e.0.i = phi ptr [ %add.ptr15.i, %if.then7.i ], [ %add.ptr.i76, %do.end48.vcc_tx_memcpy.exit_crit_edge ]
  %56 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %e.0.i, ptr %ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %cmp.i = icmp eq i32 %sub10, 0
  br i1 %cmp.i, label %vcc_tx_memcpy.exit.vcc_tx_memzero.exit_crit_edge, label %if.end.i

vcc_tx_memcpy.exit.vcc_tx_memzero.exit_crit_edge: ; preds = %vcc_tx_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vcc_tx_memzero.exit

if.end.i:                                         ; preds = %vcc_tx_memcpy.exit
  %add.ptr.i84 = getelementptr i8, ptr %e.0.i, i32 %sub10
  %57 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %end.i.i, align 4
  %sub.ptr.lhs.cast.i86 = ptrtoint ptr %add.ptr.i84 to i32
  %sub.ptr.rhs.cast.i87 = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i88 = sub i32 %sub.ptr.lhs.cast.i86, %sub.ptr.rhs.cast.i87
  %59 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub.i88, i32 0) #12
  %sub.i89 = sub i32 %sub10, %59
  %60 = call ptr @memset(ptr %e.0.i, i32 0, i32 %sub.i89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i88)
  %cmp9.not.i = icmp slt i32 %sub.ptr.sub.i88, 1
  br i1 %cmp9.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then10.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx.i, align 4
  %63 = call ptr @memset(ptr %62, i32 0, i32 %59)
  %64 = load ptr, ptr %tx.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %64, i32 %59
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then10.i, %if.end.i.if.end17.i_crit_edge
  %e.0.i91 = phi ptr [ %add.ptr16.i, %if.then10.i ], [ %add.ptr.i84, %if.end.i.if.end17.i_crit_edge ]
  %65 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %e.0.i91, ptr %ptr.i, align 4
  br label %vcc_tx_memzero.exit

vcc_tx_memzero.exit:                              ; preds = %if.end17.i, %vcc_tx_memcpy.exit.vcc_tx_memzero.exit_crit_edge
  %66 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len, align 4
  %68 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ptr.i, align 4
  %70 = ptrtoint ptr %69 to i32
  %and.i94 = and i32 %70, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i94)
  %cmp.not.i95 = icmp eq i32 %and.i94, 8
  br i1 %cmp.not.i95, label %vcc_tx_memzero.exit.do.end7.i_crit_edge, label %do.end.i97, !prof !446

vcc_tx_memzero.exit.do.end7.i_crit_edge:          ; preds = %vcc_tx_memzero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

do.end.i97:                                       ; preds = %vcc_tx_memzero.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %69) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i97, %vcc_tx_memzero.exit.do.end7.i_crit_edge
  %71 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ptr.i, align 4
  %add.ptr.i98 = getelementptr i32, ptr %72, i32 2
  store ptr %add.ptr.i98, ptr %ptr.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %67, ptr %72, align 4
  %74 = load ptr, ptr %ptr.i, align 4
  %75 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end.i.i, align 4
  %cmp21.not.i = icmp ult ptr %74, %76
  br i1 %cmp21.not.i, label %do.end7.i.vcc_tx_add_aal5_trailer.exit_crit_edge, label %if.then22.i

do.end7.i.vcc_tx_add_aal5_trailer.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vcc_tx_add_aal5_trailer.exit

if.then22.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx.i, align 4
  %79 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %ptr.i, align 4
  br label %vcc_tx_add_aal5_trailer.exit

vcc_tx_add_aal5_trailer.exit:                     ; preds = %if.then22.i, %do.end7.i.vcc_tx_add_aal5_trailer.exit_crit_edge
  %80 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ptr.i, align 4
  %82 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tx.i, align 4
  %sub.ptr.lhs.cast.i101 = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast.i102 = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i103 = sub i32 %sub.ptr.lhs.cast.i101, %sub.ptr.rhs.cast.i102
  %and.i104 = and i32 %sub.ptr.sub.i103, -131057
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %cmp.not.i105 = icmp eq i32 %and.i104, 0
  br i1 %cmp.not.i105, label %vcc_tx_add_aal5_trailer.exit.do.end16.i_crit_edge, label %do.end.i109, !prof !446

vcc_tx_add_aal5_trailer.exit.do.end16.i_crit_edge: ; preds = %vcc_tx_add_aal5_trailer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16.i

do.end.i109:                                      ; preds = %vcc_tx_add_aal5_trailer.exit
  call void @__sanitizer_cov_trace_pc() #14
  %vci.i106 = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 3
  %84 = ptrtoint ptr %vci.i106 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vci.i106, align 4
  %call.i108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %sub.ptr.sub.i103, i32 noundef %85, ptr noundef %83, ptr noundef %81, ptr noundef %76) #16
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i109, %vcc_tx_add_aal5_trailer.exit.do.end16.i_crit_edge
  %endtxlock.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %endtxlock.i) #12
  %86 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i53.i = getelementptr i8, ptr %87, i32 40
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53.i) #12, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %89 = and i32 %88, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool19.not54.i = icmp eq i32 %89, 0
  br i1 %tobool19.not54.i, label %do.end16.i.lanai_endtx.exit_crit_edge, label %do.end16.i.for.body.i_crit_edge

do.end16.i.for.body.i_crit_edge:                  ; preds = %do.end16.i
  br label %for.body.i

do.end16.i.lanai_endtx.exit_crit_edge:            ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lanai_endtx.exit

for.body.i:                                       ; preds = %if.end33.i.for.body.i_crit_edge, %do.end16.i.for.body.i_crit_edge
  %i.055.i = phi i32 [ %inc.i, %if.end33.i.for.body.i_crit_edge ], [ 0, %do.end16.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %i.055.i)
  %exitcond.i = icmp eq i32 %i.055.i, 51
  br i1 %exitcond.i, label %do.end30.i, label %if.end33.i, !prof !447

do.end30.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %number.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %90 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %number.i, align 4
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %91) #16
  br label %lanai_endtx.exit

if.end33.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 1073740) #12
  %inc.i = add nuw nsw i32 %i.055.i, 1
  %93 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %94, i32 40
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %96 = and i32 %95, 1073741824
  %tobool19.not.i = icmp eq i32 %96, 0
  br i1 %tobool19.not.i, label %if.end33.i.lanai_endtx.exit_crit_edge, label %if.end33.i.for.body.i_crit_edge

if.end33.i.for.body.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end33.i.lanai_endtx.exit_crit_edge:            ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lanai_endtx.exit

lanai_endtx.exit:                                 ; preds = %if.end33.i.lanai_endtx.exit_crit_edge, %do.end30.i, %do.end16.i.lanai_endtx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !453
  tail call void @arm_heavy_mb() #12
  %shl.i = shl i32 %sub.ptr.sub.i103, 12
  %vci37.i = getelementptr inbounds %struct.lanai_vcc, ptr %lvcc, i32 0, i32 3
  %97 = ptrtoint ptr %vci37.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vci37.i, align 4
  %or.i110 = or i32 %98, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %99 = tail call i32 @llvm.bswap.i32(i32 %or.i110) #12
  %100 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i52.i = getelementptr i8, ptr %101, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52.i, i32 %99) #12, !srcloc !441
  tail call void @_raw_spin_unlock(ptr noundef %endtxlock.i) #12
  %102 = ptrtoint ptr %atmvcc.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %atmvcc.i, align 4
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %103, i32 0, i32 11
  %104 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pop.i, align 4
  %cmp.not.i111 = icmp eq ptr %105, null
  br i1 %cmp.not.i111, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %lanai_endtx.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %105(ptr noundef %103, ptr noundef %skb) #12
  br label %lanai_free_skb.exit

if.else.i:                                        ; preds = %lanai_endtx.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %lanai_free_skb.exit

lanai_free_skb.exit:                              ; preds = %if.else.i, %if.then.i
  %106 = ptrtoint ptr %atmvcc.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %atmvcc.i, align 4
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %107, i32 0, i32 16
  %108 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %stats, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %109, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %109, i32 1, i32 3, i32 1) #12
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #12, !srcloc !454
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_pcr_goal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lanai_int(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devid, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  %servicelock.i = getelementptr inbounds %struct.lanai_dev, ptr %devid, i32 0, i32 19
  %stats.i.i = getelementptr inbounds %struct.lanai_dev, ptr %devid, i32 0, i32 1
  %atm_ovfl.i.i = getelementptr inbounds %struct.lanai_dev, ptr %devid, i32 0, i32 1, i32 3
  %hec_err.i.i = getelementptr inbounds %struct.lanai_dev, ptr %devid, i32 0, i32 1, i32 2
  %vci_trash.i.i = getelementptr inbounds %struct.lanai_dev, ptr %devid, i32 0, i32 1, i32 1
  %status.i.i = getelementptr inbounds %struct.lanai_dev, ptr %devid, i32 0, i32 17
  %number.i.i = getelementptr inbounds %struct.lanai_dev, ptr %devid, i32 0, i32 21
  %card_reset.i26 = getelementptr inbounds %struct.lanai_dev, ptr %devid, i32 0, i32 1, i32 14
  %conf1.i.i = getelementptr inbounds %struct.lanai_dev, ptr %devid, i32 0, i32 15
  %dma_reenable.i = getelementptr inbounds %struct.lanai_dev, ptr %devid, i32 0, i32 1, i32 13
  br label %do.body

do.body:                                          ; preds = %lanai_int_1.exit.do.body_crit_edge, %do.body.preheader
  %reason.0 = phi i32 [ %87, %lanai_int_1.exit.do.body_crit_edge ], [ %3, %do.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %reason.0)
  %cmp1 = icmp eq i32 %reason.0, -1
  br i1 %cmp1, label %do.body.cleanup_crit_edge, label %if.end4, !prof !447

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %do.body
  %and.i = and i32 %reason.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.if.end.i_crit_edge, label %if.then.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %servicelock.i) #12
  tail call fastcc void @run_service(ptr noundef %devid) #12
  tail call void @_raw_spin_unlock(ptr noundef %servicelock.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end4.if.end.i_crit_edge
  %ack.0.i = phi i32 [ 8192, %if.then.i ], [ 0, %if.end4.if.end.i_crit_edge ]
  %and2.i = and i32 %reason.0, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %ack.0.i, %and2.i
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210) #16
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %ack.1.i = phi i32 [ %or.i, %if.then4.i ], [ %ack.0.i, %if.end.i.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ack.1.i, i32 %reason.0)
  %cmp.i = icmp eq i32 %ack.1.i, %reason.0
  br i1 %cmp.i, label %if.end6.i.if.then108.i_crit_edge, label %if.end8.i

if.end6.i.if.then108.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then108.i

if.end8.i:                                        ; preds = %if.end6.i
  %and9.i = and i32 %reason.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then11.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %and12.i = and i32 %reason.0, -3
  %4 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devid, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !442
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %and.i.i = and i32 %7, 255
  %8 = ptrtoint ptr %atm_ovfl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %atm_ovfl.i.i, align 4
  %add.i.i = add i32 %9, %and.i.i
  store i32 %add.i.i, ptr %atm_ovfl.i.i, align 4
  %shr1.i.i = lshr i32 %7, 8
  %and2.i.i = and i32 %shr1.i.i, 255
  %10 = ptrtoint ptr %hec_err.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hec_err.i.i, align 4
  %add4.i.i = add i32 %11, %and2.i.i
  store i32 %add4.i.i, ptr %hec_err.i.i, align 4
  %shr5.i.i = lshr i32 %7, 16
  %and6.i.i = and i32 %shr5.i.i, 255
  %12 = ptrtoint ptr %vci_trash.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vci_trash.i.i, align 4
  %add8.i.i = add i32 %13, %and6.i.i
  store i32 %add8.i.i, ptr %vci_trash.i.i, align 4
  %shr9.i.i = lshr i32 %7, 24
  %14 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stats.i.i, align 4
  %add12.i.i = add i32 %15, %shr9.i.i
  store i32 %add12.i.i, ptr %stats.i.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end13.i_crit_edge
  %reason.addr.0.i = phi i32 [ %and12.i, %if.then11.i ], [ %reason.0, %if.end8.i.if.end13.i_crit_edge ]
  %and14.i = and i32 %reason.addr.0.i, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end19.i_crit_edge, label %if.then16.i

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end13.i
  %or18.i = or i32 %and14.i, %ack.1.i
  %16 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devid, align 4
  %add.ptr.i.i.i157.i = getelementptr i8, ptr %17, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i157.i) #12, !srcloc !442
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %20 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i.i, align 4
  %xor.i.i = xor i32 %21, %19
  store i32 %19, ptr %status.i.i, align 4
  %and.i158.i = and i32 %xor.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158.i)
  %tobool.not.i.i = icmp eq i32 %and.i158.i, 0
  br i1 %tobool.not.i.i, label %if.then16.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then16.i.if.end.i.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number.i.i, align 4
  %and2.i159.i = lshr i32 %19, 2
  %and2.lobit.i.i = and i32 %and2.i159.i, 1
  %24 = xor i32 %and2.lobit.i.i, 1
  %arrayidx.i.i.i = getelementptr [2 x ptr], ptr @status_message.onoff, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, i32 noundef %23, ptr noundef nonnull @.str.212, ptr noundef %26) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then16.i.if.end.i.i_crit_edge
  %and3.i.i = and i32 %xor.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %number.i.i, align 4
  %and7.i.i = lshr i32 %19, 3
  %and7.lobit.i.i = and i32 %and7.i.i, 1
  %29 = xor i32 %and7.lobit.i.i, 1
  %arrayidx.i37.i.i = getelementptr [2 x ptr], ptr @status_message.onoff, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i37.i.i, align 4
  %call.i38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, i32 noundef %28, ptr noundef nonnull @.str.213, ptr noundef %31) #16
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %and9.i.i = and i32 %xor.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end8.i.i.if.end14.i.i_crit_edge, label %if.then11.i.i

if.end8.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %number.i.i, align 4
  %and13.i.i = lshr i32 %19, 4
  %and13.lobit.i.i = and i32 %and13.i.i, 1
  %34 = xor i32 %and13.lobit.i.i, 1
  %arrayidx.i41.i.i = getelementptr [2 x ptr], ptr @status_message.onoff, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i41.i.i, align 4
  %call.i42.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, i32 noundef %33, ptr noundef nonnull @.str.214, ptr noundef %36) #16
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %if.end8.i.i.if.end14.i.i_crit_edge
  %and15.i.i = and i32 %xor.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end19.i_crit_edge, label %if.then17.i.i

if.end14.i.i.if.end19.i_crit_edge:                ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %number.i.i, align 4
  %and19.i.i = lshr i32 %19, 5
  %and19.lobit.i.i = and i32 %and19.i.i, 1
  %39 = xor i32 %and19.lobit.i.i, 1
  %arrayidx.i45.i.i = getelementptr [2 x ptr], ptr @status_message.onoff, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i45.i.i, align 4
  %call.i46.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, i32 noundef %38, ptr noundef nonnull @.str.215, ptr noundef %41) #16
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i.i, %if.end14.i.i.if.end19.i_crit_edge, %if.end13.i.if.end19.i_crit_edge
  %ack.2.i = phi i32 [ %ack.1.i, %if.end13.i.if.end19.i_crit_edge ], [ %or18.i, %if.end14.i.i.if.end19.i_crit_edge ], [ %or18.i, %if.then17.i.i ]
  %and20.i = and i32 %reason.addr.0.i, 229376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end39.i_crit_edge, label %do.end.i, !prof !446

if.end19.i.if.end39.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

do.end.i:                                         ; preds = %if.end19.i
  %42 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %number.i.i, align 4
  %44 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %devid, align 4
  %add.ptr.i.i.i13 = getelementptr i8, ptr %45, i32 92
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i13) #12, !srcloc !442
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %43, i32 noundef %and20.i, i32 noundef %47) #16
  %and27.i = and i32 %reason.addr.0.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.then29.i

if.then29.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %number.i.i, align 4
  %call.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, i32 noundef %49) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %devid, align 4
  %add.ptr.i.i.i25 = getelementptr i8, ptr %51, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i25, i32 -16841984) #12, !srcloc !441
  %52 = ptrtoint ptr %card_reset.i26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %card_reset.i26, align 4
  %inc.i27 = add i32 %53, 1
  store i32 %inc.i27, ptr %card_reset.i26, align 4
  br label %lanai_int_1.exit

if.end30.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %or32.i = or i32 %ack.2.i, %and20.i
  %54 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %number.i.i, align 4
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %55) #16
  %56 = ptrtoint ptr %conf1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %conf1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #12
  %59 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %devid, align 4
  %add.ptr.i.i.i160.i = getelementptr i8, ptr %60, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i160.i, i32 %58) #12, !srcloc !441
  %61 = ptrtoint ptr %dma_reenable.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_reenable.i, align 4
  %inc.i = add i32 %62, 1
  store i32 %inc.i, ptr %dma_reenable.i, align 4
  tail call fastcc void @pcistatus_check(ptr noundef %devid, i32 noundef 0) #12
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end30.i, %if.end19.i.if.end39.i_crit_edge
  %ack.3.i = phi i32 [ %or32.i, %if.end30.i ], [ %ack.2.i, %if.end19.i.if.end39.i_crit_edge ]
  %and40.i = and i32 %reason.addr.0.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end39.i.if.end57.i_crit_edge, label %if.then48.i, !prof !446

if.end39.i.if.end57.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then48.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %or50.i = or i32 %ack.3.i, %and40.i
  %63 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %number.i.i, align 4
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, i32 noundef %64) #16
  tail call fastcc void @pcistatus_check(ptr noundef %devid, i32 noundef 0) #12
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then48.i, %if.end39.i.if.end57.i_crit_edge
  %ack.4.i = phi i32 [ %or50.i, %if.then48.i ], [ %ack.3.i, %if.end39.i.if.end57.i_crit_edge ]
  %and58.i = and i32 %reason.addr.0.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end74.i, label %do.end69.i, !prof !446

do.end69.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %number.i.i, align 4
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %66, i32 noundef %and58.i) #16
  %67 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %number.i.i, align 4
  %call.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, i32 noundef %68) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %69 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %devid, align 4
  %add.ptr.i.i.i20 = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i20, i32 -16841984) #12, !srcloc !441
  %71 = ptrtoint ptr %card_reset.i26 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %card_reset.i26, align 4
  %inc.i22 = add i32 %72, 1
  store i32 %inc.i22, ptr %card_reset.i26, align 4
  br label %lanai_int_1.exit

if.end74.i:                                       ; preds = %if.end57.i
  %and75.i = and i32 %reason.addr.0.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.end91.i, label %do.end86.i, !prof !446

do.end86.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %number.i.i, align 4
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, i32 noundef %74, i32 noundef %and75.i) #16
  %75 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %number.i.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, i32 noundef %76) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %77 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %devid, align 4
  %add.ptr.i.i.i16 = getelementptr i8, ptr %78, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i16, i32 -16841984) #12, !srcloc !441
  %79 = ptrtoint ptr %card_reset.i26 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %card_reset.i26, align 4
  %inc.i17 = add i32 %80, 1
  store i32 %inc.i17, ptr %card_reset.i26, align 4
  br label %lanai_int_1.exit

if.end91.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ack.4.i, i32 %reason.addr.0.i)
  %cmp92.not.i = icmp eq i32 %ack.4.i, %reason.addr.0.i
  br i1 %cmp92.not.i, label %if.end91.i.done.i_crit_edge, label %do.end102.i, !prof !446

if.end91.i.done.i_crit_edge:                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

do.end102.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #14
  %neg.i = xor i32 %ack.4.i, -1
  %and104.i = and i32 %reason.addr.0.i, %neg.i
  %call105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %and104.i) #16
  br label %done.i

done.i:                                           ; preds = %do.end102.i, %if.end91.i.done.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reason.addr.0.i)
  %cmp107.not.i = icmp eq i32 %reason.addr.0.i, 0
  br i1 %cmp107.not.i, label %done.i.lanai_int_1.exit_crit_edge, label %done.i.if.then108.i_crit_edge

done.i.if.then108.i_crit_edge:                    ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then108.i

done.i.lanai_int_1.exit_crit_edge:                ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lanai_int_1.exit

if.then108.i:                                     ; preds = %done.i.if.then108.i_crit_edge, %if.end6.i.if.then108.i_crit_edge
  %ack.5.i30 = phi i32 [ %reason.addr.0.i, %done.i.if.then108.i_crit_edge ], [ %reason.0, %if.end6.i.if.then108.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %81 = tail call i32 @llvm.bswap.i32(i32 %ack.5.i30) #12
  %82 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %devid, align 4
  %add.ptr.i.i161.i = getelementptr i8, ptr %83, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i161.i, i32 %81) #12, !srcloc !441
  br label %lanai_int_1.exit

lanai_int_1.exit:                                 ; preds = %if.then108.i, %done.i.lanai_int_1.exit_crit_edge, %do.end86.i, %do.end69.i, %if.then29.i
  %84 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %devid, align 4
  %add.ptr.i.i.i14 = getelementptr i8, ptr %85, i32 12
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i14) #12, !srcloc !442
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %cmp6.not = icmp eq i32 %86, 0
  br i1 %cmp6.not, label %lanai_int_1.exit.cleanup_crit_edge, label %lanai_int_1.exit.do.body_crit_edge

lanai_int_1.exit.do.body_crit_edge:               ; preds = %lanai_int_1.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lanai_int_1.exit.cleanup_crit_edge:               ; preds = %lanai_int_1.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %lanai_int_1.exit.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %lanai_int_1.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lanai_timed_poll_start(ptr noundef %lanai) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @lanai_timed_poll, i32 noundef 0, ptr noundef nonnull @.str.222, ptr noundef nonnull @lanai_timed_poll_start.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1000
  %expires = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcistatus_check(ptr nocapture noundef %lanai, i32 noundef %clearonly) unnamed_addr #2 align 64 {
entry:
  %s = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %s) #12
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %s, align 2, !annotation !439
  %pci = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 9
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %call = call i32 @pci_read_config_word(ptr noundef %2, i32 noundef 6, ptr noundef nonnull %s) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %number = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %number, align 4
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %4, i32 noundef %call) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %s, align 2
  %7 = and i16 %6, -1792
  store i16 %7, ptr %s, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp4 = icmp eq i16 %7, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %call9 = call i32 @pci_write_config_word(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end7.if.end19_crit_edge, label %do.end15

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %number17 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %10 = ptrtoint ptr %number17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number17, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %11, i32 noundef %call9) #16
  br label %if.end19

if.end19:                                         ; preds = %do.end15, %if.end7.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clearonly)
  %tobool.not = icmp eq i32 %clearonly, 0
  br i1 %tobool.not, label %if.end21, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end19
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %tobool24.not = icmp sgt i16 %13, -1
  br i1 %tobool24.not, label %if.end21.if.end27_crit_edge, label %if.then25

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %number26 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %14 = ptrtoint ptr %number26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number26, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %15, ptr noundef nonnull @.str.144) #16
  %pcierr_parity_detect = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %pcierr_parity_detect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcierr_parity_detect, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %pcierr_parity_detect, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end21.if.end27_crit_edge
  %18 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %s, align 2
  %20 = and i16 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool30.not = icmp eq i16 %20, 0
  br i1 %tobool30.not, label %if.end27.if.end35_crit_edge, label %if.then31

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %number32 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %21 = ptrtoint ptr %number32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number32, align 4
  %call.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %22, ptr noundef nonnull @.str.145) #16
  %pcierr_serr_set = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %pcierr_serr_set to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcierr_serr_set, align 4
  %inc34 = add i32 %24, 1
  store i32 %inc34, ptr %pcierr_serr_set, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end27.if.end35_crit_edge
  %25 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %s, align 2
  %27 = and i16 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool38.not = icmp eq i16 %27, 0
  br i1 %tobool38.not, label %if.end35.if.end43_crit_edge, label %if.then39

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %number40 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %28 = ptrtoint ptr %number40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number40, align 4
  %call.i88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %29, ptr noundef nonnull @.str.146) #16
  %pcierr_master_abort = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1, i32 6
  %30 = ptrtoint ptr %pcierr_master_abort to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pcierr_master_abort, align 4
  %inc42 = add i32 %31, 1
  store i32 %inc42, ptr %pcierr_master_abort, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end35.if.end43_crit_edge
  %32 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %s, align 2
  %34 = and i16 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool46.not = icmp eq i16 %34, 0
  br i1 %tobool46.not, label %if.end43.if.end51_crit_edge, label %if.then47

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %number48 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %35 = ptrtoint ptr %number48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %number48, align 4
  %call.i89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %36, ptr noundef nonnull @.str.147) #16
  %pcierr_m_target_abort = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1, i32 7
  %37 = ptrtoint ptr %pcierr_m_target_abort to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pcierr_m_target_abort, align 4
  %inc50 = add i32 %38, 1
  store i32 %inc50, ptr %pcierr_m_target_abort, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end43.if.end51_crit_edge
  %39 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %s, align 2
  %41 = and i16 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool54.not = icmp eq i16 %41, 0
  br i1 %tobool54.not, label %if.end51.if.end59_crit_edge, label %if.then55

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %number56 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %42 = ptrtoint ptr %number56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %number56, align 4
  %call.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %43, ptr noundef nonnull @.str.148) #16
  %pcierr_s_target_abort = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1, i32 8
  %44 = ptrtoint ptr %pcierr_s_target_abort to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pcierr_s_target_abort, align 4
  %inc58 = add i32 %45, 1
  store i32 %inc58, ptr %pcierr_s_target_abort, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end51.if.end59_crit_edge
  %46 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %s, align 2
  %48 = and i16 %47, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool62.not = icmp eq i16 %48, 0
  br i1 %tobool62.not, label %if.end59.cleanup_crit_edge, label %if.then63

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %number64 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %49 = ptrtoint ptr %number64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %number64, align 4
  %call.i91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %50, ptr noundef nonnull @.str.149) #16
  %pcierr_master_parity = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1, i32 9
  %51 = ptrtoint ptr %pcierr_master_parity to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pcierr_master_parity, align 4
  %inc66 = add i32 %52, 1
  store i32 %inc66, ptr %pcierr_master_parity, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end59.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %s) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @run_service(ptr noundef %lanai) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !442
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %service = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 2
  %4 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %service, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 %3
  %ptr = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr, align 4
  %cmp.not48 = icmp eq ptr %7, %add.ptr
  br i1 %cmp.not48, label %if.end19.critedge, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %vccs.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 3
  %transmit_ready.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 11
  %number23.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 21
  %service_notx26.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1, i32 10
  %service_rxnotaal5.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1, i32 12
  %stats114.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1
  %card_reset.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1, i32 14
  %service_norx48.i = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 1, i32 11
  %end9 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %8 = phi ptr [ %7, %while.body.lr.ph ], [ %171, %if.end.while.body_crit_edge ]
  %ntx.049 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end.while.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr, ptr %ptr, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %8, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  %shr.i = lshr i32 %12, 16
  %and.i = and i32 %shr.i, 1023
  tail call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #12
  %13 = ptrtoint ptr %vccs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vccs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %and.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %16, null
  br i1 %cmp.i, label %if.then.i, label %if.end7.i, !prof !447

if.then.i:                                        ; preds = %while.body
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  %17 = ptrtoint ptr %number23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %number23.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, i32 noundef %18, i32 noundef %12, i32 noundef %and.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool3.not.i = icmp sgt i32 %12, -1
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %service_notx26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %service_notx26.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %service_notx26.i, align 4
  br label %handle_service.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %service_norx48.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %service_norx48.i, align 4
  %inc6.i = add i32 %22, 1
  store i32 %inc6.i, ptr %service_norx48.i, align 4
  br label %handle_service.exit

if.end7.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool9.not.i = icmp sgt i32 %12, -1
  br i1 %tobool9.not.i, label %if.end31.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  %atmvcc.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %atmvcc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %atmvcc.i, align 4
  %cmp11.i = icmp eq ptr %24, null
  br i1 %cmp11.i, label %if.then18.i, label %if.end28.i, !prof !447

if.then18.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  %25 = ptrtoint ptr %number23.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %number23.i, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef %26, i32 noundef %12, i32 noundef %and.i) #16
  %27 = ptrtoint ptr %service_notx26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %service_notx26.i, align 4
  %inc27.i = add i32 %28, 1
  store i32 %inc27.i, ptr %service_notx26.i, align 4
  br label %handle_service.exit

if.end28.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %rem.i.i = and i32 %shr.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %and.i, 5
  %add.ptr.i.i34 = getelementptr i32, ptr %transmit_ready.i, i32 %div2.i.i
  %29 = ptrtoint ptr %add.ptr.i.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i34, align 4
  %or.i.i = or i32 %30, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i34, align 4
  %and29.i = and i32 %12, 8191
  %endptr.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %endptr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and29.i, ptr %endptr.i, align 4
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  br label %handle_service.exit

if.end31.i:                                       ; preds = %if.end7.i
  %rx.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4
  %atmvcc32.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %atmvcc32.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %atmvcc32.i, align 4
  %cmp33.i = icmp eq ptr %33, null
  br i1 %cmp33.i, label %if.then40.i, label %if.end50.i, !prof !447

if.then40.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  %34 = ptrtoint ptr %number23.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %number23.i, align 4
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %35, i32 noundef %12, i32 noundef %and.i) #16
  %36 = ptrtoint ptr %service_norx48.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %service_norx48.i, align 4
  %inc49.i = add i32 %37, 1
  store i32 %inc49.i, ptr %service_norx48.i, align 4
  br label %handle_service.exit

if.end50.i:                                       ; preds = %if.end31.i
  %aal.i = getelementptr inbounds %struct.atm_vcc, ptr %33, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %aal.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %aal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %39)
  %cmp53.not.i = icmp eq i8 %39, 5
  br i1 %cmp53.not.i, label %if.end73.i, label %if.then61.i, !prof !446

if.then61.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  %40 = ptrtoint ptr %number23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %number23.i, align 4
  %call67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, i32 noundef %41, i32 noundef %12, i32 noundef %and.i) #16
  %42 = ptrtoint ptr %service_rxnotaal5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %service_rxnotaal5.i, align 4
  %inc69.i = add i32 %43, 1
  store i32 %inc69.i, ptr %service_rxnotaal5.i, align 4
  %44 = ptrtoint ptr %atmvcc32.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %atmvcc32.i, align 4
  %stats72.i = getelementptr inbounds %struct.atm_vcc, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %stats72.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %stats72.i, align 8
  %rx_err.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %47, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_err.i, i32 1, i32 3, i32 1) #12
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err.i, ptr %rx_err.i, i32 1, ptr elementtype(i32) %rx_err.i) #12, !srcloc !454
  br label %handle_service.exit

if.end73.i:                                       ; preds = %if.end50.i
  %and74.i = and i32 %12, 1677721600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.then84.i, label %if.end86.i, !prof !446

if.then84.i:                                      ; preds = %if.end73.i
  %and85.i = and i32 %12, 8191
  %49 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx.i, align 4
  %mul.i.i = shl nuw nsw i32 %and85.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %50, i32 %mul.i.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  %ptr.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4, i32 0, i32 2
  %52 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptr.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  %sub.i.i = sub i32 %51, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %entry.land.lhs.true_crit_edge.i.i

entry.land.lhs.true_crit_edge.i.i:                ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  %.pre.i.i = ptrtoint ptr %50 to i32
  br label %land.lhs.true.i.i

do.body.i.i:                                      ; preds = %if.then84.i
  %end.i.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4, i32 0, i32 1
  %55 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = ptrtoint ptr %50 to i32
  %sub.i.i.i = sub i32 %57, %58
  %add.i.i = add i32 %sub.i.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp5.i.i = icmp sgt i32 %add.i.i, -1
  br i1 %cmp5.i.i, label %do.body.i.i.land.lhs.true.i.i_crit_edge, label %do.body.i.i.do.end.i.i_crit_edge, !prof !446

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.body.i.i.land.lhs.true.i.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i.i.land.lhs.true.i.i_crit_edge, %entry.land.lhs.true_crit_edge.i.i
  %.pre-phi132.i.i = phi i32 [ %.pre.i.i, %entry.land.lhs.true_crit_edge.i.i ], [ %58, %do.body.i.i.land.lhs.true.i.i_crit_edge ]
  %n.0130.i.i = phi i32 [ %sub.i.i, %entry.land.lhs.true_crit_edge.i.i ], [ %add.i.i, %do.body.i.i.land.lhs.true.i.i_crit_edge ]
  %end.i119.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4, i32 0, i32 1
  %59 = ptrtoint ptr %end.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i119.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  %sub.i120.i.i = sub i32 %61, %.pre-phi132.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0130.i.i, i32 %sub.i120.i.i)
  %cmp9.i.i = icmp uge i32 %n.0130.i.i, %sub.i120.i.i
  %and.i.i = and i32 %n.0130.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %or.cond.i.i = or i1 %tobool.i.i, %cmp9.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i.do.end22.i.i_crit_edge, !prof !455

land.lhs.true.i.i.do.end22.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %.pre-phi.i.i = phi i32 [ %58, %do.body.i.i.do.end.i.i_crit_edge ], [ %.pre-phi132.i.i, %land.lhs.true.i.i.do.end.i.i_crit_edge ]
  %n.0129.i.i = phi i32 [ %add.i.i, %do.body.i.i.do.end.i.i_crit_edge ], [ %n.0130.i.i, %land.lhs.true.i.i.do.end.i.i_crit_edge ]
  %end.i121.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4, i32 0, i32 1
  %62 = ptrtoint ptr %end.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i121.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  %sub.i122.i.i = sub i32 %64, %.pre-phi.i.i
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, i32 noundef %n.0129.i.i, i32 noundef %sub.i122.i.i) #16
  br label %do.end22.i.i

do.end22.i.i:                                     ; preds = %do.end.i.i, %land.lhs.true.i.i.do.end22.i.i_crit_edge
  %n.0131.i.i = phi i32 [ %n.0130.i.i, %land.lhs.true.i.i.do.end22.i.i_crit_edge ], [ %n.0129.i.i, %do.end.i.i ]
  %arrayidx23.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 -2
  %65 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx.i, align 4
  %cmp27.i.i = icmp ult ptr %arrayidx23.i.i, %66
  br i1 %cmp27.i.i, label %if.then28.i.i, label %do.end22.i.i.if.end33.i.i_crit_edge

do.end22.i.i.if.end33.i.i_crit_edge:              ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i

if.then28.i.i:                                    ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %end31.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4, i32 0, i32 1
  %67 = ptrtoint ptr %end31.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end31.i.i, align 4
  %arrayidx32.i.i = getelementptr i32, ptr %68, i32 -2
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then28.i.i, %do.end22.i.i.if.end33.i.i_crit_edge
  %x.0.i.i = phi ptr [ %arrayidx32.i.i, %if.then28.i.i ], [ %arrayidx23.i.i, %do.end22.i.i.if.end33.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !456
  %69 = ptrtoint ptr %x.0.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %x.0.i.i, align 4
  %and35.i.i = and i32 %70, 65535
  %add1.i.i.i = add nuw nsw i32 %and35.i.i, 55
  %71 = urem i32 %add1.i.i.i, 48
  %mul.i.i.i = sub nuw nsw i32 %add1.i.i.i, %71
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0131.i.i, i32 %mul.i.i.i)
  %cmp37.not.i.i = icmp eq i32 %n.0131.i.i, %mul.i.i.i
  %72 = ptrtoint ptr %atmvcc32.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %atmvcc32.i, align 4
  br i1 %cmp37.not.i.i, label %if.end52.i.i, label %do.end47.i.i, !prof !446

do.end47.i.i:                                     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.atm_vcc, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i.i, align 4
  %number.i.i = getelementptr inbounds %struct.atm_dev, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %number.i.i, align 4
  %vci.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 3
  %78 = ptrtoint ptr %vci.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vci.i.i, align 4
  %call50.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, i32 noundef %77, i32 noundef %79, i32 noundef %and35.i.i, i32 noundef %n.0131.i.i) #16
  %x51.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %x51.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %x51.i.i, align 4
  %inc.i.i = add i32 %81, 1
  store i32 %inc.i.i, ptr %x51.i.i, align 4
  br label %out.i.i

if.end52.i.i:                                     ; preds = %if.end33.i.i
  %call55.i.i = tail call ptr @atm_alloc_charge(ptr noundef %73, i32 noundef %and35.i.i, i32 noundef 2592) #12
  %cmp56.i.i = icmp eq ptr %call55.i.i, null
  br i1 %cmp56.i.i, label %if.then63.i.i, label %if.end66.i.i, !prof !447

if.then63.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %stats64.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 1
  %82 = ptrtoint ptr %stats64.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %stats64.i.i, align 4
  %inc65.i.i = add i32 %83, 1
  store i32 %inc65.i.i, ptr %stats64.i.i, align 4
  br label %out.i.i

if.end66.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call67.i.i = tail call ptr @skb_put(ptr noundef nonnull %call55.i.i, i32 noundef %and35.i.i) #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call55.i.i, i32 0, i32 19
  %84 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i, align 4
  %86 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ptr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %87, i32 %and35.i.i
  %end.i123.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4, i32 0, i32 1
  %88 = ptrtoint ptr %end.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i123.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %89 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %90 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub.i.i.i, i32 0) #12
  %sub.i124.i.i = sub nsw i32 %and35.i.i, %90
  %91 = call ptr @memcpy(ptr %85, ptr %87, i32 %sub.i124.i.i)
  %add.ptr6.i.i.i = getelementptr i8, ptr %85, i32 %and35.i.i
  %idx.neg.i.i.i = sub nsw i32 0, %90
  %add.ptr7.i.i.i = getelementptr i8, ptr %add.ptr6.i.i.i, i32 %idx.neg.i.i.i
  %92 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rx.i, align 4
  %94 = call ptr @memcpy(ptr %add.ptr7.i.i.i, ptr %93, i32 %90)
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !457
  %95 = ptrtoint ptr %atmvcc32.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %atmvcc32.i, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call55.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %cb.i.i, align 8
  %call.i.i125.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #12
  %98 = getelementptr inbounds %struct.sk_buff, ptr %call55.i.i, i32 0, i32 2
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %call.i.i125.i.i, ptr %98, align 8
  %100 = ptrtoint ptr %atmvcc32.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %atmvcc32.i, align 4
  %push.i.i = getelementptr inbounds %struct.atm_vcc, ptr %101, i32 0, i32 10
  %102 = ptrtoint ptr %push.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %push.i.i, align 8
  tail call void %103(ptr noundef %101, ptr noundef nonnull %call55.i.i) #12
  %104 = ptrtoint ptr %atmvcc32.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %atmvcc32.i, align 4
  %stats76.i.i = getelementptr inbounds %struct.atm_vcc, ptr %105, i32 0, i32 16
  %106 = ptrtoint ptr %stats76.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %stats76.i.i, align 8
  %rx77.i.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %107, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx77.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx77.i.i, i32 1, i32 3, i32 1) #12
  %108 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx77.i.i, ptr %rx77.i.i, i32 1, ptr elementtype(i32) %rx77.i.i) #12, !srcloc !454
  br label %out.i.i

out.i.i:                                          ; preds = %if.end66.i.i, %if.then63.i.i, %do.end47.i.i
  %109 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %arrayidx.i.i, ptr %ptr.i.i, align 4
  %110 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %16, align 4
  %cmp.not.i.i.i = icmp eq ptr %111, null
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %out.i.i.vcc_rx_aal5.exit.i_crit_edge, !prof !447

out.i.i.vcc_rx_aal5.exit.i_crit_edge:             ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vcc_rx_aal5.exit.i

do.end.i.i.i:                                     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i216.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %vcc_rx_aal5.exit.i

vcc_rx_aal5.exit.i:                               ; preds = %do.end.i.i.i, %out.i.i.vcc_rx_aal5.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %112 = tail call i32 @llvm.bswap.i32(i32 %and85.i) #12
  %113 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %16, align 4
  %add.ptr.i126.i.i = getelementptr i8, ptr %114, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.i.i, i32 %112) #12, !srcloc !441
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  br label %handle_service.exit

if.end86.i:                                       ; preds = %if.end73.i
  %and87.i = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %if.end116.i, label %if.then89.i

if.then89.i:                                      ; preds = %if.end86.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  %call94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %and.i) #16
  %115 = ptrtoint ptr %atmvcc32.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %atmvcc32.i, align 4
  %stats97.i = getelementptr inbounds %struct.atm_vcc, ptr %116, i32 0, i32 16
  %117 = ptrtoint ptr %stats97.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %stats97.i, align 8
  %rx_err98.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %118, i32 0, i32 3
  %call.i.i213.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err98.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_err98.i, i32 1, i32 3, i32 1) #12
  %119 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err98.i, ptr %rx_err98.i, i32 1, ptr elementtype(i32) %rx_err98.i) #12, !srcloc !454
  %service_trash.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 1, i32 1, i32 0, i32 1
  %120 = ptrtoint ptr %service_trash.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %service_trash.i, align 4
  %inc100.i = add i32 %121, 1
  store i32 %inc100.i, ptr %service_trash.i, align 4
  %and101.i = shl i32 %12, 4
  %mul.i = and i32 %and101.i, 131056
  %ptr.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4, i32 0, i32 2
  %122 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ptr.i, align 4
  %124 = ptrtoint ptr %123 to i32
  %125 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rx.i, align 4
  %127 = ptrtoint ptr %126 to i32
  %sub.neg.i = add nuw nsw i32 %mul.i, 47
  %sub105.i = sub i32 %sub.neg.i, %124
  %add.i = add i32 %sub105.i, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp106.i = icmp slt i32 %add.i, 0
  br i1 %cmp106.i, label %if.then108.i, label %if.then89.i.if.end113.i_crit_edge

if.then89.i.if.end113.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.i

if.then108.i:                                     ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4, i32 0, i32 1
  %128 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %end.i.i, align 4
  %130 = ptrtoint ptr %129 to i32
  %add112.i = add i32 %sub105.i, %130
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then108.i, %if.then89.i.if.end113.i_crit_edge
  %bytes.0.i = phi i32 [ %add112.i, %if.then108.i ], [ %add.i, %if.then89.i.if.end113.i_crit_edge ]
  %div.i = sdiv i32 %bytes.0.i, 48
  %131 = ptrtoint ptr %stats114.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %stats114.i, align 4
  %add115.i = add i32 %132, %div.i
  store i32 %add115.i, ptr %stats114.i, align 4
  br label %handle_service.exit

if.end116.i:                                      ; preds = %if.end86.i
  %and117.i = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %do.end136.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  %133 = ptrtoint ptr %atmvcc32.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %atmvcc32.i, align 4
  %stats122.i = getelementptr inbounds %struct.atm_vcc, ptr %134, i32 0, i32 16
  %135 = ptrtoint ptr %stats122.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %stats122.i, align 8
  %rx_err123.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %136, i32 0, i32 3
  %call.i.i214.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err123.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_err123.i, i32 1, i32 3, i32 1) #12
  %137 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err123.i, ptr %rx_err123.i, i32 1, ptr elementtype(i32) %rx_err123.i) #12, !srcloc !454
  %service_stream.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 1, i32 1, i32 0, i32 2
  %138 = ptrtoint ptr %service_stream.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %service_stream.i, align 4
  %inc126.i = add i32 %139, 1
  store i32 %inc126.i, ptr %service_stream.i, align 4
  %140 = ptrtoint ptr %number23.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %number23.i, align 4
  %call132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, i32 noundef %141, i32 noundef %and.i) #16
  %142 = ptrtoint ptr %number23.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %number23.i, align 4
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, i32 noundef %143) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %144 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i.i42 = getelementptr i8, ptr %145, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i42, i32 -16841984) #12, !srcloc !441
  %146 = ptrtoint ptr %card_reset.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %card_reset.i, align 4
  %inc.i43 = add i32 %147, 1
  store i32 %inc.i43, ptr %card_reset.i, align 4
  br label %handle_service.exit

do.end136.i:                                      ; preds = %if.end116.i
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, i32 noundef %and.i) #16
  %148 = ptrtoint ptr %atmvcc32.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %atmvcc32.i, align 4
  %stats141.i = getelementptr inbounds %struct.atm_vcc, ptr %149, i32 0, i32 16
  %150 = ptrtoint ptr %stats141.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %stats141.i, align 8
  %rx_err142.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %151, i32 0, i32 3
  %call.i.i215.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err142.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %rx_err142.i, i32 1, i32 3, i32 1) #12
  %152 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err142.i, ptr %rx_err142.i, i32 1, ptr elementtype(i32) %rx_err142.i) #12, !srcloc !454
  %service_rxcrc.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 1, i32 1, i32 0, i32 3
  %153 = ptrtoint ptr %service_rxcrc.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %service_rxcrc.i, align 4
  %inc145.i = add i32 %154, 1
  store i32 %inc145.i, ptr %service_rxcrc.i, align 4
  %155 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rx.i, align 4
  %and149.i = and i32 %12, 8191
  %mul150.i = shl nuw nsw i32 %and149.i, 2
  %arrayidx151.i = getelementptr i32, ptr %156, i32 %mul150.i
  %ptr154.i = getelementptr inbounds %struct.lanai_vcc, ptr %16, i32 0, i32 4, i32 0, i32 2
  %157 = ptrtoint ptr %ptr154.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %arrayidx151.i, ptr %ptr154.i, align 4
  %158 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %16, align 4
  %cmp.not.i = icmp eq ptr %159, null
  br i1 %cmp.not.i, label %do.end.i, label %do.end136.i.cardvcc_write.exit_crit_edge, !prof !447

do.end136.i.cardvcc_write.exit_crit_edge:         ; preds = %do.end136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_write.exit

do.end.i:                                         ; preds = %do.end136.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %cardvcc_write.exit

cardvcc_write.exit:                               ; preds = %do.end.i, %do.end136.i.cardvcc_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %160 = tail call i32 @llvm.bswap.i32(i32 %and149.i) #12
  %161 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %16, align 4
  %add.ptr.i = getelementptr i8, ptr %162, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %160) #12, !srcloc !441
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  br label %handle_service.exit

handle_service.exit:                              ; preds = %cardvcc_write.exit, %if.then119.i, %if.end113.i, %vcc_rx_aal5.exit.i, %if.then61.i, %if.then40.i, %if.end28.i, %if.then18.i, %if.else.i, %if.then4.i
  %retval.0.i = phi i32 [ 0, %if.then18.i ], [ 1, %if.end28.i ], [ 0, %if.then40.i ], [ 0, %if.then61.i ], [ 0, %vcc_rx_aal5.exit.i ], [ 0, %if.end113.i ], [ 0, %if.then119.i ], [ 0, %cardvcc_write.exit ], [ 0, %if.else.i ], [ 0, %if.then4.i ]
  %add = add i32 %retval.0.i, %ntx.049
  %163 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ptr, align 4
  %165 = ptrtoint ptr %end9 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %end9, align 4
  %cmp10.not = icmp ult ptr %164, %166
  br i1 %cmp10.not, label %handle_service.exit.if.end_crit_edge, label %if.then

handle_service.exit.if.end_crit_edge:             ; preds = %handle_service.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %handle_service.exit
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %service, align 4
  %169 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %168, ptr %ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %handle_service.exit.if.end_crit_edge
  %170 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ptr, align 4
  %cmp.not = icmp eq ptr %171, %add.ptr
  br i1 %cmp.not, label %while.end.loopexit, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end.loopexit:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %172 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %173, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35, i32 %2) #12, !srcloc !441
  br i1 %phi.cmp, label %while.end.loopexit.if.end19_crit_edge, label %if.then16

while.end.loopexit.if.end19_crit_edge:            ; preds = %while.end.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %while.end.loopexit
  tail call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #12
  %transmit_ready = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 11
  %call.i36 = tail call i32 @_find_next_bit_be(ptr noundef %transmit_ready, i32 noundef 1024, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call.i36)
  %cmp5.i = icmp slt i32 %call.i36, 1024
  br i1 %cmp5.i, label %for.body.i.preheader, label %if.then16.vci_bitfield_iterate.exit_crit_edge

if.then16.vci_bitfield_iterate.exit_crit_edge:    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %vci_bitfield_iterate.exit

for.body.i.preheader:                             ; preds = %if.then16
  %vccs.i44 = getelementptr inbounds %struct.lanai_dev, ptr %lanai, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %iter_transmit.exit.for.body.i_crit_edge, %for.body.i.preheader
  %vci.06.i = phi i32 [ %call1.i, %iter_transmit.exit.for.body.i_crit_edge ], [ %call.i36, %for.body.i.preheader ]
  %174 = ptrtoint ptr %vccs.i44 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %vccs.i44, align 4
  %arrayidx.i45 = getelementptr ptr, ptr %175, i32 %vci.06.i
  %176 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx.i45, align 4
  %backlog.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %177, i32 0, i32 5, i32 3
  %178 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %backlog.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %179, %backlog.i.i
  br i1 %cmp.i.i.not.i, label %for.body.i.iter_transmit.exit_crit_edge, label %if.then.i47

for.body.i.iter_transmit.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iter_transmit.exit

if.then.i47:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %unqueue.i = getelementptr inbounds %struct.lanai_vcc, ptr %177, i32 0, i32 5, i32 4
  %180 = ptrtoint ptr %unqueue.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %unqueue.i, align 4
  %endptr.i46 = getelementptr inbounds %struct.lanai_vcc, ptr %177, i32 0, i32 5, i32 2
  %182 = ptrtoint ptr %endptr.i46 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %endptr.i46, align 4
  tail call void %181(ptr noundef %lanai, ptr noundef %177, i32 noundef %183) #12
  br label %iter_transmit.exit

iter_transmit.exit:                               ; preds = %if.then.i47, %for.body.i.iter_transmit.exit_crit_edge
  %add.i37 = add nsw i32 %vci.06.i, 1
  %call1.i = tail call i32 @_find_next_bit_be(ptr noundef %transmit_ready, i32 noundef 1024, i32 noundef %add.i37) #12
  %cmp.i38 = icmp slt i32 %call1.i, 1024
  br i1 %cmp.i38, label %iter_transmit.exit.for.body.i_crit_edge, label %iter_transmit.exit.vci_bitfield_iterate.exit_crit_edge

iter_transmit.exit.vci_bitfield_iterate.exit_crit_edge: ; preds = %iter_transmit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vci_bitfield_iterate.exit

iter_transmit.exit.for.body.i_crit_edge:          ; preds = %iter_transmit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

vci_bitfield_iterate.exit:                        ; preds = %iter_transmit.exit.vci_bitfield_iterate.exit_crit_edge, %if.then16.vci_bitfield_iterate.exit_crit_edge
  %184 = call ptr @memset(ptr %transmit_ready, i32 0, i32 128)
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  br label %if.end19

if.end19.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %185 = ptrtoint ptr %lanai to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %lanai, align 4
  %add.ptr.i.i35.c = getelementptr i8, ptr %186, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.c, i32 %2) #12, !srcloc !441
  br label %if.end19

if.end19:                                         ; preds = %if.end19.critedge, %vci_bitfield_iterate.exit, %while.end.loopexit.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_alloc_charge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lanai_timed_poll(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -488
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !458
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %servicelock = getelementptr i8, ptr %t, i32 124
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %servicelock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %do.end11.if.end16_crit_edge, label %if.then14

do.end11.if.end16_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then14:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @run_service(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %servicelock) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.end11.if.end16_crit_edge
  tail call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #12
  %backlog_vccs = getelementptr i8, ptr %t, i32 -256
  %call.i57 = tail call i32 @_find_next_bit_be(ptr noundef %backlog_vccs, i32 noundef 1024, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call.i57)
  %cmp5.i = icmp slt i32 %call.i57, 1024
  br i1 %cmp5.i, label %for.body.i.preheader, label %if.end16.vci_bitfield_iterate.exit_crit_edge

if.end16.vci_bitfield_iterate.exit_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %vci_bitfield_iterate.exit

for.body.i.preheader:                             ; preds = %if.end16
  %vccs.i = getelementptr i8, ptr %t, i32 -408
  br label %for.body.i

for.body.i:                                       ; preds = %iter_dequeue.exit.for.body.i_crit_edge, %for.body.i.preheader
  %vci.06.i = phi i32 [ %call1.i, %iter_dequeue.exit.for.body.i_crit_edge ], [ %call.i57, %for.body.i.preheader ]
  %1 = ptrtoint ptr %vccs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vccs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %2, i32 %vci.06.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i61 = icmp eq ptr %4, null
  br i1 %cmp.i61, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %atmvcc.i = getelementptr inbounds %struct.lanai_vcc, ptr %4, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %atmvcc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %atmvcc.i, align 4
  %cmp1.i = icmp eq ptr %6, null
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %backlog.i.i = getelementptr inbounds %struct.lanai_vcc, ptr %4, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %backlog.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %8, %backlog.i.i
  br i1 %cmp.i.i.not.i, label %lor.lhs.false2.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %rem.i.i = and i32 %vci.06.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %vci.06.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %backlog_vccs, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i62 = and i32 %10, %neg.i.i
  store i32 %and.i.i62, ptr %add.ptr.i.i, align 4
  br label %iter_dequeue.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %cmp.not.i.i = icmp eq ptr %12, null
  br i1 %cmp.not.i.i, label %do.end.i.i, label %if.end.i.cardvcc_read.exit.i_crit_edge, !prof !447

if.end.i.cardvcc_read.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cardvcc_read.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  br label %cardvcc_read.exit.i

cardvcc_read.exit.i:                              ; preds = %do.end.i.i, %if.end.i.cardvcc_read.exit.i_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %14, i32 48
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #12, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !452
  %16 = and i32 %15, -14745600
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  %unqueue.i = getelementptr inbounds %struct.lanai_vcc, ptr %4, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %unqueue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unqueue.i, align 4
  tail call void %19(ptr noundef %add.ptr, ptr noundef nonnull %4, i32 noundef %17) #12
  br label %iter_dequeue.exit

iter_dequeue.exit:                                ; preds = %cardvcc_read.exit.i, %if.then.i
  %add.i = add nsw i32 %vci.06.i, 1
  %call1.i = tail call i32 @_find_next_bit_be(ptr noundef %backlog_vccs, i32 noundef 1024, i32 noundef %add.i) #12
  %cmp.i = icmp slt i32 %call1.i, 1024
  br i1 %cmp.i, label %iter_dequeue.exit.for.body.i_crit_edge, label %iter_dequeue.exit.vci_bitfield_iterate.exit_crit_edge

iter_dequeue.exit.vci_bitfield_iterate.exit_crit_edge: ; preds = %iter_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vci_bitfield_iterate.exit

iter_dequeue.exit.for.body.i_crit_edge:           ; preds = %iter_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

vci_bitfield_iterate.exit:                        ; preds = %iter_dequeue.exit.vci_bitfield_iterate.exit_crit_edge, %if.end16.vci_bitfield_iterate.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #12
  br i1 %tobool.not, label %if.then26, label %vci_bitfield_iterate.exit.do.body28_crit_edge

vci_bitfield_iterate.exit.do.body28_crit_edge:    ; preds = %vci_bitfield_iterate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

if.then26:                                        ; preds = %vci_bitfield_iterate.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %vci_bitfield_iterate.exit.do.body28_crit_edge
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !459
  %and.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !447

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !460
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 52
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !442
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  %and.i59 = and i32 %24, 255
  %stats.i = getelementptr i8, ptr %t, i32 -484
  %atm_ovfl.i = getelementptr i8, ptr %t, i32 -472
  %25 = ptrtoint ptr %atm_ovfl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %atm_ovfl.i, align 4
  %add.i60 = add i32 %26, %and.i59
  store i32 %add.i60, ptr %atm_ovfl.i, align 4
  %shr1.i = lshr i32 %24, 8
  %and2.i = and i32 %shr1.i, 255
  %hec_err.i = getelementptr i8, ptr %t, i32 -476
  %27 = ptrtoint ptr %hec_err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hec_err.i, align 4
  %add4.i = add i32 %28, %and2.i
  store i32 %add4.i, ptr %hec_err.i, align 4
  %shr5.i = lshr i32 %24, 16
  %and6.i = and i32 %shr5.i, 255
  %vci_trash.i = getelementptr i8, ptr %t, i32 -480
  %29 = ptrtoint ptr %vci_trash.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vci_trash.i, align 4
  %add8.i = add i32 %30, %and6.i
  store i32 %add8.i, ptr %vci_trash.i, align 4
  %shr9.i = lshr i32 %24, 24
  %31 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stats.i, align 4
  %add12.i = add i32 %32, %shr9.i
  store i32 %add12.i, ptr %stats.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %33, 1000
  %call48 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 232)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 232)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !236, !237, !239, !240, !242, !243, !245, !246, !247, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !272, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !289, !291, !293, !295, !297, !299, !300, !301, !302, !304, !305, !306, !307, !309, !310, !311, !313, !314, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !394, !396, !397, !398, !400, !401, !402, !403, !405, !407, !409, !411, !413, !415, !417, !419, !420, !421, !422, !424, !425, !426, !427, !429}
!llvm.module.flags = !{!430, !431, !432, !433, !434, !435, !436, !437}
!llvm.ident = !{!438}

!0 = !{ptr @__initcall__kmod_lanai__459_2599_lanai_driver_init6, !1, !"__initcall__kmod_lanai__459_2599_lanai_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/atm/lanai.c", i32 2599, i32 1}
!2 = !{ptr @__exitcall_lanai_driver_exit, !1, !"__exitcall_lanai_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author460, !4, !"__UNIQUE_ID_author460", i1 false, i1 false}
!4 = !{!"../drivers/atm/lanai.c", i32 2601, i32 1}
!5 = !{ptr @__UNIQUE_ID_description461, !6, !"__UNIQUE_ID_description461", i1 false, i1 false}
!6 = !{!"../drivers/atm/lanai.c", i32 2602, i32 1}
!7 = !{ptr @__UNIQUE_ID_file462, !8, !"__UNIQUE_ID_file462", i1 false, i1 false}
!8 = !{!"../drivers/atm/lanai.c", i32 2603, i32 1}
!9 = !{ptr @__UNIQUE_ID_license463, !8, !"__UNIQUE_ID_license463", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lanai_driver, !12, !"lanai_driver", i1 false, i1 false}
!12 = !{!"../drivers/atm/lanai.c", i32 2593, i32 26}
!13 = !{ptr @lanai_pci_tbl, !14, !"lanai_pci_tbl", i1 false, i1 false}
!14 = !{!"../drivers/atm/lanai.c", i32 2586, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/atm/lanai.c", i32 2560, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lanai_init_one._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @lanai_init_one._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/atm/lanai.c", i32 2567, i32 3}
!23 = !{ptr @lanai_init_one._entry.4, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @lanai_init_one._entry_ptr.6, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/atm/lanai.c", i32 2579, i32 3}
!27 = !{ptr @lanai_init_one._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @lanai_init_one._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @ops, !30, !"ops", i1 false, i1 false}
!30 = !{!"../drivers/atm/lanai.c", i32 2538, i32 32}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/atm/lanai.c", i32 2251, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @lanai_dev_close._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @lanai_dev_close._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/atm/lanai.c", i32 514, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @reset_board._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @reset_board._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/atm/lanai.c", i32 2327, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @lanai_open._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @lanai_open._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/atm/lanai.c", i32 2338, i32 3}
!48 = !{ptr @lanai_open._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @lanai_open._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/atm/lanai.c", i32 2358, i32 3}
!52 = !{ptr @lanai_open._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @lanai_open._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/atm/lanai.c", i32 2365, i32 4}
!56 = !{ptr @lanai_open._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @lanai_open._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @skb_queue_head_init.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/atm/lanai.c", i32 819, i32 2}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @aal0_buffer_allocate._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @aal0_buffer_allocate._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/atm/lanai.c", i32 349, i32 4}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @lanai_buf_allocate._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @lanai_buf_allocate._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/atm/lanai.c", i32 1502, i32 45}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/atm/lanai.c", i32 1490, i32 3}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @lanai_get_sized_buffer._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @lanai_get_sized_buffer._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/atm/lanai.c", i32 1493, i32 2}
!80 = !{ptr @lanai_get_sized_buffer._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lanai_get_sized_buffer._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/atm/lanai.c", i32 1520, i32 18}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/atm/lanai.c", i32 1348, i32 2}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @vcc_tx_unqueue_aal0._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @vcc_tx_unqueue_aal0._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/atm/lanai.c", i32 1303, i32 2}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @vcc_tx_unqueue_aal5._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @vcc_tx_unqueue_aal5._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/atm/lanai.c", i32 1281, i32 2}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @lanai_send_one_aal5._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @lanai_send_one_aal5._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/atm/lanai.c", i32 1286, i32 2}
!101 = !{ptr @lanai_send_one_aal5._entry.43, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @lanai_send_one_aal5._entry_ptr.45, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/atm/lanai.c", i32 1287, i32 2}
!105 = !{ptr @lanai_send_one_aal5._entry.46, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @lanai_send_one_aal5._entry_ptr.48, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/atm/lanai.c", i32 1162, i32 2}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @vcc_tx_add_aal5_descriptor._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @vcc_tx_add_aal5_descriptor._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/atm/lanai.c", i32 1167, i32 2}
!114 = !{ptr @vcc_tx_add_aal5_descriptor._entry.51, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @vcc_tx_add_aal5_descriptor._entry_ptr.53, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/atm/lanai.c", i32 1172, i32 2}
!118 = !{ptr @vcc_tx_add_aal5_descriptor._entry.54, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @vcc_tx_add_aal5_descriptor._entry_ptr.56, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/atm/lanai.c", i32 1188, i32 2}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @vcc_tx_add_aal5_trailer._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @vcc_tx_add_aal5_trailer._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/atm/lanai.c", i32 1237, i32 2}
!127 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @lanai_endtx._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @lanai_endtx._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/atm/lanai.c", i32 1257, i32 4}
!132 = !{ptr @lanai_endtx._entry.61, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @lanai_endtx._entry_ptr.63, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/atm/lanai.c", i32 1528, i32 2}
!136 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @host_vcc_bind._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @host_vcc_bind._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/atm/lanai.c", i32 660, i32 2}
!141 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @cardvcc_write._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @cardvcc_write._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/atm/lanai.c", i32 661, i32 2}
!146 = !{ptr @cardvcc_write._entry.68, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @cardvcc_write._entry_ptr.70, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/atm/lanai.c", i32 2084, i32 2}
!150 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @pcr_to_cbricg._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @pcr_to_cbricg._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/atm/lanai.c", i32 827, i32 2}
!155 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @aal0_buffer_free._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @aal0_buffer_free._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/atm/lanai.c", i32 797, i32 4}
!160 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @lanai_shutdown_tx_vci._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @lanai_shutdown_tx_vci._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/atm/lanai.c", i32 800, i32 4}
!165 = !{ptr @lanai_shutdown_tx_vci._entry.77, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @lanai_shutdown_tx_vci._entry_ptr.79, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/atm/lanai.c", i32 650, i32 2}
!169 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @cardvcc_read._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @cardvcc_read._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/atm/lanai.c", i32 1546, i32 2}
!174 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @host_vcc_unbind._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @host_vcc_unbind._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/atm/lanai.c", i32 2401, i32 3}
!179 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @lanai_send._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @lanai_send._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/atm/lanai.c", i32 2405, i32 3}
!184 = !{ptr @lanai_send._entry.86, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @lanai_send._entry_ptr.88, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/atm/lanai.c", i32 2426, i32 2}
!188 = !{ptr @lanai_send._entry.89, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @lanai_send._entry_ptr.91, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/atm/lanai.c", i32 1335, i32 2}
!192 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @vcc_tx_aal5._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @vcc_tx_aal5._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/atm/lanai.c", i32 1355, i32 2}
!197 = !{ptr @.str.95, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @vcc_tx_aal0._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @vcc_tx_aal0._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/atm/lanai.c", i32 2448, i32 24}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/atm/lanai.c", i32 2450, i32 45}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/atm/lanai.c", i32 2450, i32 51}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/atm/lanai.c", i32 2454, i32 24}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/atm/lanai.c", i32 2457, i32 24}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/atm/lanai.c", i32 2460, i32 24}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/atm/lanai.c", i32 2466, i32 24}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/atm/lanai.c", i32 2471, i32 24}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/atm/lanai.c", i32 2477, i32 24}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/atm/lanai.c", i32 2483, i32 24}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/atm/lanai.c", i32 2487, i32 24}
!222 = !{ptr @.str.107, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/atm/lanai.c", i32 2492, i32 24}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/atm/lanai.c", i32 2506, i32 23}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/atm/lanai.c", i32 2509, i32 32}
!228 = !{ptr @.str.110, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/atm/lanai.c", i32 2512, i32 33}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/atm/lanai.c", i32 2522, i32 32}
!232 = !{ptr @.str.112, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/atm/lanai.c", i32 2112, i32 2}
!234 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @lanai_dev_open._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @lanai_dev_open._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @lanai_dev_open.__key, !238, !"__key", i1 false, i1 false}
!238 = !{!"../drivers/atm/lanai.c", i32 2124, i32 2}
!239 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @lanai_dev_open.__key.115, !241, !"__key", i1 false, i1 false}
!241 = !{!"../drivers/atm/lanai.c", i32 2125, i32 2}
!242 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.118, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/atm/lanai.c", i32 2138, i32 3}
!245 = !{ptr @lanai_dev_open._entry.117, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @lanai_dev_open._entry_ptr.119, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/atm/lanai.c", i32 2161, i32 34}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/atm/lanai.c", i32 2198, i32 3}
!251 = !{ptr @lanai_dev_open._entry.121, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @lanai_dev_open._entry_ptr.123, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.125, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/atm/lanai.c", i32 2216, i32 2}
!255 = !{ptr @lanai_dev_open._entry.124, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @lanai_dev_open._entry_ptr.126, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/atm/lanai.c", i32 2219, i32 2}
!259 = !{ptr @lanai_dev_open._entry.127, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @lanai_dev_open._entry_ptr.129, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/atm/lanai.c", i32 1936, i32 3}
!263 = !{ptr @.str.131, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @lanai_pci_start._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @lanai_pci_start._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/atm/lanai.c", i32 1942, i32 3}
!268 = !{ptr @lanai_pci_start._entry.132, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @lanai_pci_start._entry_ptr.134, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.135, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/atm/lanai.c", i32 1946, i32 34}
!272 = !{ptr @.str.137, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/atm/lanai.c", i32 1952, i32 3}
!274 = !{ptr @lanai_pci_start._entry.136, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @lanai_pci_start._entry_ptr.138, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.139, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/atm/lanai.c", i32 1101, i32 3}
!278 = !{ptr @.str.140, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @pcistatus_check._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @pcistatus_check._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.142, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/atm/lanai.c", i32 1112, i32 3}
!283 = !{ptr @pcistatus_check._entry.141, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @pcistatus_check._entry_ptr.143, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.144, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/atm/lanai.c", i32 1121, i32 2}
!287 = !{ptr @.str.145, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/atm/lanai.c", i32 1122, i32 2}
!289 = !{ptr @.str.146, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/atm/lanai.c", i32 1123, i32 2}
!291 = !{ptr @.str.147, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/atm/lanai.c", i32 1124, i32 2}
!293 = !{ptr @.str.148, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/atm/lanai.c", i32 1125, i32 2}
!295 = !{ptr @.str.149, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/atm/lanai.c", i32 1126, i32 2}
!297 = !{ptr @.str.150, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/atm/lanai.c", i32 1092, i32 2}
!299 = !{ptr @.str.151, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @pcistatus_got._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @pcistatus_got._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.152, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/atm/lanai.c", i32 1915, i32 2}
!304 = !{ptr @.str.153, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @check_board_id_and_rev._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @check_board_id_and_rev._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.155, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/atm/lanai.c", i32 1919, i32 3}
!309 = !{ptr @check_board_id_and_rev._entry.154, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @check_board_id_and_rev._entry_ptr.156, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.157, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/atm/lanai.c", i32 852, i32 2}
!313 = !{ptr @.str.158, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @eeprom_read._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @eeprom_read._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.159, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/atm/lanai.c", i32 578, i32 2}
!318 = !{ptr @.str.160, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @sram_test_and_clear._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @sram_test_and_clear._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.162, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/atm/lanai.c", i32 584, i32 2}
!323 = !{ptr @sram_test_and_clear._entry.161, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @sram_test_and_clear._entry_ptr.163, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.164, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/atm/lanai.c", i32 559, i32 2}
!327 = !{ptr @.str.165, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @sram_test_word._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @sram_test_word._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.166, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/atm/lanai.c", i32 1584, i32 2}
!332 = !{ptr @.str.167, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @service_buffer_allocate._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @service_buffer_allocate._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.168, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/atm/lanai.c", i32 1825, i32 3}
!337 = !{ptr @.str.169, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @lanai_int_1._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @lanai_int_1._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.171, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/atm/lanai.c", i32 1834, i32 3}
!342 = !{ptr @lanai_int_1._entry.170, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @lanai_int_1._entry_ptr.172, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.174, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/atm/lanai.c", i32 1842, i32 3}
!346 = !{ptr @lanai_int_1._entry.173, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @lanai_int_1._entry_ptr.175, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.177, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/atm/lanai.c", i32 1847, i32 3}
!350 = !{ptr @lanai_int_1._entry.176, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @lanai_int_1._entry_ptr.178, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.180, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/atm/lanai.c", i32 1854, i32 3}
!354 = !{ptr @lanai_int_1._entry.179, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @lanai_int_1._entry_ptr.181, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.183, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/atm/lanai.c", i32 1863, i32 3}
!358 = !{ptr @lanai_int_1._entry.182, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @lanai_int_1._entry_ptr.184, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.185, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/atm/lanai.c", i32 1624, i32 3}
!362 = !{ptr @.str.186, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @handle_service._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @handle_service._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.188, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/atm/lanai.c", i32 1635, i32 4}
!367 = !{ptr @handle_service._entry.187, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @handle_service._entry_ptr.189, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.191, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/atm/lanai.c", i32 1647, i32 3}
!371 = !{ptr @handle_service._entry.190, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @handle_service._entry_ptr.192, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.194, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/atm/lanai.c", i32 1654, i32 3}
!375 = !{ptr @handle_service._entry.193, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @handle_service._entry_ptr.195, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.197, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/atm/lanai.c", i32 1668, i32 3}
!379 = !{ptr @handle_service._entry.196, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @handle_service._entry_ptr.198, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.200, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/atm/lanai.c", i32 1683, i32 3}
!383 = !{ptr @handle_service._entry.199, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @handle_service._entry_ptr.201, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.203, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/atm/lanai.c", i32 1688, i32 2}
!387 = !{ptr @handle_service._entry.202, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @handle_service._entry_ptr.204, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.205, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/atm/lanai.c", i32 1386, i32 2}
!391 = !{ptr @.str.206, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @vcc_rx_aal5._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @vcc_rx_aal5._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.208, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/atm/lanai.c", i32 1400, i32 3}
!396 = !{ptr @vcc_rx_aal5._entry.207, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @vcc_rx_aal5._entry_ptr.209, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.210, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/atm/lanai.c", i32 1424, i32 2}
!400 = !{ptr @.str.211, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @vcc_rx_aal0._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @vcc_rx_aal0._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.212, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/atm/lanai.c", i32 1083, i32 2}
!405 = !{ptr @.str.213, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/atm/lanai.c", i32 1084, i32 2}
!407 = !{ptr @.str.214, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/atm/lanai.c", i32 1085, i32 2}
!409 = !{ptr @.str.215, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/atm/lanai.c", i32 1086, i32 2}
!411 = !{ptr @.str.216, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/atm/lanai.c", i32 1070, i32 34}
!413 = !{ptr @.str.217, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/atm/lanai.c", i32 1070, i32 47}
!415 = !{ptr @status_message.onoff, !416, !"onoff", i1 false, i1 false}
!416 = !{!"../drivers/atm/lanai.c", i32 1070, i32 21}
!417 = !{ptr @.str.218, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/atm/lanai.c", i32 1071, i32 2}
!419 = !{ptr @.str.219, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @status_message._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @status_message._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.220, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/atm/lanai.c", i32 1562, i32 2}
!424 = !{ptr @.str.221, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @lanai_reset._entry, !423, !"_entry", i1 false, i1 false}
!426 = !{ptr @lanai_reset._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @lanai_timed_poll_start.__key, !428, !"__key", i1 false, i1 false}
!428 = !{!"../drivers/atm/lanai.c", i32 1788, i32 2}
!429 = !{ptr @.str.222, !428, !"<string literal>", i1 false, i1 false}
!430 = !{i32 1, !"wchar_size", i32 2}
!431 = !{i32 1, !"min_enum_size", i32 4}
!432 = !{i32 8, !"branch-target-enforcement", i32 0}
!433 = !{i32 8, !"sign-return-address", i32 0}
!434 = !{i32 8, !"sign-return-address-all", i32 0}
!435 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!436 = !{i32 7, !"uwtable", i32 1}
!437 = !{i32 7, !"frame-pointer", i32 2}
!438 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!439 = !{!"auto-init"}
!440 = !{i64 2157276276}
!441 = !{i64 6455019}
!442 = !{i64 6455437}
!443 = !{i64 2157275890}
!444 = !{i64 2157280470}
!445 = !{i64 2157280080}
!446 = !{!"branch_weights", i32 2000, i32 1}
!447 = !{!"branch_weights", i32 1, i32 2000}
!448 = !{i32 0, i32 33}
!449 = !{i64 2157402944}
!450 = !{i64 2157416242}
!451 = !{i64 2157292266}
!452 = !{i64 2157288089}
!453 = !{i64 2157326822}
!454 = !{i64 2148420278, i64 2148420304, i64 2148420333, i64 2148420367, i64 2148420398, i64 2148420421}
!455 = !{!"branch_weights", i32 4001, i32 4000000}
!456 = !{i64 2157341220}
!457 = !{i64 2157339213}
!458 = !{i64 823978, i64 824039}
!459 = !{i64 826710}
!460 = !{i64 826995}
