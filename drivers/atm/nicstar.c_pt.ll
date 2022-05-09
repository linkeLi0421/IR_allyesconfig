; ModuleID = '/llk/IR_all_yes/drivers/atm/nicstar.c_pt.bc'
source_filename = "../drivers/atm/nicstar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.145, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%union.anon.145 = type { ptr }
%struct.ns_dev = type { i32, i32, ptr, i32, i32, i32, i32, ptr, %struct.idr, ptr, %struct.tsq_info, %struct.rsq_info, ptr, ptr, ptr, %struct.skb_pool, %struct.skb_pool, %struct.skb_pool, %struct.skb_pool, i32, i32, i32, [4096 x %struct.vc_map], [2340 x ptr], [460 x ptr], %struct.buf_nr, %struct.buf_nr, %struct.buf_nr, %struct.buf_nr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, %struct.spinlock, %struct.spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tsq_info = type { ptr, i32, ptr, ptr, ptr }
%struct.rsq_info = type { ptr, i32, ptr, ptr, ptr }
%struct.skb_pool = type { i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.vc_map = type { i8, ptr, ptr, ptr, ptr, i32, i32 }
%struct.buf_nr = type { i32, i32, i32 }
%struct.ns_tsi = type { i32, i32 }
%struct.ns_rsqe = type { i32, i32, i32, i32 }
%struct.scq_info = type { ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, %struct.wait_queue_head, i8, %struct.spinlock }
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
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.atmphy_ops = type { ptr, ptr, ptr, ptr }
%struct.ns_rcqe = type { i32, i32, i32, i32, %struct.cell_payload }
%struct.cell_payload = type { [12 x i32] }
%struct.ns_scqe = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.atm_blli = type { i8, %union.anon.146, i8, %union.anon.148 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i8, i8 }
%union.anon.148 = type { %struct.anon.151 }
%struct.anon.151 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.152 }
%struct.anon.152 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.iovec = type { ptr, i32 }
%struct.pool_levels = type { i32, i32, %struct.buf_nr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__param_str_mac = internal constant [12 x i8] c"nicstar.mac\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_mac = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_charp, ptr @mac }, align 4
@__param_mac = internal constant %struct.kernel_param { ptr @__param_str_mac, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_mac } }, section "__param", align 4
@__UNIQUE_ID_mactype461 = internal constant [36 x i8] c"nicstar.parmtype=mac:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_file462 = internal constant [33 x i8] c"nicstar.file=drivers/atm/nicstar\00", section ".modinfo", align 1
@__UNIQUE_ID_license463 = internal constant [20 x i8] c"nicstar.license=GPL\00", section ".modinfo", align 1
@ns_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@nicstar_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @nicstar_pci_tbl, ptr @nicstar_init_one, ptr @nicstar_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_nicstar__466_2763_nicstar_init6 = internal global ptr @nicstar_init, section ".initcall6.init", align 4
@__exitcall_nicstar_cleanup = internal global ptr @nicstar_cleanup, section ".exitcall.exit", align 4
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mac = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nicstar\00", [24 x i8] zeroinitializer }, align 32
@nicstar_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4381, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nicstar_init_one.index = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@cards = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@ns_init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nicstar%d: can't enable PCI device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ns_init_card\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/atm/nicstar.c\00", [42 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr = internal global ptr @ns_init_card._entry, section ".printk_index", align 4
@ns_init_card._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014nicstar%d: No suitable DMA available.\0A\00", [55 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.6 = internal global ptr @ns_init_card._entry.4, section ".printk_index", align 4
@ns_init_card._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nicstar%d: can't allocate memory for device structure.\0A\00", [40 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.9 = internal global ptr @ns_init_card._entry.7, section ".printk_index", align 4
@ns_init_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&card->int_lock\00", [16 x i8] zeroinitializer }, align 32
@ns_init_card.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&card->res_lock\00", [16 x i8] zeroinitializer }, align 32
@ns_init_card._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nicstar%d: can't ioremap() membase.\0A\00", [59 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.15 = internal global ptr @ns_init_card._entry.13, section ".printk_index", align 4
@ns_init_card._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nicstar%d: can't read PCI latency timer.\0A\00", [54 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.18 = internal global ptr @ns_init_card._entry.16, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ns_init_card._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nicstar%d: PHY seems to be 25 Mbps.\0A\00", [59 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.21 = internal global ptr @ns_init_card._entry.19, section ".printk_index", align 4
@ns_init_card._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nicstar%d: PHY seems to be 155 Mbps.\0A\00", [58 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.24 = internal global ptr @ns_init_card._entry.22, section ".printk_index", align 4
@ns_init_card._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nicstar%d: unknown PHY type (0x%08X).\0A\00", [57 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.27 = internal global ptr @ns_init_card._entry.25, section ".printk_index", align 4
@ns_init_card._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"nicstar%d: limiting maximum VCI. See NS_MAX_RCTSIZE in nicstar.h\0A\00", [62 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.30 = internal global ptr @ns_init_card._entry.28, section ".printk_index", align 4
@ns_init_card._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013nicstar%d: can't allocate IRQ %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.33 = internal global ptr @ns_init_card._entry.31, section ".printk_index", align 4
@ns_init_card._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nicstar%d: can't allocate TSQ.\0A\00", [32 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.36 = internal global ptr @ns_init_card._entry.34, section ".printk_index", align 4
@ns_init_card._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nicstar%d: can't allocate RSQ.\0A\00", [32 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.39 = internal global ptr @ns_init_card._entry.37, section ".printk_index", align 4
@ns_init_card._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nicstar%d: can't get SCQ0.\0A\00", [36 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.42 = internal global ptr @ns_init_card._entry.40, section ".printk_index", align 4
@ns_init_card._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nicstar%d: can't allocate %dth of %d huge buffers.\0A\00", [44 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.45 = internal global ptr @ns_init_card._entry.43, section ".printk_index", align 4
@ns_init_card._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"nicstar%d: can't allocate %dth of %d large buffers.\0A\00", [43 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.48 = internal global ptr @ns_init_card._entry.46, section ".printk_index", align 4
@ns_init_card._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.2, ptr @.str.3, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"nicstar%d: Strange... Just allocated %d large buffers and lfbqc = %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.51 = internal global ptr @ns_init_card._entry.49, section ".printk_index", align 4
@ns_init_card._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.2, ptr @.str.3, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"nicstar%d: can't allocate %dth of %d small buffers.\0A\00", [43 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.54 = internal global ptr @ns_init_card._entry.52, section ".printk_index", align 4
@ns_init_card._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"nicstar%d: Strange... Just allocated %d small buffers and sfbqc = %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.57 = internal global ptr @ns_init_card._entry.55, section ".printk_index", align 4
@ns_init_card._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.2, ptr @.str.3, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"nicstar%d: can't allocate %dth of %d iovec buffers.\0A\00", [43 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.60 = internal global ptr @ns_init_card._entry.58, section ".printk_index", align 4
@atm_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr null, ptr @ns_open, ptr @ns_close, ptr @ns_ioctl, ptr @ns_send, ptr @ns_send_bh, ptr null, ptr @ns_phy_put, ptr @ns_phy_get, ptr null, ptr @ns_proc_read, ptr null }, [48 x i8] zeroinitializer }, align 32
@ns_init_card._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.2, ptr @.str.3, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nicstar%d: can't register device.\0A\00", [61 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.63 = internal global ptr @ns_init_card._entry.61, section ".printk_index", align 4
@ns_init_card._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.2, ptr @.str.3, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nicstar%d: MAC address %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@ns_init_card._entry_ptr.67 = internal global ptr @ns_init_card._entry.65, section ".printk_index", align 4
@num_cards = internal global { i32, [28 x i8] } zeroinitializer, align 32
@free_scq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"nicstar: free_scq() called with vcc == NULL for fixed rate scq.\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"free_scq\00", [23 x i8] zeroinitializer }, align 32
@free_scq._entry_ptr = internal global ptr @free_scq._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ns_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nicstar%d: Small free buffer queue is full.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ns_irq_handler\00", [17 x i8] zeroinitializer }, align 32
@ns_irq_handler._entry_ptr = internal global ptr @ns_irq_handler._entry, section ".printk_index", align 4
@ns_irq_handler._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nicstar%d: Large free buffer queue is full.\0A\00", [51 x i8] zeroinitializer }, align 32
@ns_irq_handler._entry_ptr.74 = internal global ptr @ns_irq_handler._entry.72, section ".printk_index", align 4
@ns_irq_handler._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.3, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nicstar%d: RSQ full.\0A\00", [42 x i8] zeroinitializer }, align 32
@ns_irq_handler._entry_ptr.77 = internal global ptr @ns_irq_handler._entry.75, section ".printk_index", align 4
@ns_irq_handler._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.3, i32 1146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nicstar%d: Raw cell received and no support yet...\0A\00", [44 x i8] zeroinitializer }, align 32
@ns_irq_handler._entry_ptr.80 = internal global ptr @ns_irq_handler._entry.78, section ".printk_index", align 4
@ns_irq_handler._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.71, ptr @.str.3, i32 1177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nicstar%d: Small free buffer queue empty.\0A\00", [53 x i8] zeroinitializer }, align 32
@ns_irq_handler._entry_ptr.83 = internal global ptr @ns_irq_handler._entry.81, section ".printk_index", align 4
@ns_irq_handler._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.71, ptr @.str.3, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nicstar%d: Large free buffer queue empty.\0A\00", [53 x i8] zeroinitializer }, align 32
@ns_irq_handler._entry_ptr.86 = internal global ptr @ns_irq_handler._entry.84, section ".printk_index", align 4
@process_tsq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 1886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nicstar%d: could not find VC from SCD index.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"process_tsq\00", [20 x i8] zeroinitializer }, align 32
@process_tsq._entry_ptr = internal global ptr @process_tsq._entry, section ".printk_index", align 4
@drain_scq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 1930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nicstar%d: Bad index on drain_scq().\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drain_scq\00", [22 x i8] zeroinitializer }, align 32
@drain_scq._entry_ptr = internal global ptr @drain_scq._entry, section ".printk_index", align 4
@dequeue_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 2018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nicstar%d: SDU received for out-of-range vc %d.%d.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dequeue_rx\00", [21 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr = internal global ptr @dequeue_rx._entry, section ".printk_index", align 4
@dequeue_rx._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 2044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nicstar%d: Can't allocate buffers for aal0.\0A\00", [51 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.95 = internal global ptr @dequeue_rx._entry.93, section ".printk_index", align 4
@dequeue_rx._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.3, i32 2083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nicstar%d: Out of iovec buffers.\0A\00", [62 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.98 = internal global ptr @dequeue_rx._entry.96, section ".printk_index", align 4
@dequeue_rx._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.92, ptr @.str.3, i32 2107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nicstar%d: received too big AAL5 SDU.\0A\00", [57 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.101 = internal global ptr @dequeue_rx._entry.99, section ".printk_index", align 4
@dequeue_rx._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.92, ptr @.str.3, i32 2159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nicstar%d: AAL5 CRC error\00", [38 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.104 = internal global ptr @dequeue_rx._entry.102, section ".printk_index", align 4
@dequeue_rx._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.92, ptr @.str.3, i32 2161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" - PDU size mismatch.\0A\00", [41 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.107 = internal global ptr @dequeue_rx._entry.105, section ".printk_index", align 4
@dequeue_rx._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.92, ptr @.str.3, i32 2163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".\0A\00", [29 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.110 = internal global ptr @dequeue_rx._entry.108, section ".printk_index", align 4
@dequeue_rx._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.92, ptr @.str.3, i32 2242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nicstar%d: Out of huge buffers.\0A\00", [63 x i8] zeroinitializer }, align 32
@dequeue_rx._entry_ptr.113 = internal global ptr @dequeue_rx._entry.111, section ".printk_index", align 4
@recycle_rx_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 2342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nicstar%d: What kind of rx buffer is this?\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"recycle_rx_buf\00", [17 x i8] zeroinitializer }, align 32
@recycle_rx_buf._entry_ptr = internal global ptr @recycle_rx_buf._entry, section ".printk_index", align 4
@get_scq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&scq->scqfull_waitq\00", [44 x i8] zeroinitializer }, align 32
@get_scq.__key.117 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&scq->lock\00", [21 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ns_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nicstar%d: %s vci already in use.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ns_open\00", [24 x i8] zeroinitializer }, align 32
@ns_open._entry_ptr = internal global ptr @ns_open._entry, section ".printk_index", align 4
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx and rx\00", [22 x i8] zeroinitializer }, align 32
@ns_open._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.3, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nicstar%d: selected bandwidth < granularity.\0A\00", [50 x i8] zeroinitializer }, align 32
@ns_open._entry_ptr.130 = internal global ptr @ns_open._entry.128, section ".printk_index", align 4
@fill_tst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 1597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nicstar%d: No free TST entries found. \0A\00", [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fill_tst\00", [23 x i8] zeroinitializer }, align 32
@fill_tst._entry_ptr = internal global ptr @fill_tst._entry, section ".printk_index", align 4
@ns_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 2626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nicstar%d: huge buffer count inconsistent.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ns_ioctl\00", [23 x i8] zeroinitializer }, align 32
@ns_ioctl._entry_ptr = internal global ptr @ns_ioctl._entry, section ".printk_index", align 4
@ns_ioctl._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.3, i32 2656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nicstar%d: iovec buffer count inconsistent.\0A\00", [51 x i8] zeroinitializer }, align 32
@ns_ioctl._entry_ptr.137 = internal global ptr @ns_ioctl._entry.135, section ".printk_index", align 4
@ns_ioctl._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.134, ptr @.str.3, i32 2686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nicstar%d: %s == NULL \0A\00", [40 x i8] zeroinitializer }, align 32
@ns_ioctl._entry_ptr.140 = internal global ptr @ns_ioctl._entry.138, section ".printk_index", align 4
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dev->phy->ioctl\00", [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev->phy\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@_ns_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.3, i32 1640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nicstar%d: vcc->dev_data == NULL on ns_send().\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_ns_send\00", [23 x i8] zeroinitializer }, align 32
@_ns_send._entry_ptr = internal global ptr @_ns_send._entry, section ".printk_index", align 4
@_ns_send._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.3, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nicstar%d: Trying to transmit on a non-tx VC.\0A\00", [49 x i8] zeroinitializer }, align 32
@_ns_send._entry_ptr.150 = internal global ptr @_ns_send._entry.148, section ".printk_index", align 4
@_ns_send._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.147, ptr @.str.3, i32 1656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nicstar%d: Only AAL0 and AAL5 are supported.\0A\00", [50 x i8] zeroinitializer }, align 32
@_ns_send._entry_ptr.153 = internal global ptr @_ns_send._entry.151, section ".printk_index", align 4
@_ns_send._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.147, ptr @.str.3, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nicstar%d: No scatter-gather yet.\0A\00", [61 x i8] zeroinitializer }, align 32
@_ns_send._entry_ptr.156 = internal global ptr @_ns_send._entry.154, section ".printk_index", align 4
@push_scqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.3, i32 1747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nicstar%d: Error pushing TBD.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"push_scqe\00", [22 x i8] zeroinitializer }, align 32
@push_scqe._entry_ptr = internal global ptr @push_scqe._entry, section ".printk_index", align 4
@push_scqe._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.3, i32 1760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nicstar%d: Timeout pushing TBD.\0A\00", [63 x i8] zeroinitializer }, align 32
@push_scqe._entry_ptr.161 = internal global ptr @push_scqe._entry.159, section ".printk_index", align 4
@push_scqe._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.158, ptr @.str.3, i32 1795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nicstar%d: Error pushing TSR.\0A\00", [33 x i8] zeroinitializer }, align 32
@push_scqe._entry_ptr.164 = internal global ptr @push_scqe._entry.162, section ".printk_index", align 4
@.str.165 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Pool   count    min   init    max \0A\00", [60 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Small  %5d  %5d  %5d  %5d \0A\00", [36 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Large  %5d  %5d  %5d  %5d \0A\00", [36 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Huge   %5d  %5d  %5d  %5d \0A\00", [36 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Iovec  %5d  %5d  %5d  %5d \0A\00", [36 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interrupt counter: %u \0A\00", [40 x i8] zeroinitializer }, align 32
@readtab = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 1, i32 5, i32 1, i32 5], [32 x i8] zeroinitializer }, align 32
@clocktab = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0], [60 x i8] zeroinitializer }, align 32
@nicstar_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.171 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&ns_timer)\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 48, i64 49]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 8192]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 32, i64 24931, i64 1074553186, i64 3222036833]
@__sancov_gen_cov_switch_values.177 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.178 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.179 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.180 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@___asan_gen_.182 = private unnamed_addr constant [9 x i8] c"ns_timer\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 171, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant [15 x i8] c"nicstar_driver\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 266, i32 26 }
@___asan_gen_.188 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 172, i32 14 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 267, i32 10 }
@___asan_gen_.194 = private unnamed_addr constant [16 x i8] c"nicstar_pci_tbl\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 259, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 181, i32 13 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"cards\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 157, i32 23 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 361, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 367, i32 17 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 376, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 384, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 385, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 395, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 405, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 456, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 471, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 480, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 503, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 533, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 544, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 563, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 582, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 660, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 679, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 700, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 715, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 730, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 745, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant [8 x i8] c"atm_ops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 159, i32 32 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 769, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 785, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [10 x i8] c"num_cards\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 158, i32 17 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 922, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1116, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1123, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1130, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1145, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1176, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1201, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1884, i32 6 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1930, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2017, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2042, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2082, i32 5 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2107, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2159, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2161, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2163, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2240, i32 6 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2341, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 895, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 897, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 378, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1984, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 326, i32 6 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1266, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1321, i32 5 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1597, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2624, i32 6 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2654, i32 6 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2685, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 174, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1639, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1647, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1655, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1663, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1747, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1759, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 1794, i32 5 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2421, i32 24 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2423, i32 24 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2427, i32 24 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2431, i32 24 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2435, i32 24 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 2441, i32 21 }
@___asan_gen_.638 = private unnamed_addr constant [8 x i8] c"readtab\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 66, i32 18 }
@___asan_gen_.641 = private unnamed_addr constant [9 x i8] c"clocktab\00", align 1
@___asan_gen_.642 = private unnamed_addr constant [28 x i8] c"../drivers/atm/nicstarmac.c\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 89, i32 18 }
@___asan_gen_.644 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.648 = private constant [25 x i8] c"../drivers/atm/nicstar.c\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.648, i32 290, i32 3 }
@llvm.compiler.used = appending global [215 x ptr] [ptr @__UNIQUE_ID_file462, ptr @__UNIQUE_ID_license463, ptr @__UNIQUE_ID_mactype461, ptr @__exitcall_nicstar_cleanup, ptr @__initcall__kmod_nicstar__466_2763_nicstar_init6, ptr @__param_mac, ptr @_ns_send._entry, ptr @_ns_send._entry.148, ptr @_ns_send._entry.151, ptr @_ns_send._entry.154, ptr @_ns_send._entry_ptr, ptr @_ns_send._entry_ptr.150, ptr @_ns_send._entry_ptr.153, ptr @_ns_send._entry_ptr.156, ptr @dequeue_rx._entry, ptr @dequeue_rx._entry.102, ptr @dequeue_rx._entry.105, ptr @dequeue_rx._entry.108, ptr @dequeue_rx._entry.111, ptr @dequeue_rx._entry.93, ptr @dequeue_rx._entry.96, ptr @dequeue_rx._entry.99, ptr @dequeue_rx._entry_ptr, ptr @dequeue_rx._entry_ptr.101, ptr @dequeue_rx._entry_ptr.104, ptr @dequeue_rx._entry_ptr.107, ptr @dequeue_rx._entry_ptr.110, ptr @dequeue_rx._entry_ptr.113, ptr @dequeue_rx._entry_ptr.95, ptr @dequeue_rx._entry_ptr.98, ptr @drain_scq._entry, ptr @drain_scq._entry_ptr, ptr @fill_tst._entry, ptr @fill_tst._entry_ptr, ptr @free_scq._entry, ptr @free_scq._entry_ptr, ptr @nicstar_cleanup, ptr @ns_init_card._entry, ptr @ns_init_card._entry.13, ptr @ns_init_card._entry.16, ptr @ns_init_card._entry.19, ptr @ns_init_card._entry.22, ptr @ns_init_card._entry.25, ptr @ns_init_card._entry.28, ptr @ns_init_card._entry.31, ptr @ns_init_card._entry.34, ptr @ns_init_card._entry.37, ptr @ns_init_card._entry.4, ptr @ns_init_card._entry.40, ptr @ns_init_card._entry.43, ptr @ns_init_card._entry.46, ptr @ns_init_card._entry.49, ptr @ns_init_card._entry.52, ptr @ns_init_card._entry.55, ptr @ns_init_card._entry.58, ptr @ns_init_card._entry.61, ptr @ns_init_card._entry.65, ptr @ns_init_card._entry.7, ptr @ns_init_card._entry_ptr, ptr @ns_init_card._entry_ptr.15, ptr @ns_init_card._entry_ptr.18, ptr @ns_init_card._entry_ptr.21, ptr @ns_init_card._entry_ptr.24, ptr @ns_init_card._entry_ptr.27, ptr @ns_init_card._entry_ptr.30, ptr @ns_init_card._entry_ptr.33, ptr @ns_init_card._entry_ptr.36, ptr @ns_init_card._entry_ptr.39, ptr @ns_init_card._entry_ptr.42, ptr @ns_init_card._entry_ptr.45, ptr @ns_init_card._entry_ptr.48, ptr @ns_init_card._entry_ptr.51, ptr @ns_init_card._entry_ptr.54, ptr @ns_init_card._entry_ptr.57, ptr @ns_init_card._entry_ptr.6, ptr @ns_init_card._entry_ptr.60, ptr @ns_init_card._entry_ptr.63, ptr @ns_init_card._entry_ptr.67, ptr @ns_init_card._entry_ptr.9, ptr @ns_ioctl._entry, ptr @ns_ioctl._entry.135, ptr @ns_ioctl._entry.138, ptr @ns_ioctl._entry_ptr, ptr @ns_ioctl._entry_ptr.137, ptr @ns_ioctl._entry_ptr.140, ptr @ns_irq_handler._entry, ptr @ns_irq_handler._entry.72, ptr @ns_irq_handler._entry.75, ptr @ns_irq_handler._entry.78, ptr @ns_irq_handler._entry.81, ptr @ns_irq_handler._entry.84, ptr @ns_irq_handler._entry_ptr, ptr @ns_irq_handler._entry_ptr.74, ptr @ns_irq_handler._entry_ptr.77, ptr @ns_irq_handler._entry_ptr.80, ptr @ns_irq_handler._entry_ptr.83, ptr @ns_irq_handler._entry_ptr.86, ptr @ns_open._entry, ptr @ns_open._entry.128, ptr @ns_open._entry_ptr, ptr @ns_open._entry_ptr.130, ptr @process_tsq._entry, ptr @process_tsq._entry_ptr, ptr @push_scqe._entry, ptr @push_scqe._entry.159, ptr @push_scqe._entry.162, ptr @push_scqe._entry_ptr, ptr @push_scqe._entry_ptr.161, ptr @push_scqe._entry_ptr.164, ptr @recycle_rx_buf._entry, ptr @recycle_rx_buf._entry_ptr, ptr @ns_timer, ptr @nicstar_driver, ptr @mac, ptr @.str, ptr @nicstar_pci_tbl, ptr @nicstar_init_one.index, ptr @cards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @ns_init_card.__key, ptr @.str.10, ptr @ns_init_card.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @atm_ops, ptr @.str.62, ptr @.str.66, ptr @num_cards, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @get_scq.__key, ptr @.str.116, ptr @get_scq.__key.117, ptr @.str.118, ptr @xa_init_flags.__key, ptr @.str.119, ptr @skb_queue_head_init.__key, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @readtab, ptr @clocktab, ptr @nicstar_init.__key, ptr @.str.171], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nicstar_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nicstar_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nicstar_init_one.index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cards to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_init_card._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_cards to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_scq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_irq_handler._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_irq_handler._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_irq_handler._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_irq_handler._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_irq_handler._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_tsq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drain_scq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_rx._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recycle_rx_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_scq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_scq.__key.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_open._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_tst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_ioctl._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_ioctl._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ns_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ns_send._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ns_send._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ns_send._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_scqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_scqe._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_scqe._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readtab to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocktab to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nicstar_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nicstar_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @ns_timer) #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @nicstar_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nicstar_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @nicstar_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @init_timer_key(ptr noundef nonnull @ns_timer, ptr noundef nonnull @ns_poll, i32 noundef 0, ptr noundef nonnull @.str.171, ptr noundef nonnull @nicstar_init.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @ns_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @ns_timer) #11
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nicstar_init_one(ptr noundef %pcidev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %pci_latency.i = alloca i8, align 1
  %data.i = alloca i32, align 4
  %u32d.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nicstar_init_one.index, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @nicstar_init_one.index, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @cards, i32 0, i32 %inc
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pci_latency.i) #11
  %2 = ptrtoint ptr %pci_latency.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %pci_latency.i, align 1, !annotation !316
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %u32d.i) #11
  %3 = getelementptr inbounds [4 x i32], ptr %u32d.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i32], ptr %u32d.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i32], ptr %u32d.i, i32 0, i32 3
  %6 = call ptr @memset(ptr %u32d.i, i32 255, i32 16)
  %call.i = tail call i32 @pci_enable_device(ptr noundef %pcidev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %inc) #14
  br label %if.then

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end9.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %inc) #14
  br label %if.then

if.end9.i:                                        ; preds = %if.end.i
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef 4294967295) #11
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 126464, i32 noundef 3264, i32 noundef 5) #15
  %tobool11.not.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end18.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %inc) #14
  br label %if.then

if.end18.i:                                       ; preds = %if.end9.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i.i.i, ptr %arrayidx, align 4
  %int_lock.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 39
  tail call void @__raw_spin_lock_init(ptr noundef %int_lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @ns_init_card.__key, i16 noundef signext 3) #11
  %res_lock.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 40
  tail call void @__raw_spin_lock_init(ptr noundef %res_lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @ns_init_card.__key.11, i16 noundef signext 3) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i.i, ptr %driver_data.i.i.i, align 4
  %9 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %call1.i.i.i, align 4096
  %atmdev.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %atmdev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %atmdev.i, align 4
  %pcidev27.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pcidev, ptr %pcidev27.i, align 4
  %arrayidx28.i = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 1
  %12 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx28.i, align 8
  %call29.i = tail call ptr @ioremap(i32 noundef %13, i32 noundef 4096) #11
  %membase30.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %membase30.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29.i, ptr %membase30.i, align 8
  %tobool32.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool32.not.i, label %do.end36.i, label %do.end42.i

do.end36.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %inc) #14
  %15 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev27.i, align 4
  tail call void @pci_disable_device(ptr noundef %16) #11
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #11
  br label %if.then

do.end42.i:                                       ; preds = %if.end18.i
  tail call void @pci_set_master(ptr noundef %pcidev) #11
  %call43.i = call i32 @pci_read_config_byte(ptr noundef %pcidev, i32 noundef 13, ptr noundef nonnull %pci_latency.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.not.i = icmp eq i32 %call43.i, 0
  br i1 %cmp44.not.i, label %if.end51.i, label %do.end48.i

do.end48.i:                                       ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %inc) #14
  %17 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase30.i, align 8
  call void @iounmap(ptr noundef %18) #11
  %19 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcidev27.i, align 4
  call void @pci_disable_device(ptr noundef %20) #11
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #11
  br label %if.then

if.end51.i:                                       ; preds = %do.end42.i
  %21 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 24
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !317
  %24 = call i32 @llvm.bswap.i32(i32 %23) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !318
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %data.i, align 4
  %and.i = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool56.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool56.not.i, label %if.end51.i.do.body64.i_crit_edge, label %do.body58.i

if.end51.i.do.body64.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64.i

do.body58.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !319
  call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase30.i, align 8
  %add.ptr62.i = getelementptr i8, ptr %27, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 524288) #11, !srcloc !320
  br label %do.body64.i

do.body64.i:                                      ; preds = %do.body58.i, %if.end51.i.do.body64.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  call void @arm_heavy_mb() #11
  %28 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase30.i, align 8
  %add.ptr68.i = getelementptr i8, ptr %29, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 128) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase30.i, align 8
  %add.ptr73.i = getelementptr i8, ptr %32, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 0) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !323
  call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase30.i, align 8
  %add.ptr78.i = getelementptr i8, ptr %34, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 134217728) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !324
  call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase30.i, align 8
  %add.ptr83.i = getelementptr i8, ptr %37, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.i, i32 16777216) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body64.i
  %39 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase30.i, align 8
  %add.ptr87.i = getelementptr i8, ptr %40, i32 24
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  %42 = and i32 %41, 131072
  %tobool92.not.i = icmp eq i32 %42, 0
  br i1 %tobool92.not.i, label %do.body93.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

do.body93.i:                                      ; preds = %while.cond.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !326
  call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase30.i, align 8
  %add.ptr97.i = getelementptr i8, ptr %44, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i, i32 65680) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #11
  br label %while.cond98.i

while.cond98.i:                                   ; preds = %while.cond98.i.while.cond98.i_crit_edge, %do.body93.i
  %46 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase30.i, align 8
  %add.ptr102.i = getelementptr i8, ptr %47, i32 24
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %49 = and i32 %48, 131072
  %tobool107.not.i = icmp eq i32 %49, 0
  br i1 %tobool107.not.i, label %do.body110.i, label %while.cond98.i.while.cond98.i_crit_edge

while.cond98.i.while.cond98.i_crit_edge:          ; preds = %while.cond98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond98.i

do.body110.i:                                     ; preds = %while.cond98.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase30.i, align 8
  %add.ptr114.i = getelementptr i8, ptr %51, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114.i, i32 131200) #11, !srcloc !320
  br label %while.cond115.i

while.cond115.i:                                  ; preds = %while.cond115.i.while.cond115.i_crit_edge, %do.body110.i
  %52 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase30.i, align 8
  %add.ptr119.i = getelementptr i8, ptr %53, i32 24
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  %55 = and i32 %54, 131072
  %tobool124.not.i = icmp eq i32 %55, 0
  br i1 %tobool124.not.i, label %while.end126.i, label %while.cond115.i.while.cond115.i_crit_edge

while.cond115.i.while.cond115.i_crit_edge:        ; preds = %while.cond115.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond115.i

while.end126.i:                                   ; preds = %while.cond115.i
  %56 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase30.i, align 8
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !317
  %59 = call i32 @llvm.bswap.i32(i32 %58) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i32 %59, label %do.end175.i [
    i32 9, label %do.end136.i
    i32 48, label %while.end126.i.do.end169.i_crit_edge
    i32 49, label %while.end126.i.do.end169.i_crit_edge135
  ]

while.end126.i.do.end169.i_crit_edge135:          ; preds = %while.end126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end169.i

while.end126.i.do.end169.i_crit_edge:             ; preds = %while.end126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end169.i

do.end136.i:                                      ; preds = %while.end126.i
  %call138.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %inc) #14
  %max_pcr.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %max_pcr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 59111, ptr %max_pcr.i, align 4
  br label %while.cond139.i

while.cond139.i:                                  ; preds = %while.cond139.i.while.cond139.i_crit_edge, %do.end136.i
  %62 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase30.i, align 8
  %add.ptr143.i = getelementptr i8, ptr %63, i32 24
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %65 = and i32 %64, 131072
  %tobool148.not.i = icmp eq i32 %65, 0
  br i1 %tobool148.not.i, label %do.body151.i, label %while.cond139.i.while.cond139.i_crit_edge

while.cond139.i.while.cond139.i_crit_edge:        ; preds = %while.cond139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond139.i

do.body151.i:                                     ; preds = %while.cond139.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @arm_heavy_mb() #11
  %66 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase30.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 134217728) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  call void @arm_heavy_mb() #11
  %68 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase30.i, align 8
  %add.ptr160.i = getelementptr i8, ptr %69, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160.i, i32 131216) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  call void @arm_heavy_mb() #11
  %70 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase30.i, align 8
  %add.ptr165.i = getelementptr i8, ptr %71, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165.i, i32 65536) #11, !srcloc !320
  br label %do.body178.i

do.end169.i:                                      ; preds = %while.end126.i.do.end169.i_crit_edge, %while.end126.i.do.end169.i_crit_edge135
  %call171.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %inc) #14
  %max_pcr172.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %max_pcr172.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 353207, ptr %max_pcr172.i, align 4
  br label %do.body178.i

do.end175.i:                                      ; preds = %while.end126.i
  call void @__sanitizer_cov_trace_pc() #13
  %call177.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %inc, i32 noundef %59) #14
  %73 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase30.i, align 8
  call void @iounmap(ptr noundef %74) #11
  %75 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcidev27.i, align 4
  call void @pci_disable_device(ptr noundef %76) #11
  call void @kfree(ptr noundef %call1.i.i.i) #11
  br label %if.then

do.body178.i:                                     ; preds = %do.end169.i, %do.body151.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !335
  call void @arm_heavy_mb() #11
  %77 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase30.i, align 8
  %add.ptr182.i = getelementptr i8, ptr %78, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182.i, i32 0) #11, !srcloc !320
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock.i) #11
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.body178.i
  %79 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 24
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  %82 = and i32 %81, 131072
  %tobool.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i, label %do.body10.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

do.body10.i.i:                                    ; preds = %while.cond.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %83 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase30.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 271733878) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  call void @arm_heavy_mb() #11
  %85 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase30.i, align 8
  %add.ptr22.i.i = getelementptr i8, ptr %86, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 201328448) #11, !srcloc !320
  call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock.i, i32 noundef %call2.i.i) #11
  %87 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1985229329, ptr %data.i, align 4
  %call2.i995.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock.i) #11
  br label %while.cond.i999.i

while.cond.i999.i:                                ; preds = %while.cond.i999.i.while.cond.i999.i_crit_edge, %do.body10.i.i
  %88 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i997.i = getelementptr i8, ptr %89, i32 24
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i997.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  %91 = and i32 %90, 131072
  %tobool.not.i998.i = icmp eq i32 %91, 0
  br i1 %tobool.not.i998.i, label %do.body10.i1007.i, label %while.cond.i999.i.while.cond.i999.i_crit_edge

while.cond.i999.i.while.cond.i999.i_crit_edge:    ; preds = %while.cond.i999.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i999.i

do.body10.i1007.i:                                ; preds = %while.cond.i999.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %92 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase30.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 -271733879) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  call void @arm_heavy_mb() #11
  %94 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase30.i, align 8
  %add.ptr22.i1008.i = getelementptr i8, ptr %95, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i1008.i, i32 201327936) #11, !srcloc !320
  call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock.i, i32 noundef %call2.i995.i) #11
  %call2.i1011.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock.i) #11
  br label %while.cond.i1015.i

while.cond.i1015.i:                               ; preds = %while.cond.i1015.i.while.cond.i1015.i_crit_edge, %do.body10.i1007.i
  %96 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i1013.i = getelementptr i8, ptr %97, i32 24
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1013.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !339
  %99 = and i32 %98, 131072
  %tobool.not.i1014.i = icmp eq i32 %99, 0
  br i1 %tobool.not.i1014.i, label %do.body9.i.i, label %while.cond.i1015.i.while.cond.i1015.i_crit_edge

while.cond.i1015.i.while.cond.i1015.i_crit_edge:  ; preds = %while.cond.i1015.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i1015.i

do.body9.i.i:                                     ; preds = %while.cond.i1015.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @arm_heavy_mb() #11
  %100 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase30.i, align 8
  %add.ptr13.i.i = getelementptr i8, ptr %101, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 201327952) #11, !srcloc !320
  br label %while.cond14.i.i

while.cond14.i.i:                                 ; preds = %while.cond14.i.i.while.cond14.i.i_crit_edge, %do.body9.i.i
  %102 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %membase30.i, align 8
  %add.ptr18.i.i = getelementptr i8, ptr %103, i32 24
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  %105 = and i32 %104, 131072
  %tobool23.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool23.not.i.i, label %ns_read_sram.exit.i, label %while.cond14.i.i.while.cond14.i.i_crit_edge

while.cond14.i.i.while.cond14.i.i_crit_edge:      ; preds = %while.cond14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond14.i.i

ns_read_sram.exit.i:                              ; preds = %while.cond14.i.i
  %106 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase30.i, align 8
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock.i, i32 noundef %call2.i1011.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -271733879, i32 %108)
  %cmp184.i = icmp eq i32 %108, -271733879
  br i1 %cmp184.i, label %land.lhs.true.i, label %ns_read_sram.exit.i.if.end201.thread.i_crit_edge

ns_read_sram.exit.i.if.end201.thread.i_crit_edge: ; preds = %ns_read_sram.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201.thread.i

land.lhs.true.i:                                  ; preds = %ns_read_sram.exit.i
  %call2.i100 = call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock.i) #11
  br label %while.cond.i104

while.cond.i104:                                  ; preds = %while.cond.i104.while.cond.i104_crit_edge, %land.lhs.true.i
  %109 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i102 = getelementptr i8, ptr %110, i32 24
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !339
  %112 = and i32 %111, 131072
  %tobool.not.i103 = icmp eq i32 %112, 0
  br i1 %tobool.not.i103, label %do.body9.i, label %while.cond.i104.while.cond.i104_crit_edge

while.cond.i104.while.cond.i104_crit_edge:        ; preds = %while.cond.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i104

do.body9.i:                                       ; preds = %while.cond.i104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @arm_heavy_mb() #11
  %113 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %membase30.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %114, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 201328464) #11, !srcloc !320
  br label %while.cond14.i105

while.cond14.i105:                                ; preds = %while.cond14.i105.while.cond14.i105_crit_edge, %do.body9.i
  %115 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %membase30.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %116, i32 24
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  %118 = and i32 %117, 131072
  %tobool23.not.i = icmp eq i32 %118, 0
  br i1 %tobool23.not.i, label %ns_read_sram.exit, label %while.cond14.i105.while.cond14.i105_crit_edge

while.cond14.i105.while.cond14.i105_crit_edge:    ; preds = %while.cond14.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond14.i105

ns_read_sram.exit:                                ; preds = %while.cond14.i105
  %119 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %membase30.i, align 8
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock.i, i32 noundef %call2.i100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 271733878, i32 %121)
  %cmp186.i = icmp eq i32 %121, 271733878
  br i1 %cmp186.i, label %if.end201.i, label %ns_read_sram.exit.if.end201.thread.i_crit_edge

ns_read_sram.exit.if.end201.thread.i_crit_edge:   ; preds = %ns_read_sram.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201.thread.i

if.end201.thread.i:                               ; preds = %ns_read_sram.exit.if.end201.thread.i_crit_edge, %ns_read_sram.exit.i.if.end201.thread.i_crit_edge
  %sram_size.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %sram_size.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 32, ptr %sram_size.i, align 4
  %rct_size.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 4
  %123 = ptrtoint ptr %rct_size.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 4096, ptr %rct_size.i, align 16
  %vpibits1039.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 5
  %124 = ptrtoint ptr %vpibits1039.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 2, ptr %vpibits1039.i, align 4
  br label %if.end207.i

if.end201.i:                                      ; preds = %ns_read_sram.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sram_size.i111 = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %sram_size.i111 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 128, ptr %sram_size.i111, align 4
  %rct_size.i112 = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 4
  %126 = ptrtoint ptr %rct_size.i112 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4096, ptr %rct_size.i112, align 16
  %call200.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %inc) #14
  %127 = ptrtoint ptr %rct_size.i112 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pr.i = load i32, ptr %rct_size.i112, align 16
  %vpibits.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 5
  %128 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2, ptr %vpibits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %.pr.i)
  %cmp203.i = icmp eq i32 %.pr.i, 4096
  %spec.select.i = select i1 %cmp203.i, i32 10, i32 12
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.end201.i, %if.end201.thread.i
  %rct_size.i113 = phi ptr [ %rct_size.i, %if.end201.thread.i ], [ %rct_size.i112, %if.end201.i ]
  %.sink1084.i = phi i32 [ 10, %if.end201.thread.i ], [ %spec.select.i, %if.end201.i ]
  %vpibits1041.i = phi ptr [ %vpibits1039.i, %if.end201.thread.i ], [ %vpibits.i, %if.end201.i ]
  %vcibits206.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 6
  %129 = ptrtoint ptr %vcibits206.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %.sink1084.i, ptr %vcibits206.i, align 8
  %arrayidx208.i = getelementptr [4 x ptr], ptr @mac, i32 0, i32 %inc
  %130 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx208.i, align 4
  %cmp209.i = icmp eq ptr %131, null
  br i1 %cmp209.i, label %if.then210.i, label %if.end207.i.do.body213.i_crit_edge

if.end207.i.do.body213.i_crit_edge:               ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body213.i

if.then210.i:                                     ; preds = %if.end207.i
  %132 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i96 = getelementptr i8, ptr %133, i32 76
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  %add.ptr4.i = getelementptr i8, ptr %133, i32 24
  br label %while.cond.i98

while.cond.i98:                                   ; preds = %while.cond.i98.while.cond.i98_crit_edge, %if.then210.i
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  %136 = and i32 %135, 131072
  %tobool.not.i97 = icmp eq i32 %136, 0
  br i1 %tobool.not.i97, label %do.body.i, label %while.cond.i98.while.cond.i98_crit_edge

while.cond.i98.while.cond.i98_crit_edge:          ; preds = %while.cond.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i98

do.body.i:                                        ; preds = %while.cond.i98
  %137 = and i32 %134, -251658241
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  call void @arm_heavy_mb() #11
  %138 = or i32 %137, 100663296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %138) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %139(i32 noundef 1073740) #11
  br label %while.cond14.i

while.cond14.i:                                   ; preds = %while.cond14.i.while.cond14.i_crit_edge, %do.body.i
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  %141 = and i32 %140, 131072
  %tobool22.not.i = icmp eq i32 %141, 0
  br i1 %tobool22.not.i, label %do.body25.i, label %while.cond14.i.while.cond14.i_crit_edge

while.cond14.i.while.cond14.i_crit_edge:          ; preds = %while.cond14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond14.i

do.body25.i:                                      ; preds = %while.cond14.i
  %142 = or i32 %137, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %142) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %143(i32 noundef 1073740) #11
  br label %while.cond40.i

while.cond40.i:                                   ; preds = %while.cond40.i.while.cond40.i_crit_edge, %do.body25.i
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !348
  %145 = and i32 %144, 131072
  %tobool48.not.i = icmp eq i32 %145, 0
  br i1 %tobool48.not.i, label %do.body51.i, label %while.cond40.i.while.cond40.i_crit_edge

while.cond40.i.while.cond40.i_crit_edge:          ; preds = %while.cond40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond40.i

do.body51.i:                                      ; preds = %while.cond40.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %138) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %146(i32 noundef 1073740) #11
  br label %while.cond66.i

while.cond66.i:                                   ; preds = %while.cond66.i.while.cond66.i_crit_edge, %do.body51.i
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !350
  %148 = and i32 %147, 131072
  %tobool74.not.i = icmp eq i32 %148, 0
  br i1 %tobool74.not.i, label %nicstar_init_eprom.exit, label %while.cond66.i.while.cond66.i_crit_edge

while.cond66.i.while.cond66.i_crit_edge:          ; preds = %while.cond66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond66.i

nicstar_init_eprom.exit:                          ; preds = %while.cond66.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %142) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %149(i32 noundef 1073740) #11
  br label %do.body213.i

do.body213.i:                                     ; preds = %nicstar_init_eprom.exit, %if.end207.i.do.body213.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !352
  call void @arm_heavy_mb() #11
  %150 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %membase30.i, align 8
  %add.ptr217.i = getelementptr i8, ptr %151, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217.i, i32 0) #11, !srcloc !320
  %intcnt.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 38
  %152 = ptrtoint ptr %intcnt.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %intcnt.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 46
  %153 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %irq.i, align 4
  %call.i1016.i = call i32 @request_threaded_irq(i32 noundef %154, ptr noundef nonnull @ns_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call1.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1016.i)
  %cmp219.not.i = icmp eq i32 %call.i1016.i, 0
  br i1 %cmp219.not.i, label %if.end227.i, label %do.end223.i

do.end223.i:                                      ; preds = %do.body213.i
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %irq.i, align 4
  %call226.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %inc, i32 noundef %156) #14
  %157 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %membase30.i, align 8
  call void @iounmap(ptr noundef %158) #11
  %159 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pcidev27.i, align 4
  call void @pci_disable_device(ptr noundef %160) #11
  call void @kfree(ptr noundef %call1.i.i.i) #11
  br label %if.then

if.end227.i:                                      ; preds = %do.body213.i
  %161 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pcidev27.i, align 4
  %dev229.i = getelementptr inbounds %struct.pci_dev, ptr %162, i32 0, i32 44
  %tsq.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 10
  %dma.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 10, i32 1
  %call.i1017.i = call ptr @dma_alloc_attrs(ptr noundef %dev229.i, i32 noundef 16384, ptr noundef %dma.i, i32 noundef 3264, i32 noundef 0) #11
  %163 = ptrtoint ptr %tsq.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call.i1017.i, ptr %tsq.i, align 32
  %cmp234.i = icmp eq ptr %call.i1017.i, null
  br i1 %cmp234.i, label %do.end238.i, label %if.end241.i

do.end238.i:                                      ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #13
  %call240.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %inc) #14
  %164 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pcidev27.i, align 4
  %irq.i89 = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 46
  %166 = ptrtoint ptr %irq.i89 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %irq.i89, align 4
  %call47.i90 = call ptr @free_irq(i32 noundef %167, ptr noundef %call1.i.i.i) #11
  %168 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %membase30.i, align 8
  call void @iounmap(ptr noundef %169) #11
  %170 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pcidev27.i, align 4
  call void @pci_disable_device(ptr noundef %171) #11
  call void @kfree(ptr noundef %call1.i.i.i) #11
  br label %if.then

if.end241.i:                                      ; preds = %if.end227.i
  %172 = ptrtoint ptr %call.i1017.i to i32
  %add.i = add i32 %172, 8191
  %and244.i = and i32 %add.i, -8192
  %173 = inttoptr i32 %and244.i to ptr
  %base.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 10, i32 2
  %174 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %173, ptr %base.i, align 8
  %next.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 10, i32 3
  %175 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %173, ptr %next.i, align 4
  %add.ptr251.i = getelementptr %struct.ns_tsi, ptr %173, i32 1023
  %last.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 10, i32 4
  %176 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %add.ptr251.i, ptr %last.i, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end241.i
  %j.01057.i = phi i32 [ 0, %if.end241.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %177 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base.i, align 8
  %word_2.i = getelementptr %struct.ns_tsi, ptr %178, i32 %j.01057.i, i32 1
  %179 = ptrtoint ptr %word_2.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 128, ptr %word_2.i, align 4
  %inc.i = add nuw nsw i32 %j.01057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %do.body257.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.body257.i:                                     ; preds = %for.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @arm_heavy_mb() #11
  %180 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %membase30.i, align 8
  %add.ptr261.i = getelementptr i8, ptr %181, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr261.i, i32 0) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !354
  call void @arm_heavy_mb() #11
  %182 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %dma.i, align 4
  %add267.i = add i32 %183, 8191
  %and268.i = and i32 %add267.i, -8192
  %184 = call i32 @llvm.bswap.i32(i32 %and268.i) #11
  %185 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %membase30.i, align 8
  %add.ptr270.i = getelementptr i8, ptr %186, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr270.i, i32 %184) #11, !srcloc !320
  %187 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pcidev27.i, align 4
  %dev275.i = getelementptr inbounds %struct.pci_dev, ptr %188, i32 0, i32 44
  %rsq.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 11
  %dma276.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 11, i32 1
  %call.i1018.i = call ptr @dma_alloc_attrs(ptr noundef %dev275.i, i32 noundef 16384, ptr noundef %dma276.i, i32 noundef 3264, i32 noundef 0) #11
  %189 = ptrtoint ptr %rsq.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call.i1018.i, ptr %rsq.i, align 4
  %cmp282.i = icmp eq ptr %call.i1018.i, null
  br i1 %cmp282.i, label %do.end286.i, label %if.end289.i

do.end286.i:                                      ; preds = %do.body257.i
  call void @__sanitizer_cov_trace_pc() #13
  %call288.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %inc) #14
  %190 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pcidev27.i, align 4
  %dev39.i79 = getelementptr inbounds %struct.pci_dev, ptr %191, i32 0, i32 44
  %192 = ptrtoint ptr %tsq.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %tsq.i, align 32
  %194 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev39.i79, i32 noundef 16384, ptr noundef %193, i32 noundef %195, i32 noundef 0) #11
  %196 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pcidev27.i, align 4
  %irq.i83 = getelementptr inbounds %struct.pci_dev, ptr %197, i32 0, i32 46
  %198 = ptrtoint ptr %irq.i83 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %irq.i83, align 4
  %call47.i84 = call ptr @free_irq(i32 noundef %199, ptr noundef %call1.i.i.i) #11
  %200 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %membase30.i, align 8
  call void @iounmap(ptr noundef %201) #11
  %202 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %pcidev27.i, align 4
  call void @pci_disable_device(ptr noundef %203) #11
  call void @kfree(ptr noundef %call1.i.i.i) #11
  br label %if.then

if.end289.i:                                      ; preds = %do.body257.i
  %204 = ptrtoint ptr %call.i1018.i to i32
  %add292.i = add i32 %204, 8191
  %and293.i = and i32 %add292.i, -8192
  %205 = inttoptr i32 %and293.i to ptr
  %base295.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 11, i32 2
  %206 = ptrtoint ptr %base295.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %205, ptr %base295.i, align 4
  %next299.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 11, i32 3
  %207 = ptrtoint ptr %next299.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %205, ptr %next299.i, align 128
  %add.ptr302.i = getelementptr %struct.ns_rsqe, ptr %205, i32 511
  %last304.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 11, i32 4
  %208 = ptrtoint ptr %last304.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %add.ptr302.i, ptr %last304.i, align 4
  br label %for.body307.i

for.body307.i:                                    ; preds = %for.body307.i.for.body307.i_crit_edge, %if.end289.i
  %j.11058.i = phi i32 [ 0, %if.end289.i ], [ %inc312.i, %for.body307.i.for.body307.i_crit_edge ]
  %209 = ptrtoint ptr %base295.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base295.i, align 4
  %word_4.i = getelementptr %struct.ns_rsqe, ptr %210, i32 %j.11058.i, i32 3
  %211 = ptrtoint ptr %word_4.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %word_4.i, align 4
  %inc312.i = add nuw nsw i32 %j.11058.i, 1
  %exitcond1073.not.i = icmp eq i32 %inc312.i, 512
  br i1 %exitcond1073.not.i, label %do.body314.i, label %for.body307.i.for.body307.i_crit_edge

for.body307.i.for.body307.i_crit_edge:            ; preds = %for.body307.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body307.i

do.body314.i:                                     ; preds = %for.body307.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !355
  call void @arm_heavy_mb() #11
  %212 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %membase30.i, align 8
  %add.ptr318.i = getelementptr i8, ptr %213, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr318.i, i32 0) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !356
  call void @arm_heavy_mb() #11
  %214 = ptrtoint ptr %dma276.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %dma276.i, align 8
  %add324.i = add i32 %215, 8191
  %and325.i = and i32 %add324.i, -8192
  %216 = call i32 @llvm.bswap.i32(i32 %and325.i) #11
  %217 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %membase30.i, align 8
  %add.ptr327.i = getelementptr i8, ptr %218, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr327.i, i32 %216) #11, !srcloc !320
  %scq1.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 13
  %219 = ptrtoint ptr %scq1.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %scq1.i, align 4
  %scq2.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 14
  %220 = ptrtoint ptr %scq2.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %scq2.i, align 16
  %call331.i = call fastcc ptr @get_scq(ptr noundef nonnull %call1.i.i.i, i32 noundef 8192, i32 noundef 124916) #11
  %scq0.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 12
  %221 = ptrtoint ptr %scq0.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call331.i, ptr %scq0.i, align 8
  %cmp333.i = icmp eq ptr %call331.i, null
  br i1 %cmp333.i, label %do.end337.i, label %if.end340.i

do.end337.i:                                      ; preds = %do.body314.i
  call void @__sanitizer_cov_trace_pc() #13
  %call339.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %inc) #14
  %222 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %pcidev27.i, align 4
  %dev.i72 = getelementptr inbounds %struct.pci_dev, ptr %223, i32 0, i32 44
  %224 = ptrtoint ptr %rsq.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rsq.i, align 4
  %226 = ptrtoint ptr %dma276.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %dma276.i, align 8
  call void @dma_free_attrs(ptr noundef %dev.i72, i32 noundef 16384, ptr noundef %225, i32 noundef %227, i32 noundef 0) #11
  %228 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %pcidev27.i, align 4
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %229, i32 0, i32 44
  %230 = ptrtoint ptr %tsq.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %tsq.i, align 32
  %232 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev39.i, i32 noundef 16384, ptr noundef %231, i32 noundef %233, i32 noundef 0) #11
  %234 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pcidev27.i, align 4
  %irq.i76 = getelementptr inbounds %struct.pci_dev, ptr %235, i32 0, i32 46
  %236 = ptrtoint ptr %irq.i76 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %irq.i76, align 4
  %call47.i = call ptr @free_irq(i32 noundef %237, ptr noundef %call1.i.i.i) #11
  %238 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %membase30.i, align 8
  call void @iounmap(ptr noundef %239) #11
  %240 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %pcidev27.i, align 4
  call void @pci_disable_device(ptr noundef %241) #11
  call void @kfree(ptr noundef %call1.i.i.i) #11
  br label %if.then

if.end340.i:                                      ; preds = %do.body314.i
  %dma342.i = getelementptr inbounds %struct.scq_info, ptr %call331.i, i32 0, i32 1
  %242 = ptrtoint ptr %dma342.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %dma342.i, align 4
  %base344.i = getelementptr inbounds %struct.scq_info, ptr %call331.i, i32 0, i32 2
  %244 = ptrtoint ptr %base344.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %base344.i, align 4
  %246 = ptrtoint ptr %245 to i32
  %247 = ptrtoint ptr %call331.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %call331.i, align 4
  %249 = ptrtoint ptr %248 to i32
  %sub.i = add i32 %243, %246
  %add347.i = sub i32 %sub.i, %249
  %250 = ptrtoint ptr %u32d.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %add347.i, ptr %u32d.i, align 4
  %251 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %3, align 4
  %252 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 -1, ptr %4, align 4
  %253 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 0, ptr %5, align 4
  %call2.i56 = call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock.i) #11
  br label %while.cond.i60

while.cond.i60:                                   ; preds = %while.cond.i60.while.cond.i60_crit_edge, %if.end340.i
  %254 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i58 = getelementptr i8, ptr %255, i32 24
  %256 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  %257 = and i32 %256, 131072
  %tobool.not.i59 = icmp eq i32 %257, 0
  br i1 %tobool.not.i59, label %do.body10.i68.preheader, label %while.cond.i60.while.cond.i60_crit_edge

while.cond.i60.while.cond.i60_crit_edge:          ; preds = %while.cond.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i60

do.body10.i68.preheader:                          ; preds = %while.cond.i60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %258 = ptrtoint ptr %u32d.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %u32d.i, align 4
  %260 = call i32 @llvm.bswap.i32(i32 %259) #11
  %261 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %membase30.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %260) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %incdec.ptr.i64.1 = getelementptr inbounds [4 x i32], ptr %u32d.i, i32 0, i32 2
  %263 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %3, align 4
  %265 = call i32 @llvm.bswap.i32(i32 %264) #11
  %266 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %membase30.i, align 8
  %add.ptr14.i65.1 = getelementptr i8, ptr %267, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i65.1, i32 %265) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %incdec.ptr.i64.2 = getelementptr inbounds [4 x i32], ptr %u32d.i, i32 0, i32 3
  %268 = ptrtoint ptr %incdec.ptr.i64.1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %incdec.ptr.i64.1, align 4
  %270 = call i32 @llvm.bswap.i32(i32 %269) #11
  %271 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %membase30.i, align 8
  %add.ptr14.i65.2 = getelementptr i8, ptr %272, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i65.2, i32 %270) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %273 = ptrtoint ptr %incdec.ptr.i64.2 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %incdec.ptr.i64.2, align 4
  %275 = call i32 @llvm.bswap.i32(i32 %274) #11
  %276 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %membase30.i, align 8
  %add.ptr14.i65.3 = getelementptr i8, ptr %277, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i65.3, i32 %275) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  call void @arm_heavy_mb() #11
  %278 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %membase30.i, align 8
  %add.ptr22.i69 = getelementptr i8, ptr %279, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i69, i32 -744552640) #11, !srcloc !320
  call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock.i, i32 noundef %call2.i56) #11
  %call2.i40 = call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock.i) #11
  br label %while.cond.i44

while.cond.i44:                                   ; preds = %while.cond.i44.while.cond.i44_crit_edge, %do.body10.i68.preheader
  %280 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %281, i32 24
  %282 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  %283 = and i32 %282, 131072
  %tobool.not.i43 = icmp eq i32 %283, 0
  br i1 %tobool.not.i43, label %do.body10.i52.preheader, label %while.cond.i44.while.cond.i44_crit_edge

while.cond.i44.while.cond.i44_crit_edge:          ; preds = %while.cond.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i44

do.body10.i52.preheader:                          ; preds = %while.cond.i44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %284 = ptrtoint ptr %u32d.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %u32d.i, align 4
  %286 = call i32 @llvm.bswap.i32(i32 %285) #11
  %287 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %membase30.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %286) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %289 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %3, align 4
  %291 = call i32 @llvm.bswap.i32(i32 %290) #11
  %292 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %membase30.i, align 8
  %add.ptr14.i49.1 = getelementptr i8, ptr %293, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i49.1, i32 %291) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %294 = ptrtoint ptr %incdec.ptr.i64.1 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %incdec.ptr.i64.1, align 4
  %296 = call i32 @llvm.bswap.i32(i32 %295) #11
  %297 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %membase30.i, align 8
  %add.ptr14.i49.2 = getelementptr i8, ptr %298, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i49.2, i32 %296) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %299 = ptrtoint ptr %incdec.ptr.i64.2 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %incdec.ptr.i64.2, align 4
  %301 = call i32 @llvm.bswap.i32(i32 %300) #11
  %302 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %membase30.i, align 8
  %add.ptr14.i49.3 = getelementptr i8, ptr %303, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i49.3, i32 %301) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  call void @arm_heavy_mb() #11
  %304 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %membase30.i, align 8
  %add.ptr22.i53 = getelementptr i8, ptr %305, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i53, i32 -1549859008) #11, !srcloc !320
  call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock.i, i32 noundef %call2.i40) #11
  %call2.i24 = call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock.i) #11
  br label %while.cond.i28

while.cond.i28:                                   ; preds = %while.cond.i28.while.cond.i28_crit_edge, %do.body10.i52.preheader
  %306 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i26 = getelementptr i8, ptr %307, i32 24
  %308 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  %309 = and i32 %308, 131072
  %tobool.not.i27 = icmp eq i32 %309, 0
  br i1 %tobool.not.i27, label %do.body10.i36.preheader, label %while.cond.i28.while.cond.i28_crit_edge

while.cond.i28.while.cond.i28_crit_edge:          ; preds = %while.cond.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i28

do.body10.i36.preheader:                          ; preds = %while.cond.i28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %310 = ptrtoint ptr %u32d.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %u32d.i, align 4
  %312 = call i32 @llvm.bswap.i32(i32 %311) #11
  %313 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %membase30.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %312) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %315 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %3, align 4
  %317 = call i32 @llvm.bswap.i32(i32 %316) #11
  %318 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %membase30.i, align 8
  %add.ptr14.i33.1 = getelementptr i8, ptr %319, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i33.1, i32 %317) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %320 = ptrtoint ptr %incdec.ptr.i64.1 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %incdec.ptr.i64.1, align 4
  %322 = call i32 @llvm.bswap.i32(i32 %321) #11
  %323 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %membase30.i, align 8
  %add.ptr14.i33.2 = getelementptr i8, ptr %324, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i33.2, i32 %322) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %325 = ptrtoint ptr %incdec.ptr.i64.2 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %incdec.ptr.i64.2, align 4
  %327 = call i32 @llvm.bswap.i32(i32 %326) #11
  %328 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %membase30.i, align 8
  %add.ptr14.i33.3 = getelementptr i8, ptr %329, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i33.3, i32 %327) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  call void @arm_heavy_mb() #11
  %330 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %membase30.i, align 8
  %add.ptr22.i37 = getelementptr i8, ptr %331, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i37, i32 1939801920) #11, !srcloc !320
  call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock.i, i32 noundef %call2.i24) #11
  %332 = ptrtoint ptr %scq0.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %scq0.i, align 8
  %scd.i = getelementptr inbounds %struct.scq_info, ptr %333, i32 0, i32 8
  %334 = ptrtoint ptr %scd.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 124916, ptr %scd.i, align 4
  %tst_addr.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 20
  %335 = ptrtoint ptr %tst_addr.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store volatile i32 114688, ptr %tst_addr.i, align 8
  %tst_free_entries.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 21
  %336 = ptrtoint ptr %tst_free_entries.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store volatile i32 2340, ptr %tst_free_entries.i, align 4
  %337 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 1073741824, ptr %data.i, align 4
  br label %for.body360.i

for.body360.i:                                    ; preds = %for.body360.i.for.body360.i_crit_edge, %do.body10.i36.preheader
  %j.21059.i = phi i32 [ 0, %do.body10.i36.preheader ], [ %inc363.i, %for.body360.i.for.body360.i_crit_edge ]
  %add361.i = add nuw nsw i32 %j.21059.i, 114688
  call fastcc void @ns_write_sram(ptr noundef %call1.i.i.i, i32 noundef %add361.i, ptr noundef nonnull %data.i, i32 noundef 1) #11
  %inc363.i = add nuw nsw i32 %j.21059.i, 1
  %exitcond1074.not.i = icmp eq i32 %inc363.i, 2340
  br i1 %exitcond1074.not.i, label %for.end364.i, label %for.body360.i.for.body360.i_crit_edge

for.body360.i.for.body360.i_crit_edge:            ; preds = %for.body360.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body360.i

for.end364.i:                                     ; preds = %for.body360.i
  %338 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 1610727424, ptr %data.i, align 4
  %call2.i8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock.i) #11
  br label %while.cond.i12

while.cond.i12:                                   ; preds = %while.cond.i12.while.cond.i12_crit_edge, %for.end364.i
  %339 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %340, i32 24
  %341 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  %342 = and i32 %341, 131072
  %tobool.not.i11 = icmp eq i32 %342, 0
  br i1 %tobool.not.i11, label %do.body10.i20, label %while.cond.i12.while.cond.i12_crit_edge

while.cond.i12.while.cond.i12_crit_edge:          ; preds = %while.cond.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i12

do.body10.i20:                                    ; preds = %while.cond.i12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %343 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %data.i, align 4
  %345 = call i32 @llvm.bswap.i32(i32 %344) #11
  %346 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %membase30.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %347, i32 %345) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  call void @arm_heavy_mb() #11
  %348 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %membase30.i, align 8
  %add.ptr22.i21 = getelementptr i8, ptr %349, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i21, i32 -1876687040) #11, !srcloc !320
  call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock.i, i32 noundef %call2.i8) #11
  br label %for.body367.i

for.body367.i:                                    ; preds = %for.body367.i.for.body367.i_crit_edge, %do.body10.i20
  %j.31060.i = phi i32 [ 0, %do.body10.i20 ], [ %inc370.i, %for.body367.i.for.body367.i_crit_edge ]
  %add368.i = add nuw nsw i32 %j.31060.i, 117029
  call fastcc void @ns_write_sram(ptr noundef %call1.i.i.i, i32 noundef %add368.i, ptr noundef nonnull %data.i, i32 noundef 1) #11
  %inc370.i = add nuw nsw i32 %j.31060.i, 1
  %exitcond1075.not.i = icmp eq i32 %inc370.i, 2340
  br i1 %exitcond1075.not.i, label %for.end371.i, label %for.body367.i.for.body367.i_crit_edge

for.body367.i.for.body367.i_crit_edge:            ; preds = %for.body367.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body367.i

for.end371.i:                                     ; preds = %for.body367.i
  %350 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 1610729765, ptr %data.i, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock.i) #11
  br label %while.cond.i5

while.cond.i5:                                    ; preds = %while.cond.i5.while.cond.i5_crit_edge, %for.end371.i
  %351 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %membase30.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %352, i32 24
  %353 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  %354 = and i32 %353, 131072
  %tobool.not.i4 = icmp eq i32 %354, 0
  br i1 %tobool.not.i4, label %do.body10.i, label %while.cond.i5.while.cond.i5_crit_edge

while.cond.i5.while.cond.i5_crit_edge:            ; preds = %while.cond.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i5

do.body10.i:                                      ; preds = %while.cond.i5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  call void @arm_heavy_mb() #11
  %355 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %data.i, align 4
  %357 = call i32 @llvm.bswap.i32(i32 %356) #11
  %358 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %membase30.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %359, i32 %357) #11, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  call void @arm_heavy_mb() #11
  %360 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %membase30.i, align 8
  %add.ptr22.i = getelementptr i8, ptr %361, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 608765760) #11, !srcloc !320
  call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock.i, i32 noundef %call2.i) #11
  %uglygep.i = getelementptr i8, ptr %call1.i.i.i, i32 115088
  %362 = call ptr @memset(ptr %uglygep.i, i32 0, i32 9360)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !357
  call void @arm_heavy_mb() #11
  %363 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %membase30.i, align 8
  %add.ptr383.i = getelementptr i8, ptr %364, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr383.i, i32 1792) #11, !srcloc !320
  %365 = ptrtoint ptr %u32d.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 0, ptr %u32d.i, align 4
  %366 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 0, ptr %3, align 4
  %367 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 0, ptr %4, align 4
  %368 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 -1, ptr %5, align 4
  %369 = ptrtoint ptr %rct_size.i113 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %rct_size.i113, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %cmp3901062.i = icmp sgt i32 %370, 0
  br i1 %cmp3901062.i, label %do.body10.i.for.body391.i_crit_edge, label %do.body10.i.for.end395.i_crit_edge

do.body10.i.for.end395.i_crit_edge:               ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end395.i

do.body10.i.for.body391.i_crit_edge:              ; preds = %do.body10.i
  br label %for.body391.i

for.body391.i:                                    ; preds = %for.body391.i.for.body391.i_crit_edge, %do.body10.i.for.body391.i_crit_edge
  %j.51063.i = phi i32 [ %inc394.i, %for.body391.i.for.body391.i_crit_edge ], [ 0, %do.body10.i.for.body391.i_crit_edge ]
  %mul.i = shl i32 %j.51063.i, 2
  call fastcc void @ns_write_sram(ptr noundef %call1.i.i.i, i32 noundef %mul.i, ptr noundef nonnull %u32d.i, i32 noundef 4) #11
  %inc394.i = add nuw nsw i32 %j.51063.i, 1
  %371 = ptrtoint ptr %rct_size.i113 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %rct_size.i113, align 16
  %cmp390.i = icmp slt i32 %inc394.i, %372
  br i1 %cmp390.i, label %for.body391.i.for.body391.i_crit_edge, label %for.body391.i.for.end395.i_crit_edge

for.body391.i.for.end395.i_crit_edge:             ; preds = %for.body391.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end395.i

for.body391.i.for.body391.i_crit_edge:            ; preds = %for.body391.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body391.i

for.end395.i:                                     ; preds = %for.body391.i.for.end395.i_crit_edge, %do.body10.i.for.end395.i_crit_edge
  %vcmap.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 22
  %373 = call ptr @memset(ptr %vcmap.i, i32 0, i32 114688)
  %uglygep1076.i = getelementptr i8, ptr %call1.i.i.i, i32 124448
  %374 = call ptr @memset(ptr %uglygep1076.i, i32 0, i32 1840)
  %sbnr.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 25
  %375 = ptrtoint ptr %sbnr.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 8, ptr %sbnr.i, align 16
  %init.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 25, i32 1
  %376 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 32, ptr %init.i, align 4
  %max.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 25, i32 2
  %377 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 64, ptr %max.i, align 8
  %lbnr.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 26
  %378 = ptrtoint ptr %lbnr.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 8, ptr %lbnr.i, align 4
  %init408.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 26, i32 1
  %379 = ptrtoint ptr %init408.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 24, ptr %init408.i, align 32
  %max410.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 26, i32 2
  %380 = ptrtoint ptr %max410.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 48, ptr %max410.i, align 4
  %iovnr.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 28
  %381 = ptrtoint ptr %iovnr.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 8, ptr %iovnr.i, align 4
  %init413.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 28, i32 1
  %382 = ptrtoint ptr %init413.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 48, ptr %init413.i, align 8
  %max415.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 28, i32 2
  %383 = ptrtoint ptr %max415.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 80, ptr %max415.i, align 4
  %hbnr.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 27
  %384 = ptrtoint ptr %hbnr.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 6, ptr %hbnr.i, align 8
  %init418.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 27, i32 1
  %385 = ptrtoint ptr %init418.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 8, ptr %init418.i, align 4
  %max420.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 27, i32 2
  %386 = ptrtoint ptr %max420.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 10, ptr %max420.i, align 16
  %sm_handle.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 31
  %efbie.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 19
  %387 = call ptr @memset(ptr %sm_handle.i, i32 0, i32 16)
  %388 = ptrtoint ptr %efbie.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store volatile i32 1, ptr %efbie.i, align 4
  %idr.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %idr.i, ptr noundef nonnull @.str.119, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 1
  %389 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 2
  %390 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr null, ptr %xa_head.i.i.i.i, align 16
  %idr_base.i.i.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 1
  %391 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 8, i32 2
  %392 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 0, ptr %idr_next.i.i.i, align 8
  %hbpool.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 17
  %queue.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 17, i32 1
  %lock.i.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 17, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %393 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %queue.i, ptr %queue.i, align 16
  %prev.i.i.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 17, i32 1, i32 0, i32 0, i32 1
  %394 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 17, i32 1, i32 1
  %395 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 0, ptr %qlen.i.i.i, align 8
  %396 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store volatile i32 0, ptr %hbpool.i, align 4
  %call.i1019.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 3264) #11
  %cmp426.i = icmp eq ptr %call.i1019.i, null
  br i1 %cmp426.i, label %for.end395.i.cleanup.thread.i_crit_edge, label %for.inc441.i

for.end395.i.cleanup.thread.i_crit_edge:          ; preds = %for.end395.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.inc441.6.i.cleanup.thread.i_crit_edge, %for.inc441.5.i.cleanup.thread.i_crit_edge, %for.inc441.4.i.cleanup.thread.i_crit_edge, %for.inc441.3.i.cleanup.thread.i_crit_edge, %for.inc441.2.i.cleanup.thread.i_crit_edge, %for.inc441.1.i.cleanup.thread.i_crit_edge, %for.inc441.i.cleanup.thread.i_crit_edge, %for.end395.i.cleanup.thread.i_crit_edge
  %j.71065.lcssa.i = phi i32 [ 0, %for.end395.i.cleanup.thread.i_crit_edge ], [ 1, %for.inc441.i.cleanup.thread.i_crit_edge ], [ 2, %for.inc441.1.i.cleanup.thread.i_crit_edge ], [ 3, %for.inc441.2.i.cleanup.thread.i_crit_edge ], [ 4, %for.inc441.3.i.cleanup.thread.i_crit_edge ], [ 5, %for.inc441.4.i.cleanup.thread.i_crit_edge ], [ 6, %for.inc441.5.i.cleanup.thread.i_crit_edge ], [ 7, %for.inc441.6.i.cleanup.thread.i_crit_edge ]
  %call432.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %inc, i32 noundef %j.71065.lcssa.i, i32 noundef 8) #14
  call fastcc void @ns_init_card_error(ptr noundef %call1.i.i.i, i32 noundef 13) #11
  br label %if.then

for.inc441.i:                                     ; preds = %for.end395.i
  %add.ptr435.i = getelementptr %struct.sk_buff, ptr %call.i1019.i, i32 0, i32 3, i32 12
  %397 = ptrtoint ptr %add.ptr435.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 -1, ptr %add.ptr435.i, align 4
  call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef nonnull %call.i1019.i) #11
  %398 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load volatile i32, ptr %hbpool.i, align 4
  %inc440.i = add i32 %399, 1
  store volatile i32 %inc440.i, ptr %hbpool.i, align 4
  %call.i1019.1.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 3264) #11
  %cmp426.1.i = icmp eq ptr %call.i1019.1.i, null
  br i1 %cmp426.1.i, label %for.inc441.i.cleanup.thread.i_crit_edge, label %for.inc441.1.i

for.inc441.i.cleanup.thread.i_crit_edge:          ; preds = %for.inc441.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

for.inc441.1.i:                                   ; preds = %for.inc441.i
  %add.ptr435.1.i = getelementptr %struct.sk_buff, ptr %call.i1019.1.i, i32 0, i32 3, i32 12
  %400 = ptrtoint ptr %add.ptr435.1.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 -1, ptr %add.ptr435.1.i, align 4
  call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef nonnull %call.i1019.1.i) #11
  %401 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load volatile i32, ptr %hbpool.i, align 4
  %inc440.1.i = add i32 %402, 1
  store volatile i32 %inc440.1.i, ptr %hbpool.i, align 4
  %call.i1019.2.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 3264) #11
  %cmp426.2.i = icmp eq ptr %call.i1019.2.i, null
  br i1 %cmp426.2.i, label %for.inc441.1.i.cleanup.thread.i_crit_edge, label %for.inc441.2.i

for.inc441.1.i.cleanup.thread.i_crit_edge:        ; preds = %for.inc441.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

for.inc441.2.i:                                   ; preds = %for.inc441.1.i
  %add.ptr435.2.i = getelementptr %struct.sk_buff, ptr %call.i1019.2.i, i32 0, i32 3, i32 12
  %403 = ptrtoint ptr %add.ptr435.2.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 -1, ptr %add.ptr435.2.i, align 4
  call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef nonnull %call.i1019.2.i) #11
  %404 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load volatile i32, ptr %hbpool.i, align 4
  %inc440.2.i = add i32 %405, 1
  store volatile i32 %inc440.2.i, ptr %hbpool.i, align 4
  %call.i1019.3.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 3264) #11
  %cmp426.3.i = icmp eq ptr %call.i1019.3.i, null
  br i1 %cmp426.3.i, label %for.inc441.2.i.cleanup.thread.i_crit_edge, label %for.inc441.3.i

for.inc441.2.i.cleanup.thread.i_crit_edge:        ; preds = %for.inc441.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

for.inc441.3.i:                                   ; preds = %for.inc441.2.i
  %add.ptr435.3.i = getelementptr %struct.sk_buff, ptr %call.i1019.3.i, i32 0, i32 3, i32 12
  %406 = ptrtoint ptr %add.ptr435.3.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 -1, ptr %add.ptr435.3.i, align 4
  call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef nonnull %call.i1019.3.i) #11
  %407 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load volatile i32, ptr %hbpool.i, align 4
  %inc440.3.i = add i32 %408, 1
  store volatile i32 %inc440.3.i, ptr %hbpool.i, align 4
  %call.i1019.4.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 3264) #11
  %cmp426.4.i = icmp eq ptr %call.i1019.4.i, null
  br i1 %cmp426.4.i, label %for.inc441.3.i.cleanup.thread.i_crit_edge, label %for.inc441.4.i

for.inc441.3.i.cleanup.thread.i_crit_edge:        ; preds = %for.inc441.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

for.inc441.4.i:                                   ; preds = %for.inc441.3.i
  %add.ptr435.4.i = getelementptr %struct.sk_buff, ptr %call.i1019.4.i, i32 0, i32 3, i32 12
  %409 = ptrtoint ptr %add.ptr435.4.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 -1, ptr %add.ptr435.4.i, align 4
  call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef nonnull %call.i1019.4.i) #11
  %410 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load volatile i32, ptr %hbpool.i, align 4
  %inc440.4.i = add i32 %411, 1
  store volatile i32 %inc440.4.i, ptr %hbpool.i, align 4
  %call.i1019.5.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 3264) #11
  %cmp426.5.i = icmp eq ptr %call.i1019.5.i, null
  br i1 %cmp426.5.i, label %for.inc441.4.i.cleanup.thread.i_crit_edge, label %for.inc441.5.i

for.inc441.4.i.cleanup.thread.i_crit_edge:        ; preds = %for.inc441.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

for.inc441.5.i:                                   ; preds = %for.inc441.4.i
  %add.ptr435.5.i = getelementptr %struct.sk_buff, ptr %call.i1019.5.i, i32 0, i32 3, i32 12
  %412 = ptrtoint ptr %add.ptr435.5.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 -1, ptr %add.ptr435.5.i, align 4
  call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef nonnull %call.i1019.5.i) #11
  %413 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load volatile i32, ptr %hbpool.i, align 4
  %inc440.5.i = add i32 %414, 1
  store volatile i32 %inc440.5.i, ptr %hbpool.i, align 4
  %call.i1019.6.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 3264) #11
  %cmp426.6.i = icmp eq ptr %call.i1019.6.i, null
  br i1 %cmp426.6.i, label %for.inc441.5.i.cleanup.thread.i_crit_edge, label %for.inc441.6.i

for.inc441.5.i.cleanup.thread.i_crit_edge:        ; preds = %for.inc441.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

for.inc441.6.i:                                   ; preds = %for.inc441.5.i
  %add.ptr435.6.i = getelementptr %struct.sk_buff, ptr %call.i1019.6.i, i32 0, i32 3, i32 12
  %415 = ptrtoint ptr %add.ptr435.6.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 -1, ptr %add.ptr435.6.i, align 4
  call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef nonnull %call.i1019.6.i) #11
  %416 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load volatile i32, ptr %hbpool.i, align 4
  %inc440.6.i = add i32 %417, 1
  store volatile i32 %inc440.6.i, ptr %hbpool.i, align 4
  %call.i1019.7.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 3264) #11
  %cmp426.7.i = icmp eq ptr %call.i1019.7.i, null
  br i1 %cmp426.7.i, label %for.inc441.6.i.cleanup.thread.i_crit_edge, label %for.inc441.7.i

for.inc441.6.i.cleanup.thread.i_crit_edge:        ; preds = %for.inc441.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

for.inc441.7.i:                                   ; preds = %for.inc441.6.i
  %add.ptr435.7.i = getelementptr %struct.sk_buff, ptr %call.i1019.7.i, i32 0, i32 3, i32 12
  %418 = ptrtoint ptr %add.ptr435.7.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 -1, ptr %add.ptr435.7.i, align 4
  call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef nonnull %call.i1019.7.i) #11
  %419 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load volatile i32, ptr %hbpool.i, align 4
  %inc440.7.i = add i32 %420, 1
  store volatile i32 %inc440.7.i, ptr %hbpool.i, align 4
  %lbpool.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 16
  %queue444.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 16, i32 1
  %lock.i1020.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 16, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i1020.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %421 = ptrtoint ptr %queue444.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %queue444.i, ptr %queue444.i, align 4
  %prev.i.i1021.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 16, i32 1, i32 0, i32 0, i32 1
  %422 = ptrtoint ptr %prev.i.i1021.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr %queue444.i, ptr %prev.i.i1021.i, align 8
  %qlen.i.i1022.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 16, i32 1, i32 1
  %423 = ptrtoint ptr %qlen.i.i1022.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 0, ptr %qlen.i.i1022.i, align 4
  %424 = ptrtoint ptr %lbpool.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store volatile i32 0, ptr %lbpool.i, align 16
  %rcbuf.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 35
  %rawcell.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 36
  %rawch.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 37
  br label %for.body449.i

for.body449.i:                                    ; preds = %for.inc476.i.for.body449.i_crit_edge, %for.inc441.7.i
  %j.81066.i = phi i32 [ 0, %for.inc441.7.i ], [ %inc477.i, %for.inc476.i.for.body449.i_crit_edge ]
  %call.i1023.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16432, i32 noundef 3264) #11
  %cmp451.i = icmp eq ptr %call.i1023.i, null
  br i1 %cmp451.i, label %cleanup473.i, label %if.end458.i

if.end458.i:                                      ; preds = %for.body449.i
  %add.ptr461.i = getelementptr %struct.sk_buff, ptr %call.i1023.i, i32 0, i32 3, i32 12
  %425 = ptrtoint ptr %add.ptr461.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 1, ptr %add.ptr461.i, align 4
  call void @skb_queue_tail(ptr noundef %queue444.i, ptr noundef nonnull %call.i1023.i) #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1023.i, i32 0, i32 19
  %426 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i1024.i = getelementptr i8, ptr %427, i32 48
  store ptr %add.ptr.i1024.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1023.i, i32 0, i32 16
  %428 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %429, i32 48
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  call fastcc void @push_rxbufs(ptr noundef %call1.i.i.i, ptr noundef nonnull %call.i1023.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.81066.i)
  %cmp465.i = icmp eq i32 %j.81066.i, 1
  br i1 %cmp465.i, label %if.then466.i, label %if.end458.i.for.inc476.i_crit_edge

if.end458.i.for.inc476.i_crit_edge:               ; preds = %if.end458.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc476.i

if.then466.i:                                     ; preds = %if.end458.i
  call void @__sanitizer_cov_trace_pc() #13
  %430 = ptrtoint ptr %rcbuf.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr %call.i1023.i, ptr %rcbuf.i, align 8
  %431 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %data.i.i, align 4
  %433 = ptrtoint ptr %rawcell.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %432, ptr %rawcell.i, align 4
  %dma471.i = getelementptr %struct.sk_buff, ptr %call.i1023.i, i32 0, i32 3, i32 16
  %434 = ptrtoint ptr %dma471.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %dma471.i, align 4
  %436 = ptrtoint ptr %rawch.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %435, ptr %rawch.i, align 32
  br label %for.inc476.i

cleanup473.i:                                     ; preds = %for.body449.i
  call void @__sanitizer_cov_trace_pc() #13
  %call457.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %inc, i32 noundef %j.81066.i, i32 noundef 24) #14
  call fastcc void @ns_init_card_error(ptr noundef %call1.i.i.i, i32 noundef 14) #11
  br label %if.then

for.inc476.i:                                     ; preds = %if.then466.i, %if.end458.i.for.inc476.i_crit_edge
  %inc477.i = add nuw nsw i32 %j.81066.i, 1
  %exitcond1078.not.i = icmp eq i32 %inc477.i, 24
  br i1 %exitcond1078.not.i, label %for.end478.i, label %for.inc476.i.for.body449.i_crit_edge

for.inc476.i.for.body449.i_crit_edge:             ; preds = %for.inc476.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body449.i

for.end478.i:                                     ; preds = %for.inc476.i
  %437 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %membase30.i, align 8
  %add.ptr482.i = getelementptr i8, ptr %438, i32 24
  %439 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr482.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !358
  %440 = lshr i32 %439, 7
  %shr.i = and i32 %440, 510
  %441 = ptrtoint ptr %lbnr.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %lbnr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %442)
  %cmp489.i = icmp ult i32 %shr.i, %442
  br i1 %cmp489.i, label %do.end493.i, label %if.end496.i

do.end493.i:                                      ; preds = %for.end478.i
  call void @__sanitizer_cov_trace_pc() #13
  %call495.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %inc, i32 noundef 24, i32 noundef %shr.i) #14
  call fastcc void @ns_init_card_error(ptr noundef %call1.i.i.i, i32 noundef 14) #11
  br label %if.then

if.end496.i:                                      ; preds = %for.end478.i
  %sbpool.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 15
  %queue497.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 15, i32 1
  %lock.i1025.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 15, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i1025.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %443 = ptrtoint ptr %queue497.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %queue497.i, ptr %queue497.i, align 8
  %prev.i.i1026.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 15, i32 1, i32 0, i32 0, i32 1
  %444 = ptrtoint ptr %prev.i.i1026.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %queue497.i, ptr %prev.i.i1026.i, align 4
  %qlen.i.i1027.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 15, i32 1, i32 1
  %445 = ptrtoint ptr %qlen.i.i1027.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 0, ptr %qlen.i.i1027.i, align 32
  %446 = ptrtoint ptr %sbpool.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store volatile i32 0, ptr %sbpool.i, align 4
  br label %for.body502.i

for.body502.i:                                    ; preds = %for.inc521.i.for.body502.i_crit_edge, %if.end496.i
  %j.91067.i = phi i32 [ 0, %if.end496.i ], [ %inc522.i, %for.inc521.i.for.body502.i_crit_edge ]
  %call.i1028.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 52, i32 noundef 3264) #11
  %cmp504.i = icmp eq ptr %call.i1028.i, null
  br i1 %cmp504.i, label %cleanup518.thread.i, label %for.inc521.i

cleanup518.thread.i:                              ; preds = %for.body502.i
  call void @__sanitizer_cov_trace_pc() #13
  %call510.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %inc, i32 noundef %j.91067.i, i32 noundef 32) #14
  call fastcc void @ns_init_card_error(ptr noundef %call1.i.i.i, i32 noundef 15) #11
  br label %if.then

for.inc521.i:                                     ; preds = %for.body502.i
  %add.ptr514.i = getelementptr %struct.sk_buff, ptr %call.i1028.i, i32 0, i32 3, i32 12
  %447 = ptrtoint ptr %add.ptr514.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 0, ptr %add.ptr514.i, align 4
  call void @skb_queue_tail(ptr noundef %queue497.i, ptr noundef nonnull %call.i1028.i) #11
  %data.i1029.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1028.i, i32 0, i32 19
  %448 = ptrtoint ptr %data.i1029.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %data.i1029.i, align 4
  %add.ptr.i1030.i = getelementptr i8, ptr %449, i32 4
  store ptr %add.ptr.i1030.i, ptr %data.i1029.i, align 4
  %tail.i1031.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1028.i, i32 0, i32 16
  %450 = ptrtoint ptr %tail.i1031.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %tail.i1031.i, align 8
  %add.ptr1.i1032.i = getelementptr i8, ptr %451, i32 4
  store ptr %add.ptr1.i1032.i, ptr %tail.i1031.i, align 8
  call fastcc void @push_rxbufs(ptr noundef %call1.i.i.i, ptr noundef nonnull %call.i1028.i) #11
  %inc522.i = add nuw nsw i32 %j.91067.i, 1
  %exitcond1079.not.i = icmp eq i32 %inc522.i, 32
  br i1 %exitcond1079.not.i, label %for.end523.i, label %for.inc521.i.for.body502.i_crit_edge

for.inc521.i.for.body502.i_crit_edge:             ; preds = %for.inc521.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body502.i

for.end523.i:                                     ; preds = %for.inc521.i
  %452 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %membase30.i, align 8
  %add.ptr527.i = getelementptr i8, ptr %453, i32 24
  %454 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr527.i) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !359
  %455 = shl i32 %454, 1
  %shr532.i = and i32 %455, 510
  %456 = ptrtoint ptr %sbnr.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %sbnr.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr532.i, i32 %457)
  %cmp535.i = icmp ult i32 %shr532.i, %457
  br i1 %cmp535.i, label %do.end539.i, label %if.end542.i

do.end539.i:                                      ; preds = %for.end523.i
  call void @__sanitizer_cov_trace_pc() #13
  %call541.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %inc, i32 noundef 32, i32 noundef %shr532.i) #14
  call fastcc void @ns_init_card_error(ptr noundef %call1.i.i.i, i32 noundef 15) #11
  br label %if.then

if.end542.i:                                      ; preds = %for.end523.i
  %iovpool.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 18
  %queue543.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 18, i32 1
  %lock.i1033.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 18, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i1033.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %458 = ptrtoint ptr %queue543.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr %queue543.i, ptr %queue543.i, align 4
  %prev.i.i1034.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 18, i32 1, i32 0, i32 0, i32 1
  %459 = ptrtoint ptr %prev.i.i1034.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %queue543.i, ptr %prev.i.i1034.i, align 16
  %qlen.i.i1035.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 18, i32 1, i32 1
  %460 = ptrtoint ptr %qlen.i.i1035.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 0, ptr %qlen.i.i1035.i, align 4
  %461 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store volatile i32 0, ptr %iovpool.i, align 8
  br label %for.body548.i

for.body548.i:                                    ; preds = %for.inc570.i.for.body548.i_crit_edge, %if.end542.i
  %j.101068.i = phi i32 [ 0, %if.end542.i ], [ %inc571.i, %for.inc570.i.for.body548.i_crit_edge ]
  %call.i1036.i = call ptr @__alloc_skb(i32 noundef 48, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %cmp550.i = icmp eq ptr %call.i1036.i, null
  br i1 %cmp550.i, label %cleanup567.thread.i, label %for.inc570.i

cleanup567.thread.i:                              ; preds = %for.body548.i
  call void @__sanitizer_cov_trace_pc() #13
  %call556.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %inc, i32 noundef %j.101068.i, i32 noundef 48) #14
  call fastcc void @ns_init_card_error(ptr noundef %call1.i.i.i, i32 noundef 16) #11
  br label %if.then

for.inc570.i:                                     ; preds = %for.body548.i
  %add.ptr560.i = getelementptr %struct.sk_buff, ptr %call.i1036.i, i32 0, i32 3, i32 12
  %462 = ptrtoint ptr %add.ptr560.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 -1, ptr %add.ptr560.i, align 4
  call void @skb_queue_tail(ptr noundef %queue543.i, ptr noundef nonnull %call.i1036.i) #11
  %463 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load volatile i32, ptr %iovpool.i, align 8
  %inc566.i = add i32 %464, 1
  store volatile i32 %inc566.i, ptr %iovpool.i, align 8
  %inc571.i = add nuw nsw i32 %j.101068.i, 1
  %exitcond1080.not.i = icmp eq i32 %inc571.i, 48
  br i1 %exitcond1080.not.i, label %for.end572.i, label %for.inc570.i.for.body548.i_crit_edge

for.inc570.i.for.body548.i_crit_edge:             ; preds = %for.inc570.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body548.i

for.end572.i:                                     ; preds = %for.inc570.i
  %465 = ptrtoint ptr %rct_size.i113 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %rct_size.i113, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %466)
  %cmp574.i = icmp eq i32 %466, 4096
  %..i = select i1 %cmp574.i, i32 663231537, i32 663362609
  %467 = ptrtoint ptr %efbie.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store volatile i32 1, ptr %efbie.i, align 4
  %468 = ptrtoint ptr %pcidev27.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %pcidev27.i, align 4
  %dev580.i = getelementptr inbounds %struct.pci_dev, ptr %469, i32 0, i32 44
  %call581.i = call ptr @atm_dev_register(ptr noundef nonnull @.str, ptr noundef %dev580.i, ptr noundef nonnull @atm_ops, i32 noundef -1, ptr noundef null) #11
  %470 = ptrtoint ptr %atmdev.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr %call581.i, ptr %atmdev.i, align 4
  %cmp584.i = icmp eq ptr %call581.i, null
  br i1 %cmp584.i, label %do.end588.i, label %if.end591.i

do.end588.i:                                      ; preds = %for.end572.i
  call void @__sanitizer_cov_trace_pc() #13
  %call590.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %inc) #14
  call fastcc void @ns_init_card_error(ptr noundef %call1.i.i.i, i32 noundef 17) #11
  br label %if.then

if.end591.i:                                      ; preds = %for.end572.i
  %471 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %arrayidx208.i, align 4
  %cmp593.i = icmp eq ptr %472, null
  br i1 %cmp593.i, label %if.end591.i.if.then598.i_crit_edge, label %lor.lhs.false.i

if.end591.i.if.then598.i_crit_edge:               ; preds = %if.end591.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then598.i

lor.lhs.false.i:                                  ; preds = %if.end591.i
  %esi.i = getelementptr inbounds %struct.atm_dev, ptr %call581.i, i32 0, i32 9
  %call597.i = call zeroext i1 @mac_pton(ptr noundef nonnull %472, ptr noundef %esi.i) #11
  br i1 %call597.i, label %lor.lhs.false.i.do.end616.i_crit_edge, label %lor.lhs.false.i.if.then598.i_crit_edge

lor.lhs.false.i.if.then598.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then598.i

lor.lhs.false.i.do.end616.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end616.i

if.then598.i:                                     ; preds = %lor.lhs.false.i.if.then598.i_crit_edge, %if.end591.i.if.then598.i_crit_edge
  %473 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %membase30.i, align 8
  %475 = ptrtoint ptr %atmdev.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %atmdev.i, align 4
  %esi601.i = getelementptr inbounds %struct.atm_dev, ptr %476, i32 0, i32 9
  call fastcc void @nicstar_read_eprom(ptr noundef %474, i8 noundef zeroext 108, ptr noundef %esi601.i) #11
  %477 = ptrtoint ptr %atmdev.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %atmdev.i, align 4
  %esi604.i = getelementptr inbounds %struct.atm_dev, ptr %478, i32 0, i32 9
  %479 = ptrtoint ptr %esi604.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %esi604.i, align 4
  %add.ptr.i1037.i = getelementptr %struct.atm_dev, ptr %478, i32 0, i32 9, i32 4
  %481 = ptrtoint ptr %add.ptr.i1037.i to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %add.ptr.i1037.i, align 2
  %conv.i.i = zext i16 %482 to i32
  %or.i.i = or i32 %480, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i1038.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i1038.i, label %if.then607.i, label %if.then598.i.do.end616.i_crit_edge

if.then598.i.do.end616.i_crit_edge:               ; preds = %if.then598.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end616.i

if.then607.i:                                     ; preds = %if.then598.i
  call void @__sanitizer_cov_trace_pc() #13
  %483 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %membase30.i, align 8
  call fastcc void @nicstar_read_eprom(ptr noundef %484, i8 noundef zeroext -10, ptr noundef %esi604.i) #11
  br label %do.end616.i

do.end616.i:                                      ; preds = %if.then607.i, %if.then598.i.do.end616.i_crit_edge, %lor.lhs.false.i.do.end616.i_crit_edge
  %485 = ptrtoint ptr %atmdev.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %atmdev.i, align 4
  %esi619.i = getelementptr inbounds %struct.atm_dev, ptr %486, i32 0, i32 9
  %call621.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %inc, ptr noundef %esi619.i) #14
  %487 = ptrtoint ptr %atmdev.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %atmdev.i, align 4
  %dev_data.i = getelementptr inbounds %struct.atm_dev, ptr %488, i32 0, i32 4
  %489 = ptrtoint ptr %dev_data.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %call1.i.i.i, ptr %dev_data.i, align 8
  %490 = ptrtoint ptr %vpibits1041.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %vpibits1041.i, align 4
  %conv.i = trunc i32 %491 to i8
  %492 = load ptr, ptr %atmdev.i, align 4
  %ci_range.i = getelementptr inbounds %struct.atm_dev, ptr %492, i32 0, i32 10
  %493 = ptrtoint ptr %ci_range.i to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 %conv.i, ptr %ci_range.i, align 2
  %494 = ptrtoint ptr %vcibits206.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %vcibits206.i, align 8
  %conv626.i = trunc i32 %495 to i8
  %496 = load ptr, ptr %atmdev.i, align 4
  %vci_bits.i = getelementptr inbounds %struct.atm_dev, ptr %496, i32 0, i32 10, i32 1
  %497 = ptrtoint ptr %vci_bits.i to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 %conv626.i, ptr %vci_bits.i, align 1
  %max_pcr629.i = getelementptr inbounds %struct.ns_dev, ptr %call1.i.i.i, i32 0, i32 3
  %498 = ptrtoint ptr %max_pcr629.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %max_pcr629.i, align 4
  %500 = load ptr, ptr %atmdev.i, align 4
  %link_rate.i = getelementptr inbounds %struct.atm_dev, ptr %500, i32 0, i32 13
  %501 = ptrtoint ptr %link_rate.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 %499, ptr %link_rate.i, align 4
  %502 = load ptr, ptr %atmdev.i, align 4
  %phy.i = getelementptr inbounds %struct.atm_dev, ptr %502, i32 0, i32 1
  %503 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr null, ptr %phy.i, align 4
  %504 = load i32, ptr %max_pcr629.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 353207, i32 %504)
  %cmp633.i = icmp eq i32 %504, 353207
  br i1 %cmp633.i, label %if.then635.i, label %do.end616.i.if.end638.i_crit_edge

do.end616.i.if.end638.i_crit_edge:                ; preds = %do.end616.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end638.i

if.then635.i:                                     ; preds = %do.end616.i
  call void @__sanitizer_cov_trace_pc() #13
  %505 = ptrtoint ptr %atmdev.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %atmdev.i, align 4
  %call637.i = call i32 @suni_init(ptr noundef %506) #11
  %507 = ptrtoint ptr %max_pcr629.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %.pr1052.i = load i32, ptr %max_pcr629.i, align 4
  br label %if.end638.i

if.end638.i:                                      ; preds = %if.then635.i, %do.end616.i.if.end638.i_crit_edge
  %508 = phi i32 [ %.pr1052.i, %if.then635.i ], [ %504, %do.end616.i.if.end638.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 59111, i32 %508)
  %cmp640.i = icmp eq i32 %508, 59111
  br i1 %cmp640.i, label %if.then642.i, label %if.end638.i.if.end645.i_crit_edge

if.end638.i.if.end645.i_crit_edge:                ; preds = %if.end638.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end645.i

if.then642.i:                                     ; preds = %if.end638.i
  call void @__sanitizer_cov_trace_pc() #13
  %509 = ptrtoint ptr %atmdev.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %atmdev.i, align 4
  %call644.i = call i32 @idt77105_init(ptr noundef %510) #11
  br label %if.end645.i

if.end645.i:                                      ; preds = %if.then642.i, %if.end638.i.if.end645.i_crit_edge
  %511 = ptrtoint ptr %atmdev.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %atmdev.i, align 4
  %phy647.i = getelementptr inbounds %struct.atm_dev, ptr %512, i32 0, i32 1
  %513 = ptrtoint ptr %phy647.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %phy647.i, align 4
  %tobool648.not.i = icmp eq ptr %514, null
  br i1 %tobool648.not.i, label %if.end645.i.ns_init_card.exit_crit_edge, label %land.lhs.true649.i

if.end645.i.ns_init_card.exit_crit_edge:          ; preds = %if.end645.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_init_card.exit

land.lhs.true649.i:                               ; preds = %if.end645.i
  %515 = ptrtoint ptr %514 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %514, align 4
  %tobool653.not.i = icmp eq ptr %516, null
  br i1 %tobool653.not.i, label %land.lhs.true649.i.ns_init_card.exit_crit_edge, label %if.then654.i

land.lhs.true649.i.ns_init_card.exit_crit_edge:   ; preds = %land.lhs.true649.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_init_card.exit

if.then654.i:                                     ; preds = %land.lhs.true649.i
  call void @__sanitizer_cov_trace_pc() #13
  %call659.i = call i32 %516(ptr noundef %512) #11
  br label %ns_init_card.exit

ns_init_card.exit:                                ; preds = %if.then654.i, %land.lhs.true649.i.ns_init_card.exit_crit_edge, %if.end645.i.ns_init_card.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  call void @arm_heavy_mb() #11
  %517 = call i32 @llvm.bswap.i32(i32 %..i) #11
  %518 = ptrtoint ptr %membase30.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %membase30.i, align 8
  %add.ptr672.i = getelementptr i8, ptr %519, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr672.i, i32 %517) #11, !srcloc !320
  %520 = load i32, ptr @num_cards, align 4
  %inc673.i = add i32 %520, 1
  store i32 %inc673.i, ptr @num_cards, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %u32d.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_latency.i) #11
  br label %cleanup

if.then:                                          ; preds = %do.end588.i, %cleanup567.thread.i, %do.end539.i, %cleanup518.thread.i, %do.end493.i, %cleanup473.i, %cleanup.thread.i, %do.end337.i, %do.end286.i, %do.end238.i, %do.end223.i, %do.end175.i, %do.end48.i, %do.end36.i, %do.end15.i, %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %u32d.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_latency.i) #11
  %521 = load i32, ptr @nicstar_init_one.index, align 4
  %dec = add i32 %521, -1
  store i32 %dec, ptr @nicstar_init_one.index, align 4
  %arrayidx1 = getelementptr [4 x ptr], ptr @cards, i32 0, i32 %521
  %522 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %522)
  store ptr null, ptr %arrayidx1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %ns_init_card.exit
  %retval.0 = phi i32 [ -19, %if.then ], [ 0, %ns_init_card.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nicstar_remove_one(ptr noundef %pcidev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @cards, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %atmdev = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %atmdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atmdev, align 4
  %phy = getelementptr inbounds %struct.atm_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %stop = getelementptr inbounds %struct.atmphy_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stop, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.lhs.true.do.body_crit_edge, label %if.then4

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 %11(ptr noundef %7) #11
  br label %do.body

do.body:                                          ; preds = %if.then4, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  tail call void @arm_heavy_mb() #11
  %membase = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !320
  %14 = ptrtoint ptr %atmdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %atmdev, align 4
  tail call void @atm_dev_deregister(ptr noundef %15) #11
  tail call void @pci_disable_device(ptr noundef %pcidev) #11
  %queue = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 17, i32 1
  %call15107 = tail call ptr @skb_dequeue(ptr noundef %queue) #11
  %cmp16.not108 = icmp eq ptr %call15107, null
  br i1 %cmp16.not108, label %do.body.while.cond23.preheader_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.cond23.preheader_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond23.preheader

while.cond23.preheader:                           ; preds = %while.body.while.cond23.preheader_crit_edge, %do.body.while.cond23.preheader_crit_edge
  %queue24 = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 18, i32 1
  %call25110 = tail call ptr @skb_dequeue(ptr noundef %queue24) #11
  %cmp26.not111 = icmp eq ptr %call25110, null
  br i1 %cmp26.not111, label %while.cond23.preheader.while.cond33.preheader_crit_edge, label %while.cond23.preheader.while.body27_crit_edge

while.cond23.preheader.while.body27_crit_edge:    ; preds = %while.cond23.preheader
  br label %while.body27

while.cond23.preheader.while.cond33.preheader_crit_edge: ; preds = %while.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body.while.body_crit_edge
  %call15109 = phi ptr [ %call15, %while.body.while.body_crit_edge ], [ %call15107, %do.body.while.body_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call15109, i32 noundef 1) #11
  %call15 = tail call ptr @skb_dequeue(ptr noundef %queue) #11
  %cmp16.not = icmp eq ptr %call15, null
  br i1 %cmp16.not, label %while.body.while.cond23.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.cond23.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond23.preheader

while.cond33.preheader:                           ; preds = %while.body27.while.cond33.preheader_crit_edge, %while.cond23.preheader.while.cond33.preheader_crit_edge
  %queue34 = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 16, i32 1
  %call35113 = tail call ptr @skb_dequeue(ptr noundef %queue34) #11
  %cmp36.not114 = icmp eq ptr %call35113, null
  br i1 %cmp36.not114, label %while.cond33.preheader.while.cond39.preheader_crit_edge, label %while.cond33.preheader.while.body37_crit_edge

while.cond33.preheader.while.body37_crit_edge:    ; preds = %while.cond33.preheader
  br label %while.body37

while.cond33.preheader.while.cond39.preheader_crit_edge: ; preds = %while.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond39.preheader

while.body27:                                     ; preds = %while.body27.while.body27_crit_edge, %while.cond23.preheader.while.body27_crit_edge
  %call25112 = phi ptr [ %call25, %while.body27.while.body27_crit_edge ], [ %call25110, %while.cond23.preheader.while.body27_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call25112, i32 noundef 1) #11
  %call25 = tail call ptr @skb_dequeue(ptr noundef %queue24) #11
  %cmp26.not = icmp eq ptr %call25, null
  br i1 %cmp26.not, label %while.body27.while.cond33.preheader_crit_edge, label %while.body27.while.body27_crit_edge

while.body27.while.body27_crit_edge:              ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body27

while.body27.while.cond33.preheader_crit_edge:    ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond33.preheader

while.cond39.preheader:                           ; preds = %while.body37.while.cond39.preheader_crit_edge, %while.cond33.preheader.while.cond39.preheader_crit_edge
  %queue40 = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 15, i32 1
  %call41116 = tail call ptr @skb_dequeue(ptr noundef %queue40) #11
  %cmp42.not117 = icmp eq ptr %call41116, null
  br i1 %cmp42.not117, label %while.cond39.preheader.while.end44_crit_edge, label %while.cond39.preheader.while.body43_crit_edge

while.cond39.preheader.while.body43_crit_edge:    ; preds = %while.cond39.preheader
  br label %while.body43

while.cond39.preheader.while.end44_crit_edge:     ; preds = %while.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end44

while.body37:                                     ; preds = %while.body37.while.body37_crit_edge, %while.cond33.preheader.while.body37_crit_edge
  %call35115 = phi ptr [ %call35, %while.body37.while.body37_crit_edge ], [ %call35113, %while.cond33.preheader.while.body37_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call35115, i32 noundef 1) #11
  %call35 = tail call ptr @skb_dequeue(ptr noundef %queue34) #11
  %cmp36.not = icmp eq ptr %call35, null
  br i1 %cmp36.not, label %while.body37.while.cond39.preheader_crit_edge, label %while.body37.while.body37_crit_edge

while.body37.while.body37_crit_edge:              ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body37

while.body37.while.cond39.preheader_crit_edge:    ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond39.preheader

while.body43:                                     ; preds = %while.body43.while.body43_crit_edge, %while.cond39.preheader.while.body43_crit_edge
  %call41118 = phi ptr [ %call41, %while.body43.while.body43_crit_edge ], [ %call41116, %while.cond39.preheader.while.body43_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call41118, i32 noundef 1) #11
  %call41 = tail call ptr @skb_dequeue(ptr noundef %queue40) #11
  %cmp42.not = icmp eq ptr %call41, null
  br i1 %cmp42.not, label %while.body43.while.end44_crit_edge, label %while.body43.while.body43_crit_edge

while.body43.while.body43_crit_edge:              ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body43

while.body43.while.end44_crit_edge:               ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end44

while.end44:                                      ; preds = %while.body43.while.end44_crit_edge, %while.cond39.preheader.while.end44_crit_edge
  %scq0 = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %scq0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scq0, align 4
  tail call fastcc void @free_scq(ptr noundef %1, ptr noundef %17, ptr noundef null)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.end44
  %j.2119 = phi i32 [ 0, %while.end44 ], [ %inc54, %for.inc.for.body_crit_edge ]
  %arrayidx46 = getelementptr %struct.ns_dev, ptr %1, i32 0, i32 24, i32 %j.2119
  %18 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx46, align 4
  %cmp47.not = icmp eq ptr %19, null
  br i1 %cmp47.not, label %for.body.for.inc_crit_edge, label %if.then48

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then48:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %scq = getelementptr inbounds %struct.vc_map, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scq, align 4
  %tx_vcc = getelementptr inbounds %struct.vc_map, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %tx_vcc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_vcc, align 4
  tail call fastcc void @free_scq(ptr noundef %1, ptr noundef %21, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %for.body.for.inc_crit_edge
  %inc54 = add nuw nsw i32 %j.2119, 1
  %exitcond.not = icmp eq i32 %inc54, 460
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %idr = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 8
  tail call void @idr_destroy(ptr noundef %idr) #11
  %pcidev55 = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %pcidev55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcidev55, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %rsq = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %rsq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rsq, align 4
  %dma = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 16384, ptr noundef %27, i32 noundef %29, i32 noundef 0) #11
  %30 = ptrtoint ptr %pcidev55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcidev55, align 4
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %tsq = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %tsq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tsq, align 4
  %dma61 = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %dma61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma61, align 4
  tail call void @dma_free_attrs(ptr noundef %dev58, i32 noundef 16384, ptr noundef %33, i32 noundef %35, i32 noundef 0) #11
  %36 = ptrtoint ptr %pcidev55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcidev55, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 46
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %call63 = tail call ptr @free_irq(i32 noundef %39, ptr noundef %1) #11
  %40 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %41) #11
  tail call void @kfree(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_init_card_error(ptr noundef %card, i32 noundef %error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %error)
  %cmp = icmp sgt i32 %error, 16
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !362
  tail call void @arm_heavy_mb() #11
  %membase = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !320
  br label %while.cond.preheader

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %error)
  %cmp1 = icmp eq i32 %error, 16
  br i1 %cmp1, label %if.end.while.cond.preheader_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end.while.cond.preheader_crit_edge, %if.end.thread
  %queue = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 18, i32 1
  %call87 = tail call ptr @skb_dequeue(ptr noundef %queue) #11
  %cmp3.not88 = icmp eq ptr %call87, null
  br i1 %cmp3.not88, label %while.cond.preheader.while.cond7.preheader_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.cond7.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond7.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call89 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call87, %while.cond.preheader.while.body_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call89, i32 noundef 1) #11
  %call = tail call ptr @skb_dequeue(ptr noundef %queue) #11
  %cmp3.not = icmp eq ptr %call, null
  br i1 %cmp3.not, label %while.body.if.end4_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.if.end4_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end4:                                          ; preds = %while.body.if.end4_crit_edge, %if.end.if.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %error)
  %cmp5 = icmp sgt i32 %error, 14
  br i1 %cmp5, label %if.end4.while.cond7.preheader_crit_edge, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end4.while.cond7.preheader_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond7.preheader

while.cond7.preheader:                            ; preds = %if.end4.while.cond7.preheader_crit_edge, %while.cond.preheader.while.cond7.preheader_crit_edge
  %queue8 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 15, i32 1
  %call990 = tail call ptr @skb_dequeue(ptr noundef %queue8) #11
  %cmp10.not91 = icmp eq ptr %call990, null
  br i1 %cmp10.not91, label %while.cond7.preheader.while.end12_crit_edge, label %while.cond7.preheader.while.body11_crit_edge

while.cond7.preheader.while.body11_crit_edge:     ; preds = %while.cond7.preheader
  br label %while.body11

while.cond7.preheader.while.end12_crit_edge:      ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end12

while.body11:                                     ; preds = %while.body11.while.body11_crit_edge, %while.cond7.preheader.while.body11_crit_edge
  %call992 = phi ptr [ %call9, %while.body11.while.body11_crit_edge ], [ %call990, %while.cond7.preheader.while.body11_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call992, i32 noundef 1) #11
  %call9 = tail call ptr @skb_dequeue(ptr noundef %queue8) #11
  %cmp10.not = icmp eq ptr %call9, null
  br i1 %cmp10.not, label %while.body11.while.end12_crit_edge, label %while.body11.while.body11_crit_edge

while.body11.while.body11_crit_edge:              ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body11

while.body11.while.end12_crit_edge:               ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end12

while.end12:                                      ; preds = %while.body11.while.end12_crit_edge, %while.cond7.preheader.while.end12_crit_edge
  %scq0 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 12
  %2 = ptrtoint ptr %scq0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scq0, align 4
  tail call fastcc void @free_scq(ptr noundef %card, ptr noundef %3, ptr noundef null)
  br label %if.end13

if.end13:                                         ; preds = %while.end12, %if.end4.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %error)
  %cmp14 = icmp sgt i32 %error, 13
  br i1 %cmp14, label %while.cond16.preheader, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

while.cond16.preheader:                           ; preds = %if.end13
  %queue17 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 16, i32 1
  %call1893 = tail call ptr @skb_dequeue(ptr noundef %queue17) #11
  %cmp19.not94 = icmp eq ptr %call1893, null
  br i1 %cmp19.not94, label %while.cond16.preheader.while.cond25.preheader_crit_edge, label %while.cond16.preheader.while.body20_crit_edge

while.cond16.preheader.while.body20_crit_edge:    ; preds = %while.cond16.preheader
  br label %while.body20

while.cond16.preheader.while.cond25.preheader_crit_edge: ; preds = %while.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond25.preheader

while.body20:                                     ; preds = %while.body20.while.body20_crit_edge, %while.cond16.preheader.while.body20_crit_edge
  %call1895 = phi ptr [ %call18, %while.body20.while.body20_crit_edge ], [ %call1893, %while.cond16.preheader.while.body20_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call1895, i32 noundef 1) #11
  %call18 = tail call ptr @skb_dequeue(ptr noundef %queue17) #11
  %cmp19.not = icmp eq ptr %call18, null
  br i1 %cmp19.not, label %while.body20.if.end22_crit_edge, label %while.body20.while.body20_crit_edge

while.body20.while.body20_crit_edge:              ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body20

while.body20.if.end22_crit_edge:                  ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %while.body20.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %error)
  %cmp23 = icmp sgt i32 %error, 12
  br i1 %cmp23, label %if.end22.while.cond25.preheader_crit_edge, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end22.while.cond25.preheader_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond25.preheader

while.cond25.preheader:                           ; preds = %if.end22.while.cond25.preheader_crit_edge, %while.cond16.preheader.while.cond25.preheader_crit_edge
  %queue26 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 17, i32 1
  %call2796 = tail call ptr @skb_dequeue(ptr noundef %queue26) #11
  %cmp28.not97 = icmp eq ptr %call2796, null
  br i1 %cmp28.not97, label %while.cond25.preheader.if.end35.thread_crit_edge, label %while.cond25.preheader.while.body29_crit_edge

while.cond25.preheader.while.body29_crit_edge:    ; preds = %while.cond25.preheader
  br label %while.body29

while.cond25.preheader.if.end35.thread_crit_edge: ; preds = %while.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.thread

while.body29:                                     ; preds = %while.body29.while.body29_crit_edge, %while.cond25.preheader.while.body29_crit_edge
  %call2798 = phi ptr [ %call27, %while.body29.while.body29_crit_edge ], [ %call2796, %while.cond25.preheader.while.body29_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call2798, i32 noundef 1) #11
  %call27 = tail call ptr @skb_dequeue(ptr noundef %queue26) #11
  %cmp28.not = icmp eq ptr %call27, null
  br i1 %cmp28.not, label %while.body29.if.end31_crit_edge, label %while.body29.while.body29_crit_edge

while.body29.while.body29_crit_edge:              ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body29

while.body29.if.end31_crit_edge:                  ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end31:                                         ; preds = %while.body29.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %error)
  %cmp32 = icmp sgt i32 %error, 11
  br i1 %cmp32, label %if.end31.if.end35.thread_crit_edge, label %if.end35

if.end31.if.end35.thread_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %if.end31.if.end35.thread_crit_edge, %while.cond25.preheader.if.end35.thread_crit_edge
  %pcidev = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 7
  %4 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %rsq = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 11
  %6 = ptrtoint ptr %rsq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rsq, align 4
  %dma = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 16384, ptr noundef %7, i32 noundef %9, i32 noundef 0) #11
  br label %if.end43.thread

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %error)
  %cmp36 = icmp eq i32 %error, 11
  br i1 %cmp36, label %if.end35.if.end43.thread_crit_edge, label %if.end43

if.end35.if.end43.thread_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.thread

if.end43.thread:                                  ; preds = %if.end35.if.end43.thread_crit_edge, %if.end35.thread
  %pcidev38 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 7
  %10 = ptrtoint ptr %pcidev38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev38, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %tsq = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 10
  %12 = ptrtoint ptr %tsq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tsq, align 4
  %dma42 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %dma42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma42, align 4
  tail call void @dma_free_attrs(ptr noundef %dev39, i32 noundef 16384, ptr noundef %13, i32 noundef %15, i32 noundef 0) #11
  br label %if.end48.thread

if.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %error)
  %cmp44 = icmp sgt i32 %error, 9
  br i1 %cmp44, label %if.end43.if.end48.thread_crit_edge, label %if.end48

if.end43.if.end48.thread_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.thread

if.end48.thread:                                  ; preds = %if.end43.if.end48.thread_crit_edge, %if.end43.thread
  %pcidev46 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 7
  %16 = ptrtoint ptr %pcidev46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev46, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call47 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %card) #11
  br label %if.end52.thread

if.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %error)
  %cmp49 = icmp sgt i32 %error, 3
  br i1 %cmp49, label %if.end48.if.end52.thread_crit_edge, label %if.end52

if.end48.if.end52.thread_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.thread

if.end52.thread:                                  ; preds = %if.end48.if.end52.thread_crit_edge, %if.end48.thread
  %membase51 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 2
  %20 = ptrtoint ptr %membase51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase51, align 4
  tail call void @iounmap(ptr noundef %21) #11
  br label %if.then54

if.end52:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %error)
  %cmp53 = icmp eq i32 %error, 3
  br i1 %cmp53, label %if.end52.if.then54_crit_edge, label %if.end52.if.end56_crit_edge

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.end52.if.then54_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54

if.then54:                                        ; preds = %if.end52.if.then54_crit_edge, %if.end52.thread
  %pcidev55 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 7
  %22 = ptrtoint ptr %pcidev55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcidev55, align 4
  tail call void @pci_disable_device(ptr noundef %23) #11
  tail call void @kfree(ptr noundef %card) #11
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52.if.end56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_write_sram(ptr noundef %card, i32 noundef %sram_address, ptr nocapture noundef readonly %value, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dec = add i32 %count, -1
  %res_lock = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 40
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock) #11
  %membase = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  %3 = and i32 %2, 131072
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

for.cond.preheader:                               ; preds = %while.cond
  %shl = shl i32 %dec, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp8.not36 = icmp slt i32 %shl, 0
  br i1 %cmp8.not36, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.do.body10_crit_edge

for.cond.preheader.do.body10_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body10

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %for.cond.preheader.do.body10_crit_edge
  %value.addr.038 = phi ptr [ %incdec.ptr, %do.body10.do.body10_crit_edge ], [ %value, %for.cond.preheader.do.body10_crit_edge ]
  %i.037 = phi i32 [ %add, %do.body10.do.body10_crit_edge ], [ 0, %for.cond.preheader.do.body10_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %incdec.ptr = getelementptr i32, ptr %value.addr.038, i32 1
  %4 = ptrtoint ptr %value.addr.038 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.addr.038, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %8, i32 %i.037
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %6) #11, !srcloc !320
  %add = add i32 %i.037, 4
  %cmp8.not = icmp sgt i32 %add, %shl
  br i1 %cmp8.not, label %do.body10.for.end_crit_edge, label %do.body10.do.body10_crit_edge

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10

do.body10.for.end_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %do.body10.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %shl15 = shl i32 %sram_address, 2
  %and16 = and i32 %shl15, 524284
  %or = or i32 %and16, %dec
  %or17 = or i32 %or, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr22 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %9) #11, !srcloc !320
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %atmdev = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %atmdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atmdev, align 4
  %intcnt = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 38
  %2 = ptrtoint ptr %intcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intcnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %intcnt, align 4
  %int_lock = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 39
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #11
  %membase = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !317
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !363
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @process_tsq(ptr noundef %dev_id)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !364
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 8388608) #11, !srcloc !320
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and16 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end.if.end24_crit_edge, label %do.body19

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !365
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 4194304) #11, !srcloc !320
  br label %if.end24

if.end24:                                         ; preds = %do.body19, %if.end.if.end24_crit_edge
  %and25 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end36_crit_edge, label %do.body28

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.body28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !366
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr32 = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 1048576) #11, !srcloc !320
  tail call fastcc void @process_tsq(ptr noundef %dev_id)
  br label %if.end36

if.end36:                                         ; preds = %do.body28, %if.end24.if.end36_crit_edge
  %and37 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end48_crit_edge, label %do.body40

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.body40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !367
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr44 = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 524288) #11, !srcloc !320
  br label %if.end48

if.end48:                                         ; preds = %do.body40, %if.end36.if.end48_crit_edge
  %and49 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end67_crit_edge, label %do.body52

if.end48.if.end67_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.body52:                                        ; preds = %if.end48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !368
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr56 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 262144) #11, !srcloc !320
  %phy = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 4
  %tobool60.not = icmp eq ptr %19, null
  br i1 %tobool60.not, label %do.body52.if.end67_crit_edge, label %land.lhs.true

do.body52.if.end67_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

land.lhs.true:                                    ; preds = %do.body52
  %interrupt = getelementptr inbounds %struct.atmphy_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interrupt, align 4
  %tobool62.not = icmp eq ptr %21, null
  br i1 %tobool62.not, label %land.lhs.true.if.end67_crit_edge, label %if.then63

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %21(ptr noundef %1) #11
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %land.lhs.true.if.end67_crit_edge, %do.body52.if.end67_crit_edge, %if.end48.if.end67_crit_edge
  %and68 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end81_crit_edge, label %do.body71

if.end67.if.end81_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

do.body71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !369
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr75 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 65536) #11, !srcloc !320
  %24 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev_id, align 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %25) #14
  br label %if.end81

if.end81:                                         ; preds = %do.body71, %if.end67.if.end81_crit_edge
  %and82 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end81.if.end96_crit_edge, label %do.body85

if.end81.if.end96_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

do.body85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr89 = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 -2147483648) #11, !srcloc !320
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dev_id, align 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %29) #14
  br label %if.end96

if.end96:                                         ; preds = %do.body85, %if.end81.if.end96_crit_edge
  %and97 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end111_crit_edge, label %do.body100

if.end96.if.end111_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

do.body100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr104 = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 1073741824) #11, !srcloc !320
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_id, align 4
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %33) #14
  tail call fastcc void @process_rsq(ptr noundef %dev_id)
  br label %if.end111

if.end111:                                        ; preds = %do.body100, %if.end96.if.end111_crit_edge
  %and112 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end120_crit_edge, label %if.then114

if.end111.if.end120_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @process_rsq(ptr noundef %dev_id)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !372
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr119 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 536870912) #11, !srcloc !320
  br label %if.end120

if.end120:                                        ; preds = %if.then114, %if.end111.if.end120_crit_edge
  %and121 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end159_crit_edge, label %do.body124

if.end120.if.end159_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

do.body124:                                       ; preds = %if.end120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !373
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase, align 4
  %add.ptr128 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 268435456) #11, !srcloc !320
  %38 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev_id, align 4
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %39) #14
  %40 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase, align 4
  %add.ptr138358 = getelementptr i8, ptr %41, i32 52
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138358) #11, !srcloc !317
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !374
  %rawch = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 37
  %44 = ptrtoint ptr %rawch to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rawch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp142.not359 = icmp eq i32 %43, %45
  br i1 %cmp142.not359, label %do.body124.if.end159_crit_edge, label %while.body.lr.ph

do.body124.if.end159_crit_edge:                   ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

while.body.lr.ph:                                 ; preds = %do.body124
  %rawcell = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 36
  %rcbuf = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 35
  %idr = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end158.while.body_crit_edge, %while.body.lr.ph
  %46 = phi i32 [ %45, %while.body.lr.ph ], [ %72, %if.end158.while.body_crit_edge ]
  %47 = ptrtoint ptr %rawcell to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rawcell, align 4
  %word_2 = getelementptr inbounds %struct.ns_rcqe, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %word_2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %word_2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp144.not = icmp eq i32 %50, 0
  br i1 %cmp144.not, label %if.else, label %if.then146

if.then146:                                       ; preds = %while.body
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %rcbuf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rcbuf, align 4
  %call149 = tail call ptr @idr_find(ptr noundef %idr, i32 noundef %51) #11
  %54 = ptrtoint ptr %rcbuf to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call149, ptr %rcbuf, align 4
  %dma = getelementptr %struct.sk_buff, ptr %call149, i32 0, i32 3, i32 16
  %55 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma, align 4
  %57 = ptrtoint ptr %rawch to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %rawch, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call149, i32 0, i32 19
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %60 = ptrtoint ptr %rawcell to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %rawcell, align 4
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %53, i32 0, i32 3, i32 12
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp.i = icmp eq i32 %62, -1
  br i1 %cmp.i, label %do.end.i, label %if.else.i, !prof !375

do.end.i:                                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dev_id, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %64) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %53, i32 noundef 1) #11
  br label %if.end158

if.else.i:                                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %dev_id, ptr noundef %53) #11
  br label %if.end158

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %46, 64
  %65 = ptrtoint ptr %rawch to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add, ptr %rawch, align 4
  %incdec.ptr = getelementptr %struct.ns_rcqe, ptr %48, i32 1
  %66 = ptrtoint ptr %rawcell to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %incdec.ptr, ptr %rawcell, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.else, %if.else.i, %do.end.i
  %67 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase, align 4
  %add.ptr138 = getelementptr i8, ptr %68, i32 52
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #11, !srcloc !317
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !374
  %71 = ptrtoint ptr %rawch to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rawch, align 4
  %cmp142.not = icmp eq i32 %70, %72
  br i1 %cmp142.not, label %if.end158.if.end159_crit_edge, label %if.end158.while.body_crit_edge

if.end158.while.body_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end158.if.end159_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

if.end159:                                        ; preds = %if.end158.if.end159_crit_edge, %do.body124.if.end159_crit_edge, %if.end120.if.end159_crit_edge
  %and160 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end159.if.end198_crit_edge, label %if.then162

if.end159.if.end198_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.then162:                                       ; preds = %if.end159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !376
  tail call void @arm_heavy_mb() #11
  %73 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase, align 4
  %add.ptr167 = getelementptr i8, ptr %74, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 134217728) #11, !srcloc !320
  %75 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dev_id, align 4
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %76) #14
  %sbnr = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 25
  %77 = ptrtoint ptr %sbnr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sbnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp174360.not = icmp eq i32 %78, 0
  br i1 %cmp174360.not, label %if.then162.for.end_crit_edge, label %for.body.lr.ph

if.then162.for.end_crit_edge:                     ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then162
  %queue = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 15, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end193.for.body_crit_edge, %for.body.lr.ph
  %i.0361 = phi i32 [ 0, %for.body.lr.ph ], [ %inc197, %if.end193.for.body_crit_edge ]
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 52, i32 noundef 2592) #11
  %cmp177 = icmp eq ptr %call.i.i, null
  br i1 %cmp177, label %do.body180, label %if.end193

do.body180:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %79 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase, align 4
  %add.ptr186 = getelementptr i8, ptr %80, i32 20
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr186) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  %82 = and i32 %81, -2
  %83 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase, align 4
  %add.ptr192 = getelementptr i8, ptr %84, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 %82) #11, !srcloc !320
  %efbie = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 19
  %85 = ptrtoint ptr %efbie to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 0, ptr %efbie, align 4
  br label %for.end

if.end193:                                        ; preds = %for.body
  %add.ptr196 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %86 = ptrtoint ptr %add.ptr196 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %add.ptr196, align 4
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef nonnull %call.i.i) #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %87 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i, align 4
  %add.ptr.i348 = getelementptr i8, ptr %88, i32 4
  store ptr %add.ptr.i348, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %89 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %90, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  tail call fastcc void @push_rxbufs(ptr noundef %dev_id, ptr noundef nonnull %call.i.i)
  %inc197 = add nuw i32 %i.0361, 1
  %91 = ptrtoint ptr %sbnr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sbnr, align 4
  %cmp174 = icmp ult i32 %inc197, %92
  br i1 %cmp174, label %if.end193.for.body_crit_edge, label %if.end193.for.end_crit_edge

if.end193.for.end_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end193.for.body_crit_edge:                     ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end193.for.end_crit_edge, %do.body180, %if.then162.for.end_crit_edge
  %i.0357 = phi i32 [ %i.0361, %do.body180 ], [ 0, %if.then162.for.end_crit_edge ], [ %inc197, %if.end193.for.end_crit_edge ]
  %sbfqc = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 29
  %93 = ptrtoint ptr %sbfqc to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %i.0357, ptr %sbfqc, align 4
  tail call fastcc void @process_rsq(ptr noundef %dev_id)
  br label %if.end198

if.end198:                                        ; preds = %for.end, %if.end159.if.end198_crit_edge
  %and199 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.end198.if.end246_crit_edge, label %if.then201

if.end198.if.end246_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end246

if.then201:                                       ; preds = %if.end198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void @arm_heavy_mb() #11
  %94 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase, align 4
  %add.ptr207 = getelementptr i8, ptr %95, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 67108864) #11, !srcloc !320
  %96 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dev_id, align 4
  %call213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %97) #14
  %lbnr = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 26
  %98 = ptrtoint ptr %lbnr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %lbnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp216362.not = icmp eq i32 %99, 0
  br i1 %cmp216362.not, label %if.then201.for.end245_crit_edge, label %for.body218.lr.ph

if.then201.for.end245_crit_edge:                  ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end245

for.body218.lr.ph:                                ; preds = %if.then201
  %queue242 = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 16, i32 1
  br label %for.body218

for.body218:                                      ; preds = %if.end237.for.body218_crit_edge, %for.body218.lr.ph
  %i202.0363 = phi i32 [ 0, %for.body218.lr.ph ], [ %inc244, %if.end237.for.body218_crit_edge ]
  %call.i.i349 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16432, i32 noundef 2592) #11
  %cmp220 = icmp eq ptr %call.i.i349, null
  br i1 %cmp220, label %do.body223, label %if.end237

do.body223:                                       ; preds = %for.body218
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %100 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase, align 4
  %add.ptr229 = getelementptr i8, ptr %101, i32 20
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr229) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  %103 = and i32 %102, -2
  %104 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %membase, align 4
  %add.ptr235 = getelementptr i8, ptr %105, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235, i32 %103) #11, !srcloc !320
  %efbie236 = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 19
  %106 = ptrtoint ptr %efbie236 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 0, ptr %efbie236, align 4
  br label %for.end245

if.end237:                                        ; preds = %for.body218
  %add.ptr240 = getelementptr %struct.sk_buff, ptr %call.i.i349, i32 0, i32 3, i32 12
  %107 = ptrtoint ptr %add.ptr240 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %add.ptr240, align 4
  tail call void @skb_queue_tail(ptr noundef %queue242, ptr noundef nonnull %call.i.i349) #11
  %data.i350 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i349, i32 0, i32 19
  %108 = ptrtoint ptr %data.i350 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i350, align 4
  %add.ptr.i351 = getelementptr i8, ptr %109, i32 48
  store ptr %add.ptr.i351, ptr %data.i350, align 4
  %tail.i352 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i349, i32 0, i32 16
  %110 = ptrtoint ptr %tail.i352 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tail.i352, align 8
  %add.ptr1.i353 = getelementptr i8, ptr %111, i32 48
  store ptr %add.ptr1.i353, ptr %tail.i352, align 8
  tail call fastcc void @push_rxbufs(ptr noundef %dev_id, ptr noundef nonnull %call.i.i349)
  %inc244 = add nuw i32 %i202.0363, 1
  %112 = ptrtoint ptr %lbnr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %lbnr, align 4
  %cmp216 = icmp ult i32 %inc244, %113
  br i1 %cmp216, label %if.end237.for.body218_crit_edge, label %if.end237.for.end245_crit_edge

if.end237.for.end245_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end245

if.end237.for.body218_crit_edge:                  ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body218

for.end245:                                       ; preds = %if.end237.for.end245_crit_edge, %do.body223, %if.then201.for.end245_crit_edge
  %i202.0355 = phi i32 [ %i202.0363, %do.body223 ], [ 0, %if.then201.for.end245_crit_edge ], [ %inc244, %if.end237.for.end245_crit_edge ]
  %lbfqc = getelementptr inbounds %struct.ns_dev, ptr %dev_id, i32 0, i32 30
  %114 = ptrtoint ptr %lbfqc to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %i202.0355, ptr %lbfqc, align 4
  tail call fastcc void @process_rsq(ptr noundef %dev_id)
  br label %if.end246

if.end246:                                        ; preds = %for.end245, %if.end198.if.end246_crit_edge
  %and247 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %if.end246.if.end255_crit_edge, label %do.body250

if.end246.if.end255_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

do.body250:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  tail call void @arm_heavy_mb() #11
  %115 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %membase, align 4
  %add.ptr254 = getelementptr i8, ptr %116, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254, i32 33554432) #11, !srcloc !320
  tail call fastcc void @process_rsq(ptr noundef %dev_id)
  br label %if.end255

if.end255:                                        ; preds = %do.body250, %if.end246.if.end255_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call3) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_scq(ptr nocapture noundef readonly %card, i32 noundef %size, i32 noundef %scd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %size, label %entry.cleanup_crit_edge [
    i32 8192, label %entry.if.end_crit_edge
    i32 1024, label %entry.if.end_crit_edge85
  ]

entry.if.end_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 140) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pcidev = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 7
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %mul = shl nuw nsw i32 %size, 1
  %dma = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #11
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %call7.i, align 8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end3.cleanup.sink.split_crit_edge, label %if.end8

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end3
  %div808182 = lshr i32 %size, 4
  %5 = shl nuw nsw i32 %div808182, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #15
  %skb = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 7
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i, ptr %skb, align 4
  %tobool11.not = icmp eq ptr %call8.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcidev, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i, align 8
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev14, i32 noundef %mul, ptr noundef %10, i32 noundef %12, i32 noundef 0) #11
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end8
  %num_entries = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 6
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i, align 8
  %15 = ptrtoint ptr %14 to i32
  %sub = add nsw i32 %size, -1
  %add = add i32 %sub, %15
  %neg = sub nsw i32 0, %size
  %and = and i32 %add, %neg
  %16 = inttoptr i32 %and to ptr
  %base = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 2
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %base, align 8
  %next = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 4
  %18 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %next, align 8
  %sub25 = add nsw i32 %div808182, -1
  %add.ptr = getelementptr %struct.ns_scqe, ptr %16, i32 %sub25
  %last = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 3
  %19 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %last, align 4
  %tail = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 5
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %tail, align 4
  %scd27 = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 8
  %21 = ptrtoint ptr %scd27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %scd, ptr %scd27, align 8
  %22 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div808182, ptr %num_entries, align 8
  %tbd_count = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 9
  %23 = ptrtoint ptr %tbd_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tbd_count, align 4
  %scqfull_waitq = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %scqfull_waitq, ptr noundef nonnull @.str.116, ptr noundef nonnull @get_scq.__key) #11
  %full = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 11
  %24 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %24)
  store volatile i8 0, ptr %full, align 4
  %lock = getelementptr inbounds %struct.scq_info, ptr %call7.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.118, ptr noundef nonnull @get_scq.__key.117, i16 noundef signext 3) #11
  %25 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3583.not = icmp eq i32 %26, 0
  br i1 %cmp3583.not, label %if.end18.cleanup_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end18.for.body_crit_edge
  %i.084 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb, align 4
  %arrayidx = getelementptr ptr, ptr %28, i32 %i.084
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.084, 1
  %30 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_entries, align 8
  %cmp35 = icmp ult i32 %inc, %31
  br i1 %cmp35, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then12, %if.end3.cleanup.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i, %if.end18.cleanup_crit_edge ], [ null, %cleanup.sink.split ], [ %call7.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 7
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !383

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.122, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, i32 52, i32 16432
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %3, i32 noundef %cond) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %3 to i32
  %sub.i = add i32 %11, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %shr.i
  %and.i = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %cond, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %dma, align 4
  %membase = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 2
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #11, !srcloc !317
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !384
  %and = lshr i32 %16, 23
  %shr = and i32 %and, 510
  %sbfqc = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 29
  %17 = ptrtoint ptr %sbfqc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %sbfqc, align 4
  %and7 = lshr i32 %16, 15
  %shr8 = and i32 %and7, 510
  %lbfqc = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 30
  %18 = ptrtoint ptr %lbfqc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr8, ptr %lbfqc, align 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp13 = icmp eq i32 %20, 0
  br i1 %cmp13, label %if.then14, label %if.then25

if.then14:                                        ; preds = %dma_map_single_attrs.exit
  %sm_addr = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 32
  %21 = ptrtoint ptr %sm_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sm_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %sm_handle = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 31
  br label %if.then38

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %sm_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %sm_addr, align 4
  %sm_handle21 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 31
  %24 = ptrtoint ptr %sm_handle21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %skb, ptr %sm_handle21, align 4
  br label %if.end121

if.then25:                                        ; preds = %dma_map_single_attrs.exit
  %lg_addr = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 34
  %25 = ptrtoint ptr %lg_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lg_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool26.not = icmp eq i32 %26, 0
  br i1 %tobool26.not, label %if.else31, label %if.then27

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %lg_handle = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 33
  br label %if.then38

if.else31:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %lg_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i, ptr %lg_addr, align 4
  %lg_handle33 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 33
  %28 = ptrtoint ptr %lg_handle33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %skb, ptr %lg_handle33, align 4
  br label %if.end121

if.then38:                                        ; preds = %if.then27, %if.then16
  %sm_handle.sink233 = phi ptr [ %sm_handle, %if.then16 ], [ %lg_handle, %if.then27 ]
  %sm_addr.sink = phi ptr [ %sm_addr, %if.then16 ], [ %lg_addr, %if.then27 ]
  %addr2.0 = phi i32 [ %22, %if.then16 ], [ %26, %if.then27 ]
  %29 = ptrtoint ptr %sm_handle.sink233 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sm_handle.sink233, align 4
  %31 = ptrtoint ptr %sm_addr.sink to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %sm_addr.sink, align 4
  store ptr null, ptr %sm_handle.sink233, align 4
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp43 = icmp eq i32 %33, 0
  br i1 %cmp43, label %if.then44, label %if.else53

if.then44:                                        ; preds = %if.then38
  %max = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 25, i32 2
  %34 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %35)
  %cmp46.not = icmp ult i32 %shr, %35
  br i1 %cmp46.not, label %if.then44.if.end65_crit_edge, label %if.then47

if.then44.if.end65_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %queue = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 15, i32 1
  tail call void @skb_unlink(ptr noundef %skb, ptr noundef %queue) #11
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  tail call void @skb_unlink(ptr noundef %30, ptr noundef %queue) #11
  tail call void @__dev_kfree_skb_any(ptr noundef %30, i32 noundef 1) #11
  br label %cleanup

if.else53:                                        ; preds = %if.then38
  %max55 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 26, i32 2
  %36 = ptrtoint ptr %max55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8, i32 %37)
  %cmp56.not = icmp ult i32 %shr8, %37
  br i1 %cmp56.not, label %if.else53.if.end65_crit_edge, label %if.then57

if.else53.if.end65_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then57:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #13
  %queue58 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 16, i32 1
  tail call void @skb_unlink(ptr noundef %skb, ptr noundef %queue58) #11
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  tail call void @skb_unlink(ptr noundef %30, ptr noundef %queue58) #11
  tail call void @__dev_kfree_skb_any(ptr noundef %30, i32 noundef 1) #11
  br label %cleanup

if.end65:                                         ; preds = %if.else53.if.end65_crit_edge, %if.then44.if.end65_crit_edge
  %shr8.sink = phi i32 [ %shr, %if.then44.if.end65_crit_edge ], [ %shr8, %if.else53.if.end65_crit_edge ]
  %lbfqc.sink = phi ptr [ %sbfqc, %if.then44.if.end65_crit_edge ], [ %lbfqc, %if.else53.if.end65_crit_edge ]
  %add63 = add nuw nsw i32 %shr8.sink, 2
  %38 = ptrtoint ptr %lbfqc.sink to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add63, ptr %lbfqc.sink, align 4
  %idr = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 8
  %call66 = tail call i32 @idr_alloc(ptr noundef %idr, ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.cleanup_crit_edge, label %if.end69

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %call71 = tail call i32 @idr_alloc(ptr noundef %idr, ptr noundef %30, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end69.cleanup_crit_edge, label %do.body75

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body75:                                        ; preds = %if.end69
  %res_lock = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 40
  %call79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock) #11
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.body75
  %39 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase, align 4
  %add.ptr85 = getelementptr i8, ptr %40, i32 24
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !385
  %42 = and i32 %41, 131072
  %tobool90.not = icmp eq i32 %42, 0
  br i1 %tobool90.not, label %do.body91, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

do.body91:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !386
  tail call void @arm_heavy_mb() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %addr2.0)
  %44 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase, align 4
  %add.ptr95 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %43) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !387
  tail call void @arm_heavy_mb() #11
  %46 = tail call i32 @llvm.bswap.i32(i32 %call71)
  %47 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase, align 4
  %add.ptr100 = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %46) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !388
  tail call void @arm_heavy_mb() #11
  %49 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %50 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase, align 4
  %add.ptr105 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %49) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !389
  tail call void @arm_heavy_mb() #11
  %52 = tail call i32 @llvm.bswap.i32(i32 %call66)
  %53 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !390
  tail call void @arm_heavy_mb() #11
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr, align 4
  %or = or i32 %56, 1610612736
  %57 = tail call i32 @llvm.bswap.i32(i32 %or)
  %58 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase, align 4
  %add.ptr119 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %57) #11, !srcloc !320
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock, i32 noundef %call79) #11
  br label %if.end121

if.end121:                                        ; preds = %do.body91, %if.else31, %if.else
  %efbie = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 19
  %60 = ptrtoint ptr %efbie to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %efbie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool122.not = icmp eq i32 %61, 0
  br i1 %tobool122.not, label %land.lhs.true, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end121
  %62 = ptrtoint ptr %sbfqc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sbfqc, align 4
  %sbnr124 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 25
  %64 = ptrtoint ptr %sbnr124 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sbnr124, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp125.not = icmp ult i32 %63, %65
  br i1 %cmp125.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true127

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true127:                                 ; preds = %land.lhs.true
  %66 = ptrtoint ptr %lbfqc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %lbfqc, align 4
  %lbnr129 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 26
  %68 = ptrtoint ptr %lbnr129 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lbnr129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp131.not = icmp ult i32 %67, %69
  br i1 %cmp131.not, label %land.lhs.true127.cleanup_crit_edge, label %if.then133

land.lhs.true127.cleanup_crit_edge:               ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then133:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %efbie to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 1, ptr %efbie, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !391
  tail call void @arm_heavy_mb() #11
  %71 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase, align 4
  %add.ptr141 = getelementptr i8, ptr %72, i32 20
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !392
  %74 = or i32 %73, 1
  %75 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase, align 4
  %add.ptr147 = getelementptr i8, ptr %76, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %74) #11, !srcloc !320
  br label %cleanup

cleanup:                                          ; preds = %if.then133, %land.lhs.true127.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then57, %if.then47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nicstar_read_eprom(ptr noundef %base, i8 noundef zeroext %prom_offset, ptr nocapture noundef writeonly %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %base, i32 76
  %add.ptr4.i = getelementptr i8, ptr %base, i32 24
  br label %for.body

for.body:                                         ; preds = %read_eprom_byte.exit.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc5, %read_eprom_byte.exit.for.body_crit_edge ]
  %prom_offset.addr.01 = phi i8 [ %prom_offset, %entry ], [ %inc, %read_eprom_byte.exit.for.body_crit_edge ]
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !393
  %1 = and i32 %0, -251658241
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %do.body.i.while.cond.preheader.i_crit_edge, %for.body
  %i.0229.i = phi i32 [ 0, %for.body ], [ %inc.i, %do.body.i.while.cond.preheader.i_crit_edge ]
  br label %while.cond.i

for.cond14.preheader.i:                           ; preds = %do.body.i
  %conv.i = zext i8 %prom_offset.addr.01 to i32
  br label %while.cond17.preheader.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !394
  %4 = and i32 %3, 131072
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

do.body.i:                                        ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !395
  tail call void @arm_heavy_mb() #11
  %arrayidx.i = getelementptr [16 x i32], ptr @readtab, i32 0, i32 %i.0229.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %6, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #11
  %inc.i = add nuw nsw i32 %i.0229.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.cond14.preheader.i, label %do.body.i.while.cond.preheader.i_crit_edge

do.body.i.while.cond.preheader.i_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i

while.cond17.preheader.i:                         ; preds = %do.body58.i.while.cond17.preheader.i_crit_edge, %for.cond14.preheader.i
  %i.1231.i = phi i32 [ 7, %for.cond14.preheader.i ], [ %dec.i, %do.body58.i.while.cond17.preheader.i_crit_edge ]
  %j.0230.i = phi i32 [ 0, %for.cond14.preheader.i ], [ %inc61.i, %do.body58.i.while.cond17.preheader.i_crit_edge ]
  br label %while.cond17.i

while.cond17.i:                                   ; preds = %while.cond17.i.while.cond17.i_crit_edge, %while.cond17.preheader.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !396
  %10 = and i32 %9, 131072
  %tobool25.not.i = icmp eq i32 %10, 0
  br i1 %tobool25.not.i, label %do.body28.i, label %while.cond17.i.while.cond17.i_crit_edge

while.cond17.i.while.cond17.i_crit_edge:          ; preds = %while.cond17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond17.i

do.body28.i:                                      ; preds = %while.cond17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !397
  tail call void @arm_heavy_mb() #11
  %arrayidx32.i = getelementptr [17 x i32], ptr @clocktab, i32 0, i32 %j.0230.i
  %11 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx32.i, align 4
  %shr.i = lshr i32 %conv.i, %i.1231.i
  %and34.i = and i32 %shr.i, 1
  %or33.i = or i32 %and34.i, %2
  %or35.i = or i32 %12, %or33.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %or35.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #11
  br label %while.cond47.i

while.cond47.i:                                   ; preds = %while.cond47.i.while.cond47.i_crit_edge, %do.body28.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !398
  %16 = and i32 %15, 131072
  %tobool55.not.i = icmp eq i32 %16, 0
  br i1 %tobool55.not.i, label %do.body58.i, label %while.cond47.i.while.cond47.i_crit_edge

while.cond47.i.while.cond47.i_crit_edge:          ; preds = %while.cond47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond47.i

do.body58.i:                                      ; preds = %while.cond47.i
  %inc31.i = or i32 %j.0230.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !399
  tail call void @arm_heavy_mb() #11
  %inc61.i = add nuw nsw i32 %j.0230.i, 2
  %arrayidx62.i = getelementptr [17 x i32], ptr @clocktab, i32 0, i32 %inc31.i
  %17 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx62.i, align 4
  %or67.i = or i32 %18, %or33.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %or67.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #11
  %dec.i = add nsw i32 %i.1231.i, -1
  %cmp15.i.not = icmp eq i32 %i.1231.i, 0
  br i1 %cmp15.i.not, label %do.body58.i.while.cond85.preheader.i_crit_edge, label %do.body58.i.while.cond17.preheader.i_crit_edge

do.body58.i.while.cond17.preheader.i_crit_edge:   ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond17.preheader.i

do.body58.i.while.cond85.preheader.i_crit_edge:   ; preds = %do.body58.i
  br label %while.cond85.preheader.i

while.cond85.preheader.i:                         ; preds = %do.body135.i.while.cond85.preheader.i_crit_edge, %do.body58.i.while.cond85.preheader.i_crit_edge
  %i.2234.i = phi i32 [ %dec153.i, %do.body135.i.while.cond85.preheader.i_crit_edge ], [ 7, %do.body58.i.while.cond85.preheader.i_crit_edge ]
  %j.1233.i = phi i32 [ %inc138.i, %do.body135.i.while.cond85.preheader.i_crit_edge ], [ 0, %do.body58.i.while.cond85.preheader.i_crit_edge ]
  %tempread.0232.i = phi i8 [ %conv123.i, %do.body135.i.while.cond85.preheader.i_crit_edge ], [ 0, %do.body58.i.while.cond85.preheader.i_crit_edge ]
  br label %while.cond85.i

while.cond85.i:                                   ; preds = %while.cond85.i.while.cond85.i_crit_edge, %while.cond85.preheader.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !400
  %22 = and i32 %21, 131072
  %tobool93.not.i = icmp eq i32 %22, 0
  br i1 %tobool93.not.i, label %do.body96.i, label %while.cond85.i.while.cond85.i_crit_edge

while.cond85.i.while.cond85.i_crit_edge:          ; preds = %while.cond85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond85.i

do.body96.i:                                      ; preds = %while.cond85.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !401
  tail call void @arm_heavy_mb() #11
  %arrayidx100.i = getelementptr [17 x i32], ptr @clocktab, i32 0, i32 %j.1233.i
  %23 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx100.i, align 4
  %or101.i = or i32 %24, %2
  %25 = tail call i32 @llvm.bswap.i32(i32 %or101.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #11
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !402
  %28 = lshr i32 %27, 8
  %shr120.i = and i32 %28, 1
  %shl.i = shl nuw i32 %shr120.i, %i.2234.i
  br label %while.cond124.i

while.cond124.i:                                  ; preds = %while.cond124.i.while.cond124.i_crit_edge, %do.body96.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !403
  %30 = and i32 %29, 131072
  %tobool132.not.i = icmp eq i32 %30, 0
  br i1 %tobool132.not.i, label %do.body135.i, label %while.cond124.i.while.cond124.i_crit_edge

while.cond124.i.while.cond124.i_crit_edge:        ; preds = %while.cond124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond124.i

do.body135.i:                                     ; preds = %while.cond124.i
  %31 = trunc i32 %shl.i to i8
  %inc99.i = or i32 %j.1233.i, 1
  %conv123.i = or i8 %tempread.0232.i, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !404
  tail call void @arm_heavy_mb() #11
  %inc138.i = add nuw nsw i32 %j.1233.i, 2
  %arrayidx139.i = getelementptr [17 x i32], ptr @clocktab, i32 0, i32 %inc99.i
  %32 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx139.i, align 4
  %or140.i = or i32 %33, %2
  %34 = tail call i32 @llvm.bswap.i32(i32 %or140.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %34) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 1073740) #11
  %dec153.i = add nsw i32 %i.2234.i, -1
  %cmp82.i.not = icmp eq i32 %i.2234.i, 0
  br i1 %cmp82.i.not, label %do.body135.i.while.cond155.i_crit_edge, label %do.body135.i.while.cond85.preheader.i_crit_edge

do.body135.i.while.cond85.preheader.i_crit_edge:  ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond85.preheader.i

do.body135.i.while.cond155.i_crit_edge:           ; preds = %do.body135.i
  br label %while.cond155.i

while.cond155.i:                                  ; preds = %while.cond155.i.while.cond155.i_crit_edge, %do.body135.i.while.cond155.i_crit_edge
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !405
  %37 = and i32 %36, 131072
  %tobool163.not.i = icmp eq i32 %37, 0
  br i1 %tobool163.not.i, label %read_eprom_byte.exit, label %while.cond155.i.while.cond155.i_crit_edge

while.cond155.i.while.cond155.i_crit_edge:        ; preds = %while.cond155.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond155.i

read_eprom_byte.exit:                             ; preds = %while.cond155.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !406
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #11, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #11
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.02
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv123.i, ptr %arrayidx, align 1
  %inc = add i8 %prom_offset.addr.01, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 1073740) #11
  %inc5 = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc5, 6
  br i1 %exitcond.not, label %for.end, label %read_eprom_byte.exit.for.body_crit_edge

read_eprom_byte.exit.for.body_crit_edge:          ; preds = %read_eprom_byte.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %read_eprom_byte.exit
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suni_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idt77105_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_scq(ptr nocapture noundef readonly %card, ptr noundef %scq, ptr noundef %vcc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_entries = getelementptr inbounds %struct.scq_info, ptr %scq, i32 0, i32 6
  %0 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp = icmp eq i32 %1, 512
  br i1 %cmp, label %for.cond.preheader, label %if.else16

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2100.not = icmp eq i32 %3, 0
  br i1 %cmp2100.not, label %for.cond.preheader.if.end52_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end52_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %skb = getelementptr inbounds %struct.scq_info, ptr %scq, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.0101
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp3.not = icmp eq ptr %7, null
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %cb = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb, align 8
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pop, align 4
  %cmp8.not = icmp eq ptr %11, null
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %11(ptr noundef %9, ptr noundef nonnull %7) #11
  br label %for.inc

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then9, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0101, 1
  %12 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_entries, align 4
  %cmp2 = icmp ult i32 %inc, %13
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.if.end52_crit_edge

for.inc.if.end52_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else16:                                        ; preds = %entry
  %cmp17 = icmp eq ptr %vcc, null
  br i1 %cmp17, label %do.end, label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %if.else16
  %14 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3196.not = icmp eq i32 %15, 0
  br i1 %cmp3196.not, label %for.cond29.preheader.if.end52_crit_edge, label %for.body32.lr.ph

for.cond29.preheader.if.end52_crit_edge:          ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

for.body32.lr.ph:                                 ; preds = %for.cond29.preheader
  %skb33 = getelementptr inbounds %struct.scq_info, ptr %scq, i32 0, i32 7
  %pop37 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  br label %for.body32

do.end:                                           ; preds = %if.else16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #14
  %16 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2198.not = icmp eq i32 %17, 0
  br i1 %cmp2198.not, label %do.end.if.end52_crit_edge, label %for.body22.lr.ph

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

for.body22.lr.ph:                                 ; preds = %do.end
  %skb23 = getelementptr inbounds %struct.scq_info, ptr %scq, i32 0, i32 7
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.lr.ph
  %i.199 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc26, %for.body22.for.body22_crit_edge ]
  %18 = ptrtoint ptr %skb23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb23, align 4
  %arrayidx24 = getelementptr ptr, ptr %19, i32 %i.199
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx24, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %21, i32 noundef 1) #11
  %inc26 = add nuw i32 %i.199, 1
  %22 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_entries, align 4
  %cmp21 = icmp ult i32 %inc26, %23
  br i1 %cmp21, label %for.body22.for.body22_crit_edge, label %for.body22.if.end52_crit_edge

for.body22.if.end52_crit_edge:                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22

for.body32:                                       ; preds = %for.inc48.for.body32_crit_edge, %for.body32.lr.ph
  %i.297 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc49, %for.inc48.for.body32_crit_edge ]
  %24 = ptrtoint ptr %skb33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb33, align 4
  %arrayidx34 = getelementptr ptr, ptr %25, i32 %i.297
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx34, align 4
  %cmp35.not = icmp eq ptr %27, null
  br i1 %cmp35.not, label %for.body32.for.inc48_crit_edge, label %if.then36

for.body32.for.inc48_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

if.then36:                                        ; preds = %for.body32
  %28 = ptrtoint ptr %pop37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pop37, align 4
  %cmp38.not = icmp eq ptr %29, null
  br i1 %cmp38.not, label %if.else43, label %if.then39

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %29(ptr noundef nonnull %vcc, ptr noundef nonnull %27) #11
  br label %for.inc48

if.else43:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %27, i32 noundef 1) #11
  br label %for.inc48

for.inc48:                                        ; preds = %if.else43, %if.then39, %for.body32.for.inc48_crit_edge
  %inc49 = add nuw i32 %i.297, 1
  %30 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_entries, align 4
  %cmp31 = icmp ult i32 %inc49, %31
  br i1 %cmp31, label %for.inc48.for.body32_crit_edge, label %for.inc48.if.end52_crit_edge

for.inc48.if.end52_crit_edge:                     ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

for.inc48.for.body32_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body32

if.end52:                                         ; preds = %for.inc48.if.end52_crit_edge, %for.body22.if.end52_crit_edge, %do.end.if.end52_crit_edge, %for.cond29.preheader.if.end52_crit_edge, %for.inc.if.end52_crit_edge, %for.cond.preheader.if.end52_crit_edge
  %skb53 = getelementptr inbounds %struct.scq_info, ptr %scq, i32 0, i32 7
  %32 = ptrtoint ptr %skb53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb53, align 4
  tail call void @kfree(ptr noundef %33) #11
  %pcidev = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 7
  %34 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %37)
  %cmp55 = icmp eq i32 %37, 512
  %mul = select i1 %cmp55, i32 16384, i32 2048
  %38 = ptrtoint ptr %scq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %scq, align 4
  %dma = getelementptr inbounds %struct.scq_info, ptr %scq, i32 0, i32 1
  %40 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %39, i32 noundef %41, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %scq) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_tsq(ptr nocapture noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 4
  %last = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.ns_tsi, ptr %1, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %one_ahead.0 = phi ptr [ %5, %if.then ], [ %add.ptr, %if.else ]
  %cmp7 = icmp eq ptr %one_ahead.0, %3
  br i1 %cmp7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base10 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base10, align 4
  br label %if.end13

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr12 = getelementptr %struct.ns_tsi, ptr %one_ahead.0, i32 1
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then8
  %two_ahead.0 = phi ptr [ %7, %if.then8 ], [ %add.ptr12, %if.else11 ]
  %base36 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 10, i32 2
  %scq0 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 12
  %pcidev.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %if.end110, %if.end13
  %previous.0 = phi i32 [ 0, %if.end13 ], [ %phi.cast, %if.end110 ]
  %one_ahead.1 = phi ptr [ %one_ahead.0, %if.end13 ], [ %one_ahead.2, %if.end110 ]
  %two_ahead.1 = phi ptr [ %two_ahead.0, %if.end13 ], [ %two_ahead.2, %if.end110 ]
  %tobool112.not = phi i1 [ true, %if.end13 ], [ false, %if.end110 ]
  %8 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next, align 4
  %word_2 = getelementptr inbounds %struct.ns_tsi, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %word_2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %word_2, align 4
  %.mask = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %while.cond.while.body_crit_edge, label %lor.lhs.false

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

lor.lhs.false:                                    ; preds = %while.cond
  %word_216 = getelementptr inbounds %struct.ns_tsi, ptr %one_ahead.1, i32 0, i32 1
  %12 = ptrtoint ptr %word_216 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %word_216, align 4
  %.mask178 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask178)
  %tobool18.not = icmp eq i32 %.mask178, 0
  br i1 %tobool18.not, label %lor.lhs.false.while.body_crit_edge, label %lor.rhs

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %word_219 = getelementptr inbounds %struct.ns_tsi, ptr %two_ahead.1, i32 0, i32 1
  %14 = ptrtoint ptr %word_219 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %word_219, align 4
  %.mask179 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask179)
  %tobool21.not = icmp eq i32 %.mask179, 0
  br i1 %tobool21.not, label %lor.rhs.while.body_crit_edge, label %while.end111

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge, %while.cond.while.body_crit_edge
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next, align 4
  %word_225182 = getelementptr inbounds %struct.ns_tsi, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %word_225182 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %word_225182, align 4
  %.mask176183 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask176183)
  %tobool27.not184 = icmp eq i32 %.mask176183, 0
  br i1 %tobool27.not184, label %while.body.while.end_crit_edge, label %while.body28.lr.ph

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body28.lr.ph:                               ; preds = %while.body
  %20 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %last, align 4
  br label %while.body28

while.body28:                                     ; preds = %if.end42.while.body28_crit_edge, %while.body28.lr.ph
  %22 = phi ptr [ %17, %while.body28.lr.ph ], [ %storemerge177, %if.end42.while.body28_crit_edge ]
  %cmp33 = icmp eq ptr %22, %21
  br i1 %cmp33, label %if.then34, label %if.else39

if.then34:                                        ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %base36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base36, align 4
  br label %if.end42

if.else39:                                        ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr %struct.ns_tsi, ptr %22, i32 1
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then34
  %storemerge177 = phi ptr [ %incdec.ptr, %if.else39 ], [ %24, %if.then34 ]
  %25 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %storemerge177, ptr %next, align 4
  %word_225 = getelementptr inbounds %struct.ns_tsi, ptr %storemerge177, i32 0, i32 1
  %26 = ptrtoint ptr %word_225 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %word_225, align 4
  %.mask176 = and i32 %27, 128
  %tobool27.not = icmp eq i32 %.mask176, 0
  br i1 %tobool27.not, label %if.end42.while.end_crit_edge, label %if.end42.while.body28_crit_edge

if.end42.while.body28_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body28

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %while.body.while.end_crit_edge
  %.lcssa = phi ptr [ %17, %while.body.while.end_crit_edge ], [ %storemerge177, %if.end42.while.end_crit_edge ]
  %28 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %.lcssa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp45 = icmp eq i32 %29, 0
  br i1 %cmp45, label %while.end.if.end68_crit_edge, label %if.then46

while.end.if.end68_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then46:                                        ; preds = %while.end
  %30 = and i32 %29, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %30)
  %cmp51 = icmp eq i32 %30, 65535
  br i1 %cmp51, label %if.then46.if.end63_crit_edge, label %if.else53

if.then46.if.end63_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.else53:                                        ; preds = %if.then46
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %shr = lshr exact i32 %31, 16
  %arrayidx = getelementptr %struct.ns_dev, ptr %card, i32 0, i32 24, i32 %shr
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %cmp54 = icmp eq ptr %33, null
  br i1 %cmp54, label %do.end, label %if.end59

do.end:                                           ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %card, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %35) #14
  %36 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %next, align 4
  %word_258 = getelementptr inbounds %struct.ns_tsi, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %word_258 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 128, ptr %word_258, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #13
  %scq62 = getelementptr inbounds %struct.vc_map, ptr %33, i32 0, i32 4
  br label %if.end63

if.end63:                                         ; preds = %if.end59, %if.then46.if.end63_crit_edge
  %scq.0.in = phi ptr [ %scq62, %if.end59 ], [ %scq0, %if.then46.if.end63_crit_edge ]
  %39 = ptrtoint ptr %scq.0.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %scq.0 = load ptr, ptr %scq.0.in, align 4
  %40 = and i32 %29, -8454144
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %num_entries.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 6
  %42 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %41)
  %cmp.not.i = icmp ugt i32 %43, %41
  br i1 %cmp.not.i, label %do.body2.i, label %do.end.i

do.end.i:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %card, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %45) #14
  br label %drain_scq.exit

do.body2.i:                                       ; preds = %if.end63
  %lock.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 12
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %tail.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 5
  %46 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i, align 4
  %base.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 2
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 4
  %inc.i = add nsw i32 %sub.ptr.div.i, 1
  %50 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %51)
  %cmp12.i = icmp eq i32 %inc.i, %51
  %spec.store.select46.i = select i1 %cmp12.i, i32 0, i32 %inc.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select46.i, i32 %41)
  %cmp16.not74.i = icmp eq i32 %spec.store.select46.i, %41
  br i1 %cmp16.not74.i, label %do.body2.i.while.end.i_crit_edge, label %while.body.lr.ph.i

do.body2.i.while.end.i_crit_edge:                 ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %do.body2.i
  %skb18.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.075.i = phi i32 [ %spec.store.select46.i, %while.body.lr.ph.i ], [ %spec.store.select.i, %if.end32.i.while.body.i_crit_edge ]
  %52 = ptrtoint ptr %skb18.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb18.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %53, i32 %i.075.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %cmp19.not.i = icmp eq ptr %55, null
  br i1 %cmp19.not.i, label %while.body.i.if.end32.i_crit_edge, label %if.then21.i

while.body.i.if.end32.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then21.i:                                      ; preds = %while.body.i
  %56 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3
  %dma.i = getelementptr %struct.sk_buff, ptr %55, i32 0, i32 3, i32 16
  %58 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 6
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %59, i32 noundef %61, i32 noundef 1, i32 noundef 0) #11
  %62 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cb.i, align 8
  %tobool.not.i = icmp eq ptr %63, null
  br i1 %tobool.not.i, label %if.then21.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then21.i.if.else.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then21.i
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pop.i, align 4
  %cmp25.not.i = icmp eq ptr %65, null
  br i1 %cmp25.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then27.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %65(ptr noundef nonnull %63, ptr noundef nonnull %55) #11
  br label %if.end29.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then21.i.if.else.i_crit_edge
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %55, i32 noundef 1) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then27.i
  %66 = ptrtoint ptr %skb18.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb18.i, align 4
  %arrayidx31.i = getelementptr ptr, ptr %67, i32 %i.075.i
  %68 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end29.i, %while.body.i.if.end32.i_crit_edge
  %inc33.i = add i32 %i.075.i, 1
  %69 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc33.i, i32 %70)
  %cmp35.i = icmp eq i32 %inc33.i, %70
  %spec.store.select.i = select i1 %cmp35.i, i32 0, i32 %inc33.i
  %cmp16.not.i = icmp eq i32 %spec.store.select.i, %41
  br i1 %cmp16.not.i, label %if.end32.i.while.end.i_crit_edge, label %if.end32.i.while.body.i_crit_edge

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end32.i.while.end.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end32.i.while.end.i_crit_edge, %do.body2.i.while.end.i_crit_edge
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr40.i = getelementptr %struct.ns_scqe, ptr %72, i32 %41
  %73 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr40.i, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #11
  br label %drain_scq.exit

drain_scq.exit:                                   ; preds = %while.end.i, %do.end.i
  %full = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 11
  %74 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %74)
  store volatile i8 0, ptr %full, align 4
  %scqfull_waitq = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %scqfull_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end68

if.end68:                                         ; preds = %drain_scq.exit, %while.end.if.end68_crit_edge
  %75 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %next, align 4
  %word_271 = getelementptr inbounds %struct.ns_tsi, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %word_271 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 128, ptr %word_271, align 4
  %78 = load ptr, ptr %next, align 4
  %79 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %last, align 4
  %cmp78 = icmp eq ptr %78, %80
  br i1 %cmp78, label %if.then79, label %if.else84

if.then79:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %base36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base36, align 4
  br label %if.end88

if.else84:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr87 = getelementptr %struct.ns_tsi, ptr %78, i32 1
  br label %if.end88

if.end88:                                         ; preds = %if.else84, %if.then79
  %storemerge = phi ptr [ %incdec.ptr87, %if.else84 ], [ %82, %if.then79 ]
  %83 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %storemerge, ptr %next, align 4
  %cmp93 = icmp eq ptr %storemerge, %80
  br i1 %cmp93, label %if.then94, label %if.else97

if.then94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %base36 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base36, align 4
  br label %if.end101

if.else97:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr100 = getelementptr %struct.ns_tsi, ptr %storemerge, i32 1
  br label %if.end101

if.end101:                                        ; preds = %if.else97, %if.then94
  %one_ahead.2 = phi ptr [ %85, %if.then94 ], [ %add.ptr100, %if.else97 ]
  %cmp104 = icmp eq ptr %one_ahead.2, %80
  br i1 %cmp104, label %if.then105, label %if.else108

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %base36 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base36, align 4
  br label %if.end110

if.else108:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr109 = getelementptr %struct.ns_tsi, ptr %one_ahead.2, i32 1
  br label %if.end110

if.end110:                                        ; preds = %if.else108, %if.then105
  %two_ahead.2 = phi ptr [ %87, %if.then105 ], [ %add.ptr109, %if.else108 ]
  %phi.cast = ptrtoint ptr %78 to i32
  br label %while.cond

while.end111:                                     ; preds = %lor.rhs
  br i1 %tobool112.not, label %while.end111.cleanup_crit_edge, label %do.body114

while.end111.cleanup_crit_edge:                   ; preds = %while.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body114:                                       ; preds = %while.end111
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %88 = ptrtoint ptr %base36 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base36, align 4
  %90 = ptrtoint ptr %89 to i32
  %sub = sub i32 %previous.0, %90
  %91 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %membase = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 2
  %92 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase, align 4
  %add.ptr119 = getelementptr i8, ptr %93, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %91) #11, !srcloc !320
  br label %cleanup

cleanup:                                          ; preds = %do.body114, %while.end111.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_rsq(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 4
  %word_4 = getelementptr inbounds %struct.ns_rsqe, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %word_4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %word_4, align 4
  %.mask = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %membase.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 2
  %sbfqc.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 29
  %lbfqc.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 30
  %idr.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 8
  %pcidev.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 7
  %vpibits.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 5
  %vcibits.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 6
  %iovpool.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 18
  %queue.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 18, i32 1
  %iovnr.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 28
  %queue.i68 = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 16, i32 1
  %init.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 26, i32 1
  %hbpool.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 17
  %queue314.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 17, i32 1
  %hbnr364.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 27
  %max.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 27, i32 2
  %max.i.i = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 28, i32 2
  %last = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 11, i32 4
  %base = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 11, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !317
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  %and.i = lshr i32 %9, 23
  %shr.i = and i32 %and.i, 510
  %10 = ptrtoint ptr %sbfqc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr.i, ptr %sbfqc.i, align 4
  %and2.i = lshr i32 %9, 15
  %shr3.i = and i32 %and2.i, 510
  %11 = ptrtoint ptr %lbfqc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr3.i, ptr %lbfqc.i, align 4
  %buffer_handle.i = getelementptr inbounds %struct.ns_rsqe, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %buffer_handle.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_handle.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  %call4.i = tail call ptr @idr_remove(ptr noundef %idr.i, i32 noundef %14) #11
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %do.body.dequeue_rx.exit_crit_edge, label %if.end.i

do.body.dequeue_rx.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %dequeue_rx.exit

if.end.i:                                         ; preds = %do.body
  %15 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 3
  %add.ptr5.i = getelementptr %struct.sk_buff, ptr %call4.i, i32 0, i32 3, i32 12
  %dma.i = getelementptr %struct.sk_buff, ptr %call4.i, i32 0, i32 3, i32 16
  %17 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma.i, align 4
  %19 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  %cond.i = select i1 %cmp.i, i32 52, i32 16432
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i, i32 noundef %18, i32 noundef %cond.i, i32 noundef 2) #11
  %21 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcidev.i, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma.i, align 4
  %25 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp19.i = icmp eq i32 %26, 0
  %cond20.i = select i1 %cmp19.i, i32 52, i32 16432
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10.i, i32 noundef %24, i32 noundef %cond20.i, i32 noundef 2, i32 noundef 0) #11
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  %and21.i = lshr i32 %29, 16
  %shr22.i = and i32 %and21.i, 255
  %and24.i = and i32 %29, 65535
  %30 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vpibits.i, align 4
  %shr22.highbits.i = lshr i32 %shr22.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr22.highbits.i)
  %cmp25.not.i = icmp eq i32 %shr22.highbits.i, 0
  br i1 %cmp25.not.i, label %lor.lhs.false.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %32 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vcibits.i, align 4
  %and24.highbits.i = lshr i32 %and24.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.highbits.i)
  %cmp27.not.i = icmp eq i32 %and24.highbits.i, 0
  br i1 %cmp27.not.i, label %if.end31.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %card, align 4
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %35, i32 noundef %shr22.i, i32 noundef %and24.i) #14
  %36 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.i = icmp eq i32 %37, -1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else.i.i, !prof !375

do.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %card, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %39) #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call4.i, i32 noundef 1) #11
  br label %dequeue_rx.exit

if.else.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef nonnull %call4.i) #11
  br label %dequeue_rx.exit

if.end31.i:                                       ; preds = %lor.lhs.false.i
  %shl33.i = shl i32 %shr22.i, %33
  %or.i = or i32 %shl33.i, %and24.i
  %arrayidx.i = getelementptr %struct.ns_dev, ptr %card, i32 0, i32 22, i32 %or.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load.i = load volatile i32, ptr %arrayidx.i, align 4
  %41 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool34.not.i = icmp eq i32 %41, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end36.i

if.then35.i:                                      ; preds = %if.end31.i
  %42 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i764.i = icmp eq i32 %43, -1
  br i1 %cmp.i764.i, label %do.end.i766.i, label %if.else.i767.i, !prof !375

do.end.i766.i:                                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %card, align 4
  %call.i765.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %45) #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call4.i, i32 noundef 1) #11
  br label %dequeue_rx.exit

if.else.i767.i:                                   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef nonnull %call4.i) #11
  br label %dequeue_rx.exit

if.end36.i:                                       ; preds = %if.end31.i
  %rx_vcc.i = getelementptr %struct.ns_dev, ptr %card, i32 0, i32 22, i32 %or.i, i32 2
  %46 = ptrtoint ptr %rx_vcc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_vcc.i, align 4
  %aal.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 7, i32 2
  %48 = ptrtoint ptr %aal.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %aal.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %49)
  %cmp37.i = icmp eq i8 %49, 13
  br i1 %cmp37.i, label %if.then39.i, label %if.end83.i

if.then39.i:                                      ; preds = %if.end36.i
  %word_4.i = getelementptr inbounds %struct.ns_rsqe, ptr %5, i32 0, i32 3
  %50 = ptrtoint ptr %word_4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %word_4.i, align 4
  %52 = and i32 %51, -16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool41.not803.i = icmp eq i32 %52, 0
  br i1 %tobool41.not803.i, label %if.then39.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then39.i.for.end.i_crit_edge:                  ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then39.i
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %push.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 10
  %stats81.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end74.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0805.i = phi i32 [ %53, %for.body.lr.ph.i ], [ %dec.i, %if.end74.i.for.body.i_crit_edge ]
  %cell.0804.i = phi ptr [ %55, %for.body.lr.ph.i ], [ %add.ptr82.i, %if.end74.i.for.body.i_crit_edge ]
  %call.i.i769.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 52, i32 noundef 2592) #11
  %tobool43.not.i = icmp eq ptr %call.i.i769.i, null
  br i1 %tobool43.not.i, label %do.end47.i, label %if.end51.i

do.end47.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %card, align 4
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %57) #14
  %58 = ptrtoint ptr %stats81.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %stats81.i, align 8
  %rx_drop.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %59, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_drop.i, i32 1, i32 3, i32 1) #11
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop.i, ptr %rx_drop.i, i32 %i.0805.i, ptr elementtype(i32) %rx_drop.i) #11, !srcloc !409
  br label %for.end.i

if.end51.i:                                       ; preds = %for.body.i
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i769.i, i32 0, i32 20
  %61 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %truesize.i, align 8
  %call52.i = tail call i32 @atm_charge(ptr noundef %47, i32 noundef %62) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.then54.i, label %if.end57.i

if.then54.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %i.0805.i, -1
  %63 = ptrtoint ptr %stats81.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stats81.i, align 8
  %rx_drop56.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %64, i32 0, i32 4
  %call.i.i749.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop56.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_drop56.i, i32 1, i32 3, i32 1) #11
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop56.i, ptr %rx_drop56.i, i32 %sub.i, ptr elementtype(i32) %rx_drop56.i) #11, !srcloc !409
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i769.i, i32 noundef 1) #11
  br label %for.end.i

if.end57.i:                                       ; preds = %if.end51.i
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %5, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #11
  %shl59.i = shl i32 %68, 4
  %69 = ptrtoint ptr %word_4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %word_4.i, align 4
  %71 = lshr i32 %70, 18
  %.lobit.i = and i32 %71, 1
  %or64.i = or i32 %.lobit.i, %shl59.i
  %data65.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i769.i, i32 0, i32 19
  %72 = ptrtoint ptr %data65.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data65.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or64.i, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0805.i)
  %cmp66.i = icmp eq i32 %i.0805.i, 1
  br i1 %cmp66.i, label %land.lhs.true.i, label %if.end57.i.if.end74.i_crit_edge

if.end57.i.if.end74.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

land.lhs.true.i:                                  ; preds = %if.end57.i
  %75 = ptrtoint ptr %word_4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %word_4.i, align 4
  %77 = and i32 %76, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool70.not.i = icmp eq i32 %77, 0
  br i1 %tobool70.not.i, label %land.lhs.true.i.if.end74.i_crit_edge, label %if.then71.i

land.lhs.true.i.if.end74.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.then71.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %data65.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data65.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %or73.i = or i32 %81, 2
  store i32 %or73.i, ptr %79, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then71.i, %land.lhs.true.i.if.end74.i_crit_edge, %if.end57.i.if.end74.i_crit_edge
  %call75.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i769.i, i32 noundef 4) #11
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i769.i, i32 0, i32 16
  %82 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i.i, align 8
  %84 = call ptr @memcpy(ptr %83, ptr %cell.0804.i, i32 48)
  %call77.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i769.i, i32 noundef 48) #11
  %cb78.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i769.i, i32 0, i32 3
  %85 = ptrtoint ptr %cb78.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %47, ptr %cb78.i, align 8
  %call.i.i770.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %86 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i769.i, i32 0, i32 2
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %call.i.i770.i, ptr %86, align 8
  %88 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %push.i, align 8
  tail call void %89(ptr noundef %47, ptr noundef nonnull %call.i.i769.i) #11
  %90 = ptrtoint ptr %stats81.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %stats81.i, align 8
  %rx.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %91, i32 0, i32 2
  %call.i.i750.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx.i, i32 1, i32 3, i32 1) #11
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx.i, ptr %rx.i, i32 1, ptr elementtype(i32) %rx.i) #11, !srcloc !409
  %add.ptr82.i = getelementptr i8, ptr %cell.0804.i, i32 48
  %dec.i = add i32 %i.0805.i, -1
  %tobool41.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool41.not.i, label %if.end74.i.for.end.i_crit_edge, label %if.end74.i.for.body.i_crit_edge

if.end74.i.for.body.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end74.i.for.end.i_crit_edge:                   ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %if.end74.i.for.end.i_crit_edge, %if.then54.i, %do.end47.i, %if.then39.i.for.end.i_crit_edge
  %93 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp.i772.i = icmp eq i32 %94, -1
  br i1 %cmp.i772.i, label %do.end.i774.i, label %if.else.i775.i, !prof !375

do.end.i774.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %card, align 4
  %call.i773.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %96) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %call4.i, i32 noundef 1) #11
  br label %dequeue_rx.exit

if.else.i775.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %call4.i) #11
  br label %dequeue_rx.exit

if.end83.i:                                       ; preds = %if.end36.i
  %rx_iov.i = getelementptr %struct.ns_dev, ptr %card, i32 0, i32 22, i32 %or.i, i32 3
  %97 = ptrtoint ptr %rx_iov.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_iov.i, align 4
  %cmp84.i = icmp eq ptr %98, null
  br i1 %cmp84.i, label %if.then86.i, label %if.else134.i

if.then86.i:                                      ; preds = %if.end83.i
  %call87.i = tail call ptr @skb_dequeue(ptr noundef %queue.i) #11
  %cmp88.i = icmp eq ptr %call87.i, null
  br i1 %cmp88.i, label %if.then90.i, label %if.else.i

if.then90.i:                                      ; preds = %if.then86.i
  %call.i777.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %cmp92.i = icmp eq ptr %call.i777.i, null
  br i1 %cmp92.i, label %do.end97.i, label %if.end103.i

do.end97.i:                                       ; preds = %if.then90.i
  %99 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %card, align 4
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %100) #14
  %stats101.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %101 = ptrtoint ptr %stats101.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %stats101.i, align 8
  %rx_drop102.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %102, i32 0, i32 4
  %call.i.i751.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop102.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_drop102.i, i32 1, i32 3, i32 1) #11
  %103 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop102.i, ptr %rx_drop102.i, i32 1, ptr elementtype(i32) %rx_drop102.i) #11, !srcloc !409
  %104 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp.i113 = icmp eq i32 %105, -1
  br i1 %cmp.i113, label %do.end.i114, label %if.else.i115, !prof !375

do.end.i114:                                      ; preds = %do.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %card, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %107) #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call4.i, i32 noundef 1) #11
  br label %dequeue_rx.exit

if.else.i115:                                     ; preds = %do.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef nonnull %call4.i) #11
  br label %dequeue_rx.exit

if.end103.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr106.i = getelementptr %struct.sk_buff, ptr %call.i777.i, i32 0, i32 3, i32 12
  %108 = ptrtoint ptr %add.ptr106.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %add.ptr106.i, align 4
  br label %if.end127.i

if.else.i:                                        ; preds = %if.then86.i
  %109 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %iovpool.i, align 4
  %dec109.i = add i32 %110, -1
  store volatile i32 %dec109.i, ptr %iovpool.i, align 4
  %111 = ptrtoint ptr %iovnr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %iovnr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec109.i, i32 %112)
  %cmp110.i = icmp ult i32 %dec109.i, %112
  br i1 %cmp110.i, label %if.then112.i, label %if.else.i.if.end127.i_crit_edge

if.else.i.if.end127.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

if.then112.i:                                     ; preds = %if.else.i
  %call.i778.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %cmp114.not.i = icmp eq ptr %call.i778.i, null
  br i1 %cmp114.not.i, label %if.then112.i.if.end127.i_crit_edge, label %if.then116.i

if.then112.i.if.end127.i_crit_edge:               ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

if.then116.i:                                     ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr119.i = getelementptr %struct.sk_buff, ptr %call87.i, i32 0, i32 3, i32 12
  %113 = ptrtoint ptr %add.ptr119.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %add.ptr119.i, align 4
  tail call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef nonnull %call.i778.i) #11
  %114 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %iovpool.i, align 4
  %inc.i = add i32 %115, 1
  store volatile i32 %inc.i, ptr %iovpool.i, align 4
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then116.i, %if.then112.i.if.end127.i_crit_edge, %if.else.i.if.end127.i_crit_edge, %if.end103.i
  %iovb.0.i = phi ptr [ %call.i777.i, %if.end103.i ], [ %call87.i, %if.else.i.if.end127.i_crit_edge ], [ %call87.i, %if.then116.i ], [ %call87.i, %if.then112.i.if.end127.i_crit_edge ]
  %116 = ptrtoint ptr %rx_iov.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %iovb.0.i, ptr %rx_iov.i, align 4
  %iovcnt.i = getelementptr %struct.sk_buff, ptr %iovb.0.i, i32 0, i32 3, i32 20
  %117 = ptrtoint ptr %iovcnt.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %iovcnt.i, align 4
  %len132.i = getelementptr inbounds %struct.sk_buff, ptr %iovb.0.i, i32 0, i32 6
  %118 = ptrtoint ptr %len132.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %len132.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %iovb.0.i, i32 0, i32 18
  %119 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %head.i, align 8
  %data133.i = getelementptr inbounds %struct.sk_buff, ptr %iovb.0.i, i32 0, i32 19
  %121 = ptrtoint ptr %data133.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %data133.i, align 4
  br label %if.end158.sink.split.i

if.else134.i:                                     ; preds = %if.end83.i
  %iovcnt138.i = getelementptr %struct.sk_buff, ptr %98, i32 0, i32 3, i32 20
  %122 = ptrtoint ptr %iovcnt138.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %iovcnt138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %123)
  %cmp139.i = icmp sgt i32 %123, 5
  br i1 %cmp139.i, label %do.end144.i, label %if.else134.i.if.end158.i_crit_edge

if.else134.i.if.end158.i_crit_edge:               ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158.i

do.end144.i:                                      ; preds = %if.else134.i
  %124 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %card, align 4
  %call147.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %125) #14
  %stats148.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %126 = ptrtoint ptr %stats148.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %stats148.i, align 8
  %rx_err.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %127, i32 0, i32 3
  %call.i.i752.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_err.i, i32 1, i32 3, i32 1) #11
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err.i, ptr %rx_err.i, i32 1, ptr elementtype(i32) %rx_err.i) #11, !srcloc !409
  %data149.i = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 19
  %129 = ptrtoint ptr %data149.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data149.i, align 4
  %incdec.ptr.i102 = getelementptr %struct.iovec, ptr %130, i32 1
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %add.ptr.i.i103 = getelementptr %struct.sk_buff, ptr %132, i32 0, i32 3, i32 12
  %133 = ptrtoint ptr %add.ptr.i.i103 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %134)
  %cmp.i.i104 = icmp eq i32 %134, -1
  br i1 %cmp.i.i104, label %do.end.i.i107, label %if.else.i.i108, !prof !375

do.end.i.i107:                                    ; preds = %do.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %card, align 4
  %call.i.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %136) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %132, i32 noundef 1) #11
  br label %recycle_rx_buf.exit.i110

if.else.i.i108:                                   ; preds = %do.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %132) #11
  br label %recycle_rx_buf.exit.i110

recycle_rx_buf.exit.i110:                         ; preds = %if.else.i.i108, %do.end.i.i107
  %incdec.ptr.i102.1 = getelementptr %struct.iovec, ptr %130, i32 2
  %137 = ptrtoint ptr %incdec.ptr.i102 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %incdec.ptr.i102, align 4
  %add.ptr.i.i103.1 = getelementptr %struct.sk_buff, ptr %138, i32 0, i32 3, i32 12
  %139 = ptrtoint ptr %add.ptr.i.i103.1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %add.ptr.i.i103.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %140)
  %cmp.i.i104.1 = icmp eq i32 %140, -1
  br i1 %cmp.i.i104.1, label %do.end.i.i107.1, label %if.else.i.i108.1, !prof !375

if.else.i.i108.1:                                 ; preds = %recycle_rx_buf.exit.i110
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %138) #11
  br label %recycle_rx_buf.exit.i110.1

do.end.i.i107.1:                                  ; preds = %recycle_rx_buf.exit.i110
  call void @__sanitizer_cov_trace_pc() #13
  %141 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %card, align 4
  %call.i.i106.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %142) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %138, i32 noundef 1) #11
  br label %recycle_rx_buf.exit.i110.1

recycle_rx_buf.exit.i110.1:                       ; preds = %do.end.i.i107.1, %if.else.i.i108.1
  %incdec.ptr.i102.2 = getelementptr %struct.iovec, ptr %130, i32 3
  %143 = ptrtoint ptr %incdec.ptr.i102.1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %incdec.ptr.i102.1, align 4
  %add.ptr.i.i103.2 = getelementptr %struct.sk_buff, ptr %144, i32 0, i32 3, i32 12
  %145 = ptrtoint ptr %add.ptr.i.i103.2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr.i.i103.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %146)
  %cmp.i.i104.2 = icmp eq i32 %146, -1
  br i1 %cmp.i.i104.2, label %do.end.i.i107.2, label %if.else.i.i108.2, !prof !375

if.else.i.i108.2:                                 ; preds = %recycle_rx_buf.exit.i110.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %144) #11
  br label %recycle_rx_buf.exit.i110.2

do.end.i.i107.2:                                  ; preds = %recycle_rx_buf.exit.i110.1
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %card, align 4
  %call.i.i106.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %148) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %144, i32 noundef 1) #11
  br label %recycle_rx_buf.exit.i110.2

recycle_rx_buf.exit.i110.2:                       ; preds = %do.end.i.i107.2, %if.else.i.i108.2
  %incdec.ptr.i102.3 = getelementptr %struct.iovec, ptr %130, i32 4
  %149 = ptrtoint ptr %incdec.ptr.i102.2 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %incdec.ptr.i102.2, align 4
  %add.ptr.i.i103.3 = getelementptr %struct.sk_buff, ptr %150, i32 0, i32 3, i32 12
  %151 = ptrtoint ptr %add.ptr.i.i103.3 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %add.ptr.i.i103.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %152)
  %cmp.i.i104.3 = icmp eq i32 %152, -1
  br i1 %cmp.i.i104.3, label %do.end.i.i107.3, label %if.else.i.i108.3, !prof !375

if.else.i.i108.3:                                 ; preds = %recycle_rx_buf.exit.i110.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %150) #11
  br label %recycle_rx_buf.exit.i110.3

do.end.i.i107.3:                                  ; preds = %recycle_rx_buf.exit.i110.2
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %card, align 4
  %call.i.i106.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %154) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %150, i32 noundef 1) #11
  br label %recycle_rx_buf.exit.i110.3

recycle_rx_buf.exit.i110.3:                       ; preds = %do.end.i.i107.3, %if.else.i.i108.3
  %incdec.ptr.i102.4 = getelementptr %struct.iovec, ptr %130, i32 5
  %155 = ptrtoint ptr %incdec.ptr.i102.3 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %incdec.ptr.i102.3, align 4
  %add.ptr.i.i103.4 = getelementptr %struct.sk_buff, ptr %156, i32 0, i32 3, i32 12
  %157 = ptrtoint ptr %add.ptr.i.i103.4 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %add.ptr.i.i103.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %158)
  %cmp.i.i104.4 = icmp eq i32 %158, -1
  br i1 %cmp.i.i104.4, label %do.end.i.i107.4, label %if.else.i.i108.4, !prof !375

if.else.i.i108.4:                                 ; preds = %recycle_rx_buf.exit.i110.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %156) #11
  br label %recycle_rx_buf.exit.i110.4

do.end.i.i107.4:                                  ; preds = %recycle_rx_buf.exit.i110.3
  call void @__sanitizer_cov_trace_pc() #13
  %159 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %card, align 4
  %call.i.i106.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %160) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %156, i32 noundef 1) #11
  br label %recycle_rx_buf.exit.i110.4

recycle_rx_buf.exit.i110.4:                       ; preds = %do.end.i.i107.4, %if.else.i.i108.4
  %161 = ptrtoint ptr %incdec.ptr.i102.4 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %incdec.ptr.i102.4, align 4
  %add.ptr.i.i103.5 = getelementptr %struct.sk_buff, ptr %162, i32 0, i32 3, i32 12
  %163 = ptrtoint ptr %add.ptr.i.i103.5 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i.i103.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %164)
  %cmp.i.i104.5 = icmp eq i32 %164, -1
  br i1 %cmp.i.i104.5, label %do.end.i.i107.5, label %if.else.i.i108.5, !prof !375

if.else.i.i108.5:                                 ; preds = %recycle_rx_buf.exit.i110.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %162) #11
  br label %recycle_rx_buf.exit.i110.5

do.end.i.i107.5:                                  ; preds = %recycle_rx_buf.exit.i110.4
  call void @__sanitizer_cov_trace_pc() #13
  %165 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %card, align 4
  %call.i.i106.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %166) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %162, i32 noundef 1) #11
  br label %recycle_rx_buf.exit.i110.5

recycle_rx_buf.exit.i110.5:                       ; preds = %do.end.i.i107.5, %if.else.i.i108.5
  %167 = ptrtoint ptr %iovcnt138.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %iovcnt138.i, align 4
  %len154.i = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 6
  %168 = ptrtoint ptr %len154.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %len154.i, align 4
  %head155.i = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 18
  %169 = ptrtoint ptr %head155.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %head155.i, align 8
  %171 = ptrtoint ptr %data149.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %170, ptr %data149.i, align 4
  br label %if.end158.sink.split.i

if.end158.sink.split.i:                           ; preds = %recycle_rx_buf.exit.i110.5, %if.end127.i
  %.sink815.i = phi ptr [ %98, %recycle_rx_buf.exit.i110.5 ], [ %iovb.0.i, %if.end127.i ]
  %.sink.i = phi ptr [ %170, %recycle_rx_buf.exit.i110.5 ], [ %120, %if.end127.i ]
  %tail.i781.i = getelementptr inbounds %struct.sk_buff, ptr %.sink815.i, i32 0, i32 16
  %172 = ptrtoint ptr %tail.i781.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %.sink.i, ptr %tail.i781.i, align 8
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.end158.sink.split.i, %if.else134.i.if.end158.i_crit_edge
  %iovb.1.i = phi ptr [ %98, %if.else134.i.if.end158.i_crit_edge ], [ %.sink815.i, %if.end158.sink.split.i ]
  %data159.i = getelementptr inbounds %struct.sk_buff, ptr %iovb.1.i, i32 0, i32 19
  %173 = ptrtoint ptr %data159.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %data159.i, align 4
  %iovcnt163.i = getelementptr %struct.sk_buff, ptr %iovb.1.i, i32 0, i32 3, i32 20
  %175 = ptrtoint ptr %iovcnt163.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %iovcnt163.i, align 4
  %inc164.i = add i32 %176, 1
  store i32 %inc164.i, ptr %iovcnt163.i, align 4
  %arrayidx165.i = getelementptr %struct.iovec, ptr %174, i32 %176
  %177 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call4.i, ptr %arrayidx165.i, align 4
  %word_4166.i = getelementptr inbounds %struct.ns_rsqe, ptr %5, i32 0, i32 3
  %178 = ptrtoint ptr %word_4166.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %word_4166.i, align 4
  %180 = and i32 %179, -16711680
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #11
  %mul.i = mul nuw nsw i32 %181, 48
  %iov_len.i = getelementptr %struct.iovec, ptr %174, i32 %176, i32 1
  %182 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %mul.i, ptr %iov_len.i, align 4
  %len169.i = getelementptr inbounds %struct.sk_buff, ptr %iovb.1.i, i32 0, i32 6
  %183 = ptrtoint ptr %len169.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %len169.i, align 4
  %add.i = add i32 %mul.i, %184
  store i32 %add.i, ptr %len169.i, align 4
  %185 = ptrtoint ptr %word_4166.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %word_4166.i, align 4
  %187 = and i32 %186, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool172.not.i = icmp eq i32 %187, 0
  br i1 %tobool172.not.i, label %if.end158.i.dequeue_rx.exit_crit_edge, label %if.then173.i

if.end158.i.dequeue_rx.exit_crit_edge:            ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dequeue_rx.exit

if.then173.i:                                     ; preds = %if.end158.i
  %data174.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 19
  %188 = ptrtoint ptr %data174.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %data174.i, align 4
  %190 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %iov_len.i, align 4
  %add.ptr176.i = getelementptr i8, ptr %189, i32 -6
  %add.ptr177.i = getelementptr i8, ptr %add.ptr176.i, i32 %191
  %192 = ptrtoint ptr %add.ptr177.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %add.ptr177.i, align 1
  %conv179.i = zext i8 %193 to i32
  %shl180.i = shl nuw nsw i32 %conv179.i, 8
  %arrayidx181.i = getelementptr i8, ptr %add.ptr177.i, i32 1
  %194 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx181.i, align 1
  %conv182.i = zext i8 %195 to i32
  %or183.i = or i32 %shl180.i, %conv182.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or183.i)
  %cmp186.i = icmp eq i32 %or183.i, 0
  %spec.select.i = select i1 %cmp186.i, i32 65536, i32 %or183.i
  %196 = and i32 %186, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool192.not.i = icmp eq i32 %196, 0
  %add194.i = add nuw nsw i32 %spec.select.i, 8
  br i1 %tobool192.not.i, label %lor.lhs.false193.i, label %if.then173.do.end206_crit_edge.i

if.then173.do.end206_crit_edge.i:                 ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre810.i = add nuw nsw i32 %spec.select.i, 55
  br label %do.end206.i

lor.lhs.false193.i:                               ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add194.i, i32 %add.i)
  %cmp196.i = icmp ugt i32 %add194.i, %add.i
  %add199.i = add nuw nsw i32 %spec.select.i, 55
  call void @__sanitizer_cov_trace_cmp4(i32 %add199.i, i32 %add.i)
  %cmp201.i = icmp ult i32 %add199.i, %add.i
  %or.cond.i = select i1 %cmp196.i, i1 true, i1 %cmp201.i
  br i1 %or.cond.i, label %lor.lhs.false193.i.do.end206.i_crit_edge, label %if.end240.i

lor.lhs.false193.i.do.end206.i_crit_edge:         ; preds = %lor.lhs.false193.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end206.i

do.end206.i:                                      ; preds = %lor.lhs.false193.i.do.end206.i_crit_edge, %if.then173.do.end206_crit_edge.i
  %add215.pre-phi.i = phi i32 [ %.pre810.i, %if.then173.do.end206_crit_edge.i ], [ %add199.i, %lor.lhs.false193.i.do.end206.i_crit_edge ]
  %197 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %card, align 4
  %call209.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %198) #14
  %199 = ptrtoint ptr %len169.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %len169.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add194.i, i32 %200)
  %cmp212.i = icmp ugt i32 %add194.i, %200
  call void @__sanitizer_cov_trace_cmp4(i32 %add215.pre-phi.i, i32 %200)
  %cmp217.i = icmp ult i32 %add215.pre-phi.i, %200
  %or.cond748.i = select i1 %cmp212.i, i1 true, i1 %cmp217.i
  %.str.106..str.109.i = select i1 %or.cond748.i, ptr @.str.106, ptr @.str.109
  %call230.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.106..str.109.i) #14
  %stats232.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %201 = ptrtoint ptr %stats232.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %stats232.i, align 8
  %rx_err233.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %202, i32 0, i32 3
  %call.i.i753.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err233.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_err233.i, i32 1, i32 3, i32 1) #11
  %203 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err233.i, ptr %rx_err233.i, i32 1, ptr elementtype(i32) %rx_err233.i) #11, !srcloc !409
  %204 = ptrtoint ptr %iovcnt163.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %iovcnt163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp1.i85 = icmp sgt i32 %205, 0
  br i1 %cmp1.i85, label %while.body.i92.preheader, label %do.end206.i.recycle_iovec_rx_bufs.exit98_crit_edge

do.end206.i.recycle_iovec_rx_bufs.exit98_crit_edge: ; preds = %do.end206.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle_iovec_rx_bufs.exit98

while.body.i92.preheader:                         ; preds = %do.end206.i
  %206 = ptrtoint ptr %data159.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %data159.i, align 4
  br label %while.body.i92

while.body.i92:                                   ; preds = %recycle_rx_buf.exit.i97.while.body.i92_crit_edge, %while.body.i92.preheader
  %count.addr.03.i86 = phi i32 [ %dec.i88, %recycle_rx_buf.exit.i97.while.body.i92_crit_edge ], [ %205, %while.body.i92.preheader ]
  %iov.addr.02.i87 = phi ptr [ %incdec.ptr.i89, %recycle_rx_buf.exit.i97.while.body.i92_crit_edge ], [ %207, %while.body.i92.preheader ]
  %dec.i88 = add nsw i32 %count.addr.03.i86, -1
  %incdec.ptr.i89 = getelementptr %struct.iovec, ptr %iov.addr.02.i87, i32 1
  %208 = ptrtoint ptr %iov.addr.02.i87 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %iov.addr.02.i87, align 4
  %add.ptr.i.i90 = getelementptr %struct.sk_buff, ptr %209, i32 0, i32 3, i32 12
  %210 = ptrtoint ptr %add.ptr.i.i90 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %add.ptr.i.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %211)
  %cmp.i.i91 = icmp eq i32 %211, -1
  br i1 %cmp.i.i91, label %do.end.i.i94, label %if.else.i.i95, !prof !375

do.end.i.i94:                                     ; preds = %while.body.i92
  call void @__sanitizer_cov_trace_pc() #13
  %212 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %card, align 4
  %call.i.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %213) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %209, i32 noundef 1) #11
  br label %recycle_rx_buf.exit.i97

if.else.i.i95:                                    ; preds = %while.body.i92
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %209) #11
  br label %recycle_rx_buf.exit.i97

recycle_rx_buf.exit.i97:                          ; preds = %if.else.i.i95, %do.end.i.i94
  %cmp.i96 = icmp ugt i32 %count.addr.03.i86, 1
  br i1 %cmp.i96, label %recycle_rx_buf.exit.i97.while.body.i92_crit_edge, label %recycle_rx_buf.exit.i97.recycle_iovec_rx_bufs.exit98_crit_edge

recycle_rx_buf.exit.i97.recycle_iovec_rx_bufs.exit98_crit_edge: ; preds = %recycle_rx_buf.exit.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle_iovec_rx_bufs.exit98

recycle_rx_buf.exit.i97.while.body.i92_crit_edge: ; preds = %recycle_rx_buf.exit.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i92

recycle_iovec_rx_bufs.exit98:                     ; preds = %recycle_rx_buf.exit.i97.recycle_iovec_rx_bufs.exit98_crit_edge, %do.end206.i.recycle_iovec_rx_bufs.exit98_crit_edge
  %214 = ptrtoint ptr %rx_iov.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %rx_iov.i, align 4
  %215 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %iovpool.i, align 4
  %217 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %218)
  %cmp.i78 = icmp ult i32 %216, %218
  br i1 %cmp.i78, label %if.then.i81, label %if.else.i82

if.then.i81:                                      ; preds = %recycle_iovec_rx_bufs.exit98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef %iovb.1.i) #11
  %219 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %iovpool.i, align 4
  %inc.i80 = add i32 %220, 1
  store volatile i32 %inc.i80, ptr %iovpool.i, align 4
  br label %dequeue_rx.exit

if.else.i82:                                      ; preds = %recycle_iovec_rx_bufs.exit98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %iovb.1.i, i32 noundef 1) #11
  br label %dequeue_rx.exit

if.end240.i:                                      ; preds = %lor.lhs.false193.i
  %221 = ptrtoint ptr %iovcnt163.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %iovcnt163.i, align 4
  %223 = zext i32 %222 to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %222, label %if.else312.i [
    i32 1, label %if.then247.i
    i32 2, label %if.then270.i
  ]

if.then247.i:                                     ; preds = %if.end240.i
  %truesize248.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 20
  %224 = ptrtoint ptr %truesize248.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %truesize248.i, align 8
  %call249.i = tail call i32 @atm_charge(ptr noundef %47, i32 noundef %225) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249.i)
  %tobool250.not.i = icmp eq i32 %call249.i, 0
  br i1 %tobool250.not.i, label %if.then251.i, label %if.else254.i

if.then251.i:                                     ; preds = %if.then247.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef nonnull %call4.i) #11
  %stats252.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %226 = ptrtoint ptr %stats252.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %stats252.i, align 8
  %rx_drop253.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %227, i32 0, i32 4
  %call.i.i754.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop253.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_drop253.i, i32 1, i32 3, i32 1) #11
  %228 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop253.i, ptr %rx_drop253.i, i32 1, ptr elementtype(i32) %rx_drop253.i) #11, !srcloc !409
  br label %if.end477.i

if.else254.i:                                     ; preds = %if.then247.i
  call void @__sanitizer_cov_trace_pc() #13
  %call255.i = tail call ptr @skb_put(ptr noundef nonnull %call4.i, i32 noundef %spec.select.i) #11
  tail call fastcc void @dequeue_sm_buf(ptr noundef %card, ptr noundef nonnull %call4.i) #11
  %229 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %47, ptr %cb.i, align 8
  %call.i.i782.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %230 = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 2
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 %call.i.i782.i, ptr %230, align 8
  %push259.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 10
  %232 = ptrtoint ptr %push259.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %push259.i, align 8
  tail call void %233(ptr noundef %47, ptr noundef nonnull %call4.i) #11
  %stats260.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %234 = ptrtoint ptr %stats260.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %stats260.i, align 8
  %rx261.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %235, i32 0, i32 2
  %call.i.i755.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx261.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx261.i, i32 1, i32 3, i32 1) #11
  %236 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx261.i, ptr %rx261.i, i32 1, ptr elementtype(i32) %rx261.i) #11, !srcloc !409
  br label %if.end477.i

if.then270.i:                                     ; preds = %if.end240.i
  %add.ptr272.i = getelementptr %struct.iovec, ptr %arrayidx165.i, i32 -1
  %237 = ptrtoint ptr %add.ptr272.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %add.ptr272.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %spec.select.i)
  %cmp274.i = icmp ult i32 %spec.select.i, 49
  br i1 %cmp274.i, label %if.then276.i, label %if.else292.i

if.then276.i:                                     ; preds = %if.then270.i
  %truesize277.i = getelementptr inbounds %struct.sk_buff, ptr %238, i32 0, i32 20
  %239 = ptrtoint ptr %truesize277.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %truesize277.i, align 8
  %call278.i = tail call i32 @atm_charge(ptr noundef %47, i32 noundef %240) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278.i)
  %tobool279.not.i = icmp eq i32 %call278.i, 0
  br i1 %tobool279.not.i, label %if.then280.i, label %if.else283.i

if.then280.i:                                     ; preds = %if.then276.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %238) #11
  %stats281.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %241 = ptrtoint ptr %stats281.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %stats281.i, align 8
  %rx_drop282.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %242, i32 0, i32 4
  %call.i.i756.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop282.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_drop282.i, i32 1, i32 3, i32 1) #11
  %243 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop282.i, ptr %rx_drop282.i, i32 1, ptr elementtype(i32) %rx_drop282.i) #11, !srcloc !409
  br label %if.end291.i

if.else283.i:                                     ; preds = %if.then276.i
  call void @__sanitizer_cov_trace_pc() #13
  %call284.i = tail call ptr @skb_put(ptr noundef %238, i32 noundef %spec.select.i) #11
  tail call fastcc void @dequeue_sm_buf(ptr noundef %card, ptr noundef %238) #11
  %cb285.i = getelementptr inbounds %struct.sk_buff, ptr %238, i32 0, i32 3
  %244 = ptrtoint ptr %cb285.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %47, ptr %cb285.i, align 8
  %call.i.i783.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %245 = getelementptr inbounds %struct.sk_buff, ptr %238, i32 0, i32 2
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %call.i.i783.i, ptr %245, align 8
  %push288.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 10
  %247 = ptrtoint ptr %push288.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %push288.i, align 8
  tail call void %248(ptr noundef %47, ptr noundef %238) #11
  %stats289.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %249 = ptrtoint ptr %stats289.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %stats289.i, align 8
  %rx290.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %250, i32 0, i32 2
  %call.i.i757.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx290.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx290.i, i32 1, i32 3, i32 1) #11
  %251 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx290.i, ptr %rx290.i, i32 1, ptr elementtype(i32) %rx290.i) #11, !srcloc !409
  br label %if.end291.i

if.end291.i:                                      ; preds = %if.else283.i, %if.then280.i
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef nonnull %call4.i) #11
  br label %if.end477.i

if.else292.i:                                     ; preds = %if.then270.i
  %truesize293.i = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 20
  %252 = ptrtoint ptr %truesize293.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %truesize293.i, align 8
  %call294.i = tail call i32 @atm_charge(ptr noundef %47, i32 noundef %253) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294.i)
  %tobool295.not.i = icmp eq i32 %call294.i, 0
  br i1 %tobool295.not.i, label %if.then296.i, label %if.else299.i

if.then296.i:                                     ; preds = %if.else292.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef nonnull %call4.i) #11
  %stats297.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %254 = ptrtoint ptr %stats297.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %stats297.i, align 8
  %rx_drop298.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %255, i32 0, i32 4
  %call.i.i758.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop298.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_drop298.i, i32 1, i32 3, i32 1) #11
  %256 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop298.i, ptr %rx_drop298.i, i32 1, ptr elementtype(i32) %rx_drop298.i) #11, !srcloc !409
  br label %if.end310.i

if.else299.i:                                     ; preds = %if.else292.i
  tail call void @skb_unlink(ptr noundef nonnull %call4.i, ptr noundef %queue.i68) #11
  %257 = ptrtoint ptr %lbfqc.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %lbfqc.i, align 4
  %259 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %init.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %258, i32 %260)
  %cmp.i70 = icmp ult i32 %258, %260
  br i1 %cmp.i70, label %if.then.i72, label %if.else299.i.if.end5.i_crit_edge

if.else299.i.if.end5.i_crit_edge:                 ; preds = %if.else299.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then.i72:                                      ; preds = %if.else299.i
  %call.i.i.i71 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16432, i32 noundef 2592) #11
  %cmp1.not.i = icmp eq ptr %call.i.i.i71, null
  br i1 %cmp1.not.i, label %if.then.i72.if.end5.i_crit_edge, label %if.then2.i

if.then.i72.if.end5.i_crit_edge:                  ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i73 = getelementptr %struct.sk_buff, ptr %call.i.i.i71, i32 0, i32 3, i32 12
  %261 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 1, ptr %add.ptr.i73, align 4
  tail call void @skb_queue_tail(ptr noundef %queue.i68, ptr noundef nonnull %call.i.i.i71) #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i71, i32 0, i32 19
  %262 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %263, i32 48
  store ptr %add.ptr.i.i74, ptr %data.i.i, align 4
  %tail.i.i75 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i71, i32 0, i32 16
  %264 = ptrtoint ptr %tail.i.i75 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %tail.i.i75, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %265, i32 48
  store ptr %add.ptr1.i.i, ptr %tail.i.i75, align 8
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef nonnull %call.i.i.i71) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.then.i72.if.end5.i_crit_edge, %if.else299.i.if.end5.i_crit_edge
  %266 = ptrtoint ptr %lbfqc.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %lbfqc.i, align 4
  %268 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %init.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %267, i32 %269)
  %cmp9.i = icmp ult i32 %267, %269
  br i1 %cmp9.i, label %if.then10.i, label %if.end5.i.dequeue_lg_buf.exit_crit_edge

if.end5.i.dequeue_lg_buf.exit_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dequeue_lg_buf.exit

if.then10.i:                                      ; preds = %if.end5.i
  %call.i.i37.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16432, i32 noundef 2592) #11
  %cmp13.not.i = icmp eq ptr %call.i.i37.i, null
  br i1 %cmp13.not.i, label %if.then10.i.dequeue_lg_buf.exit_crit_edge, label %if.then14.i

if.then10.i.dequeue_lg_buf.exit_crit_edge:        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dequeue_lg_buf.exit

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr17.i = getelementptr %struct.sk_buff, ptr %call.i.i37.i, i32 0, i32 3, i32 12
  %270 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 1, ptr %add.ptr17.i, align 4
  tail call void @skb_queue_tail(ptr noundef %queue.i68, ptr noundef nonnull %call.i.i37.i) #11
  %data.i38.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i37.i, i32 0, i32 19
  %271 = ptrtoint ptr %data.i38.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %data.i38.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %272, i32 48
  store ptr %add.ptr.i39.i, ptr %data.i38.i, align 4
  %tail.i40.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i37.i, i32 0, i32 16
  %273 = ptrtoint ptr %tail.i40.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %tail.i40.i, align 8
  %add.ptr1.i41.i = getelementptr i8, ptr %274, i32 48
  store ptr %add.ptr1.i41.i, ptr %tail.i40.i, align 8
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef nonnull %call.i.i37.i) #11
  br label %dequeue_lg_buf.exit

dequeue_lg_buf.exit:                              ; preds = %if.then14.i, %if.then10.i.dequeue_lg_buf.exit_crit_edge, %if.end5.i.dequeue_lg_buf.exit_crit_edge
  %call300.i = tail call ptr @skb_push(ptr noundef nonnull %call4.i, i32 noundef 48) #11
  %275 = ptrtoint ptr %data174.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %data174.i, align 4
  %data.i784.i = getelementptr inbounds %struct.sk_buff, ptr %238, i32 0, i32 19
  %277 = ptrtoint ptr %data.i784.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %data.i784.i, align 4
  %279 = call ptr @memcpy(ptr %276, ptr %278, i32 48)
  %sub302.i = add nsw i32 %spec.select.i, -48
  %call303.i = tail call ptr @skb_put(ptr noundef nonnull %call4.i, i32 noundef %sub302.i) #11
  %280 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %47, ptr %cb.i, align 8
  %call.i.i785.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %281 = getelementptr inbounds %struct.sk_buff, ptr %call4.i, i32 0, i32 2
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_store8_noabort(i32 %282)
  store i64 %call.i.i785.i, ptr %281, align 8
  %push307.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 10
  %283 = ptrtoint ptr %push307.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %push307.i, align 8
  tail call void %284(ptr noundef %47, ptr noundef nonnull %call4.i) #11
  %stats308.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %285 = ptrtoint ptr %stats308.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %stats308.i, align 8
  %rx309.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %286, i32 0, i32 2
  %call.i.i759.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx309.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx309.i, i32 1, i32 3, i32 1) #11
  %287 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx309.i, ptr %rx309.i, i32 1, ptr elementtype(i32) %rx309.i) #11, !srcloc !409
  br label %if.end310.i

if.end310.i:                                      ; preds = %dequeue_lg_buf.exit, %if.then296.i
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %238) #11
  br label %if.end477.i

if.else312.i:                                     ; preds = %if.end240.i
  %call315.i = tail call ptr @skb_dequeue(ptr noundef %queue314.i) #11
  %cmp316.i = icmp eq ptr %call315.i, null
  br i1 %cmp316.i, label %if.then318.i, label %if.else360.i

if.then318.i:                                     ; preds = %if.else312.i
  %call.i.i786.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 2592) #11
  %cmp320.i = icmp eq ptr %call.i.i786.i, null
  br i1 %cmp320.i, label %do.end325.i, label %if.else337.i

do.end325.i:                                      ; preds = %if.then318.i
  %288 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %card, align 4
  %call328.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %289) #14
  %stats329.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %290 = ptrtoint ptr %stats329.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %stats329.i, align 8
  %rx_drop330.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %291, i32 0, i32 4
  %call.i.i760.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop330.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_drop330.i, i32 1, i32 3, i32 1) #11
  %292 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop330.i, ptr %rx_drop330.i, i32 1, ptr elementtype(i32) %rx_drop330.i) #11, !srcloc !409
  %293 = ptrtoint ptr %iovcnt163.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %iovcnt163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %cmp1.i54 = icmp sgt i32 %294, 0
  br i1 %cmp1.i54, label %while.body.i61.preheader, label %do.end325.i.recycle_iovec_rx_bufs.exit67_crit_edge

do.end325.i.recycle_iovec_rx_bufs.exit67_crit_edge: ; preds = %do.end325.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle_iovec_rx_bufs.exit67

while.body.i61.preheader:                         ; preds = %do.end325.i
  %295 = ptrtoint ptr %data159.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %data159.i, align 4
  br label %while.body.i61

while.body.i61:                                   ; preds = %recycle_rx_buf.exit.i66.while.body.i61_crit_edge, %while.body.i61.preheader
  %count.addr.03.i55 = phi i32 [ %dec.i57, %recycle_rx_buf.exit.i66.while.body.i61_crit_edge ], [ %294, %while.body.i61.preheader ]
  %iov.addr.02.i56 = phi ptr [ %incdec.ptr.i58, %recycle_rx_buf.exit.i66.while.body.i61_crit_edge ], [ %296, %while.body.i61.preheader ]
  %dec.i57 = add nsw i32 %count.addr.03.i55, -1
  %incdec.ptr.i58 = getelementptr %struct.iovec, ptr %iov.addr.02.i56, i32 1
  %297 = ptrtoint ptr %iov.addr.02.i56 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %iov.addr.02.i56, align 4
  %add.ptr.i.i59 = getelementptr %struct.sk_buff, ptr %298, i32 0, i32 3, i32 12
  %299 = ptrtoint ptr %add.ptr.i.i59 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %add.ptr.i.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %300)
  %cmp.i.i60 = icmp eq i32 %300, -1
  br i1 %cmp.i.i60, label %do.end.i.i63, label %if.else.i.i64, !prof !375

do.end.i.i63:                                     ; preds = %while.body.i61
  call void @__sanitizer_cov_trace_pc() #13
  %301 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %card, align 4
  %call.i.i62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %302) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %298, i32 noundef 1) #11
  br label %recycle_rx_buf.exit.i66

if.else.i.i64:                                    ; preds = %while.body.i61
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %298) #11
  br label %recycle_rx_buf.exit.i66

recycle_rx_buf.exit.i66:                          ; preds = %if.else.i.i64, %do.end.i.i63
  %cmp.i65 = icmp ugt i32 %count.addr.03.i55, 1
  br i1 %cmp.i65, label %recycle_rx_buf.exit.i66.while.body.i61_crit_edge, label %recycle_rx_buf.exit.i66.recycle_iovec_rx_bufs.exit67_crit_edge

recycle_rx_buf.exit.i66.recycle_iovec_rx_bufs.exit67_crit_edge: ; preds = %recycle_rx_buf.exit.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle_iovec_rx_bufs.exit67

recycle_rx_buf.exit.i66.while.body.i61_crit_edge: ; preds = %recycle_rx_buf.exit.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i61

recycle_iovec_rx_bufs.exit67:                     ; preds = %recycle_rx_buf.exit.i66.recycle_iovec_rx_bufs.exit67_crit_edge, %do.end325.i.recycle_iovec_rx_bufs.exit67_crit_edge
  %303 = ptrtoint ptr %rx_iov.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr null, ptr %rx_iov.i, align 4
  %304 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load volatile i32, ptr %iovpool.i, align 4
  %306 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %305, i32 %307)
  %cmp.i49 = icmp ult i32 %305, %307
  br i1 %cmp.i49, label %if.then.i, label %if.else.i52

if.then.i:                                        ; preds = %recycle_iovec_rx_bufs.exit67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef %iovb.1.i) #11
  %308 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load volatile i32, ptr %iovpool.i, align 4
  %inc.i51 = add i32 %309, 1
  store volatile i32 %inc.i51, ptr %iovpool.i, align 4
  br label %dequeue_rx.exit

if.else.i52:                                      ; preds = %recycle_iovec_rx_bufs.exit67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %iovb.1.i, i32 noundef 1) #11
  br label %dequeue_rx.exit

if.else337.i:                                     ; preds = %if.then318.i
  %310 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load volatile i32, ptr %hbpool.i, align 4
  %312 = ptrtoint ptr %hbnr364.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %hbnr364.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %311, i32 %313)
  %cmp341.i = icmp ult i32 %311, %313
  br i1 %cmp341.i, label %if.then343.i, label %if.else337.i.if.end355.i_crit_edge

if.else337.i.if.end355.i_crit_edge:               ; preds = %if.else337.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end355.i

if.then343.i:                                     ; preds = %if.else337.i
  %call.i.i787.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 2592) #11
  %cmp345.not.i = icmp eq ptr %call.i.i787.i, null
  br i1 %cmp345.not.i, label %if.then343.i.if.end355.i_crit_edge, label %if.then347.i

if.then343.i.if.end355.i_crit_edge:               ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end355.i

if.then347.i:                                     ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_tail(ptr noundef %queue314.i, ptr noundef nonnull %call.i.i787.i) #11
  %314 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load volatile i32, ptr %hbpool.i, align 4
  %inc352.i = add i32 %315, 1
  store volatile i32 %inc352.i, ptr %hbpool.i, align 4
  br label %if.end355.i

if.end355.i:                                      ; preds = %if.then347.i, %if.then343.i.if.end355.i_crit_edge, %if.else337.i.if.end355.i_crit_edge
  %add.ptr358.i = getelementptr %struct.sk_buff, ptr %call.i.i786.i, i32 0, i32 3, i32 12
  %316 = ptrtoint ptr %add.ptr358.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 -1, ptr %add.ptr358.i, align 4
  br label %if.end407.i

if.else360.i:                                     ; preds = %if.else312.i
  %317 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load volatile i32, ptr %hbpool.i, align 4
  %dec363.i = add i32 %318, -1
  store volatile i32 %dec363.i, ptr %hbpool.i, align 4
  %319 = ptrtoint ptr %hbnr364.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %hbnr364.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec363.i, i32 %320)
  %cmp366.i = icmp ult i32 %dec363.i, %320
  br i1 %cmp366.i, label %if.then368.i, label %if.else360.i.if.end407.i_crit_edge

if.else360.i.if.end407.i_crit_edge:               ; preds = %if.else360.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end407.i

if.then368.i:                                     ; preds = %if.else360.i
  %call.i.i788.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 2592) #11
  %cmp371.not.i = icmp eq ptr %call.i.i788.i, null
  br i1 %cmp371.not.i, label %if.then368.i.if.end383.i_crit_edge, label %if.then373.i

if.then368.i.if.end383.i_crit_edge:               ; preds = %if.then368.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end383.i

if.then373.i:                                     ; preds = %if.then368.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr376.i = getelementptr %struct.sk_buff, ptr %call.i.i788.i, i32 0, i32 3, i32 12
  %321 = ptrtoint ptr %add.ptr376.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 -1, ptr %add.ptr376.i, align 4
  tail call void @skb_queue_tail(ptr noundef %queue314.i, ptr noundef nonnull %call.i.i788.i) #11
  %322 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load volatile i32, ptr %hbpool.i, align 4
  %inc382.i = add i32 %323, 1
  store volatile i32 %inc382.i, ptr %hbpool.i, align 4
  br label %if.end383.i

if.end383.i:                                      ; preds = %if.then373.i, %if.then368.i.if.end383.i_crit_edge
  %324 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load volatile i32, ptr %hbpool.i, align 4
  %326 = ptrtoint ptr %hbnr364.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %hbnr364.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %325, i32 %327)
  %cmp388.i = icmp ult i32 %325, %327
  br i1 %cmp388.i, label %if.then390.i, label %if.end383.i.if.end407.i_crit_edge

if.end383.i.if.end407.i_crit_edge:                ; preds = %if.end383.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end407.i

if.then390.i:                                     ; preds = %if.end383.i
  %call.i.i789.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 2592) #11
  %cmp392.not.i = icmp eq ptr %call.i.i789.i, null
  br i1 %cmp392.not.i, label %if.then390.i.if.end407.i_crit_edge, label %if.then394.i

if.then390.i.if.end407.i_crit_edge:               ; preds = %if.then390.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end407.i

if.then394.i:                                     ; preds = %if.then390.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr397.i = getelementptr %struct.sk_buff, ptr %call.i.i789.i, i32 0, i32 3, i32 12
  %328 = ptrtoint ptr %add.ptr397.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 -1, ptr %add.ptr397.i, align 4
  tail call void @skb_queue_tail(ptr noundef %queue314.i, ptr noundef nonnull %call.i.i789.i) #11
  %329 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load volatile i32, ptr %hbpool.i, align 4
  %inc403.i = add i32 %330, 1
  store volatile i32 %inc403.i, ptr %hbpool.i, align 4
  br label %if.end407.i

if.end407.i:                                      ; preds = %if.then394.i, %if.then390.i.if.end407.i_crit_edge, %if.end383.i.if.end407.i_crit_edge, %if.else360.i.if.end407.i_crit_edge, %if.end355.i
  %hb.0.i = phi ptr [ %call.i.i786.i, %if.end355.i ], [ %call315.i, %if.else360.i.if.end407.i_crit_edge ], [ %call315.i, %if.then390.i.if.end407.i_crit_edge ], [ %call315.i, %if.then394.i ], [ %call315.i, %if.end383.i.if.end407.i_crit_edge ]
  %331 = ptrtoint ptr %data159.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %data159.i, align 4
  %truesize409.i = getelementptr inbounds %struct.sk_buff, ptr %hb.0.i, i32 0, i32 20
  %333 = ptrtoint ptr %truesize409.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %truesize409.i, align 8
  %call410.i = tail call i32 @atm_charge(ptr noundef %47, i32 noundef %334) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410.i)
  %tobool411.not.i = icmp eq i32 %call410.i, 0
  br i1 %tobool411.not.i, label %if.then412.i, label %if.else432.i

if.then412.i:                                     ; preds = %if.end407.i
  %335 = ptrtoint ptr %iovcnt163.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %iovcnt163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %cmp1.i = icmp sgt i32 %336, 0
  br i1 %cmp1.i, label %if.then412.i.while.body.i_crit_edge, label %if.then412.i.recycle_iovec_rx_bufs.exit_crit_edge

if.then412.i.recycle_iovec_rx_bufs.exit_crit_edge: ; preds = %if.then412.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle_iovec_rx_bufs.exit

if.then412.i.while.body.i_crit_edge:              ; preds = %if.then412.i
  br label %while.body.i

while.body.i:                                     ; preds = %recycle_rx_buf.exit.i.while.body.i_crit_edge, %if.then412.i.while.body.i_crit_edge
  %count.addr.03.i = phi i32 [ %dec.i41, %recycle_rx_buf.exit.i.while.body.i_crit_edge ], [ %336, %if.then412.i.while.body.i_crit_edge ]
  %iov.addr.02.i = phi ptr [ %incdec.ptr.i, %recycle_rx_buf.exit.i.while.body.i_crit_edge ], [ %332, %if.then412.i.while.body.i_crit_edge ]
  %dec.i41 = add nsw i32 %count.addr.03.i, -1
  %incdec.ptr.i = getelementptr %struct.iovec, ptr %iov.addr.02.i, i32 1
  %337 = ptrtoint ptr %iov.addr.02.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %iov.addr.02.i, align 4
  %add.ptr.i.i = getelementptr %struct.sk_buff, ptr %338, i32 0, i32 3, i32 12
  %339 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %340)
  %cmp.i.i42 = icmp eq i32 %340, -1
  br i1 %cmp.i.i42, label %do.end.i.i44, label %if.else.i.i45, !prof !375

do.end.i.i44:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %341 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %card, align 4
  %call.i.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %342) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %338, i32 noundef 1) #11
  br label %recycle_rx_buf.exit.i

if.else.i.i45:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %338) #11
  br label %recycle_rx_buf.exit.i

recycle_rx_buf.exit.i:                            ; preds = %if.else.i.i45, %do.end.i.i44
  %cmp.i46 = icmp ugt i32 %count.addr.03.i, 1
  br i1 %cmp.i46, label %recycle_rx_buf.exit.i.while.body.i_crit_edge, label %recycle_rx_buf.exit.i.recycle_iovec_rx_bufs.exit_crit_edge

recycle_rx_buf.exit.i.recycle_iovec_rx_bufs.exit_crit_edge: ; preds = %recycle_rx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle_iovec_rx_bufs.exit

recycle_rx_buf.exit.i.while.body.i_crit_edge:     ; preds = %recycle_rx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

recycle_iovec_rx_bufs.exit:                       ; preds = %recycle_rx_buf.exit.i.recycle_iovec_rx_bufs.exit_crit_edge, %if.then412.i.recycle_iovec_rx_bufs.exit_crit_edge
  %343 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load volatile i32, ptr %hbpool.i, align 4
  %345 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %344, i32 %346)
  %cmp420.i = icmp ult i32 %344, %346
  br i1 %cmp420.i, label %if.then422.i, label %if.else428.i

if.then422.i:                                     ; preds = %recycle_iovec_rx_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_tail(ptr noundef %queue314.i, ptr noundef nonnull %hb.0.i) #11
  %347 = ptrtoint ptr %hbpool.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load volatile i32, ptr %hbpool.i, align 4
  %inc427.i = add i32 %348, 1
  store volatile i32 %inc427.i, ptr %hbpool.i, align 4
  br label %if.end429.i

if.else428.i:                                     ; preds = %recycle_iovec_rx_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %hb.0.i, i32 noundef 1) #11
  br label %if.end429.i

if.end429.i:                                      ; preds = %if.else428.i, %if.then422.i
  %stats430.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %349 = ptrtoint ptr %stats430.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %stats430.i, align 8
  %rx_drop431.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %350, i32 0, i32 4
  %call.i.i761.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop431.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_drop431.i, i32 1, i32 3, i32 1) #11
  %351 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop431.i, ptr %rx_drop431.i, i32 1, ptr elementtype(i32) %rx_drop431.i) #11, !srcloc !409
  br label %if.end477.i

if.else432.i:                                     ; preds = %if.end407.i
  %352 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %332, align 4
  %data434.i = getelementptr inbounds %struct.sk_buff, ptr %hb.0.i, i32 0, i32 19
  %354 = ptrtoint ptr %data434.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %data434.i, align 4
  %iov_len435.i = getelementptr inbounds %struct.iovec, ptr %332, i32 0, i32 1
  %356 = ptrtoint ptr %iov_len435.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %iov_len435.i, align 4
  %data.i790.i = getelementptr inbounds %struct.sk_buff, ptr %353, i32 0, i32 19
  %358 = ptrtoint ptr %data.i790.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %data.i790.i, align 4
  %360 = call ptr @memcpy(ptr %355, ptr %359, i32 %357)
  %361 = load i32, ptr %iov_len435.i, align 4
  %call437.i = tail call ptr @skb_put(ptr noundef nonnull %hb.0.i, i32 noundef %361) #11
  %362 = ptrtoint ptr %iov_len435.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %iov_len435.i, align 4
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %353) #11
  %364 = ptrtoint ptr %iovcnt163.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %iovcnt163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %365)
  %cmp445799.i = icmp sgt i32 %365, 1
  br i1 %cmp445799.i, label %for.body447.lr.ph.i, label %if.else432.i.for.end463.i_crit_edge

if.else432.i.for.end463.i_crit_edge:              ; preds = %if.else432.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end463.i

for.body447.lr.ph.i:                              ; preds = %if.else432.i
  %sub439.i = sub i32 %spec.select.i, %363
  %tail.i791.i = getelementptr inbounds %struct.sk_buff, ptr %hb.0.i, i32 0, i32 16
  br label %for.body447.i

for.body447.i:                                    ; preds = %for.body447.i.for.body447.i_crit_edge, %for.body447.lr.ph.i
  %j.0802.i = phi i32 [ 1, %for.body447.lr.ph.i ], [ %inc462.i, %for.body447.i.for.body447.i_crit_edge ]
  %remaining.0801.i = phi i32 [ %sub439.i, %for.body447.lr.ph.i ], [ %sub460.i, %for.body447.i.for.body447.i_crit_edge ]
  %.pn800.i = phi ptr [ %332, %for.body447.lr.ph.i ], [ %iov.0.i, %for.body447.i.for.body447.i_crit_edge ]
  %iov.0.i = getelementptr %struct.iovec, ptr %.pn800.i, i32 1
  %366 = ptrtoint ptr %iov.0.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %iov.0.i, align 4
  %iov_len449.i = getelementptr %struct.iovec, ptr %.pn800.i, i32 1, i32 1
  %368 = ptrtoint ptr %iov_len449.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %iov_len449.i, align 4
  %370 = tail call i32 @llvm.smin.i32(i32 %remaining.0801.i, i32 %369) #11
  %371 = ptrtoint ptr %tail.i791.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %tail.i791.i, align 8
  %data.i792.i = getelementptr inbounds %struct.sk_buff, ptr %367, i32 0, i32 19
  %373 = ptrtoint ptr %data.i792.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %data.i792.i, align 4
  %375 = call ptr @memcpy(ptr %372, ptr %374, i32 %370)
  %call458.i = tail call ptr @skb_put(ptr noundef nonnull %hb.0.i, i32 noundef %370) #11
  %sub460.i = sub i32 %remaining.0801.i, %370
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef %367) #11
  %inc462.i = add nuw nsw i32 %j.0802.i, 1
  %376 = ptrtoint ptr %iovcnt163.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %iovcnt163.i, align 4
  %cmp445.i = icmp slt i32 %inc462.i, %377
  br i1 %cmp445.i, label %for.body447.i.for.body447.i_crit_edge, label %for.body447.i.for.end463.i_crit_edge

for.body447.i.for.end463.i_crit_edge:             ; preds = %for.body447.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end463.i

for.body447.i.for.body447.i_crit_edge:            ; preds = %for.body447.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body447.i

for.end463.i:                                     ; preds = %for.body447.i.for.end463.i_crit_edge, %if.else432.i.for.end463.i_crit_edge
  %cb464.i = getelementptr inbounds %struct.sk_buff, ptr %hb.0.i, i32 0, i32 3
  %378 = ptrtoint ptr %cb464.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr %47, ptr %cb464.i, align 8
  %call.i.i793.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %379 = getelementptr inbounds %struct.sk_buff, ptr %hb.0.i, i32 0, i32 2
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_store8_noabort(i32 %380)
  store i64 %call.i.i793.i, ptr %379, align 8
  %push467.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 10
  %381 = ptrtoint ptr %push467.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %push467.i, align 8
  tail call void %382(ptr noundef %47, ptr noundef nonnull %hb.0.i) #11
  %stats468.i = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 16
  %383 = ptrtoint ptr %stats468.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %stats468.i, align 8
  %rx469.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %384, i32 0, i32 2
  %call.i.i762.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx469.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx469.i, i32 1, i32 3, i32 1) #11
  %385 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx469.i, ptr %rx469.i, i32 1, ptr elementtype(i32) %rx469.i) #11, !srcloc !409
  br label %if.end477.i

if.end477.i:                                      ; preds = %for.end463.i, %if.end429.i, %if.end310.i, %if.end291.i, %if.else254.i, %if.then251.i
  %386 = ptrtoint ptr %rx_iov.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr null, ptr %rx_iov.i, align 4
  %387 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load volatile i32, ptr %iovpool.i, align 4
  %389 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %388, i32 %390)
  %cmp.i794.i = icmp ult i32 %388, %390
  br i1 %cmp.i794.i, label %if.then.i.i, label %if.else.i795.i

if.then.i.i:                                      ; preds = %if.end477.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef %iovb.1.i) #11
  %391 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load volatile i32, ptr %iovpool.i, align 4
  %inc.i.i = add i32 %392, 1
  store volatile i32 %inc.i.i, ptr %iovpool.i, align 4
  br label %dequeue_rx.exit

if.else.i795.i:                                   ; preds = %if.end477.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %iovb.1.i, i32 noundef 1) #11
  br label %dequeue_rx.exit

dequeue_rx.exit:                                  ; preds = %if.else.i795.i, %if.then.i.i, %if.else.i52, %if.then.i, %if.else.i82, %if.then.i81, %if.end158.i.dequeue_rx.exit_crit_edge, %if.else.i115, %do.end.i114, %if.else.i775.i, %do.end.i774.i, %if.else.i767.i, %do.end.i766.i, %if.else.i.i, %do.end.i.i, %do.body.dequeue_rx.exit_crit_edge
  %393 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %next, align 4
  %word_45 = getelementptr inbounds %struct.ns_rsqe, ptr %394, i32 0, i32 3
  %395 = ptrtoint ptr %word_45 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 0, ptr %word_45, align 4
  %396 = load ptr, ptr %next, align 4
  %397 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %last, align 4
  %cmp = icmp eq ptr %396, %398
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %dequeue_rx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %399 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %base, align 4
  br label %do.cond

if.else:                                          ; preds = %dequeue_rx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr %struct.ns_rsqe, ptr %396, i32 1
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then11
  %storemerge = phi ptr [ %incdec.ptr, %if.else ], [ %400, %if.then11 ]
  %401 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %storemerge, ptr %next, align 4
  %word_420 = getelementptr inbounds %struct.ns_rsqe, ptr %storemerge, i32 0, i32 3
  %402 = ptrtoint ptr %word_420 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %word_420, align 4
  %.mask40 = and i32 %403, 128
  %tobool22.not = icmp eq i32 %.mask40, 0
  br i1 %tobool22.not, label %do.body23, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body23:                                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  tail call void @arm_heavy_mb() #11
  %404 = ptrtoint ptr %396 to i32
  %405 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %base, align 4
  %407 = ptrtoint ptr %406 to i32
  %sub = sub i32 %404, %407
  %408 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %409 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %membase.i, align 4
  %add.ptr = getelementptr i8, ptr %410, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %408) #11, !srcloc !320
  br label %cleanup

cleanup:                                          ; preds = %do.body23, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_charge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dequeue_sm_buf(ptr noundef %card, ptr noundef %sb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 15, i32 1
  tail call void @skb_unlink(ptr noundef %sb, ptr noundef %queue) #11
  %sbfqc = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 29
  %0 = ptrtoint ptr %sbfqc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sbfqc, align 4
  %init = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 25, i32 1
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 52, i32 noundef 2592) #11
  %cmp1.not = icmp eq ptr %call.i.i, null
  br i1 %cmp1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %add.ptr, align 4
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef nonnull %call.i.i) #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %8, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef nonnull %call.i.i)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %9 = ptrtoint ptr %sbfqc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sbfqc, align 4
  %11 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %init, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp9 = icmp ult i32 %10, %12
  br i1 %cmp9, label %if.then10, label %if.end5.if.end22_crit_edge

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then10:                                        ; preds = %if.end5
  %call.i.i37 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 52, i32 noundef 2592) #11
  %cmp13.not = icmp eq ptr %call.i.i37, null
  br i1 %cmp13.not, label %if.then10.if.end22_crit_edge, label %if.then14

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr17 = getelementptr %struct.sk_buff, ptr %call.i.i37, i32 0, i32 3, i32 12
  %13 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %add.ptr17, align 4
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef nonnull %call.i.i37) #11
  %data.i38 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i37, i32 0, i32 19
  %14 = ptrtoint ptr %data.i38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %15, i32 4
  store ptr %add.ptr.i39, ptr %data.i38, align 4
  %tail.i40 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i37, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i40, align 8
  %add.ptr1.i41 = getelementptr i8, ptr %17, i32 4
  store ptr %add.ptr1.i41, ptr %tail.i40, align 8
  tail call fastcc void @push_rxbufs(ptr noundef %card, ptr noundef nonnull %call.i.i37)
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then10.if.end22_crit_edge, %if.end5.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_open(ptr noundef %vcc) #2 align 64 {
entry:
  %u32d = alloca [4 x i32], align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %u32d) #11
  %0 = getelementptr inbounds [4 x i32], ptr %u32d, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %u32d, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %u32d, i32 0, i32 3
  %vci2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %3 = call ptr @memset(ptr %u32d, i32 255, i32 16)
  %4 = ptrtoint ptr %vci2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vci2, align 8
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_data, align 8
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %aal, align 8
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %11, label %entry.cleanup233_crit_edge [
    i8 5, label %entry.if.end_crit_edge
    i8 13, label %entry.if.end_crit_edge370
  ]

entry.if.end_crit_edge370:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup233_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup233

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge370
  %vpi1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %13 = ptrtoint ptr %vpi1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vpi1, align 4
  %conv12 = sext i16 %14 to i32
  %vcibits = getelementptr inbounds %struct.ns_dev, ptr %9, i32 0, i32 6
  %15 = ptrtoint ptr %vcibits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vcibits, align 4
  %shl = shl i32 %conv12, %16
  %or = or i32 %shl, %5
  %arrayidx = getelementptr %struct.ns_dev, ptr %9, i32 0, i32 22, i32 %or
  %dev_data13 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %17 = ptrtoint ptr %dev_data13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %dev_data13, align 8
  %18 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp16.not = icmp eq i8 %19, 0
  br i1 %cmp16.not, label %if.end.if.end20_crit_edge, label %land.lhs.true18

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true18:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load volatile i32, ptr %arrayidx, align 4
  %bf.load.lobit = lshr i32 %bf.load, 31
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true18, %if.end.if.end20_crit_edge
  %inuse.0 = phi i32 [ 0, %if.end.if.end20_crit_edge ], [ %bf.load.lobit, %land.lhs.true18 ]
  %rxtp = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rxtp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp24.not = icmp eq i8 %22, 0
  br i1 %cmp24.not, label %if.end20.if.end31_crit_edge, label %land.lhs.true26

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true26:                                  ; preds = %if.end20
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load27 = load volatile i32, ptr %arrayidx, align 4
  %24 = and i32 %bf.load27, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool29.not = icmp eq i32 %24, 0
  br i1 %tobool29.not, label %land.lhs.true26.if.end31_crit_edge, label %do.end36

land.lhs.true26.if.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true26.if.end31_crit_edge, %if.end20.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inuse.0)
  %tobool32.not = icmp eq i32 %inuse.0, 0
  br i1 %tobool32.not, label %if.end42, label %if.end31..thread_crit_edge

if.end31..thread_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %.thread

do.end36:                                         ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inuse.0)
  %cmp39 = icmp eq i32 %inuse.0, 0
  %spec.select = select i1 %cmp39, ptr @.str.126, ptr @.str.127
  br label %.thread

.thread:                                          ; preds = %do.end36, %if.end31..thread_crit_edge
  %25 = phi ptr [ %spec.select, %do.end36 ], [ @.str.125, %if.end31..thread_crit_edge ]
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %9, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %27, ptr noundef nonnull %25) #14
  br label %cleanup233

if.end42:                                         ; preds = %if.end31
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool45.not = icmp eq i32 %30, 0
  br i1 %tobool45.not, label %if.then46, label %if.end42.if.end231_crit_edge

if.end42.if.end231_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end231

if.then46:                                        ; preds = %if.end42
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #11
  %31 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %qos, align 8
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.175)
  switch i8 %32, label %if.then46.if.end195_crit_edge [
    i8 2, label %if.then54
    i8 1, label %if.then191
  ]

if.then46.if.end195_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then54:                                        ; preds = %if.then46
  %max_pcr = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 0, i32 1
  %34 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp57 = icmp eq i32 %35, 0
  br i1 %cmp57, label %land.lhs.true59, label %if.then54.if.end75_crit_edge

if.then54.if.end75_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true59:                                  ; preds = %if.then54
  %pcr = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 0, i32 2
  %36 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pcr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp62 = icmp eq i32 %37, 0
  br i1 %cmp62, label %land.lhs.true64, label %land.lhs.true59.if.end75_crit_edge

land.lhs.true59.if.end75_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %min_pcr = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 0, i32 3
  %38 = ptrtoint ptr %min_pcr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %min_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp67 = icmp eq i32 %39, 0
  br i1 %cmp67, label %do.end72, label %land.lhs.true64.if.end75_crit_edge

land.lhs.true64.if.end75_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

do.end72:                                         ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %cleanup233

if.end75:                                         ; preds = %land.lhs.true64.if.end75_crit_edge, %land.lhs.true59.if.end75_crit_edge, %if.then54.if.end75_crit_edge
  %call78 = tail call i32 @atm_pcr_goal(ptr noundef %qos) #11
  %40 = tail call i32 @llvm.abs.i32(i32 %call78, i1 false)
  %mul = mul i32 %40, 2340
  %max_pcr88 = getelementptr inbounds %struct.ns_dev, ptr %9, i32 0, i32 3
  %41 = ptrtoint ptr %max_pcr88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_pcr88, align 4
  %mul.frozen = freeze i32 %mul
  %.frozen = freeze i32 %42
  %div = udiv i32 %mul.frozen, %.frozen
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp90 = icmp sgt i32 %call78, 0
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %43 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %mul.frozen, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp93.not = icmp ne i32 %rem.decomposed, 0
  %inc = zext i1 %cmp93.not to i32
  %spec.select342 = add i32 %div, %inc
  br label %if.end111

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp97 = icmp eq i32 %call78, 0
  br i1 %cmp97, label %if.then99, label %if.else.if.end111_crit_edge

if.else.if.end111_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then99:                                        ; preds = %if.else
  %tst_free_entries = getelementptr inbounds %struct.ns_dev, ptr %9, i32 0, i32 21
  %44 = ptrtoint ptr %tst_free_entries to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %tst_free_entries, align 4
  %sub100 = add i32 %45, -340
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub100)
  %cmp101 = icmp slt i32 %sub100, 1
  br i1 %cmp101, label %do.end106, label %if.then99.if.end123_crit_edge

if.then99.if.end123_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

do.end106:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %cleanup233

if.end111:                                        ; preds = %if.else.if.end111_crit_edge, %if.then92
  %n.0 = phi i32 [ %div, %if.else.if.end111_crit_edge ], [ %spec.select342, %if.then92 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0)
  %cmp112 = icmp eq i32 %n.0, 0
  br i1 %cmp112, label %do.end117, label %if.end111.if.end123_crit_edge

if.end111.if.end123_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

do.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %9, align 4
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %47) #14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %cleanup233

if.end123:                                        ; preds = %if.end111.if.end123_crit_edge, %if.then99.if.end123_crit_edge
  %n.0348 = phi i32 [ %n.0, %if.end111.if.end123_crit_edge ], [ %sub100, %if.then99.if.end123_crit_edge ]
  %tst_free_entries124 = getelementptr inbounds %struct.ns_dev, ptr %9, i32 0, i32 21
  %48 = ptrtoint ptr %tst_free_entries124 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %tst_free_entries124, align 4
  %sub125 = add i32 %49, -340
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0348, i32 %sub125)
  %cmp126 = icmp sgt i32 %n.0348, %sub125
  br i1 %cmp126, label %do.end131, label %if.else134

do.end131:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %cleanup233

if.else134:                                       ; preds = %if.end123
  %50 = ptrtoint ptr %tst_free_entries124 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %tst_free_entries124, align 4
  %sub136 = sub i32 %51, %n.0348
  store volatile i32 %sub136, ptr %tst_free_entries124, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else134
  %frscdi.0354 = phi i32 [ 0, %if.else134 ], [ %inc147, %for.inc.for.body_crit_edge ]
  %arrayidx140 = getelementptr %struct.ns_dev, ptr %9, i32 0, i32 24, i32 %frscdi.0354
  %52 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx140, align 4
  %cmp141 = icmp eq ptr %53, null
  br i1 %cmp141, label %if.end158, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc147 = add nuw nsw i32 %frscdi.0354, 1
  %exitcond.not = icmp eq i32 %inc147, 460
  br i1 %exitcond.not, label %do.end153, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end153:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %tst_free_entries124 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %tst_free_entries124, align 4
  %add155 = add i32 %55, %n.0348
  store volatile i32 %add155, ptr %tst_free_entries124, align 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %cleanup233

if.end158:                                        ; preds = %for.body
  %56 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx, ptr %arrayidx140, align 4
  %mul159 = mul i32 %frscdi.0354, 12
  %add160 = add i32 %mul159, 119370
  %cbr_scd = getelementptr %struct.ns_dev, ptr %9, i32 0, i32 22, i32 %or, i32 5
  %57 = ptrtoint ptr %cbr_scd to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add160, ptr %cbr_scd, align 4
  %call162 = tail call fastcc ptr @get_scq(ptr noundef %9, i32 noundef 1024, i32 noundef %add160)
  %cmp163 = icmp eq ptr %call162, null
  br i1 %cmp163, label %do.end168, label %if.end175

do.end168:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx140, align 4
  %59 = ptrtoint ptr %tst_free_entries124 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %tst_free_entries124, align 4
  %add172 = add i32 %60, %n.0348
  store volatile i32 %add172, ptr %tst_free_entries124, align 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %cleanup233

if.end175:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  %scq176 = getelementptr %struct.ns_dev, ptr %9, i32 0, i32 22, i32 %or, i32 4
  %61 = ptrtoint ptr %scq176 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call162, ptr %scq176, align 4
  %dma = getelementptr inbounds %struct.scq_info, ptr %call162, i32 0, i32 1
  %62 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma, align 4
  %base = getelementptr inbounds %struct.scq_info, ptr %call162, i32 0, i32 2
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = ptrtoint ptr %call162 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call162, align 4
  %69 = ptrtoint ptr %68 to i32
  %sub177 = add i32 %63, %66
  %add178 = sub i32 %sub177, %69
  %70 = ptrtoint ptr %u32d to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add178, ptr %u32d, align 4
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %0, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %1, align 4
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %2, align 4
  %74 = ptrtoint ptr %cbr_scd to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cbr_scd, align 4
  call fastcc void @ns_write_sram(ptr noundef %9, i32 noundef %75, ptr noundef nonnull %u32d, i32 noundef 4)
  tail call fastcc void @fill_tst(ptr noundef %9, i32 noundef %n.0348, ptr noundef %arrayidx)
  br label %if.end195thread-pre-split

if.then191:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %cbr_scd192 = getelementptr %struct.ns_dev, ptr %9, i32 0, i32 22, i32 %or, i32 5
  %76 = ptrtoint ptr %cbr_scd192 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %cbr_scd192, align 4
  %scq0 = getelementptr inbounds %struct.ns_dev, ptr %9, i32 0, i32 12
  %77 = ptrtoint ptr %scq0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %scq0, align 4
  %scq193 = getelementptr %struct.ns_dev, ptr %9, i32 0, i32 22, i32 %or, i32 4
  %79 = ptrtoint ptr %scq193 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %scq193, align 4
  br label %if.end195thread-pre-split

if.end195thread-pre-split:                        ; preds = %if.then191, %if.end175
  %80 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %80)
  %.pr = load i8, ptr %qos, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.end195thread-pre-split, %if.then46.if.end195_crit_edge
  %81 = phi i8 [ %.pr, %if.end195thread-pre-split ], [ %32, %if.then46.if.end195_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp200.not = icmp eq i8 %81, 0
  br i1 %cmp200.not, label %if.end195.if.end205_crit_edge, label %if.then202

if.end195.if.end205_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end205

if.then202:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %bf.load203 = load volatile i32, ptr %arrayidx, align 4
  %bf.set = or i32 %bf.load203, -2147483648
  store volatile i32 %bf.set, ptr %arrayidx, align 4
  %tx_vcc = getelementptr %struct.ns_dev, ptr %9, i32 0, i32 22, i32 %or, i32 1
  %83 = ptrtoint ptr %tx_vcc to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %vcc, ptr %tx_vcc, align 4
  %tbd_count = getelementptr %struct.ns_dev, ptr %9, i32 0, i32 22, i32 %or, i32 6
  %84 = ptrtoint ptr %tbd_count to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %tbd_count, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then202, %if.end195.if.end205_crit_edge
  %85 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rxtp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp210.not = icmp eq i8 %86, 0
  br i1 %cmp210.not, label %if.end205.if.end231_crit_edge, label %if.then212

if.end205.if.end231_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end231

if.then212:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #11
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load213 = load volatile i32, ptr %arrayidx, align 4
  %bf.set215 = or i32 %bf.load213, 1073741824
  store volatile i32 %bf.set215, ptr %arrayidx, align 4
  %rx_vcc = getelementptr %struct.ns_dev, ptr %9, i32 0, i32 22, i32 %or, i32 2
  %88 = ptrtoint ptr %rx_vcc to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %vcc, ptr %rx_vcc, align 4
  %rx_iov = getelementptr %struct.ns_dev, ptr %9, i32 0, i32 22, i32 %or, i32 3
  %89 = ptrtoint ptr %rx_iov to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %rx_iov, align 4
  %90 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %91)
  %cmp219 = icmp eq i8 %91, 5
  %. = select i1 %cmp219, i32 655360, i32 524288
  %92 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %., ptr %status, align 4
  %93 = ptrtoint ptr %vcibits to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vcibits, align 4
  %shl226 = shl i32 %conv12, %94
  %or227 = or i32 %shl226, %5
  %mul228 = shl i32 %or227, 2
  call fastcc void @ns_write_sram(ptr noundef %9, i32 noundef %mul228, ptr noundef nonnull %status, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #11
  br label %if.end231

if.end231:                                        ; preds = %if.then212, %if.end205.if.end231_crit_edge, %if.end42.if.end231_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  br label %cleanup233

cleanup233:                                       ; preds = %if.end231, %do.end168, %do.end153, %do.end131, %do.end117, %do.end106, %do.end72, %.thread, %entry.cleanup233_crit_edge
  %retval.1 = phi i32 [ -22, %.thread ], [ 0, %if.end231 ], [ -22, %entry.cleanup233_crit_edge ], [ -22, %do.end72 ], [ -22, %do.end106 ], [ -22, %do.end117 ], [ -22, %do.end131 ], [ -16, %do.end153 ], [ -12, %do.end168 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %u32d) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns_close(ptr noundef %vcc) #2 align 64 {
entry:
  %data = alloca i32, align 4
  %data112 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #11
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev_data1 = getelementptr inbounds %struct.atm_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data1, align 8
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %rxtp = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rxtp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %entry.if.end63_crit_edge, label %if.then

entry.if.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then:                                          ; preds = %entry
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %8 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vpi, align 4
  %conv4 = sext i16 %9 to i32
  %vcibits = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %vcibits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vcibits, align 4
  %shl = shl i32 %conv4, %11
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %12 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vci, align 8
  %or = or i32 %shl, %13
  %res_lock = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 40
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock) #11
  %membase = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !411
  %17 = and i32 %16, 131072
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.body17, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

do.body17:                                        ; preds = %while.cond
  %mul = shl i32 %or, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !412
  tail call void @arm_heavy_mb() #11
  %or21 = or i32 %mul, 536870912
  %18 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr23 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %18) #11, !srcloc !320
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock, i32 noundef %call9) #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load volatile i32, ptr %1, align 4
  %bf.clear = and i32 %bf.load, -1073741825
  store volatile i32 %bf.clear, ptr %1, align 4
  %rx_iov = getelementptr inbounds %struct.vc_map, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %rx_iov to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_iov, align 4
  %cmp25.not = icmp eq ptr %23, null
  br i1 %cmp25.not, label %do.body17.if.end63_crit_edge, label %if.then27

do.body17.if.end63_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then27:                                        ; preds = %do.body17
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr31 = getelementptr i8, ptr %25, i32 24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #11, !srcloc !317
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !413
  %and35 = lshr i32 %27, 23
  %shr = and i32 %and35, 510
  %sbfqc = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 29
  %28 = ptrtoint ptr %sbfqc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr, ptr %sbfqc, align 4
  %and36 = lshr i32 %27, 15
  %shr37 = and i32 %and36, 510
  %lbfqc = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 30
  %29 = ptrtoint ptr %lbfqc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr37, ptr %lbfqc, align 4
  %30 = ptrtoint ptr %rx_iov to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_iov, align 4
  %iovcnt = getelementptr %struct.sk_buff, ptr %31, i32 0, i32 3, i32 20
  %32 = ptrtoint ptr %iovcnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iovcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1.i = icmp sgt i32 %33, 0
  br i1 %cmp1.i, label %while.body.i.preheader, label %if.then27.recycle_iovec_rx_bufs.exit_crit_edge

if.then27.recycle_iovec_rx_bufs.exit_crit_edge:   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle_iovec_rx_bufs.exit

while.body.i.preheader:                           ; preds = %if.then27
  %data42 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 19
  %34 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data42, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %recycle_rx_buf.exit.i.while.body.i_crit_edge, %while.body.i.preheader
  %count.addr.03.i = phi i32 [ %dec.i, %recycle_rx_buf.exit.i.while.body.i_crit_edge ], [ %33, %while.body.i.preheader ]
  %iov.addr.02.i = phi ptr [ %incdec.ptr.i, %recycle_rx_buf.exit.i.while.body.i_crit_edge ], [ %35, %while.body.i.preheader ]
  %dec.i = add nsw i32 %count.addr.03.i, -1
  %incdec.ptr.i = getelementptr %struct.iovec, ptr %iov.addr.02.i, i32 1
  %36 = ptrtoint ptr %iov.addr.02.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iov.addr.02.i, align 4
  %add.ptr.i.i = getelementptr %struct.sk_buff, ptr %37, i32 0, i32 3, i32 12
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.i.i = icmp eq i32 %39, -1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else.i.i, !prof !375

do.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %5, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %41) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %37, i32 noundef 1) #11
  br label %recycle_rx_buf.exit.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @push_rxbufs(ptr noundef %5, ptr noundef %37) #11
  br label %recycle_rx_buf.exit.i

recycle_rx_buf.exit.i:                            ; preds = %if.else.i.i, %do.end.i.i
  %cmp.i = icmp ugt i32 %count.addr.03.i, 1
  br i1 %cmp.i, label %recycle_rx_buf.exit.i.while.body.i_crit_edge, label %recycle_rx_buf.exit.i.recycle_iovec_rx_bufs.exit_crit_edge

recycle_rx_buf.exit.i.recycle_iovec_rx_bufs.exit_crit_edge: ; preds = %recycle_rx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle_iovec_rx_bufs.exit

recycle_rx_buf.exit.i.while.body.i_crit_edge:     ; preds = %recycle_rx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

recycle_iovec_rx_bufs.exit:                       ; preds = %recycle_rx_buf.exit.i.recycle_iovec_rx_bufs.exit_crit_edge, %if.then27.recycle_iovec_rx_bufs.exit_crit_edge
  %42 = ptrtoint ptr %iovcnt to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %iovcnt, align 4
  %int_lock = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 39
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #11
  %iovpool.i = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 18
  %43 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %iovpool.i, align 4
  %max.i = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 28, i32 2
  %45 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp.i306 = icmp ult i32 %44, %46
  br i1 %cmp.i306, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %recycle_iovec_rx_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %queue.i = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 18, i32 1
  tail call void @skb_queue_tail(ptr noundef %queue.i, ptr noundef %31) #11
  %47 = ptrtoint ptr %iovpool.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %iovpool.i, align 4
  %inc.i = add i32 %48, 1
  store volatile i32 %inc.i, ptr %iovpool.i, align 4
  br label %recycle_iov_buf.exit

if.else.i:                                        ; preds = %recycle_iovec_rx_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %31, i32 noundef 1) #11
  br label %recycle_iov_buf.exit

recycle_iov_buf.exit:                             ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call56) #11
  %49 = ptrtoint ptr %rx_iov to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rx_iov, align 4
  br label %if.end63

if.end63:                                         ; preds = %recycle_iov_buf.exit, %do.body17.if.end63_crit_edge, %entry.if.end63_crit_edge
  %50 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp67.not = icmp eq i8 %51, 0
  br i1 %cmp67.not, label %if.end63.if.end209_crit_edge, label %if.end73

if.end63.if.end209_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

if.end73:                                         ; preds = %if.end63
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load70 = load volatile i32, ptr %1, align 4
  %bf.clear71 = and i32 %bf.load70, 2147483647
  store volatile i32 %bf.clear71, ptr %1, align 4
  %53 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %53)
  %.pr = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp78 = icmp eq i8 %.pr, 2
  br i1 %cmp78, label %if.then80, label %if.end73.if.end154_crit_edge

if.end73.if.end154_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

if.then80:                                        ; preds = %if.end73
  %scq82 = getelementptr inbounds %struct.vc_map, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %scq82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %scq82, align 4
  %lock = getelementptr inbounds %struct.scq_info, ptr %55, i32 0, i32 12
  %next = getelementptr inbounds %struct.scq_info, ptr %55, i32 0, i32 4
  %base = getelementptr inbounds %struct.scq_info, ptr %55, i32 0, i32 2
  %last = getelementptr inbounds %struct.scq_info, ptr %55, i32 0, i32 3
  %tail = getelementptr inbounds %struct.scq_info, ptr %55, i32 0, i32 5
  %cbr_scd = getelementptr inbounds %struct.vc_map, ptr %1, i32 0, i32 5
  %skb = getelementptr inbounds %struct.scq_info, ptr %55, i32 0, i32 7
  %dma = getelementptr inbounds %struct.scq_info, ptr %55, i32 0, i32 1
  %scd = getelementptr inbounds %struct.scq_info, ptr %55, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %if.end134, %if.then80
  %call91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %56 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %next, align 4
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %cmp96 = icmp eq ptr %57, %59
  br i1 %cmp96, label %if.then98, label %if.else

if.then98:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %last, align 4
  br label %if.end99

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr %struct.ns_scqe, ptr %57, i32 -1
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then98
  %scqep.0 = phi ptr [ %61, %if.then98 ], [ %incdec.ptr, %if.else ]
  %62 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail, align 4
  %cmp100 = icmp eq ptr %scqep.0, %63
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end99
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call91) #11
  %64 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1073741824, ptr %data, align 4
  %tst_addr = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 20
  %tst_free_entries = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 21
  br label %for.body

if.end104:                                        ; preds = %if.end99
  %65 = ptrtoint ptr %scqep.0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %scqep.0, align 4
  %.mask = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool106.not = icmp ne i32 %.mask, 0
  %cmp109.not = icmp eq ptr %63, %57
  %or.cond = select i1 %tobool106.not, i1 true, i1 %cmp109.not
  br i1 %or.cond, label %if.end104.if.end134_crit_edge, label %if.then111

if.end104.if.end134_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then111:                                       ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data112) #11
  %67 = ptrtoint ptr %cbr_scd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cbr_scd, align 4
  %sub = add i32 %68, -119370
  %div = udiv i32 %sub, 12
  %sub.ptr.lhs.cast = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %59 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 4
  %shl116 = shl i32 %div, 16
  %or117 = or i32 %sub.ptr.div, %shl116
  %or118 = or i32 %or117, 32768
  %69 = tail call i32 @llvm.bswap.i32(i32 %or118)
  %70 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 160, ptr %57, align 4
  %tsr.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %57, i32 4
  %71 = ptrtoint ptr %tsr.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %69, ptr %tsr.sroa.5.0..sroa_idx, align 4
  %tsr.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %57, i32 8
  %72 = ptrtoint ptr %tsr.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %tsr.sroa.7.0..sroa_idx, align 4
  %tsr.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %57, i32 12
  %73 = ptrtoint ptr %tsr.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %tsr.sroa.9.0..sroa_idx, align 4
  %74 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %skb, align 4
  %arrayidx = getelementptr ptr, ptr %75, i32 %sub.ptr.div
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx, align 4
  %77 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %next, align 4
  %79 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %last, align 4
  %cmp122 = icmp eq ptr %78, %80
  br i1 %cmp122, label %if.then124, label %if.else127

if.then124:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  br label %if.end130

if.else127:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr129 = getelementptr %struct.ns_scqe, ptr %78, i32 1
  br label %if.end130

if.end130:                                        ; preds = %if.else127, %if.then124
  %storemerge = phi ptr [ %incdec.ptr129, %if.else127 ], [ %82, %if.then124 ]
  %83 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %storemerge, ptr %next, align 4
  %84 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma, align 4
  %86 = ptrtoint ptr %storemerge to i32
  %87 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %55, align 4
  %89 = ptrtoint ptr %88 to i32
  %sub132 = add i32 %85, %86
  %add133 = sub i32 %sub132, %89
  %90 = ptrtoint ptr %data112 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add133, ptr %data112, align 4
  %91 = ptrtoint ptr %scd to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %scd, align 4
  call fastcc void @ns_write_sram(ptr noundef %5, i32 noundef %92, ptr noundef nonnull %data112, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data112) #11
  br label %if.end134

if.end134:                                        ; preds = %if.end130, %if.end104.if.end134_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call91) #11
  tail call void @schedule() #11
  br label %for.cond

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then102
  %i.0310 = phi i32 [ 0, %if.then102 ], [ %inc147, %for.inc.for.body_crit_edge ]
  %arrayidx139 = getelementptr %struct.ns_dev, ptr %5, i32 0, i32 23, i32 %i.0310
  %93 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx139, align 4
  %cmp140 = icmp eq ptr %94, %1
  br i1 %cmp140, label %if.then142, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then142:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %tst_addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %tst_addr, align 4
  %add143 = add i32 %96, %i.0310
  call fastcc void @ns_write_sram(ptr noundef %5, i32 noundef %add143, ptr noundef nonnull %data, i32 noundef 1)
  %97 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %arrayidx139, align 4
  %98 = ptrtoint ptr %tst_free_entries to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %tst_free_entries, align 4
  %inc = add i32 %99, 1
  store volatile i32 %inc, ptr %tst_free_entries, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then142, %for.body.for.inc_crit_edge
  %inc147 = add nuw nsw i32 %i.0310, 1
  %exitcond.not = icmp eq i32 %inc147, 2340
  br i1 %exitcond.not, label %for.end148, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end148:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %cbr_scd to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cbr_scd, align 4
  %sub150 = add i32 %101, -119370
  %div151 = udiv i32 %sub150, 12
  %arrayidx152 = getelementptr %struct.ns_dev, ptr %5, i32 0, i32 24, i32 %div151
  %102 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %arrayidx152, align 4
  %103 = ptrtoint ptr %scq82 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %scq82, align 4
  tail call fastcc void @free_scq(ptr noundef %5, ptr noundef %104, ptr noundef %vcc)
  %105 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %105)
  %.pr308 = load i8, ptr %qos, align 8
  br label %if.end154

if.end154:                                        ; preds = %for.end148, %if.end73.if.end154_crit_edge
  %106 = phi i8 [ %.pr308, %for.end148 ], [ %.pr, %if.end73.if.end154_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp159.not = icmp eq i8 %106, 0
  br i1 %cmp159.not, label %if.end154.if.end209_crit_edge, label %if.then161

if.end154.if.end209_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

if.then161:                                       ; preds = %if.end154
  %scq0 = getelementptr inbounds %struct.ns_dev, ptr %5, i32 0, i32 12
  %107 = ptrtoint ptr %scq0 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %scq0, align 4
  %lock171 = getelementptr inbounds %struct.scq_info, ptr %108, i32 0, i32 12
  %call173 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock171) #11
  %num_entries = getelementptr inbounds %struct.scq_info, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp179312.not = icmp eq i32 %110, 0
  br i1 %cmp179312.not, label %if.then161.for.end207_crit_edge, label %for.body181.lr.ph

if.then161.for.end207_crit_edge:                  ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end207

for.body181.lr.ph:                                ; preds = %if.then161
  %skb182 = getelementptr inbounds %struct.scq_info, ptr %108, i32 0, i32 7
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  br label %for.body181

for.body181:                                      ; preds = %for.inc205.for.body181_crit_edge, %for.body181.lr.ph
  %i.1313 = phi i32 [ 0, %for.body181.lr.ph ], [ %inc206, %for.inc205.for.body181_crit_edge ]
  %111 = ptrtoint ptr %skb182 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %skb182, align 4
  %arrayidx183 = getelementptr ptr, ptr %112, i32 %i.1313
  %113 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx183, align 4
  %tobool184.not = icmp eq ptr %114, null
  br i1 %tobool184.not, label %for.body181.for.inc205_crit_edge, label %land.lhs.true185

for.body181.for.inc205_crit_edge:                 ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc205

land.lhs.true185:                                 ; preds = %for.body181
  %cb188 = getelementptr inbounds %struct.sk_buff, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %cb188 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cb188, align 8
  %cmp191 = icmp eq ptr %116, %vcc
  br i1 %cmp191, label %if.then193, label %land.lhs.true185.for.inc205_crit_edge

land.lhs.true185.for.inc205_crit_edge:            ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc205

if.then193:                                       ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %cb188 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %cb188, align 8
  %118 = ptrtoint ptr %skb182 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %skb182, align 4
  %arrayidx200 = getelementptr ptr, ptr %119, i32 %i.1313
  %120 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx200, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 20
  %122 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %truesize, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #11
  %124 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %123, ptr elementtype(i32) %sk_backlog.i) #11, !srcloc !414
  br label %for.inc205

for.inc205:                                       ; preds = %if.then193, %land.lhs.true185.for.inc205_crit_edge, %for.body181.for.inc205_crit_edge
  %inc206 = add nuw i32 %i.1313, 1
  %125 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_entries, align 4
  %cmp179 = icmp ult i32 %inc206, %126
  br i1 %cmp179, label %for.inc205.for.body181_crit_edge, label %for.inc205.for.end207_crit_edge

for.inc205.for.end207_crit_edge:                  ; preds = %for.inc205
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end207

for.inc205.for.body181_crit_edge:                 ; preds = %for.inc205
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body181

for.end207:                                       ; preds = %for.inc205.for.end207_crit_edge, %if.then161.for.end207_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock171, i32 noundef %call173) #11
  br label %if.end209

if.end209:                                        ; preds = %for.end207, %if.end154.if.end209_crit_edge, %if.end63.if.end209_crit_edge
  %127 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %dev_data, align 8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_ioctl(ptr noundef %dev, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  %pl = alloca %struct.pool_levels, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pl) #11
  %0 = getelementptr inbounds %struct.pool_levels, ptr %pl, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pool_levels, ptr %pl, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pool_levels, ptr %pl, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.pool_levels, ptr %pl, i32 0, i32 2, i32 2
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %4 = call ptr @memset(ptr %pl, i32 255, i32 20)
  %5 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_data, align 8
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %cmd, label %sw.default359 [
    i32 -1072930463, label %sw.bb
    i32 1074553186, label %sw.bb69
    i32 24931, label %sw.bb168
  ]

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 2491) #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !306) #11
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !415
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #11, !srcloc !418
  %asmresult = extractvalue { i32, i32 } %11, 0
  %asmresult1 = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #11, !srcloc !416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  %12 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %asmresult1, ptr %pl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup376_crit_edge

sw.bb.cleanup376_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end:                                           ; preds = %sw.bb
  %13 = zext i32 %asmresult1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %asmresult1, label %if.end.cleanup376_crit_edge [
    i32 1, label %sw.bb5
    i32 2, label %sw.bb16
    i32 3, label %sw.bb38
    i32 4, label %sw.bb52
  ]

if.end.cleanup376_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %membase = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 2
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !419
  %17 = shl i32 %16, 1
  %shr = and i32 %17, 510
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %0, align 4
  %sbnr = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 25
  %19 = ptrtoint ptr %sbnr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sbnr, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %1, align 4
  %init = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 25, i32 1
  %22 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %init, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %2, align 4
  %max = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 25, i32 2
  br label %if.then.i

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %membase19 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 2
  %25 = ptrtoint ptr %membase19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase19, align 4
  %add.ptr20 = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !420
  %28 = lshr i32 %27, 7
  %shr25 = and i32 %28, 510
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr25, ptr %0, align 4
  %lbnr = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 26
  %30 = ptrtoint ptr %lbnr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lbnr, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %1, align 4
  %init31 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 26, i32 1
  %33 = ptrtoint ptr %init31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %init31, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %2, align 4
  %max35 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 26, i32 2
  br label %if.then.i

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %hbpool = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 17
  %36 = ptrtoint ptr %hbpool to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %hbpool, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %0, align 4
  %hbnr = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 27
  %39 = ptrtoint ptr %hbnr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hbnr, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %1, align 4
  %init45 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 27, i32 1
  %42 = ptrtoint ptr %init45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %init45, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %2, align 4
  %max49 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 27, i32 2
  br label %if.then.i

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %iovpool = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 18
  %45 = ptrtoint ptr %iovpool to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %iovpool, align 4
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %0, align 4
  %iovnr = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 28
  %48 = ptrtoint ptr %iovnr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iovnr, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %1, align 4
  %init59 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 28, i32 1
  %51 = ptrtoint ptr %init59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %init59, align 4
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %2, align 4
  %max63 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 28, i32 2
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb52, %sw.bb38, %sw.bb16, %sw.bb5
  %max.sink = phi ptr [ %max, %sw.bb5 ], [ %max35, %sw.bb16 ], [ %max49, %sw.bb38 ], [ %max63, %sw.bb52 ]
  %54 = ptrtoint ptr %max.sink to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max.sink, align 4
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %3, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.145, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.cleanup376_crit_edge, label %if.end.i.i

if.then.i.cleanup376_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end.i.i:                                       ; preds = %if.then.i
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 20, i32 -1226833920) #17, !srcloc !421
  %asmresult.i.i = extractvalue { i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup376_crit_edge

if.end.i.i.cleanup376_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pl, i32 noundef 20) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %pl, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool67.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool67.not, i32 20, i32 -14
  br label %cleanup376

sw.bb69:                                          ; preds = %entry
  %call70 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call70, label %if.then.i486, label %sw.bb69.cleanup376_crit_edge

sw.bb69.cleanup376_crit_edge:                     ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.then.i486:                                     ; preds = %sw.bb69
  tail call void @__might_fault(ptr noundef nonnull @.str.145, i32 noundef 156) #11
  %call.i.i485 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i485, label %if.then.i486.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i486.if.then11.i.i_crit_edge:             ; preds = %if.then.i486
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i486
  %58 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 20, i32 -1226833920) #17, !srcloc !422
  %asmresult.i.i487 = extractvalue { i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i487)
  %cmp.i.i488 = icmp eq i32 %asmresult.i.i487, 0
  br i1 %cmp.i.i488, label %if.end.i.i490, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !383

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i490:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i489 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pl, i32 noundef 20) #11
  %59 = call i32 @llvm.read_register.i32(metadata !306) #11
  %and.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 4
  %61 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !415
  %and.i.i.i.i = and i32 %61, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !416
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %pl, ptr noundef %arg, i32 noundef 20) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #11, !srcloc !416
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end76, label %if.end.i.i490.if.then11.i.i_crit_edge, !prof !383

if.end.i.i490.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i490
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i490.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i486.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i490.if.then11.i.i_crit_edge ], [ 20, %if.then.i486.if.then11.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 20, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %pl, i32 %sub.i.i
  %62 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup376

if.end76:                                         ; preds = %if.end.i.i490
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %1, align 4
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp.not = icmp ult i32 %64, %66
  br i1 %cmp.not, label %lor.lhs.false, label %if.end76.cleanup376_crit_edge

if.end76.cleanup376_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

lor.lhs.false:                                    ; preds = %if.end76
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp85.not = icmp uge i32 %66, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp90 = icmp eq i32 %64, 0
  %or.cond = select i1 %cmp85.not, i1 true, i1 %cmp90
  br i1 %or.cond, label %lor.lhs.false.cleanup376_crit_edge, label %if.end92

lor.lhs.false.cleanup376_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end92:                                         ; preds = %lor.lhs.false
  %69 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pl, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %70, label %if.end92.cleanup376_crit_edge [
    i32 1, label %sw.bb94
    i32 2, label %sw.bb112
    i32 3, label %sw.bb130
    i32 4, label %sw.bb148
  ]

if.end92.cleanup376_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

sw.bb94:                                          ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %68)
  %cmp97 = icmp ugt i32 %68, 256
  br i1 %cmp97, label %sw.bb94.cleanup376_crit_edge, label %if.end99

sw.bb94.cleanup376_crit_edge:                     ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end99:                                         ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #13
  %sbnr102 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 25
  %72 = ptrtoint ptr %sbnr102 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %64, ptr %sbnr102, align 4
  %init107 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 25, i32 1
  %73 = ptrtoint ptr %init107 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %66, ptr %init107, align 4
  %max111 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 25, i32 2
  %74 = ptrtoint ptr %max111 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %68, ptr %max111, align 4
  br label %cleanup376

sw.bb112:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %68)
  %cmp115 = icmp ugt i32 %68, 128
  br i1 %cmp115, label %sw.bb112.cleanup376_crit_edge, label %if.end117

sw.bb112.cleanup376_crit_edge:                    ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end117:                                        ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #13
  %lbnr120 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 26
  %75 = ptrtoint ptr %lbnr120 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %64, ptr %lbnr120, align 4
  %init125 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 26, i32 1
  %76 = ptrtoint ptr %init125 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %66, ptr %init125, align 4
  %max129 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 26, i32 2
  %77 = ptrtoint ptr %max129 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %68, ptr %max129, align 4
  br label %cleanup376

sw.bb130:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %68)
  %cmp133 = icmp ugt i32 %68, 64
  br i1 %cmp133, label %sw.bb130.cleanup376_crit_edge, label %if.end135

sw.bb130.cleanup376_crit_edge:                    ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end135:                                        ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #13
  %hbnr138 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 27
  %78 = ptrtoint ptr %hbnr138 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %64, ptr %hbnr138, align 4
  %init143 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 27, i32 1
  %79 = ptrtoint ptr %init143 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %66, ptr %init143, align 4
  %max147 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 27, i32 2
  %80 = ptrtoint ptr %max147 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %68, ptr %max147, align 4
  br label %cleanup376

sw.bb148:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %68)
  %cmp151 = icmp ugt i32 %68, 256
  br i1 %cmp151, label %sw.bb148.cleanup376_crit_edge, label %if.end153

sw.bb148.cleanup376_crit_edge:                    ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end153:                                        ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #13
  %iovnr156 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 28
  %81 = ptrtoint ptr %iovnr156 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %64, ptr %iovnr156, align 4
  %init161 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 28, i32 1
  %82 = ptrtoint ptr %init161 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %66, ptr %init161, align 4
  %max165 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 28, i32 2
  %83 = ptrtoint ptr %max165 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %68, ptr %max165, align 4
  br label %cleanup376

sw.bb168:                                         ; preds = %entry
  %call169 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call169, label %if.end171, label %sw.bb168.cleanup376_crit_edge

sw.bb168.cleanup376_crit_edge:                    ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end171:                                        ; preds = %sw.bb168
  %84 = ptrtoint ptr %arg to i32
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %84, label %if.end171.cleanup376_crit_edge [
    i32 1, label %while.cond.preheader
    i32 2, label %while.cond182.preheader
    i32 3, label %while.cond201.preheader
    i32 4, label %while.cond274.preheader
  ]

if.end171.cleanup376_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

while.cond274.preheader:                          ; preds = %if.end171
  %iovpool275 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 18
  %init278 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 28, i32 1
  %86 = ptrtoint ptr %iovpool275 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %iovpool275, align 4
  %88 = ptrtoint ptr %init278 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %init278, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp279509 = icmp ugt i32 %87, %89
  br i1 %cmp279509, label %while.body281.lr.ph, label %while.cond274.preheader.while.cond315.preheader_crit_edge

while.cond274.preheader.while.cond315.preheader_crit_edge: ; preds = %while.cond274.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond315.preheader

while.body281.lr.ph:                              ; preds = %while.cond274.preheader
  %int_lock289 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 39
  %queue297 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 18, i32 1
  br label %while.body281

while.cond201.preheader:                          ; preds = %if.end171
  %hbpool202 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 17
  %init205 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 27, i32 1
  %90 = ptrtoint ptr %hbpool202 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %hbpool202, align 4
  %92 = ptrtoint ptr %init205 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %init205, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp206514 = icmp ugt i32 %91, %93
  br i1 %cmp206514, label %while.body207.lr.ph, label %while.cond201.preheader.while.cond232.preheader_crit_edge

while.cond201.preheader.while.cond232.preheader_crit_edge: ; preds = %while.cond201.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond232.preheader

while.body207.lr.ph:                              ; preds = %while.cond201.preheader
  %int_lock = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 39
  %queue216 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 17, i32 1
  br label %while.body207

while.cond182.preheader:                          ; preds = %if.end171
  %lbfqc = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 30
  %init184 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 26, i32 1
  %94 = ptrtoint ptr %lbfqc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %lbfqc, align 4
  %96 = ptrtoint ptr %init184 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %init184, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp185520 = icmp ult i32 %95, %97
  br i1 %cmp185520, label %while.body186.lr.ph, label %while.cond182.preheader.cleanup376_crit_edge

while.cond182.preheader.cleanup376_crit_edge:     ; preds = %while.cond182.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

while.body186.lr.ph:                              ; preds = %while.cond182.preheader
  %queue195 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 16, i32 1
  br label %while.body186

while.cond.preheader:                             ; preds = %if.end171
  %sbfqc = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 29
  %init174 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 25, i32 1
  %98 = ptrtoint ptr %sbfqc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sbfqc, align 4
  %100 = ptrtoint ptr %init174 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %init174, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp175523 = icmp ult i32 %99, %101
  br i1 %cmp175523, label %while.body.lr.ph, label %while.cond.preheader.cleanup376_crit_edge

while.cond.preheader.cleanup376_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %queue = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 15, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end179.while.body_crit_edge, %while.body.lr.ph
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 52, i32 noundef 3264) #11
  %cmp177 = icmp eq ptr %call.i, null
  br i1 %cmp177, label %while.body.cleanup376_crit_edge, label %if.end179

while.body.cleanup376_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end179:                                        ; preds = %while.body
  %add.ptr180 = getelementptr %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 12
  %102 = ptrtoint ptr %add.ptr180 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %add.ptr180, align 4
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef nonnull %call.i) #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %103 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %104, i32 4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %105 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %106, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  tail call fastcc void @push_rxbufs(ptr noundef %6, ptr noundef nonnull %call.i)
  %107 = ptrtoint ptr %sbfqc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sbfqc, align 4
  %109 = ptrtoint ptr %init174 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %init174, align 4
  %cmp175 = icmp ult i32 %108, %110
  br i1 %cmp175, label %if.end179.while.body_crit_edge, label %if.end179.cleanup376_crit_edge

if.end179.cleanup376_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end179.while.body_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body186:                                    ; preds = %if.end190.while.body186_crit_edge, %while.body186.lr.ph
  %call.i492 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16432, i32 noundef 3264) #11
  %cmp188 = icmp eq ptr %call.i492, null
  br i1 %cmp188, label %while.body186.cleanup376_crit_edge, label %if.end190

while.body186.cleanup376_crit_edge:               ; preds = %while.body186
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end190:                                        ; preds = %while.body186
  %add.ptr193 = getelementptr %struct.sk_buff, ptr %call.i492, i32 0, i32 3, i32 12
  %111 = ptrtoint ptr %add.ptr193 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %add.ptr193, align 4
  tail call void @skb_queue_tail(ptr noundef %queue195, ptr noundef nonnull %call.i492) #11
  %data.i493 = getelementptr inbounds %struct.sk_buff, ptr %call.i492, i32 0, i32 19
  %112 = ptrtoint ptr %data.i493 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data.i493, align 4
  %add.ptr.i494 = getelementptr i8, ptr %113, i32 48
  store ptr %add.ptr.i494, ptr %data.i493, align 4
  %tail.i495 = getelementptr inbounds %struct.sk_buff, ptr %call.i492, i32 0, i32 16
  %114 = ptrtoint ptr %tail.i495 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tail.i495, align 8
  %add.ptr1.i496 = getelementptr i8, ptr %115, i32 48
  store ptr %add.ptr1.i496, ptr %tail.i495, align 8
  tail call fastcc void @push_rxbufs(ptr noundef %6, ptr noundef nonnull %call.i492)
  %116 = ptrtoint ptr %lbfqc to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %lbfqc, align 4
  %118 = ptrtoint ptr %init184 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %init184, align 4
  %cmp185 = icmp ult i32 %117, %119
  br i1 %cmp185, label %if.end190.while.body186_crit_edge, label %if.end190.cleanup376_crit_edge

if.end190.cleanup376_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end190.while.body186_crit_edge:                ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body186

while.cond232.preheader:                          ; preds = %if.end230.while.cond232.preheader_crit_edge, %while.cond201.preheader.while.cond232.preheader_crit_edge
  %120 = ptrtoint ptr %hbpool202 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %hbpool202, align 4
  %122 = ptrtoint ptr %init205 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %init205, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %123)
  %cmp237517 = icmp ult i32 %121, %123
  br i1 %cmp237517, label %while.body239.lr.ph, label %while.cond232.preheader.cleanup376_crit_edge

while.cond232.preheader.cleanup376_crit_edge:     ; preds = %while.cond232.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

while.body239.lr.ph:                              ; preds = %while.cond232.preheader
  %int_lock257 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 39
  %queue265 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 17, i32 1
  br label %while.body239

while.body207:                                    ; preds = %if.end230.while.body207_crit_edge, %while.body207.lr.ph
  %call212 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #11
  %call217 = tail call ptr @skb_dequeue(ptr noundef %queue216) #11
  %124 = ptrtoint ptr %hbpool202 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %hbpool202, align 4
  %dec = add i32 %125, -1
  store volatile i32 %dec, ptr %hbpool202, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call212) #11
  %cmp221 = icmp eq ptr %call217, null
  br i1 %cmp221, label %do.end226, label %if.else229

do.end226:                                        ; preds = %while.body207
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %6, align 4
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %127) #14
  br label %if.end230

if.else229:                                       ; preds = %while.body207
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call217, i32 noundef 1) #11
  br label %if.end230

if.end230:                                        ; preds = %if.else229, %do.end226
  %128 = ptrtoint ptr %hbpool202 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %hbpool202, align 4
  %130 = ptrtoint ptr %init205 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %init205, align 4
  %cmp206 = icmp ugt i32 %129, %131
  br i1 %cmp206, label %if.end230.while.body207_crit_edge, label %if.end230.while.cond232.preheader_crit_edge

if.end230.while.cond232.preheader_crit_edge:      ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond232.preheader

if.end230.while.body207_crit_edge:                ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body207

while.body239:                                    ; preds = %if.end245.while.body239_crit_edge, %while.body239.lr.ph
  %call.i497 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 65568, i32 noundef 3264) #11
  %cmp242 = icmp eq ptr %call.i497, null
  br i1 %cmp242, label %while.body239.cleanup376_crit_edge, label %if.end245

while.body239.cleanup376_crit_edge:               ; preds = %while.body239
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end245:                                        ; preds = %while.body239
  %add.ptr248 = getelementptr %struct.sk_buff, ptr %call.i497, i32 0, i32 3, i32 12
  %132 = ptrtoint ptr %add.ptr248 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %add.ptr248, align 4
  %call259 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock257) #11
  tail call void @skb_queue_tail(ptr noundef %queue265, ptr noundef nonnull %call.i497) #11
  %133 = ptrtoint ptr %hbpool202 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %hbpool202, align 4
  %inc = add i32 %134, 1
  store volatile i32 %inc, ptr %hbpool202, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock257, i32 noundef %call259) #11
  %135 = ptrtoint ptr %hbpool202 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %hbpool202, align 4
  %137 = ptrtoint ptr %init205 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %init205, align 4
  %cmp237 = icmp ult i32 %136, %138
  br i1 %cmp237, label %if.end245.while.body239_crit_edge, label %if.end245.cleanup376_crit_edge

if.end245.cleanup376_crit_edge:                   ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end245.while.body239_crit_edge:                ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body239

while.cond315.preheader:                          ; preds = %if.end313.while.cond315.preheader_crit_edge, %while.cond274.preheader.while.cond315.preheader_crit_edge
  %139 = ptrtoint ptr %iovpool275 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %iovpool275, align 4
  %141 = ptrtoint ptr %init278 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %init278, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %142)
  %cmp320511 = icmp ult i32 %140, %142
  br i1 %cmp320511, label %while.body322.lr.ph, label %while.cond315.preheader.cleanup376_crit_edge

while.cond315.preheader.cleanup376_crit_edge:     ; preds = %while.cond315.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

while.body322.lr.ph:                              ; preds = %while.cond315.preheader
  %int_lock340 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 39
  %queue348 = getelementptr inbounds %struct.ns_dev, ptr %6, i32 0, i32 18, i32 1
  br label %while.body322

while.body281:                                    ; preds = %if.end313.while.body281_crit_edge, %while.body281.lr.ph
  %call291 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock289) #11
  %call298 = tail call ptr @skb_dequeue(ptr noundef %queue297) #11
  %143 = ptrtoint ptr %iovpool275 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %iovpool275, align 4
  %dec301 = add i32 %144, -1
  store volatile i32 %dec301, ptr %iovpool275, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock289, i32 noundef %call291) #11
  %cmp303 = icmp eq ptr %call298, null
  br i1 %cmp303, label %do.end308, label %if.else312

do.end308:                                        ; preds = %while.body281
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %6, align 4
  %call311 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %146) #14
  br label %if.end313

if.else312:                                       ; preds = %while.body281
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call298, i32 noundef 1) #11
  br label %if.end313

if.end313:                                        ; preds = %if.else312, %do.end308
  %147 = ptrtoint ptr %iovpool275 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %iovpool275, align 4
  %149 = ptrtoint ptr %init278 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %init278, align 4
  %cmp279 = icmp ugt i32 %148, %150
  br i1 %cmp279, label %if.end313.while.body281_crit_edge, label %if.end313.while.cond315.preheader_crit_edge

if.end313.while.cond315.preheader_crit_edge:      ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond315.preheader

if.end313.while.body281_crit_edge:                ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body281

while.body322:                                    ; preds = %if.end328.while.body322_crit_edge, %while.body322.lr.ph
  %call.i498 = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %cmp325 = icmp eq ptr %call.i498, null
  br i1 %cmp325, label %while.body322.cleanup376_crit_edge, label %if.end328

while.body322.cleanup376_crit_edge:               ; preds = %while.body322
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end328:                                        ; preds = %while.body322
  %add.ptr331 = getelementptr %struct.sk_buff, ptr %call.i498, i32 0, i32 3, i32 12
  %151 = ptrtoint ptr %add.ptr331 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1, ptr %add.ptr331, align 4
  %call342 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock340) #11
  tail call void @skb_queue_tail(ptr noundef %queue348, ptr noundef nonnull %call.i498) #11
  %152 = ptrtoint ptr %iovpool275 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %iovpool275, align 4
  %inc351 = add i32 %153, 1
  store volatile i32 %inc351, ptr %iovpool275, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock340, i32 noundef %call342) #11
  %154 = ptrtoint ptr %iovpool275 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %iovpool275, align 4
  %156 = ptrtoint ptr %init278 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %init278, align 4
  %cmp320 = icmp ult i32 %155, %157
  br i1 %cmp320, label %if.end328.while.body322_crit_edge, label %if.end328.cleanup376_crit_edge

if.end328.cleanup376_crit_edge:                   ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup376

if.end328.while.body322_crit_edge:                ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body322

sw.default359:                                    ; preds = %entry
  %phy = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 1
  %158 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %phy, align 4
  %tobool360.not = icmp eq ptr %159, null
  br i1 %tobool360.not, label %sw.default359.do.end370_crit_edge, label %land.lhs.true

sw.default359.do.end370_crit_edge:                ; preds = %sw.default359
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end370

land.lhs.true:                                    ; preds = %sw.default359
  %ioctl = getelementptr inbounds %struct.atmphy_ops, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ioctl, align 4
  %tobool362.not = icmp eq ptr %161, null
  br i1 %tobool362.not, label %land.lhs.true.do.end370_crit_edge, label %if.then363

land.lhs.true.do.end370_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end370

if.then363:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call366 = tail call i32 %161(ptr noundef %dev, i32 noundef %cmd, ptr noundef %arg) #11
  br label %cleanup376

do.end370:                                        ; preds = %land.lhs.true.do.end370_crit_edge, %sw.default359.do.end370_crit_edge
  %cond = phi ptr [ @.str.142, %sw.default359.do.end370_crit_edge ], [ @.str.141, %land.lhs.true.do.end370_crit_edge ]
  %162 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %6, align 4
  %call375 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %163, ptr noundef nonnull %cond) #14
  br label %cleanup376

cleanup376:                                       ; preds = %do.end370, %if.then363, %if.end328.cleanup376_crit_edge, %while.body322.cleanup376_crit_edge, %while.cond315.preheader.cleanup376_crit_edge, %if.end245.cleanup376_crit_edge, %while.body239.cleanup376_crit_edge, %while.cond232.preheader.cleanup376_crit_edge, %if.end190.cleanup376_crit_edge, %while.body186.cleanup376_crit_edge, %if.end179.cleanup376_crit_edge, %while.body.cleanup376_crit_edge, %while.cond.preheader.cleanup376_crit_edge, %while.cond182.preheader.cleanup376_crit_edge, %if.end171.cleanup376_crit_edge, %sw.bb168.cleanup376_crit_edge, %if.end153, %sw.bb148.cleanup376_crit_edge, %if.end135, %sw.bb130.cleanup376_crit_edge, %if.end117, %sw.bb112.cleanup376_crit_edge, %if.end99, %sw.bb94.cleanup376_crit_edge, %if.end92.cleanup376_crit_edge, %lor.lhs.false.cleanup376_crit_edge, %if.end76.cleanup376_crit_edge, %if.then11.i.i, %sw.bb69.cleanup376_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup376_crit_edge, %if.then.i.cleanup376_crit_edge, %if.end.cleanup376_crit_edge, %sw.bb.cleanup376_crit_edge
  %retval.8 = phi i32 [ %call366, %if.then363 ], [ -515, %do.end370 ], [ -14, %sw.bb.cleanup376_crit_edge ], [ -515, %if.end.cleanup376_crit_edge ], [ -1, %sw.bb69.cleanup376_crit_edge ], [ -22, %lor.lhs.false.cleanup376_crit_edge ], [ -22, %if.end76.cleanup376_crit_edge ], [ -22, %sw.bb94.cleanup376_crit_edge ], [ -22, %sw.bb112.cleanup376_crit_edge ], [ -22, %sw.bb130.cleanup376_crit_edge ], [ -22, %sw.bb148.cleanup376_crit_edge ], [ -22, %if.end92.cleanup376_crit_edge ], [ 0, %if.end153 ], [ 0, %if.end135 ], [ 0, %if.end117 ], [ 0, %if.end99 ], [ -1, %sw.bb168.cleanup376_crit_edge ], [ -22, %if.end171.cleanup376_crit_edge ], [ -14, %if.then.i.cleanup376_crit_edge ], [ -14, %if.end.i.i.cleanup376_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ], [ 0, %while.cond.preheader.cleanup376_crit_edge ], [ 0, %while.cond182.preheader.cleanup376_crit_edge ], [ 0, %while.cond232.preheader.cleanup376_crit_edge ], [ 0, %while.cond315.preheader.cleanup376_crit_edge ], [ 0, %if.end179.cleanup376_crit_edge ], [ -12, %while.body.cleanup376_crit_edge ], [ 0, %if.end190.cleanup376_crit_edge ], [ -12, %while.body186.cleanup376_crit_edge ], [ 0, %if.end245.cleanup376_crit_edge ], [ -12, %while.body239.cleanup376_crit_edge ], [ 0, %if.end328.cleanup376_crit_edge ], [ -12, %while.body322.cleanup376_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pl) #11
  ret i32 %retval.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_send(ptr noundef %vcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_ns_send(ptr noundef %vcc, ptr noundef %skb, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_send_bh(ptr noundef %vcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_ns_send(ptr noundef %vcc, ptr noundef %skb, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns_phy_put(ptr nocapture noundef readonly %dev, i8 noundef zeroext %value, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %res_lock = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 40
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock) #11
  %membase = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  %5 = and i32 %4, 131072
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body8, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

do.body8:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @arm_heavy_mb() #11
  %conv11 = zext i8 %value to i32
  %6 = shl nuw i32 %conv11, 24
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #11, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !425
  tail call void @arm_heavy_mb() #11
  %and17 = and i32 %addr, 255
  %or = or i32 %and17, -1879047680
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %9) #11, !srcloc !320
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ns_phy_get(ptr nocapture noundef readonly %dev, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %res_lock = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 40
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %res_lock) #11
  %membase = getelementptr inbounds %struct.ns_dev, ptr %1, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !426
  %5 = and i32 %4, 131072
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body8, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

do.body8:                                         ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !427
  tail call void @arm_heavy_mb() #11
  %and11 = and i32 %addr, 255
  %or = or i32 %and11, -2147483136
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %6) #11, !srcloc !320
  br label %while.cond14

while.cond14:                                     ; preds = %while.cond14.while.cond14_crit_edge, %do.body8
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr18 = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !428
  %12 = and i32 %11, 131072
  %tobool23.not = icmp eq i32 %12, 0
  br i1 %tobool23.not, label %while.end25, label %while.cond14.while.cond14_crit_edge

while.cond14.while.cond14_crit_edge:              ; preds = %while.cond14
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond14

while.end25:                                      ; preds = %while.cond14
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !317
  %16 = lshr i32 %15, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !429
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_lock, i32 noundef %call2) #11
  %conv35 = trunc i32 %16 to i8
  ret i8 %conv35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_proc_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %pos, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %conv = trunc i64 %1 to i32
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %membase = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !317
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !430
  %8 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %conv, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then5
    i32 2, label %if.then12
    i32 3, label %if.then24
    i32 4, label %if.then34
    i32 5, label %if.then45
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = call ptr @memcpy(ptr %page, ptr @.str.165, i32 36)
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = lshr i32 %7, 23
  %shr = and i32 %and, 510
  %sbnr = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 25
  %10 = ptrtoint ptr %sbnr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sbnr, align 4
  %init = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 25, i32 1
  %12 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %init, align 4
  %max = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 25, i32 2
  %14 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max, align 4
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.166, i32 noundef %shr, i32 noundef %11, i32 noundef %13, i32 noundef %15)
  br label %cleanup

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and13 = lshr i32 %7, 15
  %shr14 = and i32 %and13, 510
  %lbnr = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 26
  %16 = ptrtoint ptr %lbnr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lbnr, align 4
  %init17 = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 26, i32 1
  %18 = ptrtoint ptr %init17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %init17, align 4
  %max19 = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 26, i32 2
  %20 = ptrtoint ptr %max19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max19, align 4
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.167, i32 noundef %shr14, i32 noundef %17, i32 noundef %19, i32 noundef %21)
  br label %cleanup

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hbpool = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 17
  %22 = ptrtoint ptr %hbpool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %hbpool, align 4
  %hbnr = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 27
  %24 = ptrtoint ptr %hbnr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hbnr, align 4
  %init27 = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 27, i32 1
  %26 = ptrtoint ptr %init27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %init27, align 4
  %max29 = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 27, i32 2
  %28 = ptrtoint ptr %max29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max29, align 4
  %call30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.168, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29)
  br label %cleanup

if.then34:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %iovpool = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 18
  %30 = ptrtoint ptr %iovpool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %iovpool, align 4
  %iovnr = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 28
  %32 = ptrtoint ptr %iovnr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iovnr, align 4
  %init38 = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 28, i32 1
  %34 = ptrtoint ptr %init38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %init38, align 4
  %max40 = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 28, i32 2
  %36 = ptrtoint ptr %max40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max40, align 4
  %call41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.169, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37)
  br label %cleanup

if.then45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intcnt = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 38
  %38 = ptrtoint ptr %intcnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %intcnt, align 4
  %call47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.170, i32 noundef %39)
  %40 = ptrtoint ptr %intcnt to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %intcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.then34, %if.then24, %if.then12, %if.then5, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.then45 ], [ %call41, %if.then34 ], [ %call30, %if.then24 ], [ %call20, %if.then12 ], [ %call8, %if.then5 ], [ 35, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_pcr_goal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_tst(ptr noundef %card, i32 noundef %n, ptr noundef %vc) unnamed_addr #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #11
  %tst_addr = getelementptr inbounds %struct.ns_dev, ptr %card, i32 0, i32 20
  %0 = ptrtoint ptr %tst_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tst_addr, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %e.055 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ns_dev, ptr %card, i32 0, i32 23, i32 %e.055
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.end4, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %e.055, 1
  %exitcond.not = icmp eq i32 %inc, 2340
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %card, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %5) #14
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %cbr_scd = getelementptr inbounds %struct.vc_map, ptr %vc, i32 0, i32 5
  %6 = ptrtoint ptr %cbr_scd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cbr_scd, align 4
  %or = or i32 %7, 536870912
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp556 = icmp sgt i32 %n, 0
  br i1 %cmp556, label %if.end4.while.body_crit_edge, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %if.end4.while.body_crit_edge
  %r.060 = phi i32 [ %r.1, %if.end13.while.body_crit_edge ], [ %n, %if.end4.while.body_crit_edge ]
  %e.158 = phi i32 [ %spec.store.select, %if.end13.while.body_crit_edge ], [ %e.055, %if.end4.while.body_crit_edge ]
  %cl.057 = phi i32 [ %add18, %if.end13.while.body_crit_edge ], [ 2340, %if.end4.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2339, i32 %cl.057)
  %cmp6 = icmp ugt i32 %cl.057, 2339
  br i1 %cmp6, label %land.lhs.true, label %while.body.if.end13_crit_edge

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %while.body
  %arrayidx8 = getelementptr %struct.ns_dev, ptr %card, i32 0, i32 23, i32 %e.158
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx8, align 4
  %cmp9 = icmp eq ptr %10, null
  br i1 %cmp9, label %if.then10, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vc, ptr %arrayidx8, align 4
  %add = add i32 %e.158, %1
  call fastcc void @ns_write_sram(ptr noundef %card, i32 noundef %add, ptr noundef nonnull %data, i32 noundef 1)
  %sub = add i32 %cl.057, -2340
  %dec = add nsw i32 %r.060, -1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %while.body.if.end13_crit_edge
  %cl.1 = phi i32 [ %sub, %if.then10 ], [ %cl.057, %land.lhs.true.if.end13_crit_edge ], [ %cl.057, %while.body.if.end13_crit_edge ]
  %r.1 = phi i32 [ %dec, %if.then10 ], [ %r.060, %land.lhs.true.if.end13_crit_edge ], [ %r.060, %while.body.if.end13_crit_edge ]
  %inc14 = add i32 %e.158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2340, i32 %inc14)
  %cmp15 = icmp eq i32 %inc14, 2340
  %spec.store.select = select i1 %cmp15, i32 0, i32 %inc14
  %add18 = add i32 %cl.1, %n
  %cmp5 = icmp sgt i32 %r.1, 0
  br i1 %cmp5, label %if.end13.while.body_crit_edge, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %if.end4.while.end_crit_edge
  %or19 = or i32 %1, 1610612736
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or19, ptr %data, align 4
  %add20 = add i32 %1, 2340
  call fastcc void @ns_write_sram(ptr noundef %card, i32 noundef %add20, ptr noundef nonnull %data, i32 noundef 1)
  %13 = ptrtoint ptr %tst_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tst_addr, align 4
  %add22 = add i32 %14, 2340
  call fastcc void @ns_write_sram(ptr noundef %card, i32 noundef %add22, ptr noundef nonnull %data, i32 noundef 1)
  %15 = ptrtoint ptr %tst_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %1, ptr %tst_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ns_send(ptr noundef %vcc, ptr noundef %skb, i1 noundef zeroext %may_sleep) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry146.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %dev_data1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %4 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data1, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %7) #14
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats, align 8
  %tx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %9, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_err, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err, ptr %tx_err, i32 1, ptr elementtype(i32) %tx_err) #11, !srcloc !409
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %do.end5, label %if.end11

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %13) #14
  %stats9 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %14 = ptrtoint ptr %stats9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stats9, align 8
  %tx_err10 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %15, i32 0, i32 1
  %call.i.i183 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err10, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_err10, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err10, ptr %tx_err10, i32 1, ptr elementtype(i32) %tx_err10) #11, !srcloc !409
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %aal, align 8
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.181)
  switch i8 %18, label %do.end22 [
    i8 5, label %if.end11.if.end28_crit_edge
    i8 13, label %if.end11.if.end28_crit_edge203
  ]

if.end11.if.end28_crit_edge203:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %21) #14
  %stats26 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %22 = ptrtoint ptr %stats26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stats26, align 8
  %tx_err27 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %23, i32 0, i32 1
  %call.i.i184 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err27, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_err27, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err27, ptr %tx_err27, i32 1, ptr elementtype(i32) %tx_err27) #11, !srcloc !409
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end11.if.end28_crit_edge, %if.end11.if.end28_crit_edge203
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp31.not = icmp eq i8 %28, 0
  br i1 %cmp31.not, label %if.end42, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %30) #14
  %stats40 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %31 = ptrtoint ptr %stats40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stats40, align 8
  %tx_err41 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %32, i32 0, i32 1
  %call.i.i185 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err41, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_err41, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err41, ptr %tx_err41, i32 1, ptr elementtype(i32) %tx_err41) #11, !srcloc !409
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

if.end42:                                         ; preds = %if.end28
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %34 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %vcc, ptr %cb, align 8
  %pcidev = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 7
  %35 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcidev, align 4
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %38) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end42
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !383

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev44) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev44, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %44, %if.end.i.i ], [ %42, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.122, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev44, ptr noundef %38, i32 noundef %40) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %45 = load ptr, ptr @mem_map, align 4
  %46 = ptrtoint ptr %38 to i32
  %sub.i = add i32 %46, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %45, i32 %shr.i
  %and.i = and i32 %46, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev44, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %40, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %47 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i, ptr %dma, align 4
  %48 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %49)
  %cmp51 = icmp eq i8 %49, 5
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %add55 = add i32 %51, 55
  %52 = urem i32 %add55, 48
  %mul = sub i32 %add55, %52
  %53 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %54 = tail call i32 @llvm.bswap.i32(i32 %51)
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %55 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vpi, align 4
  %conv61182 = zext i16 %56 to i32
  %shl = shl i32 %conv61182, 20
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %57 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vci, align 8
  %shl62 = shl i32 %58, 4
  %or63 = or i32 %shl, %shl62
  %atm_options = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %59 = ptrtoint ptr %atm_options to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %atm_options, align 4
  %and = and i32 %60, 1
  %or68 = or i32 %or63, %and
  br label %if.end96

if.else:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add74 = add i32 %retval.0.i, 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %add74)
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 1
  %66 = and i8 %65, 2
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 29
  %69 = load i32, ptr %63, align 4
  %and85 = and i32 %69, -268435441
  %vpi87 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %70 = ptrtoint ptr %vpi87 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vpi87, align 4
  %conv88181 = zext i16 %71 to i32
  %shl89 = shl i32 %conv88181, 20
  %vci90 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %72 = ptrtoint ptr %vci90 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vci90, align 8
  %shl91 = shl i32 %73, 4
  %or92 = or i32 %shl89, %shl91
  %and93 = and i32 %or92, 268435440
  %74 = or i32 %and93, %and85
  br label %if.end96

if.end96:                                         ; preds = %if.else, %if.then53
  %.sink = phi i32 [ %74, %if.else ], [ %or68, %if.then53 ]
  %scqe.sroa.9.0 = phi i32 [ 0, %if.else ], [ %54, %if.then53 ]
  %scqe.sroa.6.0 = phi i32 [ %61, %if.else ], [ %53, %if.then53 ]
  %buflen.0 = phi i32 [ 48, %if.else ], [ %mul, %if.then53 ]
  %flags.1 = phi i32 [ %68, %if.else ], [ 1207959552, %if.then53 ]
  %75 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %76 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %cmp99 = icmp eq i8 %77, 2
  %or102 = or i32 %buflen.0, %flags.1
  %or103 = or i32 %or102, 8454144
  %78 = tail call i32 @llvm.bswap.i32(i32 %or103)
  br i1 %cmp99, label %if.then101, label %if.else106

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_data1, align 8
  %scq105 = getelementptr inbounds %struct.vc_map, ptr %80, i32 0, i32 4
  br label %if.end111

if.else106:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %scq0 = getelementptr inbounds %struct.ns_dev, ptr %3, i32 0, i32 12
  br label %if.end111

if.end111:                                        ; preds = %if.else106, %if.then101
  %scq.0.in = phi ptr [ %scq105, %if.then101 ], [ %scq0, %if.else106 ]
  %81 = ptrtoint ptr %scq.0.in to i32
  call void @__asan_load4_noabort(i32 %81)
  %scq.0 = load ptr, ptr %scq.0.in, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #11
  %lock.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %tail.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 5
  %next.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 4
  %full.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 11
  %scqfull_waitq.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 10
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end63.i.while.cond.i_crit_edge, %if.end111
  %82 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i, align 4
  %84 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %next.i, align 4
  %cmp5.i = icmp eq ptr %83, %85
  br i1 %cmp5.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  br i1 %may_sleep, label %if.then29.i, label %while.body.i.if.then116_crit_edge

while.body.i.if.then116_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116

if.then29.i:                                      ; preds = %while.body.i
  %86 = ptrtoint ptr %full.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store volatile i8 1, ptr %full.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %87 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %call31364.i = call i32 @prepare_to_wait_event(ptr noundef %scqfull_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #11
  %88 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tail.i, align 4
  %90 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %next.i, align 4
  %cmp35.not365.not.i = icmp eq ptr %89, %91
  br i1 %cmp35.not365.not.i, label %if.then29.i.if.end54.i_crit_edge, label %if.then29.i.for.end.i_crit_edge

if.then29.i.for.end.i_crit_edge:                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then29.i.if.end54.i_crit_edge:                 ; preds = %if.then29.i
  br label %if.end54.i

if.end54.i:                                       ; preds = %cleanup.i.if.end54.i_crit_edge, %if.then29.i.if.end54.i_crit_edge
  %__ret30.1368.i = phi i32 [ %__ret30.1.i, %cleanup.i.if.end54.i_crit_edge ], [ 500, %if.then29.i.if.end54.i_crit_edge ]
  %call31367.i = phi i32 [ %call31.i, %cleanup.i.if.end54.i_crit_edge ], [ %call31364.i, %if.then29.i.if.end54.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31367.i)
  %tobool55.not.i = icmp eq i32 %call31367.i, 0
  br i1 %tobool55.not.i, label %cleanup.i, label %if.end54.i.if.end63.i_crit_edge

if.end54.i.if.end63.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i

cleanup.i:                                        ; preds = %if.end54.i
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #11
  %call59.i = call i32 @schedule_timeout(i32 noundef %__ret30.1368.i) #11
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #11
  %call31.i = call i32 @prepare_to_wait_event(ptr noundef %scqfull_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #11
  %92 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tail.i, align 4
  %94 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %next.i, align 4
  %cmp35.not.i = icmp eq ptr %93, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool41.not.i = icmp eq i32 %call59.i, 0
  %spec.store.select245.i = select i1 %tobool41.not.i, i32 1, i32 %call59.i
  %__ret30.1.i = select i1 %cmp35.not.i, i32 %call59.i, i32 %spec.store.select245.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1.i)
  %tobool48.not.i = icmp eq i32 %__ret30.1.i, 0
  %not.cmp35.not.i = xor i1 %cmp35.not.i, true
  %96 = select i1 %not.cmp35.not.i, i1 true, i1 %tobool48.not.i
  br i1 %96, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end54.i_crit_edge

cleanup.i.if.end54.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then29.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %scqfull_waitq.i, ptr noundef nonnull %__wq_entry.i) #11
  br label %if.end63.i

if.end63.i:                                       ; preds = %for.end.i, %if.end54.i.if.end63.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %97 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load volatile i8, ptr %full.i, align 4
  %tobool66.not.i = icmp eq i8 %98, 0
  br i1 %tobool66.not.i, label %if.end63.i.while.cond.i_crit_edge, label %if.end63.i.if.then116_crit_edge

if.end63.i.if.then116_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116

if.end63.i.while.cond.i_crit_edge:                ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %99 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %78, ptr %85, align 4
  %scqe.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %85, i32 4
  %100 = ptrtoint ptr %scqe.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %scqe.sroa.6.0, ptr %scqe.sroa.6.0..sroa_idx, align 4
  %scqe.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %85, i32 8
  %101 = ptrtoint ptr %scqe.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %scqe.sroa.9.0, ptr %scqe.sroa.9.0..sroa_idx, align 4
  %scqe.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %85, i32 12
  %102 = ptrtoint ptr %scqe.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %75, ptr %scqe.sroa.12.0..sroa_idx, align 4
  %103 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %next.i, align 4
  %base.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 2
  %105 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %106 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 4
  %skb78.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 7
  %107 = ptrtoint ptr %skb78.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %skb78.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %108, i32 %sub.ptr.div.i
  %109 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %skb, ptr %arrayidx.i, align 4
  %110 = load ptr, ptr %next.i, align 4
  %last.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 3
  %111 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %last.i, align 4
  %cmp80.i = icmp eq ptr %110, %112
  br i1 %cmp80.i, label %if.then82.i, label %if.else.i

if.then82.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i, align 4
  br label %if.end86.i

if.else.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr.i = getelementptr %struct.ns_scqe, ptr %110, i32 1
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.else.i, %if.then82.i
  %storemerge.i = phi ptr [ %incdec.ptr.i, %if.else.i ], [ %114, %if.then82.i ]
  %115 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %storemerge.i, ptr %next.i, align 4
  %tbd_count.i = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 6
  %116 = ptrtoint ptr %tbd_count.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tbd_count.i, align 4
  %inc.i = add i32 %117, 1
  store i32 %inc.i, ptr %tbd_count.i, align 4
  %num_entries.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 6
  %118 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %119)
  %cmp87.i = icmp eq i32 %119, 512
  br i1 %cmp87.i, label %if.then89.i, label %if.end86.i.if.end93.i_crit_edge

if.end86.i.if.end93.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93.i

if.then89.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  %tbd_count90.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 9
  %120 = ptrtoint ptr %tbd_count90.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tbd_count90.i, align 4
  %inc91.i = add i32 %121, 1
  store i32 %inc91.i, ptr %tbd_count90.i, align 4
  %122 = ptrtoint ptr %tbd_count.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr.i = load i32, ptr %tbd_count.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then89.i, %if.end86.i.if.end93.i_crit_edge
  %123 = phi i32 [ %inc.i, %if.end86.i.if.end93.i_crit_edge ], [ %.pr.i, %if.then89.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp95.i = icmp sgt i32 %123, 0
  br i1 %cmp95.i, label %if.end93.i.if.then100.i_crit_edge, label %lor.lhs.false.i

if.end93.i.if.then100.i_crit_edge:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then100.i

lor.lhs.false.i:                                  ; preds = %if.end93.i
  %tbd_count97.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 9
  %124 = ptrtoint ptr %tbd_count97.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tbd_count97.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %125)
  %cmp98.i = icmp sgt i32 %125, 9
  br i1 %cmp98.i, label %lor.lhs.false.i.if.then100.i_crit_edge, label %lor.lhs.false.i.if.end230.i_crit_edge

lor.lhs.false.i.if.end230.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230.i

lor.lhs.false.i.if.then100.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then100.i

if.then100.i:                                     ; preds = %lor.lhs.false.i.if.then100.i_crit_edge, %if.end93.i.if.then100.i_crit_edge
  %126 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tail.i, align 4
  %128 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %next.i, align 4
  %cmp104374.i = icmp eq ptr %127, %129
  br i1 %cmp104374.i, label %while.body106.lr.ph.i, label %if.then100.i.while.end190.i_crit_edge

if.then100.i.while.end190.i_crit_edge:            ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end190.i

while.body106.lr.ph.i:                            ; preds = %if.then100.i
  br i1 %may_sleep, label %if.end117.i, label %if.then108.i

if.then108.i:                                     ; preds = %while.body106.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  %dma.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 1
  %130 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dma.i, align 4
  %132 = ptrtoint ptr %127 to i32
  %133 = ptrtoint ptr %scq.0 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %scq.0, align 4
  %135 = ptrtoint ptr %134 to i32
  %sub.i189 = add i32 %131, %132
  %add.i = sub i32 %sub.i189, %135
  %136 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %add.i, ptr %data.i, align 4
  %scd.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 8
  %137 = ptrtoint ptr %scd.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %scd.i, align 4
  call fastcc void @ns_write_sram(ptr noundef %3, i32 noundef %138, ptr noundef nonnull %data.i, i32 noundef 1) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  %139 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %3, align 4
  %call116.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, i32 noundef %140) #14
  br label %if.end126

if.end117.i:                                      ; preds = %while.body106.lr.ph.i
  %141 = ptrtoint ptr %full.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store volatile i8 1, ptr %full.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry146.i) #11
  %142 = call ptr @memset(ptr %__wq_entry146.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry146.i, i32 noundef 0) #11
  %call151369.i = call i32 @prepare_to_wait_event(ptr noundef %scqfull_waitq.i, ptr noundef nonnull %__wq_entry146.i, i32 noundef 1) #11
  %143 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tail.i, align 4
  %145 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %next.i, align 4
  %cmp155.not370.not.i = icmp eq ptr %144, %146
  br i1 %cmp155.not370.not.i, label %if.end117.i.if.end174.i_crit_edge, label %if.end117.i.for.end184.i_crit_edge

if.end117.i.for.end184.i_crit_edge:               ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end184.i

if.end117.i.if.end174.i_crit_edge:                ; preds = %if.end117.i
  br label %if.end174.i

if.end174.i:                                      ; preds = %cleanup181.i.if.end174.i_crit_edge, %if.end117.i.if.end174.i_crit_edge
  %__ret147.1373.i = phi i32 [ %__ret147.1.i, %cleanup181.i.if.end174.i_crit_edge ], [ 500, %if.end117.i.if.end174.i_crit_edge ]
  %call151372.i = phi i32 [ %call151.i, %cleanup181.i.if.end174.i_crit_edge ], [ %call151369.i, %if.end117.i.if.end174.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151372.i)
  %tobool175.not.i = icmp eq i32 %call151372.i, 0
  br i1 %tobool175.not.i, label %cleanup181.i, label %if.end174.i.if.end188.i_crit_edge

if.end174.i.if.end188.i_crit_edge:                ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188.i

cleanup181.i:                                     ; preds = %if.end174.i
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #11
  %call179.i = call i32 @schedule_timeout(i32 noundef %__ret147.1373.i) #11
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #11
  %call151.i = call i32 @prepare_to_wait_event(ptr noundef %scqfull_waitq.i, ptr noundef nonnull %__wq_entry146.i, i32 noundef 1) #11
  %147 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tail.i, align 4
  %149 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %next.i, align 4
  %cmp155.not.i = icmp eq ptr %148, %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179.i)
  %tobool161.not.i = icmp eq i32 %call179.i, 0
  %spec.store.select247.i = select i1 %tobool161.not.i, i32 1, i32 %call179.i
  %__ret147.1.i = select i1 %cmp155.not.i, i32 %call179.i, i32 %spec.store.select247.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret147.1.i)
  %tobool168.not.i = icmp eq i32 %__ret147.1.i, 0
  %not.cmp155.not.i = xor i1 %cmp155.not.i, true
  %151 = select i1 %not.cmp155.not.i, i1 true, i1 %tobool168.not.i
  br i1 %151, label %cleanup181.i.for.end184.i_crit_edge, label %cleanup181.i.if.end174.i_crit_edge

cleanup181.i.if.end174.i_crit_edge:               ; preds = %cleanup181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174.i

cleanup181.i.for.end184.i_crit_edge:              ; preds = %cleanup181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end184.i

for.end184.i:                                     ; preds = %cleanup181.i.for.end184.i_crit_edge, %if.end117.i.for.end184.i_crit_edge
  call void @finish_wait(ptr noundef %scqfull_waitq.i, ptr noundef nonnull %__wq_entry146.i) #11
  br label %if.end188.i

if.end188.i:                                      ; preds = %for.end184.i, %if.end174.i.if.end188.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry146.i) #11
  %152 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tail.i, align 4
  %154 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %next.i, align 4
  %cmp104.i = icmp eq ptr %153, %155
  br i1 %cmp104.i, label %if.end117.1.i, label %if.end188.i.while.end190.i_crit_edge

if.end188.i.while.end190.i_crit_edge:             ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end190.i

if.end117.1.i:                                    ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %full.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store volatile i8 1, ptr %full.i, align 4
  br label %while.end190.i

while.end190.i:                                   ; preds = %if.end117.1.i, %if.end188.i.while.end190.i_crit_edge, %if.then100.i.while.end190.i_crit_edge
  %.lcssa.i = phi ptr [ %129, %if.then100.i.while.end190.i_crit_edge ], [ %155, %if.end188.i.while.end190.i_crit_edge ], [ %153, %if.end117.1.i ]
  %157 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load volatile i8, ptr %full.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool192.not.i = icmp eq i8 %158, 0
  br i1 %tobool192.not.i, label %if.then193.i, label %while.end190.i.if.end230.i_crit_edge

while.end190.i.if.end230.i_crit_edge:             ; preds = %while.end190.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230.i

if.then193.i:                                     ; preds = %while.end190.i
  br i1 %cmp87.i, label %if.then193.i.if.end198.i_crit_edge, label %if.else196.i

if.then193.i.if.end198.i_crit_edge:               ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198.i

if.else196.i:                                     ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #13
  %cbr_scd.i = getelementptr inbounds %struct.vc_map, ptr %5, i32 0, i32 5
  %159 = ptrtoint ptr %cbr_scd.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cbr_scd.i, align 4
  %sub197.i = add i32 %160, -119370
  %div.i = udiv i32 %sub197.i, 12
  %phi.bo.i = shl i32 %div.i, 16
  %phi.bo340.i = or i32 %phi.bo.i, 32768
  br label %if.end198.i

if.end198.i:                                      ; preds = %if.else196.i, %if.then193.i.if.end198.i_crit_edge
  %scdi.0.i = phi i32 [ %phi.bo340.i, %if.else196.i ], [ -32768, %if.then193.i.if.end198.i_crit_edge ]
  %161 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base.i, align 4
  %sub.ptr.lhs.cast201.i = ptrtoint ptr %.lcssa.i to i32
  %sub.ptr.rhs.cast202.i = ptrtoint ptr %162 to i32
  %sub.ptr.sub203.i = sub i32 %sub.ptr.lhs.cast201.i, %sub.ptr.rhs.cast202.i
  %sub.ptr.div204.i = ashr exact i32 %sub.ptr.sub203.i, 4
  %or205.i = or i32 %sub.ptr.div204.i, %scdi.0.i
  %163 = call i32 @llvm.bswap.i32(i32 %or205.i) #11
  %164 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 160, ptr %.lcssa.i, align 4
  %tsr.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.lcssa.i, i32 4
  %165 = ptrtoint ptr %tsr.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %163, ptr %tsr.sroa.5.0..sroa_idx.i, align 4
  %tsr.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %.lcssa.i, i32 8
  %166 = ptrtoint ptr %tsr.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %tsr.sroa.7.0..sroa_idx.i, align 4
  %tsr.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %.lcssa.i, i32 12
  %167 = ptrtoint ptr %tsr.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %tsr.sroa.9.0..sroa_idx.i, align 4
  %168 = ptrtoint ptr %skb78.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %skb78.i, align 4
  %arrayidx208.i = getelementptr ptr, ptr %169, i32 %sub.ptr.div204.i
  %170 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %arrayidx208.i, align 4
  %171 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %next.i, align 4
  %173 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %last.i, align 4
  %cmp211.i = icmp eq ptr %172, %174
  br i1 %cmp211.i, label %if.then213.i, label %if.else216.i

if.then213.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base.i, align 4
  br label %if.end219.i

if.else216.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr218.i = getelementptr %struct.ns_scqe, ptr %172, i32 1
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.else216.i, %if.then213.i
  %storemerge341.i = phi ptr [ %incdec.ptr218.i, %if.else216.i ], [ %176, %if.then213.i ]
  %177 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %storemerge341.i, ptr %next.i, align 4
  %178 = ptrtoint ptr %tbd_count.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %tbd_count.i, align 4
  %tbd_count221.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 9
  %179 = ptrtoint ptr %tbd_count221.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %tbd_count221.i, align 4
  br label %if.end230.i

if.end230.i:                                      ; preds = %if.end219.i, %while.end190.i.if.end230.i_crit_edge, %lor.lhs.false.i.if.end230.i_crit_edge
  %dma231.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 1
  %180 = ptrtoint ptr %dma231.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dma231.i, align 4
  %182 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %next.i, align 4
  %184 = ptrtoint ptr %183 to i32
  %185 = ptrtoint ptr %scq.0 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %scq.0, align 4
  %187 = ptrtoint ptr %186 to i32
  %sub234.i = add i32 %181, %184
  %add235.i = sub i32 %sub234.i, %187
  %188 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %add235.i, ptr %data.i, align 4
  %scd236.i = getelementptr inbounds %struct.scq_info, ptr %scq.0, i32 0, i32 8
  %189 = ptrtoint ptr %scd236.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %scd236.i, align 4
  call fastcc void @ns_write_sram(ptr noundef %3, i32 noundef %190, ptr noundef nonnull %data.i, i32 noundef 1) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  br label %if.end126

if.then116:                                       ; preds = %if.end63.i.if.then116_crit_edge, %while.body.i.if.then116_crit_edge
  %.str.160.sink = phi ptr [ @.str.157, %while.body.i.if.then116_crit_edge ], [ @.str.160, %if.end63.i.if.then116_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  %191 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %3, align 4
  %call74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.160.sink, i32 noundef %192) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #11
  %stats117 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %193 = ptrtoint ptr %stats117 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %stats117, align 8
  %tx_err118 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %194, i32 0, i32 1
  %call.i.i186 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_err118, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %tx_err118, i32 1, i32 3, i32 1) #11
  %195 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err118, ptr %tx_err118, i32 1, ptr elementtype(i32) %tx_err118) #11, !srcloc !409
  %196 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pcidev, align 4
  %dev120 = getelementptr inbounds %struct.pci_dev, ptr %197, i32 0, i32 44
  %198 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dma, align 4
  %200 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %len, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev120, i32 noundef %199, i32 noundef %201, i32 noundef 1, i32 noundef 0) #11
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

if.end126:                                        ; preds = %if.end230.i, %if.then108.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #11
  %stats127 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %202 = ptrtoint ptr %stats127 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %stats127, align 8
  %call.i.i187 = call zeroext i1 @__kasan_check_write(ptr noundef %203, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %203, i32 1, i32 3, i32 1) #11
  %204 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %203, ptr %203, i32 1, ptr elementtype(i32) %203) #11, !srcloc !409
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %if.then116, %do.end36, %do.end22, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end22 ], [ -22, %do.end36 ], [ -5, %if.then116 ], [ 0, %if.end126 ], [ -22, %do.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns_poll(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_cards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp94.not = icmp eq i32 %0, 0
  br i1 %cmp94.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.095 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @cards, i32 0, i32 %i.095
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !431
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end15, label %do.end15.thread

do.end15:                                         ; preds = %for.body
  tail call void @trace_hardirqs_off() #11
  %int_lock = getelementptr inbounds %struct.ns_dev, ptr %2, i32 0, i32 39
  %call18 = tail call i32 @_raw_spin_trylock(ptr noundef %int_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then29, label %do.end15.if.end54.critedge_crit_edge

do.end15.if.end54.critedge_crit_edge:             ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.critedge

do.end15.thread:                                  ; preds = %for.body
  %int_lock90 = getelementptr inbounds %struct.ns_dev, ptr %2, i32 0, i32 39
  %call1891 = tail call i32 @_raw_spin_trylock(ptr noundef %int_lock90) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1891)
  %tobool19.not92 = icmp eq i32 %call1891, 0
  br i1 %tobool19.not92, label %do.end15.thread.do.body31_crit_edge, label %do.end15.thread.if.end54.critedge_crit_edge

do.end15.thread.if.end54.critedge_crit_edge:      ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.critedge

do.end15.thread.do.body31_crit_edge:              ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body31

if.then29:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body31

do.body31:                                        ; preds = %if.then29, %do.end15.thread.do.body31_crit_edge
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !432
  %and.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool39.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool39.not, label %if.then43, label %do.body31.do.end46_crit_edge, !prof !375

do.body31.do.end46_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31.do.end46_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #11, !srcloc !433
  br label %for.inc

if.end54.critedge:                                ; preds = %do.end15.thread.if.end54.critedge_crit_edge, %do.end15.if.end54.critedge_crit_edge
  %int_lock93 = phi ptr [ %int_lock90, %do.end15.thread.if.end54.critedge_crit_edge ], [ %int_lock, %do.end15.if.end54.critedge_crit_edge ]
  %membase = getelementptr inbounds %struct.ns_dev, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !434
  %8 = and i32 %7, 545259520
  tail call fastcc void @process_tsq(ptr noundef %2)
  tail call fastcc void @process_rsq(ptr noundef %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !435
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr70 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %8) #11, !srcloc !320
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock93, i32 noundef %3) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end54.critedge, %do.end46
  %inc = add nuw i32 %i.095, 1
  %11 = load i32, ptr @num_cards, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %12, 100
  %call72 = tail call i32 @mod_timer(ptr noundef nonnull @ns_timer, i32 noundef %add) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !214, !216, !218, !219, !220, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !247, !248, !250, !251, !253, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305}
!llvm.named.register.sp = !{!306}
!llvm.module.flags = !{!307, !308, !309, !310, !311, !312, !313, !314}
!llvm.ident = !{!315}

!0 = !{ptr @__param_mac, !1, !"__param_mac", i1 false, i1 false}
!1 = !{!"../drivers/atm/nicstar.c", i32 173, i32 1}
!2 = !{ptr @__UNIQUE_ID_mactype461, !1, !"__UNIQUE_ID_mactype461", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file462, !4, !"__UNIQUE_ID_file462", i1 false, i1 false}
!4 = !{!"../drivers/atm/nicstar.c", i32 174, i32 1}
!5 = !{ptr @__UNIQUE_ID_license463, !4, !"__UNIQUE_ID_license463", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_nicstar__466_2763_nicstar_init6, !7, !"__initcall__kmod_nicstar__466_2763_nicstar_init6", i1 false, i1 false}
!7 = !{!"../drivers/atm/nicstar.c", i32 2763, i32 1}
!8 = !{ptr @__exitcall_nicstar_cleanup, !9, !"__exitcall_nicstar_cleanup", i1 false, i1 false}
!9 = !{!"../drivers/atm/nicstar.c", i32 2764, i32 1}
!10 = !{ptr @ns_timer, !11, !"ns_timer", i1 false, i1 false}
!11 = !{!"../drivers/atm/nicstar.c", i32 171, i32 26}
!12 = !{ptr @__param_str_mac, !1, !"__param_str_mac", i1 false, i1 false}
!13 = !{ptr @__param_arr_mac, !1, !"__param_arr_mac", i1 false, i1 false}
!14 = !{ptr @mac, !15, !"mac", i1 false, i1 false}
!15 = !{!"../drivers/atm/nicstar.c", i32 172, i32 14}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/atm/nicstar.c", i32 267, i32 10}
!18 = !{ptr @nicstar_driver, !19, !"nicstar_driver", i1 false, i1 false}
!19 = !{!"../drivers/atm/nicstar.c", i32 266, i32 26}
!20 = !{ptr @nicstar_pci_tbl, !21, !"nicstar_pci_tbl", i1 false, i1 false}
!21 = !{!"../drivers/atm/nicstar.c", i32 259, i32 35}
!22 = !{ptr @nicstar_init_one.index, !23, !"index", i1 false, i1 false}
!23 = !{!"../drivers/atm/nicstar.c", i32 181, i32 13}
!24 = !{ptr @cards, !25, !"cards", i1 false, i1 false}
!25 = !{!"../drivers/atm/nicstar.c", i32 157, i32 23}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/atm/nicstar.c", i32 361, i32 3}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ns_init_card._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @ns_init_card._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/atm/nicstar.c", i32 367, i32 17}
!34 = !{ptr @ns_init_card._entry.4, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ns_init_card._entry_ptr.6, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/atm/nicstar.c", i32 376, i32 3}
!38 = !{ptr @ns_init_card._entry.7, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ns_init_card._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ns_init_card.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/atm/nicstar.c", i32 384, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ns_init_card.__key.11, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/atm/nicstar.c", i32 385, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/atm/nicstar.c", i32 395, i32 3}
!48 = !{ptr @ns_init_card._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ns_init_card._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/atm/nicstar.c", i32 405, i32 3}
!52 = !{ptr @ns_init_card._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ns_init_card._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/atm/nicstar.c", i32 456, i32 3}
!56 = !{ptr @ns_init_card._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ns_init_card._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/atm/nicstar.c", i32 471, i32 3}
!60 = !{ptr @ns_init_card._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ns_init_card._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/atm/nicstar.c", i32 480, i32 3}
!64 = !{ptr @ns_init_card._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ns_init_card._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/atm/nicstar.c", i32 503, i32 3}
!68 = !{ptr @ns_init_card._entry.28, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ns_init_card._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/atm/nicstar.c", i32 533, i32 3}
!72 = !{ptr @ns_init_card._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ns_init_card._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/atm/nicstar.c", i32 544, i32 3}
!76 = !{ptr @ns_init_card._entry.34, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ns_init_card._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/atm/nicstar.c", i32 563, i32 3}
!80 = !{ptr @ns_init_card._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ns_init_card._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/atm/nicstar.c", i32 582, i32 3}
!84 = !{ptr @ns_init_card._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ns_init_card._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/atm/nicstar.c", i32 660, i32 4}
!88 = !{ptr @ns_init_card._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ns_init_card._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/atm/nicstar.c", i32 679, i32 4}
!92 = !{ptr @ns_init_card._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ns_init_card._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/atm/nicstar.c", i32 700, i32 3}
!96 = !{ptr @ns_init_card._entry.49, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ns_init_card._entry_ptr.51, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/atm/nicstar.c", i32 715, i32 4}
!100 = !{ptr @ns_init_card._entry.52, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ns_init_card._entry_ptr.54, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/atm/nicstar.c", i32 730, i32 3}
!104 = !{ptr @ns_init_card._entry.55, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ns_init_card._entry_ptr.57, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/atm/nicstar.c", i32 745, i32 4}
!108 = !{ptr @ns_init_card._entry.58, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ns_init_card._entry_ptr.60, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/atm/nicstar.c", i32 769, i32 3}
!112 = !{ptr @ns_init_card._entry.61, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ns_init_card._entry_ptr.63, !111, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/atm/nicstar.c", i32 778, i32 43}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/atm/nicstar.c", i32 785, i32 2}
!118 = !{ptr @ns_init_card._entry.65, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ns_init_card._entry_ptr.67, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/atm/nicstar.c", i32 922, i32 4}
!122 = !{ptr @.str.69, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @free_scq._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @free_scq._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/atm/nicstar.c", i32 1116, i32 3}
!127 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ns_irq_handler._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ns_irq_handler._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/atm/nicstar.c", i32 1123, i32 3}
!132 = !{ptr @ns_irq_handler._entry.72, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ns_irq_handler._entry_ptr.74, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.76, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/atm/nicstar.c", i32 1130, i32 3}
!136 = !{ptr @ns_irq_handler._entry.75, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ns_irq_handler._entry_ptr.77, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/atm/nicstar.c", i32 1145, i32 3}
!140 = !{ptr @ns_irq_handler._entry.78, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ns_irq_handler._entry_ptr.80, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.82, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/atm/nicstar.c", i32 1176, i32 3}
!144 = !{ptr @ns_irq_handler._entry.81, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ns_irq_handler._entry_ptr.83, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.85, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/atm/nicstar.c", i32 1201, i32 3}
!148 = !{ptr @ns_irq_handler._entry.84, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ns_irq_handler._entry_ptr.86, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.87, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/atm/nicstar.c", i32 1884, i32 6}
!152 = !{ptr @.str.88, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @process_tsq._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @process_tsq._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.89, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/atm/nicstar.c", i32 1930, i32 3}
!157 = !{ptr @.str.90, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @drain_scq._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @drain_scq._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.91, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/atm/nicstar.c", i32 2017, i32 3}
!162 = !{ptr @.str.92, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @dequeue_rx._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @dequeue_rx._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.94, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/atm/nicstar.c", i32 2042, i32 5}
!167 = !{ptr @dequeue_rx._entry.93, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @dequeue_rx._entry_ptr.95, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.97, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/atm/nicstar.c", i32 2082, i32 5}
!171 = !{ptr @dequeue_rx._entry.96, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @dequeue_rx._entry_ptr.98, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.100, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/atm/nicstar.c", i32 2107, i32 3}
!175 = !{ptr @dequeue_rx._entry.99, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @dequeue_rx._entry_ptr.101, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.103, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/atm/nicstar.c", i32 2159, i32 4}
!179 = !{ptr @dequeue_rx._entry.102, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @dequeue_rx._entry_ptr.104, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.106, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/atm/nicstar.c", i32 2161, i32 5}
!183 = !{ptr @dequeue_rx._entry.105, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @dequeue_rx._entry_ptr.107, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.109, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/atm/nicstar.c", i32 2163, i32 5}
!187 = !{ptr @dequeue_rx._entry.108, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @dequeue_rx._entry_ptr.110, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.112, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/atm/nicstar.c", i32 2240, i32 6}
!191 = !{ptr @dequeue_rx._entry.111, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @dequeue_rx._entry_ptr.113, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.114, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/atm/nicstar.c", i32 2341, i32 3}
!195 = !{ptr @.str.115, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @recycle_rx_buf._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @recycle_rx_buf._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @get_scq.__key, !199, !"__key", i1 false, i1 false}
!199 = !{!"../drivers/atm/nicstar.c", i32 895, i32 2}
!200 = !{ptr @.str.116, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @get_scq.__key.117, !202, !"__key", i1 false, i1 false}
!202 = !{!"../drivers/atm/nicstar.c", i32 897, i32 2}
!203 = !{ptr @.str.118, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @xa_init_flags.__key, !205, !"__key", i1 false, i1 false}
!205 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!206 = !{ptr @.str.119, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @skb_queue_head_init.__key, !208, !"__key", i1 false, i1 false}
!208 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!209 = !{ptr @.str.120, !208, !"<string literal>", i1 false, i1 false}
!210 = distinct !{null, !211, !"__already_done", i1 false, i1 false}
!211 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!212 = !{ptr @.str.121, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.122, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @atm_ops, !215, !"atm_ops", i1 false, i1 false}
!215 = !{!"../drivers/atm/nicstar.c", i32 159, i32 32}
!216 = !{ptr @.str.123, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/atm/nicstar.c", i32 1266, i32 3}
!218 = !{ptr @.str.124, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @ns_open._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @ns_open._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.125, !217, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.126, !217, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.127, !217, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.129, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/atm/nicstar.c", i32 1321, i32 5}
!226 = !{ptr @ns_open._entry.128, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @ns_open._entry_ptr.130, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.131, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/atm/nicstar.c", i32 1597, i32 3}
!230 = !{ptr @.str.132, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @fill_tst._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @fill_tst._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.133, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/atm/nicstar.c", i32 2624, i32 6}
!235 = !{ptr @.str.134, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @ns_ioctl._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @ns_ioctl._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.136, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/atm/nicstar.c", i32 2654, i32 6}
!240 = !{ptr @ns_ioctl._entry.135, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @ns_ioctl._entry_ptr.137, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.139, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/atm/nicstar.c", i32 2685, i32 4}
!244 = !{ptr @ns_ioctl._entry.138, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @ns_ioctl._entry_ptr.140, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.141, !243, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.142, !243, !"<string literal>", i1 false, i1 false}
!248 = distinct !{null, !249, !"__already_done", i1 false, i1 false}
!249 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!250 = distinct !{null, !249, !"<string literal>", i1 false, i1 false}
!251 = distinct !{null, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!253 = !{ptr @.str.145, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!255 = !{ptr @.str.146, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/atm/nicstar.c", i32 1639, i32 3}
!257 = !{ptr @.str.147, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @_ns_send._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @_ns_send._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.149, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/atm/nicstar.c", i32 1647, i32 3}
!262 = !{ptr @_ns_send._entry.148, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @_ns_send._entry_ptr.150, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.152, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/atm/nicstar.c", i32 1655, i32 3}
!266 = !{ptr @_ns_send._entry.151, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @_ns_send._entry_ptr.153, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.155, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/atm/nicstar.c", i32 1663, i32 3}
!270 = !{ptr @_ns_send._entry.154, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @_ns_send._entry_ptr.156, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.157, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/atm/nicstar.c", i32 1747, i32 4}
!274 = !{ptr @.str.158, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @push_scqe._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @push_scqe._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.160, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/atm/nicstar.c", i32 1759, i32 4}
!279 = !{ptr @push_scqe._entry.159, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @push_scqe._entry_ptr.161, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.163, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/atm/nicstar.c", i32 1794, i32 5}
!283 = !{ptr @push_scqe._entry.162, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @push_scqe._entry_ptr.164, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.165, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/atm/nicstar.c", i32 2421, i32 24}
!287 = !{ptr @.str.166, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/atm/nicstar.c", i32 2423, i32 24}
!289 = !{ptr @.str.167, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/atm/nicstar.c", i32 2427, i32 24}
!291 = !{ptr @.str.168, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/atm/nicstar.c", i32 2431, i32 24}
!293 = !{ptr @.str.169, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/atm/nicstar.c", i32 2435, i32 24}
!295 = !{ptr @.str.170, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/atm/nicstar.c", i32 2441, i32 21}
!297 = !{ptr @readtab, !298, !"readtab", i1 false, i1 false}
!298 = !{!"../drivers/atm/nicstarmac.c", i32 66, i32 18}
!299 = !{ptr @clocktab, !300, !"clocktab", i1 false, i1 false}
!300 = !{!"../drivers/atm/nicstarmac.c", i32 89, i32 18}
!301 = !{ptr @num_cards, !302, !"num_cards", i1 false, i1 false}
!302 = !{!"../drivers/atm/nicstar.c", i32 158, i32 17}
!303 = !{ptr @nicstar_init.__key, !304, !"__key", i1 false, i1 false}
!304 = !{!"../drivers/atm/nicstar.c", i32 290, i32 3}
!305 = !{ptr @.str.171, !304, !"<string literal>", i1 false, i1 false}
!306 = !{!"sp"}
!307 = !{i32 1, !"wchar_size", i32 2}
!308 = !{i32 1, !"min_enum_size", i32 4}
!309 = !{i32 8, !"branch-target-enforcement", i32 0}
!310 = !{i32 8, !"sign-return-address", i32 0}
!311 = !{i32 8, !"sign-return-address-all", i32 0}
!312 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!313 = !{i32 7, !"uwtable", i32 1}
!314 = !{i32 7, !"frame-pointer", i32 2}
!315 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!316 = !{!"auto-init"}
!317 = !{i64 6302673}
!318 = !{i64 2157423755}
!319 = !{i64 2157424001}
!320 = !{i64 6302255}
!321 = !{i64 2157424434}
!322 = !{i64 2157426153}
!323 = !{i64 2157426573}
!324 = !{i64 2157428290}
!325 = !{i64 2157430352}
!326 = !{i64 2157430610}
!327 = !{i64 2157432712}
!328 = !{i64 2157432970}
!329 = !{i64 2157433774}
!330 = !{i64 2157434279}
!331 = !{i64 2157436271}
!332 = !{i64 2157436505}
!333 = !{i64 2157436950}
!334 = !{i64 2157437422}
!335 = !{i64 2157440702}
!336 = !{i64 2157414425}
!337 = !{i64 2157414657}
!338 = !{i64 2157415078}
!339 = !{i64 2157411984}
!340 = !{i64 2157412220}
!341 = !{i64 2157412991}
!342 = !{i64 2157413496}
!343 = !{i64 2157392600}
!344 = !{i64 2157393180}
!345 = !{i64 2157393415}
!346 = !{i64 2157394930}
!347 = !{i64 2157395165}
!348 = !{i64 2157396680}
!349 = !{i64 2157396915}
!350 = !{i64 2157398430}
!351 = !{i64 2157398665}
!352 = !{i64 2157442742}
!353 = !{i64 2157447069}
!354 = !{i64 2157447886}
!355 = !{i64 2157450984}
!356 = !{i64 2157451812}
!357 = !{i64 2157454586}
!358 = !{i64 2157459574}
!359 = !{i64 2157463941}
!360 = !{i64 2157471096}
!361 = !{i64 2157409588}
!362 = !{i64 2157472036}
!363 = !{i64 2157483389}
!364 = !{i64 2157483635}
!365 = !{i64 2157484080}
!366 = !{i64 2157484525}
!367 = !{i64 2157484986}
!368 = !{i64 2157485447}
!369 = !{i64 2157485908}
!370 = !{i64 2157487824}
!371 = !{i64 2157489740}
!372 = !{i64 2157491518}
!373 = !{i64 2157491963}
!374 = !{i64 2157494177}
!375 = !{!"branch_weights", i32 1, i32 2000}
!376 = !{i64 2157494979}
!377 = !{i64 2157497717}
!378 = !{i64 2157498672}
!379 = !{i64 2157499103}
!380 = !{i64 2157501805}
!381 = !{i64 2157502760}
!382 = !{i64 2157503154}
!383 = !{!"branch_weights", i32 2000, i32 1}
!384 = !{i64 2157476491}
!385 = !{i64 2157478102}
!386 = !{i64 2157478331}
!387 = !{i64 2157478730}
!388 = !{i64 2157479125}
!389 = !{i64 2157479524}
!390 = !{i64 2157480116}
!391 = !{i64 2157481547}
!392 = !{i64 2157482486}
!393 = !{i64 2157380836}
!394 = !{i64 2157381737}
!395 = !{i64 2157381966}
!396 = !{i64 2157383468}
!397 = !{i64 2157383722}
!398 = !{i64 2157385299}
!399 = !{i64 2157385553}
!400 = !{i64 2157387108}
!401 = !{i64 2157387340}
!402 = !{i64 2157388762}
!403 = !{i64 2157389325}
!404 = !{i64 2157389557}
!405 = !{i64 2157391026}
!406 = !{i64 2157391238}
!407 = !{i64 2157537923}
!408 = !{i64 2157542319}
!409 = !{i64 2148412761, i64 2148412787, i64 2148412816, i64 2148412850, i64 2148412881, i64 2148412904}
!410 = !{i64 2157541436}
!411 = !{i64 2157509951}
!412 = !{i64 2157510236}
!413 = !{i64 2157510980}
!414 = !{i64 2148415226, i64 2148415252, i64 2148415281, i64 2148415315, i64 2148415346, i64 2148415369}
!415 = !{i64 5129912}
!416 = !{i64 5130109}
!417 = !{i64 2152615342}
!418 = !{i64 2157573824, i64 2157574104, i64 2157574438, i64 2157574772}
!419 = !{i64 2157578190}
!420 = !{i64 2157578990}
!421 = !{i64 2152635038, i64 2152635063}
!422 = !{i64 2152634357, i64 2152634382}
!423 = !{i64 2157591513}
!424 = !{i64 2157591748}
!425 = !{i64 2157592218}
!426 = !{i64 2157593450}
!427 = !{i64 2157593730}
!428 = !{i64 2157594600}
!429 = !{i64 2157595105}
!430 = !{i64 2157564070}
!431 = !{i64 816461, i64 816522}
!432 = !{i64 819193}
!433 = !{i64 819478}
!434 = !{i64 2157590098}
!435 = !{i64 2157590362}
