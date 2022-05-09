; ModuleID = '/llk/IR_all_yes/drivers/atm/fore200e.c_pt.bc'
source_filename = "../drivers/atm/fore200e.c"
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
%struct.fore200e_bus = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.fore200e = type { %struct.list_head, ptr, %union.fore200e_regs, ptr, i32, [16 x i8], ptr, i32, i32, ptr, [6 x i8], ptr, ptr, %struct.host_cmdq, %struct.host_txq, %struct.host_rxq, [2 x [2 x %struct.host_bsq]], i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.tasklet_struct, %struct.tasklet_struct, i32, i32, [1024 x %struct.fore200e_vc_map] }
%union.fore200e_regs = type { %struct.fore200e_pca_regs }
%struct.fore200e_pca_regs = type { ptr, ptr, ptr }
%struct.host_cmdq = type { [16 x %struct.host_cmdq_entry], i32, %struct.chunk }
%struct.host_cmdq_entry = type { ptr, ptr }
%struct.chunk = type { ptr, ptr, i32, i32, i32, i32 }
%struct.host_txq = type { [256 x %struct.host_txq_entry], i32, i32, %struct.chunk, %struct.chunk, i32 }
%struct.host_txq_entry = type { ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.host_rxq = type { [64 x %struct.host_rxq_entry], i32, %struct.chunk, %struct.chunk }
%struct.host_rxq_entry = type { ptr, ptr, ptr, i32 }
%struct.host_bsq = type { [32 x %struct.host_bsq_entry], i32, %struct.chunk, %struct.chunk, ptr, ptr, i32 }
%struct.host_bsq_entry = type { ptr, ptr, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.153, i32 }
%union.anon.153 = type { ptr }
%struct.fore200e_vc_map = type { ptr, i32 }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cp_monitor = type { %struct.soft_uart, i32, i32, i32 }
%struct.soft_uart = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.fw_header = type { i32, i32, i32, i32 }
%struct.cp_queues = type { i32, i32, i32, [2 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.init_block, i32, i32 }
%struct.init_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x [2 x %struct.bs_spec]] }
%struct.bs_spec = type { i32, i32, i32, i32 }
%struct.cp_cmdq_entry = type { %union.cmd, i32, [3 x i32] }
%union.cmd = type { [4 x i32] }
%struct.tpd = type { %struct.atm_header, %struct.tpd_spec, %struct.tpd_rate, i32, [2 x %struct.tsd] }
%struct.atm_header = type { i32 }
%struct.tpd_spec = type { i32 }
%struct.tpd_rate = type { i32 }
%struct.tsd = type { i32, i32 }
%struct.cp_txq_entry = type { %struct.tpd_haddr, i32 }
%struct.tpd_haddr = type { i32 }
%struct.rpd = type { %struct.atm_header, i32, [19 x %struct.rsd] }
%struct.rsd = type { i32, i32 }
%struct.cp_rxq_entry = type { i32, i32 }
%struct.buffer = type { ptr, i32, i32, %struct.chunk }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.prom_block = type { %struct.prom_opcode, i32 }
%struct.prom_opcode = type { i32 }
%struct.prom_data = type { i32, i32, [8 x i8] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.rbd_block = type { [32 x %struct.rbd] }
%struct.rbd = type { i32, i32 }
%struct.cp_bsq_entry = type { i32, i32 }
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
%struct.fore200e_vcc = type { i32, %struct.tpd_rate, i32, i32, i32, i32, i32, i32 }
%struct.sonet_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stats = type { %struct.stats_phy, %struct.stats_oc3, %struct.stats_atm, %struct.stats_aal0, %struct.stats_aal34, %struct.stats_aal5, %struct.stats_aux }
%struct.stats_phy = type { i32, i32, [2 x i32] }
%struct.stats_oc3 = type { i32, i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.stats_atm = type { i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.stats_aal0 = type { i32, i32, i32, [1 x i32] }
%struct.stats_aal34 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32] }
%struct.stats_aal5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32] }
%struct.stats_aux = type { i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.oc3_block = type { %struct.oc3_opcode, i32 }
%struct.oc3_opcode = type { i32 }
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
%struct.activate_block = type { %struct.activate_opcode, %struct.vpvc, i32 }
%struct.activate_opcode = type { i32 }
%struct.vpvc = type { i32 }
%struct.deactivate_block = type { %struct.deactivate_opcode, %struct.vpvc }
%struct.deactivate_opcode = type { i32 }
%struct.stats_block = type { %struct.stats_opcode, i32 }
%struct.stats_opcode = type { i32 }

@__UNIQUE_ID_author459 = internal constant [82 x i8] c"fore_200e.author=Christophe Lizzi - credits to Uwe Dannowski and Heikki Vatiainen\00", section ".modinfo", align 1
@__UNIQUE_ID_description460 = internal constant [73 x i8] c"fore_200e.description=FORE Systems 200E-series ATM driver - version 0.3e\00", section ".modinfo", align 1
@fore200e_pca_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @fore200e_pca_tbl, ptr @fore200e_pca_detect, ptr @fore200e_pca_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_fore_200e__461_2994_fore200e_module_init6 = internal global ptr @fore200e_module_init, section ".initcall6.init", align 4
@__exitcall_fore200e_module_cleanup = internal global ptr @fore200e_module_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file462 = internal constant [37 x i8] c"fore_200e.file=drivers/atm/fore_200e\00", section ".modinfo", align 1
@__UNIQUE_ID_license463 = internal constant [22 x i8] c"fore_200e.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware464 = internal constant [36 x i8] c"fore_200e.firmware=pca200e_ecd.bin2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fore_200e\00", [22 x i8] zeroinitializer }, align 32
@fore200e_pca_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4391, i32 768, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@fore200e_pca_detect.index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fore200e_pci_ops = internal constant { %struct.fore200e_bus, [32 x i8] } { %struct.fore200e_bus { ptr @.str.5, ptr @.str.6, i32 32, i32 4, i32 32, ptr @fore200e_pca_read, ptr @fore200e_pca_write, ptr @fore200e_pca_configure, ptr @fore200e_pca_map, ptr @fore200e_pca_reset, ptr @fore200e_pca_prom_read, ptr @fore200e_pca_unmap, ptr null, ptr @fore200e_pca_irq_check, ptr @fore200e_pca_irq_ack, ptr @fore200e_pca_proc_read }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PCA-200E-%d\00", [20 x i8] zeroinitializer }, align 32
@fore200e_pca_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"fore200e: device PCA-200E found at 0x%lx, IRQ %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fore200e_pca_detect\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/atm/fore200e.c\00", [41 x i8] zeroinitializer }, align 32
@fore200e_pca_detect._entry_ptr = internal global ptr @fore200e_pca_detect._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCA-200E\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pca200e\00", [24 x i8] zeroinitializer }, align 32
@fore200e_pca_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"fore200e: incorrect IRQ setting - misconfigured PCI-PCI bridge?\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fore200e_pca_configure\00", [41 x i8] zeroinitializer }, align 32
@fore200e_pca_configure._entry_ptr = internal global ptr @fore200e_pca_configure._entry, section ".printk_index", align 4
@fore200e_pca_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fore200e: can't map device %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fore200e_pca_map\00", [47 x i8] zeroinitializer }, align 32
@fore200e_pca_map._entry_ptr = internal global ptr @fore200e_pca_map._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fore200e_pca_prom_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"fore200e: unable to get PROM data from device %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fore200e_pca_prom_read\00", [41 x i8] zeroinitializer }, align 32
@fore200e_pca_prom_read._entry_ptr = internal global ptr @fore200e_pca_prom_read._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@fore200e_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"fore200e: cmd polling failed, got status 0x%08x, expected 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fore200e_poll\00", [18 x i8] zeroinitializer }, align 32
@fore200e_poll._entry_ptr = internal global ptr @fore200e_poll._entry, section ".printk_index", align 4
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"   PCI bus/slot/function:\09%d/%d/%d\0A\00", [60 x i8] zeroinitializer }, align 32
@fore200e_irq_itoa.str = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@fore200e_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr null, ptr @fore200e_open, ptr @fore200e_close, ptr @fore200e_ioctl, ptr @fore200e_send, ptr null, ptr null, ptr null, ptr null, ptr @fore200e_change_qos, ptr @fore200e_proc_read, ptr null }, [48 x i8] zeroinitializer }, align 32
@fore200e_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 2457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fore200e: unable to register device %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fore200e_register\00", [46 x i8] zeroinitializer }, align 32
@fore200e_register._entry_ptr = internal global ptr @fore200e_register._entry, section ".printk_index", align 4
@fore200e_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fore200e: assertion failed! %s[%d]: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fore200e_open\00", [18 x i8] zeroinitializer }, align 32
@fore200e_open._entry_ptr = internal global ptr @fore200e_open._entry, section ".printk_index", align 4
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(vpi >= 0) && (vpi < 1<<FORE200E_VPI_BITS)\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fore200e: %s\00", [19 x i8] zeroinitializer }, align 32
@fore200e_open._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fore200e_open._entry_ptr.26 = internal global ptr @fore200e_open._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(vci >= 0) && (vci < 1<<FORE200E_VCI_BITS)\00", [53 x i8] zeroinitializer }, align 32
@fore200e_open._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.4, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fore200e: VC %d.%d.%d already in use\0A\00", [58 x i8] zeroinitializer }, align 32
@fore200e_open._entry_ptr.30 = internal global ptr @fore200e_open._entry.28, section ".printk_index", align 4
@fore200e_activate_vcin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 1274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fore200e: unable to %s VC %d.%d.%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fore200e_activate_vcin\00", [41 x i8] zeroinitializer }, align 32
@fore200e_activate_vcin._entry_ptr = internal global ptr @fore200e_activate_vcin._entry, section ".printk_index", align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"close\00", [26 x i8] zeroinitializer }, align 32
@fore200e_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.35, ptr @.str.4, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fore200e_close\00", [17 x i8] zeroinitializer }, align 32
@fore200e_close._entry_ptr = internal global ptr @fore200e_close._entry, section ".printk_index", align 4
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@fore200e_close._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.35, ptr @.str.4, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fore200e_close._entry_ptr.38 = internal global ptr @fore200e_close._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(vcc->vpi >= 0) && (vcc->vpi < 1<<FORE200E_VPI_BITS)\00", [43 x i8] zeroinitializer }, align 32
@fore200e_close._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.35, ptr @.str.4, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fore200e_close._entry_ptr.41 = internal global ptr @fore200e_close._entry.40, section ".printk_index", align 4
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(vcc->vci >= 0) && (vcc->vci < 1<<FORE200E_VCI_BITS)\00", [43 x i8] zeroinitializer }, align 32
@fore200e_close._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.35, ptr @.str.4, i32 1459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fore200e_close._entry_ptr.44 = internal global ptr @fore200e_close._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fore200e_vcc\00", [19 x i8] zeroinitializer }, align 32
@fore200e_getstats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 1704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"fore200e: unable to get statistics from device %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fore200e_getstats\00", [46 x i8] zeroinitializer }, align 32
@fore200e_getstats._entry_ptr = internal global ptr @fore200e_getstats._entry, section ".printk_index", align 4
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@fore200e_set_oc3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 1780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fore200e: unable to set OC-3 reg 0x%02x of device %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fore200e_set_oc3\00", [47 x i8] zeroinitializer }, align 32
@fore200e_set_oc3._entry_ptr = internal global ptr @fore200e_set_oc3._entry, section ".printk_index", align 4
@fore200e_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.53, ptr @.str.4, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fore200e_send\00", [18 x i8] zeroinitializer }, align 32
@fore200e_send._entry_ptr = internal global ptr @fore200e_send._entry, section ".printk_index", align 4
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vc_map->vcc == vcc\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fore200e_tx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.55, ptr @.str.4, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fore200e_tx_irq\00", [16 x i8] zeroinitializer }, align 32
@fore200e_tx_irq._entry_ptr = internal global ptr @fore200e_tx_irq._entry, section ".printk_index", align 4
@fore200e_tx_irq._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.55, ptr @.str.4, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fore200e_tx_irq._entry_ptr.58 = internal global ptr @fore200e_tx_irq._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A device:\0A   internal name:\09\09%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [144 x i8], [48 x i8] } { [144 x i8] c"   interrupt line:\09\09%s\0A   physical base address:\090x%p\0A   virtual base address:\090x%p\0A   factory address (ESI):\09%pM\0A   board serial number:\09\09%d\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [133 x i8], [59 x i8] } { [133 x i8] c"   free small bufs, scheme 1:\09%d\0A   free large bufs, scheme 1:\09%d\0A   free small bufs, scheme 2:\09%d\0A   free large bufs, scheme 2:\09%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\0A\0A cell processor:\0A   heartbeat state:\09\09\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"*** FATAL ERROR %04x ***\0A\00", [38 x i8] zeroinitializer }, align 32
@fore200e_proc_read.media_name = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unshielded twisted pair\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"multimode optical fiber ST\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"multimode optical fiber SC\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"single-mode optical fiber ST\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"single-mode optical fiber SC\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@fore200e_proc_read.oc3_mode = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.70], [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"normal operation\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"diagnostic loopback\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"line loopback\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"   firmware release:\09\09%d.%d.%d\0A   monitor release:\09\09%d.%d\0A   media type:\09\09\09%s\0A   OC-3 revision:\09\090x%x\0A   OC-3 mode:\09\09\09%s\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\0A\0A monitor:\0A   version number:\09\09%d\0A   boot status word:\09\090x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\0A device statistics:\0A  4b5b:\0A     crc_header_errors:\09\09%10u\0A     framing_errors:\09\09%10u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [215 x i8], [41 x i8] } { [215 x i8] c"\0A  OC-3:\0A     section_bip8_errors:\09%10u\0A     path_bip8_errors:\09\09%10u\0A     line_bip24_errors:\09\09%10u\0A     line_febe_errors:\09\09%10u\0A     path_febe_errors:\09\09%10u\0A     corr_hcs_errors:\09\09%10u\0A     ucorr_hcs_errors:\09\09%10u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [162 x i8], [62 x i8] } { [162 x i8] c"\0A   ATM:\09\09\09\09     cells\0A     TX:\09\09\09%10u\0A     RX:\09\09\09%10u\0A     vpi out of range:\09\09%10u\0A     vpi no conn:\09\09%10u\0A     vci out of range:\09\09%10u\0A     vci no conn:\09\09%10u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\0A   AAL0:\09\09\09     cells\0A     TX:\09\09\09%10u\0A     RX:\09\09\09%10u\0A     dropped:\09\09\09%10u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [279 x i8], [73 x i8] } { [279 x i8] c"\0A   AAL3/4:\0A     SAR sublayer:\09\09     cells\0A       TX:\09\09\09%10u\0A       RX:\09\09\09%10u\0A       dropped:\09\09\09%10u\0A       CRC errors:\09\09%10u\0A       protocol errors:\09\09%10u\0A\0A     CS  sublayer:\09\09      PDUs\0A       TX:\09\09\09%10u\0A       RX:\09\09\09%10u\0A       dropped:\09\09\09%10u\0A       protocol errors:\09\09%10u\0A\00", [73 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [273 x i8], [79 x i8] } { [273 x i8] c"\0A   AAL5:\0A     SAR sublayer:\09\09     cells\0A       TX:\09\09\09%10u\0A       RX:\09\09\09%10u\0A       dropped:\09\09\09%10u\0A       congestions:\09\09%10u\0A\0A     CS  sublayer:\09\09      PDUs\0A       TX:\09\09\09%10u\0A       RX:\09\09\09%10u\0A       dropped:\09\09\09%10u\0A       CRC errors:\09\09%10u\0A       protocol errors:\09\09%10u\0A\00", [79 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [169 x i8], [55 x i8] } { [169 x i8] c"\0A   AUX:\09\09       allocation failures\0A     small b1:\09\09\09%10u\0A     large b1:\09\09\09%10u\0A     small b2:\09\09\09%10u\0A     large b2:\09\09\09%10u\0A     RX PDUs:\09\09\09%10u\0A     TX PDUs:\09\09\09%10lu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0A receive carrier:\09\09\09%s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OFF!\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\0A VCCs:\0A  address   VPI VCI   AAL TX PDUs   TX min/max size  RX PDUs   RX min/max size\0A\00", [40 x i8] zeroinitializer }, align 32
@fore200e_proc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.87, ptr @.str.4, i32 2971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fore200e_proc_read\00", [45 x i8] zeroinitializer }, align 32
@fore200e_proc_read._entry_ptr = internal global ptr @fore200e_proc_read._entry, section ".printk_index", align 4
@.str.88 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"  %pK  %03d %05d %1d   %09lu %05d/%05d      %09lu %05d/%05d\0A\00", [35 x i8] zeroinitializer }, align 32
@fore200e_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fore200e: device %s self-test failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fore200e_reset\00", [17 x i8] zeroinitializer }, align 32
@fore200e_reset._entry_ptr = internal global ptr @fore200e_reset._entry, section ".printk_index", align 4
@fore200e_reset._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.4, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fore200e: device %s self-test passed\0A\00", [58 x i8] zeroinitializer }, align 32
@fore200e_reset._entry_ptr.93 = internal global ptr @fore200e_reset._entry.91, section ".printk_index", align 4
@fore200e_io_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"fore200e: I/O polling failed, got status 0x%08x, expected 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fore200e_io_poll\00", [47 x i8] zeroinitializer }, align 32
@fore200e_io_poll._entry_ptr = internal global ptr @fore200e_io_poll._entry, section ".printk_index", align 4
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_ecd.bin2\00", [22 x i8] zeroinitializer }, align 32
@fore200e_load_and_start_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 2402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fore200e: problem loading firmware image %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fore200e_load_and_start_fw\00", [37 x i8] zeroinitializer }, align 32
@fore200e_load_and_start_fw._entry_ptr = internal global ptr @fore200e_load_and_start_fw._entry, section ".printk_index", align 4
@fore200e_load_and_start_fw._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 2415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fore200e: corrupted %s firmware image\0A\00", [57 x i8] zeroinitializer }, align 32
@fore200e_load_and_start_fw._entry_ptr.102 = internal global ptr @fore200e_load_and_start_fw._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0Dgo %x\0D\00", [24 x i8] zeroinitializer }, align 32
@fore200e_load_and_start_fw._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.99, ptr @.str.4, i32 2433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fore200e: device %s firmware didn't start\0A\00", [53 x i8] zeroinitializer }, align 32
@fore200e_load_and_start_fw._entry_ptr.106 = internal global ptr @fore200e_load_and_start_fw._entry.104, section ".printk_index", align 4
@fore200e_load_and_start_fw._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.99, ptr @.str.4, i32 2437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fore200e: device %s firmware started\0A\00", [58 x i8] zeroinitializer }, align 32
@fore200e_load_and_start_fw._entry_ptr.109 = internal global ptr @fore200e_load_and_start_fw._entry.107, section ".printk_index", align 4
@fore200e_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fore200e->rate_mtx\00", [44 x i8] zeroinitializer }, align 32
@fore200e_initialize.__key.111 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&fore200e->q_lock\00", [46 x i8] zeroinitializer }, align 32
@fore200e_rx_buf_nbr = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 192, i32 128], [2 x i32] [i32 192, i32 128]], [16 x i8] zeroinitializer }, align 32
@fore200e_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.4, i32 2325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fore200e: device %s initialization failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fore200e_initialize\00", [44 x i8] zeroinitializer }, align 32
@fore200e_initialize._entry_ptr = internal global ptr @fore200e_initialize._entry, section ".printk_index", align 4
@fore200e_initialize._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.4, i32 2329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fore200e: device %s initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@fore200e_initialize._entry_ptr.117 = internal global ptr @fore200e_initialize._entry.115, section ".printk_index", align 4
@fore200e_rx_buf_size = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 384, i32 4032], [2 x i32] [i32 384, i32 4032]], [16 x i8] zeroinitializer }, align 32
@fore200e_get_esi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.4, i32 1970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fore200e: device %s, rev. %c, S/N: %d, ESI: %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fore200e_get_esi\00", [47 x i8] zeroinitializer }, align 32
@fore200e_get_esi._entry_ptr = internal global ptr @fore200e_get_esi._entry, section ".printk_index", align 4
@fore200e_irq_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.4, i32 1936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"fore200e: unable to reserve IRQ %s for device %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fore200e_irq_request\00", [43 x i8] zeroinitializer }, align 32
@fore200e_irq_request._entry_ptr = internal global ptr @fore200e_irq_request._entry, section ".printk_index", align 4
@fore200e_irq_request._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.4, i32 1941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"fore200e: IRQ %s reserved for device %s\0A\00", [55 x i8] zeroinitializer }, align 32
@fore200e_irq_request._entry_ptr.124 = internal global ptr @fore200e_irq_request._entry.122, section ".printk_index", align 4
@fore200e_rx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.125, ptr @.str.4, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fore200e_rx_irq\00", [16 x i8] zeroinitializer }, align 32
@fore200e_rx_irq._entry_ptr = internal global ptr @fore200e_rx_irq._entry, section ".printk_index", align 4
@fore200e_push_rpd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.126, ptr @.str.4, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fore200e_push_rpd\00", [46 x i8] zeroinitializer }, align 32
@fore200e_push_rpd._entry_ptr = internal global ptr @fore200e_push_rpd._entry, section ".printk_index", align 4
@fore200e_push_rpd._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.126, ptr @.str.4, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fore200e_push_rpd._entry_ptr.128 = internal global ptr @fore200e_push_rpd._entry.127, section ".printk_index", align 4
@fore200e_supply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.4, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"fore200e: no more free bufs in queue %d.%d, but freebuf_count = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fore200e_supply\00", [16 x i8] zeroinitializer }, align 32
@fore200e_supply._entry_ptr = internal global ptr @fore200e_supply._entry, section ".printk_index", align 4
@fore200e_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.4, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"fore200e: removing device %s at 0x%lx, IRQ %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fore200e_shutdown\00", [46 x i8] zeroinitializer }, align 32
@fore200e_shutdown._entry_ptr = internal global ptr @fore200e_shutdown._entry, section ".printk_index", align 4
@fore200e_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.4, i32 2676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"fore200e: FORE Systems 200E-series ATM driver - version 0.3e\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fore200e_module_init\00", [43 x i8] zeroinitializer }, align 32
@fore200e_module_init._entry_ptr = internal global ptr @fore200e_module_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.136 = internal global [7 x i64] [i64 5, i64 32, i64 1074553170, i64 1074553171, i64 1074553172, i64 2147770644, i64 2149867792]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 2048]
@__sancov_gen_cov_switch_values.138 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 5, i64 13]
@__sancov_gen_cov_switch_values.139 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 2048]
@__sancov_gen_cov_switch_values.141 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 5, i64 13]
@__sancov_gen_cov_switch_values.142 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 13]
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c"fore200e_pca_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2664, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2665, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"fore200e_pca_tbl\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2657, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2593, i32 16 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"fore200e_pci_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 611, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2616, i32 29 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2620, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 612, i32 17 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 613, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 521, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 487, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 585, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 326, i32 6 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 253, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 607, i32 26 }
@___asan_gen_.224 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 152, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 153, i32 18 }
@___asan_gen_.230 = private unnamed_addr constant [13 x i8] c"fore200e_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2998, i32 32 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2457, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1313, i32 5 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1314, i32 5 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1323, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1273, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1420, i32 5 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1423, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1424, i32 5 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1459, i32 5 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1704, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 174, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1780, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1553, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 808, i32 6 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 832, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2720, i32 21 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2729, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2745, i32 10 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2757, i32 21 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2762, i32 33 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2764, i32 33 }
@___asan_gen_.368 = private unnamed_addr constant [11 x i8] c"media_name\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2770, i32 21 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2771, i32 6 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2772, i32 6 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2773, i32 6 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2774, i32 6 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2775, i32 6 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2776, i32 6 }
@___asan_gen_.389 = private unnamed_addr constant [9 x i8] c"oc3_mode\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2779, i32 21 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2780, i32 6 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2781, i32 6 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2782, i32 6 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2806, i32 10 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2822, i32 10 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2832, i32 10 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2841, i32 23 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2859, i32 22 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2875, i32 22 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2885, i32 22 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2909, i32 22 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2933, i32 22 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2949, i32 22 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2951, i32 49 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2951, i32 56 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2954, i32 29 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2971, i32 6 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2974, i32 6 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 345, i32 6 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 349, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 276, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2400, i32 18 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2400, i32 52 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2402, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2415, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2429, i32 18 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2433, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2437, i32 5 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2292, i32 5 }
@___asan_gen_.515 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2293, i32 5 }
@___asan_gen_.521 = private unnamed_addr constant [20 x i8] c"fore200e_rx_buf_nbr\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 103, i32 18 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2325, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2329, i32 5 }
@___asan_gen_.539 = private unnamed_addr constant [21 x i8] c"fore200e_rx_buf_size\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 108, i32 18 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1967, i32 5 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1935, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1940, i32 5 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1111, i32 6 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 970, i32 5 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 973, i32 5 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 930, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 361, i32 5 }
@___asan_gen_.599 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.606 = private constant [26 x i8] c"../drivers/atm/fore200e.c\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 2676, i32 2 }
@llvm.compiler.used = appending global [201 x ptr] [ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_description460, ptr @__UNIQUE_ID_file462, ptr @__UNIQUE_ID_firmware464, ptr @__UNIQUE_ID_license463, ptr @__exitcall_fore200e_module_cleanup, ptr @__initcall__kmod_fore_200e__461_2994_fore200e_module_init6, ptr @fore200e_activate_vcin._entry, ptr @fore200e_activate_vcin._entry_ptr, ptr @fore200e_close._entry, ptr @fore200e_close._entry.37, ptr @fore200e_close._entry.40, ptr @fore200e_close._entry.43, ptr @fore200e_close._entry_ptr, ptr @fore200e_close._entry_ptr.38, ptr @fore200e_close._entry_ptr.41, ptr @fore200e_close._entry_ptr.44, ptr @fore200e_get_esi._entry, ptr @fore200e_get_esi._entry_ptr, ptr @fore200e_getstats._entry, ptr @fore200e_getstats._entry_ptr, ptr @fore200e_initialize._entry, ptr @fore200e_initialize._entry.115, ptr @fore200e_initialize._entry_ptr, ptr @fore200e_initialize._entry_ptr.117, ptr @fore200e_io_poll._entry, ptr @fore200e_io_poll._entry_ptr, ptr @fore200e_irq_request._entry, ptr @fore200e_irq_request._entry.122, ptr @fore200e_irq_request._entry_ptr, ptr @fore200e_irq_request._entry_ptr.124, ptr @fore200e_load_and_start_fw._entry, ptr @fore200e_load_and_start_fw._entry.100, ptr @fore200e_load_and_start_fw._entry.104, ptr @fore200e_load_and_start_fw._entry.107, ptr @fore200e_load_and_start_fw._entry_ptr, ptr @fore200e_load_and_start_fw._entry_ptr.102, ptr @fore200e_load_and_start_fw._entry_ptr.106, ptr @fore200e_load_and_start_fw._entry_ptr.109, ptr @fore200e_module_cleanup, ptr @fore200e_module_init._entry, ptr @fore200e_module_init._entry_ptr, ptr @fore200e_open._entry, ptr @fore200e_open._entry.25, ptr @fore200e_open._entry.28, ptr @fore200e_open._entry_ptr, ptr @fore200e_open._entry_ptr.26, ptr @fore200e_open._entry_ptr.30, ptr @fore200e_pca_configure._entry, ptr @fore200e_pca_configure._entry_ptr, ptr @fore200e_pca_detect._entry, ptr @fore200e_pca_detect._entry_ptr, ptr @fore200e_pca_map._entry, ptr @fore200e_pca_map._entry_ptr, ptr @fore200e_pca_prom_read._entry, ptr @fore200e_pca_prom_read._entry_ptr, ptr @fore200e_poll._entry, ptr @fore200e_poll._entry_ptr, ptr @fore200e_proc_read._entry, ptr @fore200e_proc_read._entry_ptr, ptr @fore200e_push_rpd._entry, ptr @fore200e_push_rpd._entry.127, ptr @fore200e_push_rpd._entry_ptr, ptr @fore200e_push_rpd._entry_ptr.128, ptr @fore200e_register._entry, ptr @fore200e_register._entry_ptr, ptr @fore200e_reset._entry, ptr @fore200e_reset._entry.91, ptr @fore200e_reset._entry_ptr, ptr @fore200e_reset._entry_ptr.93, ptr @fore200e_rx_irq._entry, ptr @fore200e_rx_irq._entry_ptr, ptr @fore200e_send._entry, ptr @fore200e_send._entry_ptr, ptr @fore200e_set_oc3._entry, ptr @fore200e_set_oc3._entry_ptr, ptr @fore200e_shutdown._entry, ptr @fore200e_shutdown._entry_ptr, ptr @fore200e_supply._entry, ptr @fore200e_supply._entry_ptr, ptr @fore200e_tx_irq._entry, ptr @fore200e_tx_irq._entry.57, ptr @fore200e_tx_irq._entry_ptr, ptr @fore200e_tx_irq._entry_ptr.58, ptr @fore200e_pca_driver, ptr @.str, ptr @fore200e_pca_tbl, ptr @fore200e_pca_detect.index, ptr @fore200e_pci_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @fore200e_irq_itoa.str, ptr @.str.18, ptr @fore200e_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @fore200e_proc_read.media_name, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @fore200e_proc_read.oc3_mode, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @fore200e_initialize.__key, ptr @.str.110, ptr @fore200e_initialize.__key.111, ptr @.str.112, ptr @fore200e_rx_buf_nbr, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @fore200e_rx_buf_size, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], section "llvm.metadata"
@0 = internal global [155 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_pca_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_pca_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_pca_detect.index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_pci_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_pca_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_pca_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_pca_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_pca_prom_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_irq_itoa.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_open._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_open._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_activate_vcin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_close._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_close._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_close._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_getstats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_set_oc3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_tx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_tx_irq._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_proc_read.media_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_proc_read.oc3_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 215, i32 256, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 279, i32 352, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 273, i32 352, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 169, i32 224, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_proc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_reset._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_io_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_load_and_start_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_load_and_start_fw._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_load_and_start_fw._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_load_and_start_fw._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_initialize.__key.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_rx_buf_nbr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_initialize._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_rx_buf_size to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_get_esi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_irq_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_irq_request._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_rx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_push_rpd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_push_rpd._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_supply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fore200e_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fore200e_module_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @fore200e_pca_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #17
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @fore200e_pca_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_pca_detect(ptr noundef %pci_dev, ptr nocapture noundef readnone %pci_ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end4:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #14
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 20264, i32 noundef 3520, i32 noundef 3) #18
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %if.end4.out_disable_crit_edge, label %if.end7

if.end4.out_disable_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_disable

if.end7:                                          ; preds = %if.end4
  %bus = getelementptr inbounds %struct.fore200e, ptr %call1.i.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fore200e_pci_ops, ptr %bus, align 8
  %dev9 = getelementptr inbounds %struct.fore200e, ptr %call1.i.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev9, align 16
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq10 = getelementptr inbounds %struct.fore200e, ptr %call1.i.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irq10, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %phys_base = getelementptr inbounds %struct.fore200e, ptr %call1.i.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %phys_base, align 8
  %name = getelementptr inbounds %struct.fore200e, ptr %call1.i.i.i, i32 0, i32 5
  %8 = load i32, ptr @fore200e_pca_detect.index, align 4
  %sub = add i32 %8, -1
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %sub)
  tail call void @pci_set_master(ptr noundef %pci_dev) #14
  %9 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phys_base, align 8
  %11 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq10, align 4
  %call.i45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @fore200e_irq_itoa.str, ptr noundef nonnull @.str.18, i32 noundef %12) #14
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %10, ptr noundef nonnull @fore200e_irq_itoa.str) #17
  %13 = load i32, ptr @fore200e_pca_detect.index, align 4
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %13)
  %call20 = tail call fastcc i32 @fore200e_init(ptr noundef nonnull %call1.i.i.i, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @fore200e_shutdown(ptr noundef nonnull %call1.i.i.i)
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #14
  br label %out_disable

if.end23:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %14 = load i32, ptr @fore200e_pca_detect.index, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr @fore200e_pca_detect.index, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  br label %out

out:                                              ; preds = %out_disable, %if.end23, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %err.1, %out_disable ], [ 0, %if.end23 ], [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ]
  ret i32 %err.0

out_disable:                                      ; preds = %if.then22, %if.end4.out_disable_crit_edge
  %err.1 = phi i32 [ %call20, %if.then22 ], [ -12, %if.end4.out_disable_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pci_dev) #14
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fore200e_pca_remove_one(ptr noundef %pci_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @fore200e_shutdown(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #14
  tail call void @pci_disable_device(ptr noundef %pci_dev) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fore200e_init(ptr noundef %fore200e, ptr noundef %parent) unnamed_addr #2 align 64 {
entry:
  %firmware.i = alloca ptr, align 4
  %buf.i = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %proc_name.i = getelementptr inbounds %struct.fore200e_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %proc_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_name.i, align 4
  %call.i = tail call ptr @atm_dev_register(ptr noundef %3, ptr noundef %parent, ptr noundef nonnull @fore200e_ops, i32 noundef -1, ptr noundef null) #14
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %fore200e_register.exit.thread, label %if.end

fore200e_register.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 5
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i) #17
  br label %return

if.end:                                           ; preds = %entry
  %dev_data.i = getelementptr inbounds %struct.atm_dev, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %dev_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fore200e, ptr %dev_data.i, align 8
  %atm_dev5.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 3
  %5 = ptrtoint ptr %atm_dev5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %atm_dev5.i, align 4
  %ci_range.i = getelementptr inbounds %struct.atm_dev, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %ci_range.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ci_range.i, align 2
  %vci_bits.i = getelementptr inbounds %struct.atm_dev, ptr %call.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %vci_bits.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %vci_bits.i, align 1
  %available_cell_rate.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 17
  %8 = ptrtoint ptr %available_cell_rate.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 353207, ptr %available_cell_rate.i, align 4
  %state.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 4
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %state.i, align 4
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 4
  %configure = getelementptr inbounds %struct.fore200e_bus, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %configure, align 4
  %call1 = tail call i32 %13(ptr noundef %fore200e) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end4:                                          ; preds = %if.end
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 4
  %map = getelementptr inbounds %struct.fore200e_bus, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 4
  %call6 = tail call i32 %17(ptr noundef %fore200e) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.return_crit_edge, label %if.end9

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end9:                                          ; preds = %if.end4
  %virt_base.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 9
  %18 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virt_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 1024
  %cp_monitor.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 11
  %20 = ptrtoint ptr %cp_monitor.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %cp_monitor.i, align 4
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 4
  %write.i = getelementptr inbounds %struct.fore200e_bus, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %bstat.i = getelementptr i8, ptr %19, i32 1032
  tail call void %24(i32 noundef -1071792099, ptr noundef %bstat.i) #14
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 4
  %reset.i = getelementptr inbounds %struct.fore200e_bus, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset.i, align 4
  tail call void %28(ptr noundef %fore200e) #14
  %29 = ptrtoint ptr %cp_monitor.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cp_monitor.i, align 4
  %bstat4.i = getelementptr inbounds %struct.cp_monitor, ptr %30, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %.neg27.i = sub i32 -100, %31
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end9
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 4
  %read.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i.i, align 4
  %call1.i.i = tail call i32 %35(ptr noundef %bstat4.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 35658072, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 35658072
  br i1 %cmp.i.i, label %if.end13, label %do.cond.i.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %.neg27.i, %36
  %cmp2.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp2.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %fore200e_reset.exit.thread

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

fore200e_reset.exit.thread:                       ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i, align 4
  %read9.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %read9.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read9.i.i, align 4
  %call10.i.i = tail call i32 %40(ptr noundef %bstat4.i) #14
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %call10.i.i, i32 noundef 35658072) #17
  %name.i67 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 5
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name.i67) #17
  br label %return

if.end13:                                         ; preds = %do.body.i.i
  %name11.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 5
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name11.i) #17
  %41 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %state.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware.i) #14
  %42 = ptrtoint ptr %firmware.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware.i, align 4, !annotation !313
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf.i) #14
  %43 = call ptr @memset(ptr %buf.i, i32 255, i32 48)
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 4
  %proc_name.i71 = getelementptr inbounds %struct.fore200e_bus, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %proc_name.i71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %proc_name.i71, align 4
  %call.i72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.96, ptr noundef %47, ptr noundef nonnull @.str.97) #14
  %dev.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %call2.i = call i32 @request_firmware(ptr noundef nonnull %firmware.i, ptr noundef nonnull %buf.i, ptr noundef %49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i73 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i73, label %fore200e_load_and_start_fw.exit.thread, label %if.end.i76

fore200e_load_and_start_fw.exit.thread:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call4.i74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %53) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #14
  br label %return

if.end.i76:                                       ; preds = %if.end13
  %54 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %firmware.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1718579813, i32 %59)
  %cmp9.not.i = icmp eq i32 %59, 1718579813
  br i1 %cmp9.not.i, label %for.cond.preheader.i, label %do.end13.i

for.cond.preheader.i:                             ; preds = %if.end.i76
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %tobool.not72.i = icmp ult i32 %61, 4
  br i1 %tobool.not72.i, label %for.cond.preheader.i.do.end23.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.do.end23.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %div66.i = lshr i32 %61, 2
  %62 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %virt_base.i, align 4
  %load_offset.i = getelementptr inbounds %struct.fw_header, ptr %57, i32 0, i32 2
  %64 = ptrtoint ptr %load_offset.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %load_offset.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #14
  %add.ptr.i78 = getelementptr i8, ptr %63, i32 %66
  br label %for.body.i

do.end13.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %70) #17
  br label %fore200e_load_and_start_fw.exit.thread190

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %fw_data.075.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %57, %for.body.preheader.i ]
  %fw_size.074.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %div66.i, %for.body.preheader.i ]
  %load_addr.073.i = phi ptr [ %incdec.ptr20.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i78, %for.body.preheader.i ]
  %dec.i = add nsw i32 %fw_size.074.i, -1
  %71 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus.i, align 4
  %write.i79 = getelementptr inbounds %struct.fore200e_bus, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %write.i79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write.i79, align 4
  %75 = ptrtoint ptr %fw_data.075.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fw_data.075.i, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76) #14
  call void %74(i32 noundef %77, ptr noundef %load_addr.073.i) #14
  %incdec.ptr.i = getelementptr i32, ptr %fw_data.075.i, i32 1
  %incdec.ptr20.i = getelementptr i32, ptr %load_addr.073.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i.do.end23.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.do.end23.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23.i

do.end23.i:                                       ; preds = %for.body.i.do.end23.i_crit_edge, %for.cond.preheader.i.do.end23.i_crit_edge
  %start_offset.i = getelementptr inbounds %struct.fw_header, ptr %57, i32 0, i32 3
  %78 = ptrtoint ptr %start_offset.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %start_offset.i, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #14
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.103, i32 noundef %80) #14
  %81 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not37.i.i = icmp eq i8 %82, 0
  br i1 %tobool.not37.i.i, label %do.end23.i.while.cond4.i.i.preheader_crit_edge, label %do.end23.i.while.cond1.preheader.i.i_crit_edge

do.end23.i.while.cond1.preheader.i.i_crit_edge:   ; preds = %do.end23.i
  br label %while.cond1.preheader.i.i

do.end23.i.while.cond4.i.i.preheader_crit_edge:   ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond4.i.i.preheader

while.cond1.preheader.i.i:                        ; preds = %while.end.i.i.while.cond1.preheader.i.i_crit_edge, %do.end23.i.while.cond1.preheader.i.i_crit_edge
  %str.addr.038.i.i = phi ptr [ %incdec.ptr.i.i, %while.end.i.i.while.cond1.preheader.i.i_crit_edge ], [ %buf.i, %do.end23.i.while.cond1.preheader.i.i_crit_edge ]
  br label %while.cond1.i.i

while.cond1.i.i:                                  ; preds = %fore200e_monitor_getc.exit.i.i, %while.cond1.preheader.i.i
  %83 = ptrtoint ptr %cp_monitor.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cp_monitor.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i = sub i32 -5, %85
  %recv.i.i.i = getelementptr inbounds %struct.soft_uart, ptr %84, i32 0, i32 1
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %while.cond1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = add i32 %add.neg.i.i.i, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %while.end.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %87 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus.i, align 4
  %read.i.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read.i.i.i, align 4
  %call1.i.i.i = call i32 %90(ptr noundef %recv.i.i.i) #14
  %and.i.i.i = and i32 %call1.i.i.i, 16777216
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %fore200e_monitor_getc.exit.i.i

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i.i

fore200e_monitor_getc.exit.i.i:                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bus.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write.i.i.i, align 4
  call void %94(i32 noundef 0, ptr noundef %recv.i.i.i) #14
  br label %while.cond1.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %str.addr.038.i.i, i32 1
  %95 = ptrtoint ptr %str.addr.038.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %str.addr.038.i.i, align 1
  %97 = ptrtoint ptr %cp_monitor.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cp_monitor.i, align 4
  %99 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus.i, align 4
  %write.i14.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %write.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write.i14.i.i, align 4
  %conv.i.i.i = zext i8 %96 to i32
  %or.i.i.i = or i32 %conv.i.i.i, 16777216
  call void %102(i32 noundef %or.i.i.i, ptr noundef %98) #14
  %103 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %104, 0
  br i1 %tobool.not.i.i, label %while.end.i.i.while.cond4.i.i.preheader_crit_edge, label %while.end.i.i.while.cond1.preheader.i.i_crit_edge

while.end.i.i.while.cond1.preheader.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond1.preheader.i.i

while.end.i.i.while.cond4.i.i.preheader_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond4.i.i.preheader

while.cond4.i.i.preheader:                        ; preds = %while.end.i.i.while.cond4.i.i.preheader_crit_edge, %do.end23.i.while.cond4.i.i.preheader_crit_edge
  br label %while.cond4.i.i

while.cond4.i.i:                                  ; preds = %fore200e_monitor_getc.exit31.i.i, %while.cond4.i.i.preheader
  %105 = ptrtoint ptr %cp_monitor.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cp_monitor.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i16.i.i = sub i32 -5, %107
  %recv.i18.i.i = getelementptr inbounds %struct.soft_uart, ptr %106, i32 0, i32 1
  br label %while.cond.i21.i.i

while.cond.i21.i.i:                               ; preds = %while.body.i26.i.i.while.cond.i21.i.i_crit_edge, %while.cond4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %sub.i19.i.i = add i32 %add.neg.i16.i.i, %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i19.i.i)
  %cmp.i20.i.i = icmp slt i32 %sub.i19.i.i, 0
  br i1 %cmp.i20.i.i, label %while.body.i26.i.i, label %fore200e_monitor_puts.exit.i

while.body.i26.i.i:                               ; preds = %while.cond.i21.i.i
  %109 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bus.i, align 4
  %read.i22.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %read.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read.i22.i.i, align 4
  %call1.i23.i.i = call i32 %112(ptr noundef %recv.i18.i.i) #14
  %and.i24.i.i = and i32 %call1.i23.i.i, 16777216
  %tobool.not.i25.i.i = icmp eq i32 %and.i24.i.i, 0
  br i1 %tobool.not.i25.i.i, label %while.body.i26.i.i.while.cond.i21.i.i_crit_edge, label %fore200e_monitor_getc.exit31.i.i

while.body.i26.i.i.while.cond.i21.i.i_crit_edge:  ; preds = %while.body.i26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i21.i.i

fore200e_monitor_getc.exit31.i.i:                 ; preds = %while.body.i26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus.i, align 4
  %write.i27.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %write.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write.i27.i.i, align 4
  call void %116(i32 noundef 0, ptr noundef %recv.i18.i.i) #14
  br label %while.cond4.i.i

fore200e_monitor_puts.exit.i:                     ; preds = %while.cond.i21.i.i
  %117 = ptrtoint ptr %cp_monitor.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cp_monitor.i, align 4
  %bstat.i80 = getelementptr inbounds %struct.cp_monitor, ptr %118, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %119 = load volatile i32, ptr @jiffies, align 128
  %.neg71.i = sub i32 -100, %119
  br label %do.body.i.i84

do.body.i.i84:                                    ; preds = %do.cond.i.i87.do.body.i.i84_crit_edge, %fore200e_monitor_puts.exit.i
  %120 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bus.i, align 4
  %read.i.i81 = getelementptr inbounds %struct.fore200e_bus, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %read.i.i81 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read.i.i81, align 4
  %call1.i.i82 = call i32 %123(ptr noundef %bstat.i80) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -837681427, i32 %call1.i.i82)
  %cmp.i.i83 = icmp eq i32 %call1.i.i82, -837681427
  br i1 %cmp.i.i83, label %do.end39.i, label %do.cond.i.i87

do.cond.i.i87:                                    ; preds = %do.body.i.i84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %124 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i85 = add i32 %.neg71.i, %124
  %cmp2.i.i86 = icmp slt i32 %sub.i.i85, 0
  br i1 %cmp2.i.i86, label %do.cond.i.i87.do.body.i.i84_crit_edge, label %fore200e_load_and_start_fw.exit

do.cond.i.i87.do.body.i.i84_crit_edge:            ; preds = %do.cond.i.i87
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i84

do.end39.i:                                       ; preds = %do.body.i.i84
  call void @__sanitizer_cov_trace_pc() #16
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name11.i) #17
  %125 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 5, ptr %state.i, align 4
  br label %fore200e_load_and_start_fw.exit.thread190

fore200e_load_and_start_fw.exit.thread190:        ; preds = %do.end39.i, %do.end13.i
  %126 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %127) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #14
  br label %if.end17

fore200e_load_and_start_fw.exit:                  ; preds = %do.cond.i.i87
  call void @__sanitizer_cov_trace_pc() #16
  %128 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus.i, align 4
  %read9.i.i88 = getelementptr inbounds %struct.fore200e_bus, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %read9.i.i88 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read9.i.i88, align 4
  %call10.i.i89 = call i32 %131(ptr noundef %bstat.i80) #14
  %call11.i.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %call10.i.i89, i32 noundef -837681427) #17
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name11.i) #17
  %132 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %133) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #14
  br label %if.end17

if.end17:                                         ; preds = %fore200e_load_and_start_fw.exit, %fore200e_load_and_start_fw.exit.thread190
  %rate_mtx.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 20
  call void @__mutex_init(ptr noundef %rate_mtx.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @fore200e_initialize.__key) #14
  %q_lock.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 21
  call void @__raw_spin_lock_init(ptr noundef %q_lock.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @fore200e_initialize.__key.111, i16 noundef signext 3) #14
  %134 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %virt_base.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %135, i32 19776
  %cp_queues.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 12
  %136 = ptrtoint ptr %cp_queues.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %add.ptr.i95, ptr %cp_queues.i, align 4
  %137 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bus.i, align 4
  %write.i97 = getelementptr inbounds %struct.fore200e_bus, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %write.i97 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write.i97, align 4
  %imask.i = getelementptr i8, ptr %135, i32 19804
  call void %140(i32 noundef 1, ptr noundef %imask.i) #14
  %141 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bus.i, align 4
  %irq_enable.i = getelementptr inbounds %struct.fore200e_bus, ptr %142, i32 0, i32 12
  %143 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %irq_enable.i, align 4
  %tobool.not.i98 = icmp eq ptr %144, null
  br i1 %tobool.not.i98, label %if.end17.if.end.i99_crit_edge, label %if.then.i

if.end17.if.end.i99_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i99

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  call void %144(ptr noundef %fore200e) #14
  br label %if.end.i99

if.end.i99:                                       ; preds = %if.then.i, %if.end17.if.end.i99_crit_edge
  %145 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bus.i, align 4
  %write11.i = getelementptr inbounds %struct.fore200e_bus, ptr %146, i32 0, i32 6
  %147 = ptrtoint ptr %write11.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write11.i, align 4
  %num_connect.i = getelementptr i8, ptr %135, i32 19852
  call void %148(i32 noundef 1024, ptr noundef %num_connect.i) #14
  %149 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bus.i, align 4
  %write13.i = getelementptr inbounds %struct.fore200e_bus, ptr %150, i32 0, i32 6
  %151 = ptrtoint ptr %write13.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write13.i, align 4
  %cmd_queue_len.i = getelementptr i8, ptr %135, i32 19856
  call void %152(i32 noundef 16, ptr noundef %cmd_queue_len.i) #14
  %153 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bus.i, align 4
  %write16.i = getelementptr inbounds %struct.fore200e_bus, ptr %154, i32 0, i32 6
  %155 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write16.i, align 4
  %rx_queue_len.i = getelementptr i8, ptr %135, i32 19864
  call void %156(i32 noundef 64, ptr noundef %rx_queue_len.i) #14
  %157 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bus.i, align 4
  %write19.i = getelementptr inbounds %struct.fore200e_bus, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %write19.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write19.i, align 4
  %tx_queue_len.i = getelementptr i8, ptr %135, i32 19860
  call void %160(i32 noundef 256, ptr noundef %tx_queue_len.i) #14
  %161 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %bus.i, align 4
  %write22.i = getelementptr inbounds %struct.fore200e_bus, ptr %162, i32 0, i32 6
  %163 = ptrtoint ptr %write22.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %write22.i, align 4
  %rsd_extension.i = getelementptr i8, ptr %135, i32 19868
  call void %164(i32 noundef 16, ptr noundef %rsd_extension.i) #14
  %165 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bus.i, align 4
  %write25.i = getelementptr inbounds %struct.fore200e_bus, ptr %166, i32 0, i32 6
  %167 = ptrtoint ptr %write25.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write25.i, align 4
  %tsd_extension.i = getelementptr i8, ptr %135, i32 19872
  call void %168(i32 noundef 0, ptr noundef %tsd_extension.i) #14
  %169 = ptrtoint ptr %cp_queues.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cp_queues.i, align 4
  %arrayidx2.i.i = getelementptr %struct.cp_queues, ptr %170, i32 0, i32 13, i32 11, i32 0, i32 0
  %171 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bus.i, align 4
  %write.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %172, i32 0, i32 6
  %173 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write.i.i, align 4
  call void %174(i32 noundef 32, ptr noundef %arrayidx2.i.i) #14
  %175 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bus.i, align 4
  %write5.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %176, i32 0, i32 6
  %177 = ptrtoint ptr %write5.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write5.i.i, align 4
  %buffer_size.i.i = getelementptr %struct.cp_queues, ptr %170, i32 0, i32 13, i32 11, i32 0, i32 0, i32 1
  call void %178(i32 noundef 384, ptr noundef %buffer_size.i.i) #14
  %179 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bus.i, align 4
  %write9.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %180, i32 0, i32 6
  %181 = ptrtoint ptr %write9.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write9.i.i, align 4
  %pool_size10.i.i = getelementptr %struct.cp_queues, ptr %170, i32 0, i32 13, i32 11, i32 0, i32 0, i32 2
  call void %182(i32 noundef 192, ptr noundef %pool_size10.i.i) #14
  %183 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bus.i, align 4
  %write12.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %184, i32 0, i32 6
  %185 = ptrtoint ptr %write12.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write12.i.i, align 4
  %supply_blksize13.i.i = getelementptr %struct.cp_queues, ptr %170, i32 0, i32 13, i32 11, i32 0, i32 0, i32 3
  call void %186(i32 noundef 32, ptr noundef %supply_blksize13.i.i) #14
  %187 = ptrtoint ptr %cp_queues.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cp_queues.i, align 4
  %arrayidx2.i.1.i = getelementptr %struct.cp_queues, ptr %188, i32 0, i32 13, i32 11, i32 0, i32 1
  %189 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %bus.i, align 4
  %write.i.1.i = getelementptr inbounds %struct.fore200e_bus, ptr %190, i32 0, i32 6
  %191 = ptrtoint ptr %write.i.1.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %write.i.1.i, align 4
  call void %192(i32 noundef 32, ptr noundef %arrayidx2.i.1.i) #14
  %193 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %bus.i, align 4
  %write5.i.1.i = getelementptr inbounds %struct.fore200e_bus, ptr %194, i32 0, i32 6
  %195 = ptrtoint ptr %write5.i.1.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write5.i.1.i, align 4
  %buffer_size.i.1.i = getelementptr %struct.cp_queues, ptr %188, i32 0, i32 13, i32 11, i32 0, i32 1, i32 1
  call void %196(i32 noundef 4032, ptr noundef %buffer_size.i.1.i) #14
  %197 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %bus.i, align 4
  %write9.i.1.i = getelementptr inbounds %struct.fore200e_bus, ptr %198, i32 0, i32 6
  %199 = ptrtoint ptr %write9.i.1.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %write9.i.1.i, align 4
  %pool_size10.i.1.i = getelementptr %struct.cp_queues, ptr %188, i32 0, i32 13, i32 11, i32 0, i32 1, i32 2
  call void %200(i32 noundef 128, ptr noundef %pool_size10.i.1.i) #14
  %201 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bus.i, align 4
  %write12.i.1.i = getelementptr inbounds %struct.fore200e_bus, ptr %202, i32 0, i32 6
  %203 = ptrtoint ptr %write12.i.1.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write12.i.1.i, align 4
  %supply_blksize13.i.1.i = getelementptr %struct.cp_queues, ptr %188, i32 0, i32 13, i32 11, i32 0, i32 1, i32 3
  call void %204(i32 noundef 32, ptr noundef %supply_blksize13.i.1.i) #14
  %205 = ptrtoint ptr %cp_queues.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cp_queues.i, align 4
  %arrayidx2.i.1102.i = getelementptr %struct.cp_queues, ptr %206, i32 0, i32 13, i32 11, i32 1, i32 0
  %207 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %bus.i, align 4
  %write.i.1103.i = getelementptr inbounds %struct.fore200e_bus, ptr %208, i32 0, i32 6
  %209 = ptrtoint ptr %write.i.1103.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %write.i.1103.i, align 4
  call void %210(i32 noundef 32, ptr noundef %arrayidx2.i.1102.i) #14
  %211 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bus.i, align 4
  %write5.i.1104.i = getelementptr inbounds %struct.fore200e_bus, ptr %212, i32 0, i32 6
  %213 = ptrtoint ptr %write5.i.1104.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %write5.i.1104.i, align 4
  %buffer_size.i.1106.i = getelementptr %struct.cp_queues, ptr %206, i32 0, i32 13, i32 11, i32 1, i32 0, i32 1
  call void %214(i32 noundef 384, ptr noundef %buffer_size.i.1106.i) #14
  %215 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %bus.i, align 4
  %write9.i.1107.i = getelementptr inbounds %struct.fore200e_bus, ptr %216, i32 0, i32 6
  %217 = ptrtoint ptr %write9.i.1107.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write9.i.1107.i, align 4
  %pool_size10.i.1108.i = getelementptr %struct.cp_queues, ptr %206, i32 0, i32 13, i32 11, i32 1, i32 0, i32 2
  call void %218(i32 noundef 192, ptr noundef %pool_size10.i.1108.i) #14
  %219 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %bus.i, align 4
  %write12.i.1109.i = getelementptr inbounds %struct.fore200e_bus, ptr %220, i32 0, i32 6
  %221 = ptrtoint ptr %write12.i.1109.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %write12.i.1109.i, align 4
  %supply_blksize13.i.1110.i = getelementptr %struct.cp_queues, ptr %206, i32 0, i32 13, i32 11, i32 1, i32 0, i32 3
  call void %222(i32 noundef 32, ptr noundef %supply_blksize13.i.1110.i) #14
  %223 = ptrtoint ptr %cp_queues.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cp_queues.i, align 4
  %arrayidx2.i.1.1.i = getelementptr %struct.cp_queues, ptr %224, i32 0, i32 13, i32 11, i32 1, i32 1
  %225 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %bus.i, align 4
  %write.i.1.1.i = getelementptr inbounds %struct.fore200e_bus, ptr %226, i32 0, i32 6
  %227 = ptrtoint ptr %write.i.1.1.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %write.i.1.1.i, align 4
  call void %228(i32 noundef 32, ptr noundef %arrayidx2.i.1.1.i) #14
  %229 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %bus.i, align 4
  %write5.i.1.1.i = getelementptr inbounds %struct.fore200e_bus, ptr %230, i32 0, i32 6
  %231 = ptrtoint ptr %write5.i.1.1.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %write5.i.1.1.i, align 4
  %buffer_size.i.1.1.i = getelementptr %struct.cp_queues, ptr %224, i32 0, i32 13, i32 11, i32 1, i32 1, i32 1
  call void %232(i32 noundef 4032, ptr noundef %buffer_size.i.1.1.i) #14
  %233 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %bus.i, align 4
  %write9.i.1.1.i = getelementptr inbounds %struct.fore200e_bus, ptr %234, i32 0, i32 6
  %235 = ptrtoint ptr %write9.i.1.1.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %write9.i.1.1.i, align 4
  %pool_size10.i.1.1.i = getelementptr %struct.cp_queues, ptr %224, i32 0, i32 13, i32 11, i32 1, i32 1, i32 2
  call void %236(i32 noundef 128, ptr noundef %pool_size10.i.1.1.i) #14
  %237 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %bus.i, align 4
  %write12.i.1.1.i = getelementptr inbounds %struct.fore200e_bus, ptr %238, i32 0, i32 6
  %239 = ptrtoint ptr %write12.i.1.1.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write12.i.1.1.i, align 4
  %supply_blksize13.i.1.1.i = getelementptr %struct.cp_queues, ptr %224, i32 0, i32 13, i32 11, i32 1, i32 1, i32 3
  call void %240(i32 noundef 32, ptr noundef %supply_blksize13.i.1.1.i) #14
  %init.i = getelementptr i8, ptr %135, i32 19840
  %241 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %bus.i, align 4
  %write35.i = getelementptr inbounds %struct.fore200e_bus, ptr %242, i32 0, i32 6
  %243 = ptrtoint ptr %write35.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write35.i, align 4
  %status.i = getelementptr i8, ptr %135, i32 19844
  call void %244(i32 noundef 1, ptr noundef %status.i) #14
  %245 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %bus.i, align 4
  %write38.i = getelementptr inbounds %struct.fore200e_bus, ptr %246, i32 0, i32 6
  %247 = ptrtoint ptr %write38.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %write38.i, align 4
  call void %248(i32 noundef 1, ptr noundef %init.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %249 = load volatile i32, ptr @jiffies, align 128
  %.neg98.i = sub i32 -300, %249
  br label %do.body.i.i103

do.body.i.i103:                                   ; preds = %do.cond.i.i106.do.body.i.i103_crit_edge, %if.end.i99
  %250 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %bus.i, align 4
  %read.i.i100 = getelementptr inbounds %struct.fore200e_bus, ptr %251, i32 0, i32 5
  %252 = ptrtoint ptr %read.i.i100 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %read.i.i100, align 4
  %call1.i.i101 = call i32 %253(ptr noundef %status.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i.i101)
  %cmp.i.i102 = icmp eq i32 %call1.i.i101, 2
  br i1 %cmp.i.i102, label %if.end21, label %do.cond.i.i106

do.cond.i.i106:                                   ; preds = %do.body.i.i103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %254 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i104 = add i32 %.neg98.i, %254
  %cmp2.i.i105 = icmp slt i32 %sub.i.i104, 0
  br i1 %cmp2.i.i105, label %do.cond.i.i106.do.body.i.i103_crit_edge, label %fore200e_initialize.exit.thread

do.cond.i.i106.do.body.i.i103_crit_edge:          ; preds = %do.cond.i.i106
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i103

fore200e_initialize.exit.thread:                  ; preds = %do.cond.i.i106
  call void @__sanitizer_cov_trace_pc() #16
  %255 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %bus.i, align 4
  %read9.i.i107 = getelementptr inbounds %struct.fore200e_bus, ptr %256, i32 0, i32 5
  %257 = ptrtoint ptr %read9.i.i107 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %read9.i.i107, align 4
  %call10.i.i108 = call i32 %258(ptr noundef %status.i) #14
  %call11.i.i109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %call10.i.i108, i32 noundef 2) #17
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name11.i) #17
  br label %return

if.end21:                                         ; preds = %do.body.i.i103
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name11.i) #17
  %259 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 6, ptr %state.i, align 4
  %host_cmdq.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13
  %status.i113 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 2
  %alloc_size.i.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 2, i32 4
  %260 = ptrtoint ptr %alloc_size.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 64, ptr %alloc_size.i.i, align 4
  %261 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev.i, align 4
  %dma_addr.i.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 2, i32 2
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %262, i32 noundef 64, ptr noundef %dma_addr.i.i, i32 noundef 3264, i32 noundef 0) #14
  %263 = ptrtoint ptr %status.i113 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call.i.i.i, ptr %status.i113, align 4
  %tobool.not.i.i115 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i115, label %if.end21.return_crit_edge, label %if.end.i120

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i120:                                      ; preds = %if.end21
  %align_addr.i.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 2, i32 1
  %264 = ptrtoint ptr %align_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %call.i.i.i, ptr %align_addr.i.i, align 4
  %265 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %virt_base.i, align 4
  %267 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %bus.i, align 4
  %read.i = getelementptr inbounds %struct.fore200e_bus, ptr %268, i32 0, i32 5
  %269 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read.i, align 4
  %271 = ptrtoint ptr %cp_queues.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cp_queues.i, align 4
  %call2.i118 = call i32 %270(ptr noundef %272) #14
  %add.ptr.i119 = getelementptr i8, ptr %266, i32 %call2.i118
  br label %for.body.i122

for.body.i122:                                    ; preds = %for.body.i122.for.body.i122_crit_edge, %if.end.i120
  %i.043.i = phi i32 [ 0, %if.end.i120 ], [ %inc.i, %for.body.i122.for.body.i122_crit_edge ]
  %273 = ptrtoint ptr %align_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %align_addr.i.i, align 4
  %arrayidx.i = getelementptr i32, ptr %274, i32 %i.043.i
  %arrayidx5.i = getelementptr [16 x %struct.host_cmdq_entry], ptr %host_cmdq.i, i32 0, i32 %i.043.i
  %status6.i = getelementptr [16 x %struct.host_cmdq_entry], ptr %host_cmdq.i, i32 0, i32 %i.043.i, i32 1
  %275 = ptrtoint ptr %status6.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %arrayidx.i, ptr %status6.i, align 4
  %arrayidx7.i = getelementptr %struct.cp_cmdq_entry, ptr %add.ptr.i119, i32 %i.043.i
  %276 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %arrayidx7.i, ptr %arrayidx5.i, align 4
  %277 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 4, ptr %arrayidx.i, align 4
  %278 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %bus.i, align 4
  %write.i121 = getelementptr inbounds %struct.fore200e_bus, ptr %279, i32 0, i32 6
  %280 = ptrtoint ptr %write.i121 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %write.i121, align 4
  %282 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %dma_addr.i.i, align 4
  %mul.i = shl i32 %i.043.i, 2
  %add.i = add i32 %283, %mul.i
  %status_haddr.i = getelementptr inbounds %struct.cp_cmdq_entry, ptr %arrayidx7.i, i32 0, i32 1
  call void %281(i32 noundef %add.i, ptr noundef %status_haddr.i) #14
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end25, label %for.body.i122.for.body.i122_crit_edge

for.body.i122.for.body.i122_crit_edge:            ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i122

if.end25:                                         ; preds = %for.body.i122
  %head.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 1
  %284 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %head.i, align 4
  %285 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 7, ptr %state.i, align 4
  %host_txq.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14
  %status.i125 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 4
  %alloc_size.i.i127 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 4, i32 4
  %286 = ptrtoint ptr %alloc_size.i.i127 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 1024, ptr %alloc_size.i.i127, align 4
  %287 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %dev.i, align 4
  %dma_addr.i.i129 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 4, i32 2
  %call.i.i.i130 = call ptr @dma_alloc_attrs(ptr noundef %288, i32 noundef 1024, ptr noundef %dma_addr.i.i129, i32 noundef 3264, i32 noundef 0) #14
  %289 = ptrtoint ptr %status.i125 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %call.i.i.i130, ptr %status.i125, align 4
  %tobool.not.i.i131 = icmp eq ptr %call.i.i.i130, null
  br i1 %tobool.not.i.i131, label %if.end25.return_crit_edge, label %if.end.i133

if.end25.return_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i133:                                      ; preds = %if.end25
  %align_addr.i.i132 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 4, i32 1
  %290 = ptrtoint ptr %align_addr.i.i132 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %call.i.i.i130, ptr %align_addr.i.i132, align 4
  %tpd.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 3
  %alloc_size.i73.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 3, i32 4
  %291 = ptrtoint ptr %alloc_size.i73.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 8192, ptr %alloc_size.i73.i, align 4
  %292 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev.i, align 4
  %dma_addr.i75.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 3, i32 2
  %call.i.i76.i = call ptr @dma_alloc_attrs(ptr noundef %293, i32 noundef 8192, ptr noundef %dma_addr.i75.i, i32 noundef 3264, i32 noundef 0) #14
  %294 = ptrtoint ptr %tpd.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %call.i.i76.i, ptr %tpd.i, align 4
  %tobool.not.i77.i = icmp eq ptr %call.i.i76.i, null
  br i1 %tobool.not.i77.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #16
  %295 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %dev.i, align 4
  %297 = ptrtoint ptr %alloc_size.i.i127 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %alloc_size.i.i127, align 4
  %299 = ptrtoint ptr %status.i125 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %status.i125, align 4
  %301 = ptrtoint ptr %dma_addr.i.i129 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %dma_addr.i.i129, align 4
  call void @dma_free_attrs(ptr noundef %296, i32 noundef %298, ptr noundef %300, i32 noundef %302, i32 noundef 0) #14
  br label %return

if.end6.i:                                        ; preds = %if.end.i133
  %align_addr.i78.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 3, i32 1
  %303 = ptrtoint ptr %align_addr.i78.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call.i.i76.i, ptr %align_addr.i78.i, align 4
  %304 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %virt_base.i, align 4
  %306 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %bus.i, align 4
  %read.i135 = getelementptr inbounds %struct.fore200e_bus, ptr %307, i32 0, i32 5
  %308 = ptrtoint ptr %read.i135 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %read.i135, align 4
  %310 = ptrtoint ptr %cp_queues.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %cp_queues.i, align 4
  %cp_txq.i = getelementptr inbounds %struct.cp_queues, ptr %311, i32 0, i32 1
  %call8.i = call i32 %309(ptr noundef %cp_txq.i) #14
  %add.ptr.i137 = getelementptr i8, ptr %305, i32 %call8.i
  br label %for.body.i145

for.body.i145:                                    ; preds = %for.body.i145.for.body.i145_crit_edge, %if.end6.i
  %i.089.i = phi i32 [ 0, %if.end6.i ], [ %inc.i143, %for.body.i145.for.body.i145_crit_edge ]
  %312 = ptrtoint ptr %align_addr.i.i132 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %align_addr.i.i132, align 4
  %arrayidx.i138 = getelementptr i32, ptr %313, i32 %i.089.i
  %arrayidx11.i = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq.i, i32 0, i32 %i.089.i
  %status12.i = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq.i, i32 0, i32 %i.089.i, i32 1
  %314 = ptrtoint ptr %status12.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %arrayidx.i138, ptr %status12.i, align 4
  %315 = ptrtoint ptr %align_addr.i78.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %align_addr.i78.i, align 4
  %arrayidx15.i = getelementptr %struct.tpd, ptr %316, i32 %i.089.i
  %tpd18.i = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq.i, i32 0, i32 %i.089.i, i32 2
  %317 = ptrtoint ptr %tpd18.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %arrayidx15.i, ptr %tpd18.i, align 4
  %318 = ptrtoint ptr %dma_addr.i75.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %dma_addr.i75.i, align 4
  %mul.i139 = shl i32 %i.089.i, 5
  %add.i140 = add i32 %319, %mul.i139
  %tpd_dma.i = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq.i, i32 0, i32 %i.089.i, i32 3
  %320 = ptrtoint ptr %tpd_dma.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %add.i140, ptr %tpd_dma.i, align 4
  %arrayidx22.i = getelementptr %struct.cp_txq_entry, ptr %add.ptr.i137, i32 %i.089.i
  %321 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %arrayidx22.i, ptr %arrayidx11.i, align 4
  %322 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 4, ptr %arrayidx.i138, align 4
  %323 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %bus.i, align 4
  %write.i141 = getelementptr inbounds %struct.fore200e_bus, ptr %324, i32 0, i32 6
  %325 = ptrtoint ptr %write.i141 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %write.i141, align 4
  %327 = ptrtoint ptr %dma_addr.i.i129 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %dma_addr.i.i129, align 4
  %mul32.i = shl i32 %i.089.i, 2
  %add33.i = add i32 %328, %mul32.i
  %status_haddr.i142 = getelementptr inbounds %struct.cp_txq_entry, ptr %arrayidx22.i, i32 0, i32 1
  call void %326(i32 noundef %add33.i, ptr noundef %status_haddr.i142) #14
  %inc.i143 = add nuw nsw i32 %i.089.i, 1
  %exitcond.not.i144 = icmp eq i32 %inc.i143, 256
  br i1 %exitcond.not.i144, label %if.end29, label %for.body.i145.for.body.i145_crit_edge

for.body.i145.for.body.i145_crit_edge:            ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i145

if.end29:                                         ; preds = %for.body.i145
  %head.i146 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 1
  %329 = ptrtoint ptr %head.i146 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %head.i146, align 4
  %tail.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 2
  %330 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %tail.i, align 4
  %331 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 8, ptr %state.i, align 4
  %host_rxq.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15
  %status.i150 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 3
  %alloc_size.i.i152 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 3, i32 4
  %332 = ptrtoint ptr %alloc_size.i.i152 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 256, ptr %alloc_size.i.i152, align 4
  %333 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %dev.i, align 4
  %dma_addr.i.i154 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 3, i32 2
  %call.i.i.i155 = call ptr @dma_alloc_attrs(ptr noundef %334, i32 noundef 256, ptr noundef %dma_addr.i.i154, i32 noundef 3264, i32 noundef 0) #14
  %335 = ptrtoint ptr %status.i150 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %call.i.i.i155, ptr %status.i150, align 4
  %tobool.not.i.i156 = icmp eq ptr %call.i.i.i155, null
  br i1 %tobool.not.i.i156, label %if.end29.return_crit_edge, label %if.end.i158

if.end29.return_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i158:                                      ; preds = %if.end29
  %align_addr.i.i157 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 3, i32 1
  %336 = ptrtoint ptr %align_addr.i.i157 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %call.i.i.i155, ptr %align_addr.i.i157, align 4
  %rpd.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 2
  %alloc_size.i84.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 2, i32 4
  %337 = ptrtoint ptr %alloc_size.i84.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 10240, ptr %alloc_size.i84.i, align 4
  %338 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dev.i, align 4
  %dma_addr.i86.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 2, i32 2
  %call.i.i87.i = call ptr @dma_alloc_attrs(ptr noundef %339, i32 noundef 10240, ptr noundef %dma_addr.i86.i, i32 noundef 3264, i32 noundef 0) #14
  %340 = ptrtoint ptr %rpd.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %call.i.i87.i, ptr %rpd.i, align 4
  %tobool.not.i88.i = icmp eq ptr %call.i.i87.i, null
  br i1 %tobool.not.i88.i, label %if.then4.i159, label %if.end6.i165

if.then4.i159:                                    ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #16
  %341 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %dev.i, align 4
  %343 = ptrtoint ptr %alloc_size.i.i152 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %alloc_size.i.i152, align 4
  %345 = ptrtoint ptr %status.i150 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %status.i150, align 4
  %347 = ptrtoint ptr %dma_addr.i.i154 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %dma_addr.i.i154, align 4
  call void @dma_free_attrs(ptr noundef %342, i32 noundef %344, ptr noundef %346, i32 noundef %348, i32 noundef 0) #14
  br label %return

if.end6.i165:                                     ; preds = %if.end.i158
  %align_addr.i89.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 2, i32 1
  %349 = ptrtoint ptr %align_addr.i89.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %call.i.i87.i, ptr %align_addr.i89.i, align 4
  %350 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %virt_base.i, align 4
  %352 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %bus.i, align 4
  %read.i161 = getelementptr inbounds %struct.fore200e_bus, ptr %353, i32 0, i32 5
  %354 = ptrtoint ptr %read.i161 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %read.i161, align 4
  %356 = ptrtoint ptr %cp_queues.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %cp_queues.i, align 4
  %cp_rxq.i = getelementptr inbounds %struct.cp_queues, ptr %357, i32 0, i32 2
  %call8.i163 = call i32 %355(ptr noundef %cp_rxq.i) #14
  %add.ptr.i164 = getelementptr i8, ptr %351, i32 %call8.i163
  br label %for.body.i179

for.body.i179:                                    ; preds = %for.body.i179.for.body.i179_crit_edge, %if.end6.i165
  %i.0100.i = phi i32 [ 0, %if.end6.i165 ], [ %inc.i177, %for.body.i179.for.body.i179_crit_edge ]
  %358 = ptrtoint ptr %align_addr.i.i157 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %align_addr.i.i157, align 4
  %arrayidx.i166 = getelementptr i32, ptr %359, i32 %i.0100.i
  %arrayidx11.i167 = getelementptr [64 x %struct.host_rxq_entry], ptr %host_rxq.i, i32 0, i32 %i.0100.i
  %status12.i168 = getelementptr [64 x %struct.host_rxq_entry], ptr %host_rxq.i, i32 0, i32 %i.0100.i, i32 1
  %360 = ptrtoint ptr %status12.i168 to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %arrayidx.i166, ptr %status12.i168, align 4
  %361 = ptrtoint ptr %align_addr.i89.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %align_addr.i89.i, align 4
  %arrayidx15.i169 = getelementptr %struct.rpd, ptr %362, i32 %i.0100.i
  %rpd18.i = getelementptr [64 x %struct.host_rxq_entry], ptr %host_rxq.i, i32 0, i32 %i.0100.i, i32 2
  %363 = ptrtoint ptr %rpd18.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %arrayidx15.i169, ptr %rpd18.i, align 4
  %364 = ptrtoint ptr %dma_addr.i86.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %dma_addr.i86.i, align 4
  %mul.i170 = mul nuw nsw i32 %i.0100.i, 160
  %add.i171 = add i32 %365, %mul.i170
  %rpd_dma.i = getelementptr [64 x %struct.host_rxq_entry], ptr %host_rxq.i, i32 0, i32 %i.0100.i, i32 3
  %366 = ptrtoint ptr %rpd_dma.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %add.i171, ptr %rpd_dma.i, align 4
  %arrayidx22.i172 = getelementptr %struct.cp_rxq_entry, ptr %add.ptr.i164, i32 %i.0100.i
  %367 = ptrtoint ptr %arrayidx11.i167 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %arrayidx22.i172, ptr %arrayidx11.i167, align 4
  %368 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 4, ptr %arrayidx.i166, align 4
  %369 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %bus.i, align 4
  %write.i173 = getelementptr inbounds %struct.fore200e_bus, ptr %370, i32 0, i32 6
  %371 = ptrtoint ptr %write.i173 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %write.i173, align 4
  %373 = ptrtoint ptr %dma_addr.i.i154 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %dma_addr.i.i154, align 4
  %mul32.i174 = shl i32 %i.0100.i, 2
  %add33.i175 = add i32 %374, %mul32.i174
  %status_haddr.i176 = getelementptr inbounds %struct.cp_rxq_entry, ptr %arrayidx22.i172, i32 0, i32 1
  call void %372(i32 noundef %add33.i175, ptr noundef %status_haddr.i176) #14
  %375 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %bus.i, align 4
  %write36.i = getelementptr inbounds %struct.fore200e_bus, ptr %376, i32 0, i32 6
  %377 = ptrtoint ptr %write36.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %write36.i, align 4
  %379 = ptrtoint ptr %dma_addr.i86.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %dma_addr.i86.i, align 4
  %add40.i = add i32 %380, %mul.i170
  call void %378(i32 noundef %add40.i, ptr noundef %arrayidx22.i172) #14
  %inc.i177 = add nuw nsw i32 %i.0100.i, 1
  %exitcond.not.i178 = icmp eq i32 %inc.i177, 64
  br i1 %exitcond.not.i178, label %if.end33, label %for.body.i179.for.body.i179_crit_edge

for.body.i179.for.body.i179_crit_edge:            ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i179

if.end33:                                         ; preds = %for.body.i179
  %head.i180 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 1
  %381 = ptrtoint ptr %head.i180 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 0, ptr %head.i180, align 4
  %382 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 9, ptr %state.i, align 4
  %call34 = call fastcc i32 @fore200e_init_bs_queue(ptr noundef %fore200e)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.return_crit_edge, label %if.end37

if.end33.return_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end37:                                         ; preds = %if.end33
  %call38 = call fastcc i32 @fore200e_alloc_rx_buf(ptr noundef %fore200e)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.return_crit_edge, label %if.end41

if.end37.return_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end41:                                         ; preds = %if.end37
  %call42 = call fastcc i32 @fore200e_get_esi(ptr noundef %fore200e)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.return_crit_edge, label %if.end45

if.end41.return_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end45:                                         ; preds = %if.end41
  %call46 = call fastcc i32 @fore200e_irq_request(ptr noundef %fore200e)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.return_crit_edge, label %if.end49

if.end45.return_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @fore200e_supply(ptr noundef %fore200e)
  %383 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 13, ptr %state.i, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.end45.return_crit_edge, %if.end41.return_crit_edge, %if.end37.return_crit_edge, %if.end33.return_crit_edge, %if.then4.i159, %if.end29.return_crit_edge, %if.then4.i, %if.end25.return_crit_edge, %if.end21.return_crit_edge, %fore200e_initialize.exit.thread, %fore200e_load_and_start_fw.exit.thread, %fore200e_reset.exit.thread, %if.end4.return_crit_edge, %if.end.return_crit_edge, %fore200e_register.exit.thread
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -19, %if.end.return_crit_edge ], [ -19, %if.end4.return_crit_edge ], [ -12, %if.end33.return_crit_edge ], [ -12, %if.end37.return_crit_edge ], [ -5, %if.end41.return_crit_edge ], [ -16, %if.end45.return_crit_edge ], [ -19, %fore200e_register.exit.thread ], [ -19, %fore200e_reset.exit.thread ], [ -19, %fore200e_load_and_start_fw.exit.thread ], [ -19, %fore200e_initialize.exit.thread ], [ -12, %if.end21.return_crit_edge ], [ -12, %if.then4.i ], [ -12, %if.end25.return_crit_edge ], [ -12, %if.then4.i159 ], [ -12, %if.end29.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fore200e_shutdown(ptr noundef %fore200e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 5
  %phys_base = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 8
  %0 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phys_base, align 4
  %irq = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @fore200e_irq_itoa.str, ptr noundef nonnull @.str.18, i32 noundef %3) #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name, i32 noundef %1, ptr noundef nonnull @fore200e_irq_itoa.str) #17
  %state = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %virt_base.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 9
  %6 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1024
  %cp_monitor.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 11
  %8 = ptrtoint ptr %cp_monitor.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %cp_monitor.i, align 4
  %bus.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 1
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 4
  %write.i = getelementptr inbounds %struct.fore200e_bus, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i, align 4
  %bstat.i = getelementptr i8, ptr %7, i32 1032
  tail call void %12(i32 noundef -1071792099, ptr noundef %bstat.i) #14
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 4
  %reset.i = getelementptr inbounds %struct.fore200e_bus, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset.i, align 4
  tail call void %16(ptr noundef %fore200e) #14
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = phi i32 [ %.pr, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.end.sw.epilog_crit_edge [
    i32 13, label %sw.bb
    i32 12, label %if.end.sw.bb4_crit_edge
    i32 11, label %if.end.sw.bb7_crit_edge
    i32 10, label %if.end.sw.bb8_crit_edge
    i32 9, label %if.end.sw.bb9_crit_edge
    i32 8, label %if.end.sw.bb11_crit_edge
    i32 7, label %if.end.sw.bb14_crit_edge
    i32 6, label %if.end.sw.bb16_crit_edge
    i32 5, label %if.end.sw.bb16_crit_edge61
    i32 4, label %if.end.sw.bb16_crit_edge62
    i32 3, label %if.end.sw.bb16_crit_edge63
    i32 2, label %if.end.sw.bb17_crit_edge
    i32 1, label %if.end.sw.bb17_crit_edge64
  ]

if.end.sw.bb17_crit_edge64:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb17

if.end.sw.bb16_crit_edge63:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end.sw.bb16_crit_edge62:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end.sw.bb16_crit_edge61:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end.sw.bb16_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end.sw.bb14_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

if.end.sw.bb11_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb11

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb9

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb8

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %stats = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 19
  %20 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stats, align 4
  tail call void @kfree(ptr noundef %21) #14
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %if.end.sw.bb4_crit_edge
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %atm_dev = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 3
  %24 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %atm_dev, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %23, ptr noundef %25) #14
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb4, %if.end.sw.bb7_crit_edge
  %dev.i.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %buffer5.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %buffer5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer5.i, align 4
  %cmp6.not.i = icmp eq ptr %27, null
  br i1 %cmp6.not.i, label %sw.bb7.for.inc17.i_crit_edge, label %sw.bb7.for.body11.i_crit_edge

sw.bb7.for.body11.i_crit_edge:                    ; preds = %sw.bb7
  br label %for.body11.i

sw.bb7.for.inc17.i_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc17.i

for.body11.i:                                     ; preds = %if.end.i.for.body11.i_crit_edge, %sw.bb7.for.body11.i_crit_edge
  %nbr.034.i = phi i32 [ %inc.i, %if.end.i.for.body11.i_crit_edge ], [ 0, %sw.bb7.for.body11.i_crit_edge ]
  %data13.i = getelementptr %struct.buffer, ptr %27, i32 %nbr.034.i, i32 3
  %28 = ptrtoint ptr %data13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data13.i, align 4
  %cmp14.not.i = icmp eq ptr %29, null
  br i1 %cmp14.not.i, label %for.body11.i.if.end.i_crit_edge, label %if.then15.i

for.body11.i.if.end.i_crit_edge:                  ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then15.i:                                      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 4
  %dma_addr.i.i = getelementptr %struct.buffer, ptr %27, i32 %nbr.034.i, i32 3, i32 2
  %32 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_addr.i.i, align 4
  %align_size.i.i = getelementptr %struct.buffer, ptr %27, i32 %nbr.034.i, i32 3, i32 5
  %34 = ptrtoint ptr %align_size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %align_size.i.i, align 4
  %direction.i.i = getelementptr %struct.buffer, ptr %27, i32 %nbr.034.i, i32 3, i32 3
  %36 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %direction.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 0) #14
  %38 = ptrtoint ptr %data13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data13.i, align 4
  tail call void @kfree(ptr noundef %39) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then15.i, %for.body11.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %nbr.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 192
  br i1 %exitcond.not.i, label %if.end.i.for.inc17.i_crit_edge, label %if.end.i.for.body11.i_crit_edge

if.end.i.for.body11.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11.i

if.end.i.for.inc17.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %if.end.i.for.inc17.i_crit_edge, %sw.bb7.for.inc17.i_crit_edge
  %buffer5.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %buffer5.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer5.1.i, align 4
  %cmp6.not.1.i = icmp eq ptr %41, null
  br i1 %cmp6.not.1.i, label %for.inc17.i.for.inc17.1.i_crit_edge, label %for.inc17.i.for.body11.1.i_crit_edge

for.inc17.i.for.body11.1.i_crit_edge:             ; preds = %for.inc17.i
  br label %for.body11.1.i

for.inc17.i.for.inc17.1.i_crit_edge:              ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc17.1.i

for.body11.1.i:                                   ; preds = %if.end.1.i.for.body11.1.i_crit_edge, %for.inc17.i.for.body11.1.i_crit_edge
  %nbr.034.1.i = phi i32 [ %inc.1.i, %if.end.1.i.for.body11.1.i_crit_edge ], [ 0, %for.inc17.i.for.body11.1.i_crit_edge ]
  %data13.1.i = getelementptr %struct.buffer, ptr %41, i32 %nbr.034.1.i, i32 3
  %42 = ptrtoint ptr %data13.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data13.1.i, align 4
  %cmp14.not.1.i = icmp eq ptr %43, null
  br i1 %cmp14.not.1.i, label %for.body11.1.i.if.end.1.i_crit_edge, label %if.then15.1.i

for.body11.1.i.if.end.1.i_crit_edge:              ; preds = %for.body11.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1.i

if.then15.1.i:                                    ; preds = %for.body11.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i, align 4
  %dma_addr.i.1.i = getelementptr %struct.buffer, ptr %41, i32 %nbr.034.1.i, i32 3, i32 2
  %46 = ptrtoint ptr %dma_addr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_addr.i.1.i, align 4
  %align_size.i.1.i = getelementptr %struct.buffer, ptr %41, i32 %nbr.034.1.i, i32 3, i32 5
  %48 = ptrtoint ptr %align_size.i.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %align_size.i.1.i, align 4
  %direction.i.1.i = getelementptr %struct.buffer, ptr %41, i32 %nbr.034.1.i, i32 3, i32 3
  %50 = ptrtoint ptr %direction.i.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %direction.i.1.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef 0) #14
  %52 = ptrtoint ptr %data13.1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data13.1.i, align 4
  tail call void @kfree(ptr noundef %53) #14
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then15.1.i, %for.body11.1.i.if.end.1.i_crit_edge
  %inc.1.i = add nuw nsw i32 %nbr.034.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 128
  br i1 %exitcond.1.not.i, label %if.end.1.i.for.inc17.1.i_crit_edge, label %if.end.1.i.for.body11.1.i_crit_edge

if.end.1.i.for.body11.1.i_crit_edge:              ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11.1.i

if.end.1.i.for.inc17.1.i_crit_edge:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc17.1.i

for.inc17.1.i:                                    ; preds = %if.end.1.i.for.inc17.1.i_crit_edge, %for.inc17.i.for.inc17.1.i_crit_edge
  %buffer5.141.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 0, i32 4
  %54 = ptrtoint ptr %buffer5.141.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buffer5.141.i, align 4
  %cmp6.not.142.i = icmp eq ptr %55, null
  br i1 %cmp6.not.142.i, label %for.inc17.1.i.for.inc17.159.i_crit_edge, label %for.inc17.1.i.for.body11.150.i_crit_edge

for.inc17.1.i.for.body11.150.i_crit_edge:         ; preds = %for.inc17.1.i
  br label %for.body11.150.i

for.inc17.1.i.for.inc17.159.i_crit_edge:          ; preds = %for.inc17.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc17.159.i

for.body11.150.i:                                 ; preds = %if.end.157.i.for.body11.150.i_crit_edge, %for.inc17.1.i.for.body11.150.i_crit_edge
  %nbr.034.147.i = phi i32 [ %inc.155.i, %if.end.157.i.for.body11.150.i_crit_edge ], [ 0, %for.inc17.1.i.for.body11.150.i_crit_edge ]
  %data13.148.i = getelementptr %struct.buffer, ptr %55, i32 %nbr.034.147.i, i32 3
  %56 = ptrtoint ptr %data13.148.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data13.148.i, align 4
  %cmp14.not.149.i = icmp eq ptr %57, null
  br i1 %cmp14.not.149.i, label %for.body11.150.i.if.end.157.i_crit_edge, label %if.then15.154.i

for.body11.150.i.if.end.157.i_crit_edge:          ; preds = %for.body11.150.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.157.i

if.then15.154.i:                                  ; preds = %for.body11.150.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i, align 4
  %dma_addr.i.151.i = getelementptr %struct.buffer, ptr %55, i32 %nbr.034.147.i, i32 3, i32 2
  %60 = ptrtoint ptr %dma_addr.i.151.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_addr.i.151.i, align 4
  %align_size.i.152.i = getelementptr %struct.buffer, ptr %55, i32 %nbr.034.147.i, i32 3, i32 5
  %62 = ptrtoint ptr %align_size.i.152.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %align_size.i.152.i, align 4
  %direction.i.153.i = getelementptr %struct.buffer, ptr %55, i32 %nbr.034.147.i, i32 3, i32 3
  %64 = ptrtoint ptr %direction.i.153.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %direction.i.153.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef 0) #14
  %66 = ptrtoint ptr %data13.148.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data13.148.i, align 4
  tail call void @kfree(ptr noundef %67) #14
  br label %if.end.157.i

if.end.157.i:                                     ; preds = %if.then15.154.i, %for.body11.150.i.if.end.157.i_crit_edge
  %inc.155.i = add nuw nsw i32 %nbr.034.147.i, 1
  %exitcond.156.not.i = icmp eq i32 %inc.155.i, 192
  br i1 %exitcond.156.not.i, label %if.end.157.i.for.inc17.159.i_crit_edge, label %if.end.157.i.for.body11.150.i_crit_edge

if.end.157.i.for.body11.150.i_crit_edge:          ; preds = %if.end.157.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11.150.i

if.end.157.i.for.inc17.159.i_crit_edge:           ; preds = %if.end.157.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc17.159.i

for.inc17.159.i:                                  ; preds = %if.end.157.i.for.inc17.159.i_crit_edge, %for.inc17.1.i.for.inc17.159.i_crit_edge
  %buffer5.1.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 1, i32 4
  %68 = ptrtoint ptr %buffer5.1.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer5.1.1.i, align 4
  %cmp6.not.1.1.i = icmp eq ptr %69, null
  br i1 %cmp6.not.1.1.i, label %for.inc17.159.i.sw.bb8_crit_edge, label %for.inc17.159.i.for.body11.1.1.i_crit_edge

for.inc17.159.i.for.body11.1.1.i_crit_edge:       ; preds = %for.inc17.159.i
  br label %for.body11.1.1.i

for.inc17.159.i.sw.bb8_crit_edge:                 ; preds = %for.inc17.159.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb8

for.body11.1.1.i:                                 ; preds = %if.end.1.1.i.for.body11.1.1.i_crit_edge, %for.inc17.159.i.for.body11.1.1.i_crit_edge
  %nbr.034.1.1.i = phi i32 [ %inc.1.1.i, %if.end.1.1.i.for.body11.1.1.i_crit_edge ], [ 0, %for.inc17.159.i.for.body11.1.1.i_crit_edge ]
  %data13.1.1.i = getelementptr %struct.buffer, ptr %69, i32 %nbr.034.1.1.i, i32 3
  %70 = ptrtoint ptr %data13.1.1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data13.1.1.i, align 4
  %cmp14.not.1.1.i = icmp eq ptr %71, null
  br i1 %cmp14.not.1.1.i, label %for.body11.1.1.i.if.end.1.1.i_crit_edge, label %if.then15.1.1.i

for.body11.1.1.i.if.end.1.1.i_crit_edge:          ; preds = %for.body11.1.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1.1.i

if.then15.1.1.i:                                  ; preds = %for.body11.1.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i.i, align 4
  %dma_addr.i.1.1.i = getelementptr %struct.buffer, ptr %69, i32 %nbr.034.1.1.i, i32 3, i32 2
  %74 = ptrtoint ptr %dma_addr.i.1.1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_addr.i.1.1.i, align 4
  %align_size.i.1.1.i = getelementptr %struct.buffer, ptr %69, i32 %nbr.034.1.1.i, i32 3, i32 5
  %76 = ptrtoint ptr %align_size.i.1.1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %align_size.i.1.1.i, align 4
  %direction.i.1.1.i = getelementptr %struct.buffer, ptr %69, i32 %nbr.034.1.1.i, i32 3, i32 3
  %78 = ptrtoint ptr %direction.i.1.1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %direction.i.1.1.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef 0) #14
  %80 = ptrtoint ptr %data13.1.1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data13.1.1.i, align 4
  tail call void @kfree(ptr noundef %81) #14
  br label %if.end.1.1.i

if.end.1.1.i:                                     ; preds = %if.then15.1.1.i, %for.body11.1.1.i.if.end.1.1.i_crit_edge
  %inc.1.1.i = add nuw nsw i32 %nbr.034.1.1.i, 1
  %exitcond.1.1.not.i = icmp eq i32 %inc.1.1.i, 128
  br i1 %exitcond.1.1.not.i, label %if.end.1.1.i.sw.bb8_crit_edge, label %if.end.1.1.i.for.body11.1.1.i_crit_edge

if.end.1.1.i.for.body11.1.1.i_crit_edge:          ; preds = %if.end.1.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11.1.1.i

if.end.1.1.i.sw.bb8_crit_edge:                    ; preds = %if.end.1.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.end.1.1.i.sw.bb8_crit_edge, %for.inc17.159.i.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge
  %dev.i.i42 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %status5.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 0, i32 3
  %rbd_block9.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 0, i32 2
  %82 = ptrtoint ptr %status5.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %status5.i, align 4
  %tobool.not.i = icmp eq ptr %83, null
  br i1 %tobool.not.i, label %sw.bb8.if.end.i44_crit_edge, label %if.then.i

sw.bb8.if.end.i44_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i44

if.then.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %dev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i42, align 4
  %alloc_size.i.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 0, i32 3, i32 4
  %86 = ptrtoint ptr %alloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %alloc_size.i.i, align 4
  %dma_addr.i.i43 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 0, i32 3, i32 2
  %88 = ptrtoint ptr %dma_addr.i.i43 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_addr.i.i43, align 4
  tail call void @dma_free_attrs(ptr noundef %85, i32 noundef %87, ptr noundef nonnull %83, i32 noundef %89, i32 noundef 0) #14
  br label %if.end.i44

if.end.i44:                                       ; preds = %if.then.i, %sw.bb8.if.end.i44_crit_edge
  %90 = ptrtoint ptr %rbd_block9.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rbd_block9.i, align 4
  %tobool11.not.i = icmp eq ptr %91, null
  br i1 %tobool11.not.i, label %if.end.i44.if.end13.i_crit_edge, label %if.then12.i

if.end.i44.if.end13.i_crit_edge:                  ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #16
  %92 = ptrtoint ptr %dev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i.i42, align 4
  %alloc_size.i29.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 0, i32 2, i32 4
  %94 = ptrtoint ptr %alloc_size.i29.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %alloc_size.i29.i, align 4
  %dma_addr.i30.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 0, i32 2, i32 2
  %96 = ptrtoint ptr %dma_addr.i30.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_addr.i30.i, align 4
  tail call void @dma_free_attrs(ptr noundef %93, i32 noundef %95, ptr noundef nonnull %91, i32 noundef %97, i32 noundef 0) #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end.i44.if.end13.i_crit_edge
  %status5.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 1, i32 3
  %rbd_block9.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 1, i32 2
  %98 = ptrtoint ptr %status5.1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %status5.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %99, null
  br i1 %tobool.not.1.i, label %if.end13.i.if.end.1.i46_crit_edge, label %if.then.1.i

if.end13.i.if.end.1.i46_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1.i46

if.then.1.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %dev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i.i42, align 4
  %alloc_size.i.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 1, i32 3, i32 4
  %102 = ptrtoint ptr %alloc_size.i.1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %alloc_size.i.1.i, align 4
  %dma_addr.i.1.i45 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 1, i32 3, i32 2
  %104 = ptrtoint ptr %dma_addr.i.1.i45 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_addr.i.1.i45, align 4
  tail call void @dma_free_attrs(ptr noundef %101, i32 noundef %103, ptr noundef nonnull %99, i32 noundef %105, i32 noundef 0) #14
  br label %if.end.1.i46

if.end.1.i46:                                     ; preds = %if.then.1.i, %if.end13.i.if.end.1.i46_crit_edge
  %106 = ptrtoint ptr %rbd_block9.1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rbd_block9.1.i, align 4
  %tobool11.not.1.i = icmp eq ptr %107, null
  br i1 %tobool11.not.1.i, label %if.end.1.i46.if.end13.1.i_crit_edge, label %if.then12.1.i

if.end.1.i46.if.end13.1.i_crit_edge:              ; preds = %if.end.1.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.1.i

if.then12.1.i:                                    ; preds = %if.end.1.i46
  call void @__sanitizer_cov_trace_pc() #16
  %108 = ptrtoint ptr %dev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i.i42, align 4
  %alloc_size.i29.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 1, i32 2, i32 4
  %110 = ptrtoint ptr %alloc_size.i29.1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %alloc_size.i29.1.i, align 4
  %dma_addr.i30.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 0, i32 1, i32 2, i32 2
  %112 = ptrtoint ptr %dma_addr.i30.1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dma_addr.i30.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %109, i32 noundef %111, ptr noundef nonnull %107, i32 noundef %113, i32 noundef 0) #14
  br label %if.end13.1.i

if.end13.1.i:                                     ; preds = %if.then12.1.i, %if.end.1.i46.if.end13.1.i_crit_edge
  %status5.134.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 0, i32 3
  %rbd_block9.135.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 0, i32 2
  %114 = ptrtoint ptr %status5.134.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %status5.134.i, align 4
  %tobool.not.136.i = icmp eq ptr %115, null
  br i1 %tobool.not.136.i, label %if.end13.1.i.if.end.141.i_crit_edge, label %if.then.139.i

if.end13.1.i.if.end.141.i_crit_edge:              ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.141.i

if.then.139.i:                                    ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %116 = ptrtoint ptr %dev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i.i42, align 4
  %alloc_size.i.137.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 0, i32 3, i32 4
  %118 = ptrtoint ptr %alloc_size.i.137.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %alloc_size.i.137.i, align 4
  %dma_addr.i.138.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 0, i32 3, i32 2
  %120 = ptrtoint ptr %dma_addr.i.138.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dma_addr.i.138.i, align 4
  tail call void @dma_free_attrs(ptr noundef %117, i32 noundef %119, ptr noundef nonnull %115, i32 noundef %121, i32 noundef 0) #14
  br label %if.end.141.i

if.end.141.i:                                     ; preds = %if.then.139.i, %if.end13.1.i.if.end.141.i_crit_edge
  %122 = ptrtoint ptr %rbd_block9.135.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rbd_block9.135.i, align 4
  %tobool11.not.140.i = icmp eq ptr %123, null
  br i1 %tobool11.not.140.i, label %if.end.141.i.if.end13.145.i_crit_edge, label %if.then12.144.i

if.end.141.i.if.end13.145.i_crit_edge:            ; preds = %if.end.141.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.145.i

if.then12.144.i:                                  ; preds = %if.end.141.i
  call void @__sanitizer_cov_trace_pc() #16
  %124 = ptrtoint ptr %dev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i.i42, align 4
  %alloc_size.i29.142.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 0, i32 2, i32 4
  %126 = ptrtoint ptr %alloc_size.i29.142.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %alloc_size.i29.142.i, align 4
  %dma_addr.i30.143.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 0, i32 2, i32 2
  %128 = ptrtoint ptr %dma_addr.i30.143.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dma_addr.i30.143.i, align 4
  tail call void @dma_free_attrs(ptr noundef %125, i32 noundef %127, ptr noundef nonnull %123, i32 noundef %129, i32 noundef 0) #14
  br label %if.end13.145.i

if.end13.145.i:                                   ; preds = %if.then12.144.i, %if.end.141.i.if.end13.145.i_crit_edge
  %status5.1.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 1, i32 3
  %rbd_block9.1.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 1, i32 2
  %130 = ptrtoint ptr %status5.1.1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %status5.1.1.i, align 4
  %tobool.not.1.1.i = icmp eq ptr %131, null
  br i1 %tobool.not.1.1.i, label %if.end13.145.i.if.end.1.1.i48_crit_edge, label %if.then.1.1.i

if.end13.145.i.if.end.1.1.i48_crit_edge:          ; preds = %if.end13.145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1.1.i48

if.then.1.1.i:                                    ; preds = %if.end13.145.i
  call void @__sanitizer_cov_trace_pc() #16
  %132 = ptrtoint ptr %dev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i.i42, align 4
  %alloc_size.i.1.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 1, i32 3, i32 4
  %134 = ptrtoint ptr %alloc_size.i.1.1.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %alloc_size.i.1.1.i, align 4
  %dma_addr.i.1.1.i47 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 1, i32 3, i32 2
  %136 = ptrtoint ptr %dma_addr.i.1.1.i47 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dma_addr.i.1.1.i47, align 4
  tail call void @dma_free_attrs(ptr noundef %133, i32 noundef %135, ptr noundef nonnull %131, i32 noundef %137, i32 noundef 0) #14
  br label %if.end.1.1.i48

if.end.1.1.i48:                                   ; preds = %if.then.1.1.i, %if.end13.145.i.if.end.1.1.i48_crit_edge
  %138 = ptrtoint ptr %rbd_block9.1.1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rbd_block9.1.1.i, align 4
  %tobool11.not.1.1.i = icmp eq ptr %139, null
  br i1 %tobool11.not.1.1.i, label %if.end.1.1.i48.sw.bb9_crit_edge, label %if.then12.1.1.i

if.end.1.1.i48.sw.bb9_crit_edge:                  ; preds = %if.end.1.1.i48
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb9

if.then12.1.1.i:                                  ; preds = %if.end.1.1.i48
  call void @__sanitizer_cov_trace_pc() #16
  %140 = ptrtoint ptr %dev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i.i42, align 4
  %alloc_size.i29.1.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 1, i32 2, i32 4
  %142 = ptrtoint ptr %alloc_size.i29.1.1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %alloc_size.i29.1.1.i, align 4
  %dma_addr.i30.1.1.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 1, i32 1, i32 2, i32 2
  %144 = ptrtoint ptr %dma_addr.i30.1.1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dma_addr.i30.1.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %141, i32 noundef %143, ptr noundef nonnull %139, i32 noundef %145, i32 noundef 0) #14
  br label %sw.bb9

sw.bb9:                                           ; preds = %if.then12.1.1.i, %if.end.1.1.i48.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge
  %status = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 3
  %dev.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %146 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev.i, align 4
  %alloc_size.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 3, i32 4
  %148 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %alloc_size.i, align 4
  %150 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %status, align 4
  %dma_addr.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 3, i32 2
  %152 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %147, i32 noundef %149, ptr noundef %151, i32 noundef %153, i32 noundef 0) #14
  %rpd = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 2
  %154 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev.i, align 4
  %alloc_size.i50 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 2, i32 4
  %156 = ptrtoint ptr %alloc_size.i50 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %alloc_size.i50, align 4
  %158 = ptrtoint ptr %rpd to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rpd, align 4
  %dma_addr.i51 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 15, i32 2, i32 2
  %160 = ptrtoint ptr %dma_addr.i51 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dma_addr.i51, align 4
  tail call void @dma_free_attrs(ptr noundef %155, i32 noundef %157, ptr noundef %159, i32 noundef %161, i32 noundef 0) #14
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb9, %if.end.sw.bb11_crit_edge
  %status12 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 4
  %dev.i52 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %162 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev.i52, align 4
  %alloc_size.i53 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 4, i32 4
  %164 = ptrtoint ptr %alloc_size.i53 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %alloc_size.i53, align 4
  %166 = ptrtoint ptr %status12 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %status12, align 4
  %dma_addr.i54 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 4, i32 2
  %168 = ptrtoint ptr %dma_addr.i54 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dma_addr.i54, align 4
  tail call void @dma_free_attrs(ptr noundef %163, i32 noundef %165, ptr noundef %167, i32 noundef %169, i32 noundef 0) #14
  %tpd = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 3
  %170 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev.i52, align 4
  %alloc_size.i56 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 3, i32 4
  %172 = ptrtoint ptr %alloc_size.i56 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %alloc_size.i56, align 4
  %174 = ptrtoint ptr %tpd to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %tpd, align 4
  %dma_addr.i57 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 3, i32 2
  %176 = ptrtoint ptr %dma_addr.i57 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %dma_addr.i57, align 4
  tail call void @dma_free_attrs(ptr noundef %171, i32 noundef %173, ptr noundef %175, i32 noundef %177, i32 noundef 0) #14
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb11, %if.end.sw.bb14_crit_edge
  %status15 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 2
  %dev.i58 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %178 = ptrtoint ptr %dev.i58 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev.i58, align 4
  %alloc_size.i59 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 2, i32 4
  %180 = ptrtoint ptr %alloc_size.i59 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %alloc_size.i59, align 4
  %182 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %status15, align 4
  %dma_addr.i60 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 2, i32 2
  %184 = ptrtoint ptr %dma_addr.i60 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %dma_addr.i60, align 4
  tail call void @dma_free_attrs(ptr noundef %179, i32 noundef %181, ptr noundef %183, i32 noundef %185, i32 noundef 0) #14
  br label %sw.bb16

sw.bb16:                                          ; preds = %sw.bb14, %if.end.sw.bb16_crit_edge, %if.end.sw.bb16_crit_edge61, %if.end.sw.bb16_crit_edge62, %if.end.sw.bb16_crit_edge63
  %bus = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 1
  %186 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bus, align 4
  %unmap = getelementptr inbounds %struct.fore200e_bus, ptr %187, i32 0, i32 11
  %188 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %unmap, align 4
  tail call void %189(ptr noundef %fore200e) #14
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb16, %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge64
  %atm_dev18 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 3
  %190 = ptrtoint ptr %atm_dev18 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %atm_dev18, align 4
  tail call void @atm_dev_deregister(ptr noundef %191) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_pca_read(ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #14, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !315
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fore200e_pca_write(i32 noundef %val, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !316
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %val) #14, !srcloc !317
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_pca_configure(ptr nocapture noundef %fore200e) #2 align 64 {
entry:
  %master_ctrl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %master_ctrl) #14
  %2 = ptrtoint ptr %master_ctrl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %master_ctrl, align 1, !annotation !313
  %irq = getelementptr i8, ptr %1, i32 932
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %4, label %if.end [
    i32 0, label %entry.do.end5_crit_edge
    i32 255, label %entry.do.end5_crit_edge19
  ]

entry.do.end5_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

do.end5:                                          ; preds = %entry.do.end5_crit_edge, %entry.do.end5_crit_edge19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %call7 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 65, ptr noundef nonnull %master_ctrl) #14
  %6 = ptrtoint ptr %master_ctrl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %master_ctrl, align 1
  %8 = or i8 %7, 96
  store i8 %8, ptr %master_ctrl, align 1
  %call10 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 65, i8 noundef zeroext %8) #14
  %call11 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 13, i8 noundef zeroext -64) #14
  %state = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end5
  %retval.0 = phi i32 [ -5, %do.end5 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %master_ctrl) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_pca_map(ptr noundef %fore200e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %phys_base = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 8
  %0 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phys_base, align 4
  %call = tail call ptr @ioremap(i32 noundef %1, i32 noundef 2097152) #14
  %virt_base = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 9
  %2 = ptrtoint ptr %virt_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %virt_base, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end3, label %do.end6

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 5
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name) #17
  br label %return

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %call, i32 1048576
  %regs = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %call, i32 1048580
  %imr = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr9, ptr %imr, align 4
  %add.ptr12 = getelementptr i8, ptr %call, i32 1048584
  %psr = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %psr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr12, ptr %psr, align 4
  %state = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %state, align 4
  br label %return

return:                                           ; preds = %do.end6, %do.end3
  %retval.0 = phi i32 [ -14, %do.end3 ], [ 0, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fore200e_pca_reset(ptr nocapture noundef readonly %fore200e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void @arm_heavy_mb() #14
  %regs = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #14, !srcloc !317
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = xor i32 %2, -1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %3, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %fore200e_spin.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

fore200e_spin.exit:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !319
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #14, !srcloc !317
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_pca_prom_read(ptr noundef %fore200e, ptr noundef %prom) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %add = add i32 %1, 1
  %rem = srem i32 %add, 16
  store i32 %rem, ptr %head, align 4
  %dev = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %prom) #14
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !320

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #14
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %9, i32 noundef -1) #14
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %prom, i32 noundef 16) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %prom to i32
  %sub.i = add i32 %11, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %shr.i
  %and.i = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 16, i32 noundef 2, i32 noundef 0) #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %13, i32 noundef %call41.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %host_cmdq = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13
  %arrayidx = getelementptr [16 x %struct.host_cmdq_entry], ptr %host_cmdq, i32 0, i32 %1
  %bus = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 1
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %write = getelementptr inbounds %struct.fore200e_bus, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %prom_haddr = getelementptr inbounds %struct.prom_block, ptr %19, i32 0, i32 1
  tail call void %17(i32 noundef %call41.i, ptr noundef %prom_haddr) #14
  %status = getelementptr [16 x %struct.host_cmdq_entry], ptr %host_cmdq, i32 0, i32 %1, i32 1
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %status, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %21, align 4
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 4
  %write10 = getelementptr inbounds %struct.fore200e_bus, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %write10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write10, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  tail call void %26(i32 noundef 10, ptr noundef %28) #14
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !321
  tail call void @arm_heavy_mb() #14
  %add.neg.i = sub i32 -40, %31
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.cond2.i.do.body1.i_crit_edge, %if.end
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.i54 = icmp eq i32 %33, 2
  br i1 %cmp.i54, label %if.end20.critedge, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.body1.i
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %30, align 4
  %and.i55 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i, label %do.cond2.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

do.cond2.i:                                       ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub.i56 = add i32 %add.neg.i, %36
  %cmp3.i = icmp slt i32 %sub.i56, 0
  br i1 %cmp3.i, label %do.cond2.i.do.body1.i_crit_edge, label %do.cond2.i.do.end10.i_crit_edge

do.cond2.i.do.end10.i_crit_edge:                  ; preds = %do.cond2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

do.cond2.i.do.body1.i_crit_edge:                  ; preds = %do.cond2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i

do.end10.i:                                       ; preds = %do.cond2.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %30, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %38, i32 noundef 2) #17
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %status, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %40, align 4
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %43, i32 noundef %call41.i, i32 noundef 16, i32 noundef 2, i32 noundef 0) #14
  %name = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 5
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name) #17
  br label %cleanup

if.end20.critedge:                                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %status, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %45, align 4
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %48, i32 noundef %call41.i, i32 noundef 16, i32 noundef 2, i32 noundef 0) #14
  %mac_addr = getelementptr inbounds %struct.prom_data, ptr %prom, i32 0, i32 2
  %49 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mac_addr, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %mac_addr, align 4
  %arrayidx25 = getelementptr %struct.prom_data, ptr %prom, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx25, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20.critedge, %do.end10.i, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread
  %retval.0 = phi i32 [ -5, %do.end10.i ], [ 0, %if.end20.critedge ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fore200e_pca_unmap(ptr nocapture noundef readonly %fore200e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %virt_base = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 9
  %0 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_base, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iounmap(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_pca_irq_check(ptr nocapture noundef readonly %fore200e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %psr = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %psr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #14, !srcloc !314
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !322
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fore200e_pca_irq_ack(ptr nocapture noundef readonly %fore200e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !323
  tail call void @arm_heavy_mb() #14
  %regs = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 268435456) #14, !srcloc !317
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_pca_proc_read(ptr nocapture noundef readonly %fore200e, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 4
  %conv = zext i8 %5 to i32
  %devfn = getelementptr i8, ptr %1, i32 -108
  %6 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %7, 3
  %and = and i32 %shr, 31
  %and2 = and i32 %7, 7
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %and, i32 noundef %and2)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fore200e_init_bs_queue(ptr noundef %fore200e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %virt_base = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 9
  %cp_queues = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 12
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc45.1.for.cond1.preheader_crit_edge, %entry
  %scheme.0117 = phi i32 [ 0, %entry ], [ %inc49, %for.inc45.1.for.cond1.preheader_crit_edge ]
  %arrayidx4 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 0
  %status = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 0, i32 3
  %alloc_size.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 128, ptr %alloc_size.i, align 4
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %dma_addr.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 0, i32 3, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef 128, ptr noundef %dma_addr.i, i32 noundef 3264, i32 noundef 0) #14
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %status, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.cond1.preheader.cleanup_crit_edge, label %if.end

for.cond1.preheader.cleanup_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %for.cond1.preheader
  %align_addr.i = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %align_addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %align_addr.i, align 4
  %rbd_block = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 0, i32 2
  %alloc_size.i95 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %alloc_size.i95 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8192, ptr %alloc_size.i95, align 4
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %dma_addr.i97 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 0, i32 2, i32 2
  %call.i.i98 = tail call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef 8192, ptr noundef %dma_addr.i97, i32 noundef 3264, i32 noundef 0) #14
  %8 = ptrtoint ptr %rbd_block to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i98, ptr %rbd_block, align 4
  %tobool.not.i99 = icmp eq ptr %call.i.i98, null
  br i1 %tobool.not.i99, label %if.end.if.then9_crit_edge, label %if.end11

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.then9:                                         ; preds = %if.end.1.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %status.lcssa122 = phi ptr [ %status, %if.end.if.then9_crit_edge ], [ %status.1, %if.end.1.if.then9_crit_edge ]
  %alloc_size.i.lcssa120 = phi ptr [ %alloc_size.i, %if.end.if.then9_crit_edge ], [ %alloc_size.i.1, %if.end.1.if.then9_crit_edge ]
  %dma_addr.i.lcssa118 = phi ptr [ %dma_addr.i, %if.end.if.then9_crit_edge ], [ %dma_addr.i.1, %if.end.1.if.then9_crit_edge ]
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %alloc_size.i.lcssa120 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alloc_size.i.lcssa120, align 4
  %13 = ptrtoint ptr %status.lcssa122 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %status.lcssa122, align 4
  %15 = ptrtoint ptr %dma_addr.i.lcssa118 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr.i.lcssa118, align 4
  tail call void @dma_free_attrs(ptr noundef %10, i32 noundef %12, ptr noundef %14, i32 noundef %16, i32 noundef 0) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %align_addr.i100 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %align_addr.i100 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i98, ptr %align_addr.i100, align 4
  %18 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virt_base, align 4
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %read = getelementptr inbounds %struct.fore200e_bus, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read, align 4
  %24 = ptrtoint ptr %cp_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cp_queues, align 4
  %arrayidx14 = getelementptr %struct.cp_queues, ptr %25, i32 0, i32 3, i32 %scheme.0117, i32 0
  %call15 = tail call i32 %23(ptr noundef %arrayidx14) #14
  %add.ptr = getelementptr i8, ptr %19, i32 %call15
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.end11
  %i.0115 = phi i32 [ 0, %if.end11 ], [ %inc, %for.body18.for.body18_crit_edge ]
  %26 = ptrtoint ptr %align_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %align_addr.i, align 4
  %arrayidx20 = getelementptr i32, ptr %27, i32 %i.0115
  %arrayidx21 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx4, i32 0, i32 %i.0115
  %status22 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx4, i32 0, i32 %i.0115, i32 1
  %28 = ptrtoint ptr %status22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx20, ptr %status22, align 4
  %29 = ptrtoint ptr %align_addr.i100 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %align_addr.i100, align 4
  %arrayidx25 = getelementptr %struct.rbd_block, ptr %30, i32 %i.0115
  %rbd_block28 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx4, i32 0, i32 %i.0115, i32 2
  %31 = ptrtoint ptr %rbd_block28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx25, ptr %rbd_block28, align 4
  %32 = ptrtoint ptr %dma_addr.i97 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_addr.i97, align 4
  %mul = shl i32 %i.0115, 8
  %add = add i32 %33, %mul
  %rbd_block_dma = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx4, i32 0, i32 %i.0115, i32 3
  %34 = ptrtoint ptr %rbd_block_dma to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %rbd_block_dma, align 4
  %arrayidx32 = getelementptr %struct.cp_bsq_entry, ptr %add.ptr, i32 %i.0115
  %35 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx32, ptr %arrayidx21, align 4
  %36 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %arrayidx20, align 4
  %37 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus, align 4
  %write = getelementptr inbounds %struct.fore200e_bus, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write, align 4
  %41 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_addr.i, align 4
  %mul42 = shl i32 %i.0115, 2
  %add43 = add i32 %42, %mul42
  %status_haddr = getelementptr inbounds %struct.cp_bsq_entry, ptr %arrayidx32, i32 0, i32 1
  tail call void %40(i32 noundef %add43, ptr noundef %status_haddr) #14
  %inc = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc45, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body18

for.inc45:                                        ; preds = %for.body18
  %arrayidx4.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 1
  %status.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 1, i32 3
  %alloc_size.i.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 1, i32 3, i32 4
  %43 = ptrtoint ptr %alloc_size.i.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 128, ptr %alloc_size.i.1, align 4
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %dma_addr.i.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 1, i32 3, i32 2
  %call.i.i.1 = tail call ptr @dma_alloc_attrs(ptr noundef %45, i32 noundef 128, ptr noundef %dma_addr.i.1, i32 noundef 3264, i32 noundef 0) #14
  %46 = ptrtoint ptr %status.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i.i.1, ptr %status.1, align 4
  %tobool.not.i.1 = icmp eq ptr %call.i.i.1, null
  br i1 %tobool.not.i.1, label %for.inc45.cleanup_crit_edge, label %if.end.1

for.inc45.cleanup_crit_edge:                      ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.1:                                         ; preds = %for.inc45
  %align_addr.i.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 1, i32 3, i32 1
  %47 = ptrtoint ptr %align_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i.1, ptr %align_addr.i.1, align 4
  %rbd_block.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 1, i32 2
  %alloc_size.i95.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 1, i32 2, i32 4
  %48 = ptrtoint ptr %alloc_size.i95.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8192, ptr %alloc_size.i95.1, align 4
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %dma_addr.i97.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 1, i32 2, i32 2
  %call.i.i98.1 = tail call ptr @dma_alloc_attrs(ptr noundef %50, i32 noundef 8192, ptr noundef %dma_addr.i97.1, i32 noundef 3264, i32 noundef 0) #14
  %51 = ptrtoint ptr %rbd_block.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i98.1, ptr %rbd_block.1, align 4
  %tobool.not.i99.1 = icmp eq ptr %call.i.i98.1, null
  br i1 %tobool.not.i99.1, label %if.end.1.if.then9_crit_edge, label %if.end11.1

if.end.1.if.then9_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.end11.1:                                       ; preds = %if.end.1
  %align_addr.i100.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0117, i32 1, i32 2, i32 1
  %52 = ptrtoint ptr %align_addr.i100.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i98.1, ptr %align_addr.i100.1, align 4
  %53 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virt_base, align 4
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus, align 4
  %read.1 = getelementptr inbounds %struct.fore200e_bus, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %read.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read.1, align 4
  %59 = ptrtoint ptr %cp_queues to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cp_queues, align 4
  %arrayidx14.1 = getelementptr %struct.cp_queues, ptr %60, i32 0, i32 3, i32 %scheme.0117, i32 1
  %call15.1 = tail call i32 %58(ptr noundef %arrayidx14.1) #14
  %add.ptr.1 = getelementptr i8, ptr %54, i32 %call15.1
  br label %for.body18.1

for.body18.1:                                     ; preds = %for.body18.1.for.body18.1_crit_edge, %if.end11.1
  %i.0115.1 = phi i32 [ 0, %if.end11.1 ], [ %inc.1, %for.body18.1.for.body18.1_crit_edge ]
  %61 = ptrtoint ptr %align_addr.i.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %align_addr.i.1, align 4
  %arrayidx20.1 = getelementptr i32, ptr %62, i32 %i.0115.1
  %arrayidx21.1 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx4.1, i32 0, i32 %i.0115.1
  %status22.1 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx4.1, i32 0, i32 %i.0115.1, i32 1
  %63 = ptrtoint ptr %status22.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx20.1, ptr %status22.1, align 4
  %64 = ptrtoint ptr %align_addr.i100.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %align_addr.i100.1, align 4
  %arrayidx25.1 = getelementptr %struct.rbd_block, ptr %65, i32 %i.0115.1
  %rbd_block28.1 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx4.1, i32 0, i32 %i.0115.1, i32 2
  %66 = ptrtoint ptr %rbd_block28.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx25.1, ptr %rbd_block28.1, align 4
  %67 = ptrtoint ptr %dma_addr.i97.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_addr.i97.1, align 4
  %mul.1 = shl i32 %i.0115.1, 8
  %add.1 = add i32 %68, %mul.1
  %rbd_block_dma.1 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx4.1, i32 0, i32 %i.0115.1, i32 3
  %69 = ptrtoint ptr %rbd_block_dma.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.1, ptr %rbd_block_dma.1, align 4
  %arrayidx32.1 = getelementptr %struct.cp_bsq_entry, ptr %add.ptr.1, i32 %i.0115.1
  %70 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx32.1, ptr %arrayidx21.1, align 4
  %71 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4, ptr %arrayidx20.1, align 4
  %72 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus, align 4
  %write.1 = getelementptr inbounds %struct.fore200e_bus, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %write.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write.1, align 4
  %76 = ptrtoint ptr %dma_addr.i.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_addr.i.1, align 4
  %mul42.1 = shl i32 %i.0115.1, 2
  %add43.1 = add i32 %77, %mul42.1
  %status_haddr.1 = getelementptr inbounds %struct.cp_bsq_entry, ptr %arrayidx32.1, i32 0, i32 1
  tail call void %75(i32 noundef %add43.1, ptr noundef %status_haddr.1) #14
  %inc.1 = add nuw nsw i32 %i.0115.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 32
  br i1 %exitcond.1.not, label %for.inc45.1, label %for.body18.1.for.body18.1_crit_edge

for.body18.1.for.body18.1_crit_edge:              ; preds = %for.body18.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body18.1

for.inc45.1:                                      ; preds = %for.body18.1
  %inc49 = add nuw nsw i32 %scheme.0117, 1
  %exitcond125.not = icmp eq i32 %inc49, 2
  br i1 %exitcond125.not, label %for.end50, label %for.inc45.1.for.cond1.preheader_crit_edge

for.inc45.1.for.cond1.preheader_crit_edge:        ; preds = %for.inc45.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.preheader

for.end50:                                        ; preds = %for.inc45.1
  call void @__sanitizer_cov_trace_pc() #16
  %state = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 4
  %78 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 10, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end50, %for.inc45.cleanup_crit_edge, %if.then9, %for.cond1.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9 ], [ 0, %for.end50 ], [ -12, %for.inc45.cleanup_crit_edge ], [ -12, %for.cond1.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fore200e_alloc_rx_buf(ptr noundef %fore200e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc33.for.cond1.preheader_crit_edge, %entry
  %scheme.0136 = phi i32 [ 0, %entry ], [ %inc34, %for.inc33.for.cond1.preheader_crit_edge ]
  br label %for.body3

for.body3:                                        ; preds = %for.end.for.body3_crit_edge, %for.cond1.preheader
  %magn.0133 = phi i32 [ 0, %for.cond1.preheader ], [ %inc31, %for.end.for.body3_crit_edge ]
  %arrayidx6 = getelementptr [2 x [2 x i32]], ptr @fore200e_rx_buf_nbr, i32 0, i32 %scheme.0136, i32 %magn.0133
  %0 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr [2 x [2 x i32]], ptr @fore200e_rx_buf_size, i32 0, i32 %scheme.0136, i32 %magn.0133
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx8, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 36) #14
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !324

kcalloc.exit.thread:                              ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #16
  %buffer9108 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0136, i32 %magn.0133, i32 4
  %6 = ptrtoint ptr %buffer9108 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %buffer9108, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %for.body3
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #18
  %buffer9 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0136, i32 %magn.0133, i32 4
  %8 = ptrtoint ptr %buffer9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %buffer9, align 4
  %cmp10 = icmp eq ptr %call8.i.i, null
  br i1 %cmp10, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %freebuf = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0136, i32 %magn.0133, i32 5
  %9 = ptrtoint ptr %freebuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %freebuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12131.not = icmp eq i32 %1, 0
  br i1 %cmp12131.not, label %if.end.for.end_crit_edge, label %if.end.for.body13_crit_edge

if.end.for.body13_crit_edge:                      ; preds = %if.end
  br label %for.body13

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body13:                                       ; preds = %if.end25.for.body13_crit_edge, %if.end.for.body13_crit_edge
  %i.0132 = phi i32 [ %inc, %if.end25.for.body13_crit_edge ], [ 0, %if.end.for.body13_crit_edge ]
  %scheme15 = getelementptr %struct.buffer, ptr %call8.i.i, i32 %i.0132, i32 1
  %10 = ptrtoint ptr %scheme15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %scheme.0136, ptr %scheme15, align 4
  %magn17 = getelementptr %struct.buffer, ptr %call8.i.i, i32 %i.0132, i32 2
  %11 = ptrtoint ptr %magn17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %magn.0133, ptr %magn17, align 4
  %data = getelementptr %struct.buffer, ptr %call8.i.i, i32 %i.0132, i32 3
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %buffer_alignment = getelementptr inbounds %struct.fore200e_bus, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %buffer_alignment to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_alignment, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp.i = icmp ult i32 %15, 5
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %15
  %add.i = add i32 %spec.store.select.i, %3
  %alloc_size.i = getelementptr %struct.buffer, ptr %call8.i.i, i32 %i.0132, i32 3, i32 4
  %16 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %alloc_size.i, align 4
  %direction1.i = getelementptr %struct.buffer, ptr %call8.i.i, i32 %i.0132, i32 3, i32 3
  %17 = ptrtoint ptr %direction1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %direction1.i, align 4
  %call9.i.i.i102 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #18
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i.i102, ptr %data, align 4
  %cmp4.i = icmp eq ptr %call9.i.i.i102, null
  br i1 %cmp4.i, label %for.body13.fore200e_chunk_alloc.exit_crit_edge, label %if.end6.i

for.body13.fore200e_chunk_alloc.exit_crit_edge:   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_chunk_alloc.exit

if.end6.i:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp7.i = icmp sgt i32 %spec.store.select.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end6.i.if.end14.i_crit_edge

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %call9.i.i.i102 to i32
  %sub.i = add nsw i32 %spec.store.select.i, -1
  %add10.i = add i32 %sub.i, %19
  %neg.i = sub nsw i32 0, %spec.store.select.i
  %and.i = and i32 %add10.i, %neg.i
  %sub13.i = sub i32 %and.i, %19
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end14.i_crit_edge
  %offset.0.i = phi i32 [ %sub13.i, %if.then8.i ], [ 0, %if.end6.i.if.end14.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i102, i32 %offset.0.i
  %align_addr.i = getelementptr %struct.buffer, ptr %call8.i.i, i32 %i.0132, i32 3, i32 1
  %20 = ptrtoint ptr %align_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %align_addr.i, align 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #14
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end14.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !320

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %22) #14
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i1.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i1.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i1.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %26, %if.end.i.i1.i ], [ %24, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %22, ptr noundef %add.ptr.i, i32 noundef %3) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  %sub.i.i = add i32 %28, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %27, i32 %shr.i.i
  %and.i.i = and i32 %28, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %3, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i104 = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %dma_addr.i = getelementptr %struct.buffer, ptr %call8.i.i, i32 %i.0132, i32 3, i32 2
  %29 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i104, ptr %dma_addr.i, align 4
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %31, i32 noundef %retval.0.i.i104) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i104)
  %cmp.i.i = icmp eq i32 %retval.0.i.i104, -1
  br i1 %cmp.i.i, label %if.then21.i, label %if.end25

if.then21.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %33) #14
  br label %fore200e_chunk_alloc.exit

fore200e_chunk_alloc.exit:                        ; preds = %if.then21.i, %for.body13.fore200e_chunk_alloc.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0132)
  %cmp22137.not = icmp eq i32 %i.0132, 0
  br i1 %cmp22137.not, label %fore200e_chunk_alloc.exit.while.end_crit_edge, label %fore200e_chunk_alloc.exit.while.body_crit_edge

fore200e_chunk_alloc.exit.while.body_crit_edge:   ; preds = %fore200e_chunk_alloc.exit
  br label %while.body

fore200e_chunk_alloc.exit.while.end_crit_edge:    ; preds = %fore200e_chunk_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %fore200e_chunk_alloc.exit.while.body_crit_edge
  %i.1138 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0132, %fore200e_chunk_alloc.exit.while.body_crit_edge ]
  %dec = add nsw i32 %i.1138, -1
  %data24 = getelementptr %struct.buffer, ptr %call8.i.i, i32 %dec, i32 3
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %dma_addr.i106 = getelementptr %struct.buffer, ptr %call8.i.i, i32 %dec, i32 3, i32 2
  %36 = ptrtoint ptr %dma_addr.i106 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_addr.i106, align 4
  %align_size.i = getelementptr %struct.buffer, ptr %call8.i.i, i32 %dec, i32 3, i32 5
  %38 = ptrtoint ptr %align_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %align_size.i, align 4
  %direction.i = getelementptr %struct.buffer, ptr %call8.i.i, i32 %dec, i32 3, i32 3
  %40 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %direction.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 0) #14
  %42 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data24, align 4
  tail call void @kfree(ptr noundef %43) #14
  %cmp22 = icmp sgt i32 %i.1138, 1
  br i1 %cmp22, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %fore200e_chunk_alloc.exit.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #14
  br label %cleanup

if.end25:                                         ; preds = %dma_map_single_attrs.exit.i
  %arrayidx14 = getelementptr %struct.buffer, ptr %call8.i.i, i32 %i.0132
  %44 = ptrtoint ptr %freebuf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %freebuf, align 4
  %46 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %arrayidx14, align 4
  store ptr %arrayidx14, ptr %freebuf, align 4
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %if.end25.for.end_crit_edge, label %if.end25.for.body13_crit_edge

if.end25.for.body13_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body13

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %if.end.for.end_crit_edge
  %freebuf_count = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.0136, i32 %magn.0133, i32 6
  %47 = ptrtoint ptr %freebuf_count to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %1, ptr %freebuf_count, align 4
  %inc31 = add nuw nsw i32 %magn.0133, 1
  %exitcond156.not = icmp eq i32 %inc31, 2
  br i1 %exitcond156.not, label %for.inc33, label %for.end.for.body3_crit_edge

for.end.for.body3_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3

for.inc33:                                        ; preds = %for.end
  %inc34 = add nuw nsw i32 %scheme.0136, 1
  %exitcond157.not = icmp eq i32 %inc34, 2
  br i1 %exitcond157.not, label %for.end35, label %for.inc33.for.cond1.preheader_crit_edge

for.inc33.for.cond1.preheader_crit_edge:          ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.preheader

for.end35:                                        ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #16
  %state = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 4
  %48 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 11, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end35, %while.end, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %while.end ], [ 0, %for.end35 ], [ -12, %kcalloc.exit.thread ], [ -12, %if.end7.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fore200e_get_esi(ptr noundef %fore200e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 1
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %prom_read = getelementptr inbounds %struct.fore200e_bus, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %prom_read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prom_read, align 4
  %call1 = tail call i32 %4(ptr noundef %fore200e, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %do.end

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 5
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %6, 255
  %add = add nuw nsw i32 %and, 64
  %serial_number = getelementptr inbounds %struct.prom_data, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %serial_number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %serial_number, align 4
  %and4 = and i32 %8, 65535
  %arrayidx = getelementptr %struct.prom_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name, i32 noundef %add, i32 noundef %and4, ptr noundef %arrayidx) #17
  %atm_dev = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 2
  %11 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %atm_dev, align 4
  %arrayidx10 = getelementptr %struct.atm_dev, ptr %12, i32 0, i32 9, i32 0
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 10, i32 0
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %10, ptr %arrayidx12, align 1
  %arrayidx9.1 = getelementptr %struct.prom_data, ptr %call7.i.i, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9.1, align 1
  %17 = load ptr, ptr %atm_dev, align 4
  %arrayidx10.1 = getelementptr %struct.atm_dev, ptr %17, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %16, ptr %arrayidx10.1, align 1
  %arrayidx12.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %16, ptr %arrayidx12.1, align 1
  %arrayidx9.2 = getelementptr %struct.prom_data, ptr %call7.i.i, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9.2, align 4
  %22 = load ptr, ptr %atm_dev, align 4
  %arrayidx10.2 = getelementptr %struct.atm_dev, ptr %22, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %arrayidx10.2, align 1
  %arrayidx12.2 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 10, i32 2
  %24 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %arrayidx12.2, align 1
  %arrayidx9.3 = getelementptr %struct.prom_data, ptr %call7.i.i, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx9.3, align 1
  %27 = load ptr, ptr %atm_dev, align 4
  %arrayidx10.3 = getelementptr %struct.atm_dev, ptr %27, i32 0, i32 9, i32 3
  %28 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %26, ptr %arrayidx10.3, align 1
  %arrayidx12.3 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 10, i32 3
  %29 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %arrayidx12.3, align 1
  %arrayidx9.4 = getelementptr %struct.prom_data, ptr %call7.i.i, i32 0, i32 2, i32 6
  %30 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx9.4, align 2
  %32 = load ptr, ptr %atm_dev, align 4
  %arrayidx10.4 = getelementptr %struct.atm_dev, ptr %32, i32 0, i32 9, i32 4
  %33 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %arrayidx10.4, align 1
  %arrayidx12.4 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 10, i32 4
  %34 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %31, ptr %arrayidx12.4, align 1
  %arrayidx9.5 = getelementptr %struct.prom_data, ptr %call7.i.i, i32 0, i32 2, i32 7
  %35 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx9.5, align 1
  %37 = load ptr, ptr %atm_dev, align 4
  %arrayidx10.5 = getelementptr %struct.atm_dev, ptr %37, i32 0, i32 9, i32 5
  %38 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %36, ptr %arrayidx10.5, align 1
  %arrayidx12.5 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 10, i32 5
  %39 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %arrayidx12.5, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %do.end ], [ -16, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fore200e_irq_request(ptr noundef %fore200e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 7
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 5
  %atm_dev = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 3
  %2 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atm_dev, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @fore200e_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %name, ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @fore200e_irq_itoa.str, ptr noundef nonnull @.str.18, i32 noundef %5) #14
  br i1 %cmp, label %do.end, label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @fore200e_irq_itoa.str, ptr noundef %name) #17
  br label %return

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @fore200e_irq_itoa.str, ptr noundef %name) #17
  %tx_tasklet = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 22
  %6 = ptrtoint ptr %fore200e to i32
  tail call void @tasklet_init(ptr noundef %tx_tasklet, ptr noundef nonnull @fore200e_tx_tasklet, i32 noundef %6) #14
  %rx_tasklet = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 23
  tail call void @tasklet_init(ptr noundef %rx_tasklet, ptr noundef nonnull @fore200e_rx_tasklet, i32 noundef %6) #14
  %state = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %state, align 4
  br label %return

return:                                           ; preds = %do.end7, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fore200e_supply(ptr noundef %fore200e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 1
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc23.1.for.cond2.preheader_crit_edge, %entry
  %scheme.066 = phi i32 [ 0, %entry ], [ %inc27, %for.inc23.1.for.cond2.preheader_crit_edge ]
  %arrayidx5 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.066, i32 0
  %freebuf_count = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.066, i32 0, i32 6
  %0 = ptrtoint ptr %freebuf_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %freebuf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp663 = icmp sgt i32 %1, 31
  br i1 %cmp663, label %do.end.lr.ph, label %for.cond2.preheader.for.inc23_crit_edge

for.cond2.preheader.for.inc23_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc23

do.end.lr.ph:                                     ; preds = %for.cond2.preheader
  %head = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.066, i32 0, i32 1
  %freebuf = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.066, i32 0, i32 5
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %do.end.lr.ph
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %arrayidx7 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx5, i32 0, i32 %3
  %rbd_block = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx5, i32 0, i32 %3, i32 2
  br label %for.body10

for.body10:                                       ; preds = %if.end.for.body10_crit_edge, %do.end
  %i.062 = phi i32 [ 0, %do.end ], [ %inc, %if.end.for.body10_crit_edge ]
  %4 = ptrtoint ptr %freebuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freebuf, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body10.do.end13_crit_edge, label %if.end

for.body10.do.end13_crit_edge:                    ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.end13:                                         ; preds = %for.body10.1.do.end13_crit_edge, %for.body10.do.end13_crit_edge
  %magn.064.lcssa = phi i32 [ 1, %for.body10.1.do.end13_crit_edge ], [ 0, %for.body10.do.end13_crit_edge ]
  %freebuf_count.lcssa = phi ptr [ %freebuf_count.1, %for.body10.1.do.end13_crit_edge ], [ %freebuf_count, %for.body10.do.end13_crit_edge ]
  %6 = ptrtoint ptr %freebuf_count.lcssa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %freebuf_count.lcssa, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %scheme.066, i32 noundef %magn.064.lcssa, i32 noundef %7) #17
  br label %cleanup

if.end:                                           ; preds = %for.body10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %freebuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %freebuf, align 4
  %dma_addr = getelementptr inbounds %struct.buffer, ptr %5, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 4
  %13 = ptrtoint ptr %rbd_block to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rbd_block, align 4
  %buffer_haddr = getelementptr [32 x %struct.rbd], ptr %14, i32 0, i32 %i.062, i32 1
  %15 = ptrtoint ptr %buffer_haddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %buffer_haddr, align 4
  %16 = ptrtoint ptr %5 to i32
  %17 = load ptr, ptr %rbd_block, align 4
  %arrayidx19 = getelementptr [32 x %struct.rbd], ptr %17, i32 0, i32 %i.062
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %arrayidx19, align 4
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %if.end.for.body10_crit_edge

if.end.for.body10_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body10

for.end:                                          ; preds = %if.end
  %19 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %head, align 4
  %add = add i32 %20, 1
  %rem = srem i32 %add, 32
  store i32 %rem, ptr %head, align 4
  %21 = ptrtoint ptr %freebuf_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %freebuf_count, align 4
  %sub = add i32 %22, -32
  store volatile i32 %sub, ptr %freebuf_count, align 4
  %status = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx5, i32 0, i32 %3, i32 1
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %status, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %24, align 4
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %write = getelementptr inbounds %struct.fore200e_bus, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write, align 4
  %rbd_block_dma = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx5, i32 0, i32 %3, i32 3
  %30 = ptrtoint ptr %rbd_block_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rbd_block_dma, align 4
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx7, align 4
  tail call void %29(i32 noundef %31, ptr noundef %33) #14
  %34 = ptrtoint ptr %freebuf_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %freebuf_count, align 4
  %cmp6 = icmp sgt i32 %35, 31
  br i1 %cmp6, label %for.end.do.end_crit_edge, label %for.end.for.inc23_crit_edge

for.end.for.inc23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc23

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.inc23:                                        ; preds = %for.end.for.inc23_crit_edge, %for.cond2.preheader.for.inc23_crit_edge
  %arrayidx5.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.066, i32 1
  %freebuf_count.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.066, i32 1, i32 6
  %36 = ptrtoint ptr %freebuf_count.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %freebuf_count.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %37)
  %cmp663.1 = icmp sgt i32 %37, 31
  br i1 %cmp663.1, label %do.end.lr.ph.1, label %for.inc23.for.inc23.1_crit_edge

for.inc23.for.inc23.1_crit_edge:                  ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc23.1

do.end.lr.ph.1:                                   ; preds = %for.inc23
  %head.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.066, i32 1, i32 1
  %freebuf.1 = getelementptr %struct.fore200e, ptr %fore200e, i32 0, i32 16, i32 %scheme.066, i32 1, i32 5
  br label %do.end.1

do.end.1:                                         ; preds = %for.end.1.do.end.1_crit_edge, %do.end.lr.ph.1
  %38 = ptrtoint ptr %head.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %head.1, align 4
  %arrayidx7.1 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx5.1, i32 0, i32 %39
  %rbd_block.1 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx5.1, i32 0, i32 %39, i32 2
  br label %for.body10.1

for.body10.1:                                     ; preds = %if.end.1.for.body10.1_crit_edge, %do.end.1
  %i.062.1 = phi i32 [ 0, %do.end.1 ], [ %inc.1, %if.end.1.for.body10.1_crit_edge ]
  %40 = ptrtoint ptr %freebuf.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %freebuf.1, align 4
  %tobool.not.1 = icmp eq ptr %41, null
  br i1 %tobool.not.1, label %for.body10.1.do.end13_crit_edge, label %if.end.1

for.body10.1.do.end13_crit_edge:                  ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.end.1:                                         ; preds = %for.body10.1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %freebuf.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %freebuf.1, align 4
  %dma_addr.1 = getelementptr inbounds %struct.buffer, ptr %41, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %dma_addr.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_addr.1, align 4
  %47 = ptrtoint ptr %rbd_block.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rbd_block.1, align 4
  %buffer_haddr.1 = getelementptr [32 x %struct.rbd], ptr %48, i32 0, i32 %i.062.1, i32 1
  %49 = ptrtoint ptr %buffer_haddr.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %buffer_haddr.1, align 4
  %50 = ptrtoint ptr %41 to i32
  %51 = load ptr, ptr %rbd_block.1, align 4
  %arrayidx19.1 = getelementptr [32 x %struct.rbd], ptr %51, i32 0, i32 %i.062.1
  %52 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %arrayidx19.1, align 4
  %inc.1 = add nuw nsw i32 %i.062.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 32
  br i1 %exitcond.1.not, label %for.end.1, label %if.end.1.for.body10.1_crit_edge

if.end.1.for.body10.1_crit_edge:                  ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body10.1

for.end.1:                                        ; preds = %if.end.1
  %53 = ptrtoint ptr %head.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %head.1, align 4
  %add.1 = add i32 %54, 1
  %rem.1 = srem i32 %add.1, 32
  store i32 %rem.1, ptr %head.1, align 4
  %55 = ptrtoint ptr %freebuf_count.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %freebuf_count.1, align 4
  %sub.1 = add i32 %56, -32
  store volatile i32 %sub.1, ptr %freebuf_count.1, align 4
  %status.1 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx5.1, i32 0, i32 %39, i32 1
  %57 = ptrtoint ptr %status.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %status.1, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %58, align 4
  %60 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus, align 4
  %write.1 = getelementptr inbounds %struct.fore200e_bus, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %write.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write.1, align 4
  %rbd_block_dma.1 = getelementptr [32 x %struct.host_bsq_entry], ptr %arrayidx5.1, i32 0, i32 %39, i32 3
  %64 = ptrtoint ptr %rbd_block_dma.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rbd_block_dma.1, align 4
  %66 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx7.1, align 4
  tail call void %63(i32 noundef %65, ptr noundef %67) #14
  %68 = ptrtoint ptr %freebuf_count.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %freebuf_count.1, align 4
  %cmp6.1 = icmp sgt i32 %69, 31
  br i1 %cmp6.1, label %for.end.1.do.end.1_crit_edge, label %for.end.1.for.inc23.1_crit_edge

for.end.1.for.inc23.1_crit_edge:                  ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc23.1

for.end.1.do.end.1_crit_edge:                     ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.1

for.inc23.1:                                      ; preds = %for.end.1.for.inc23.1_crit_edge, %for.inc23.for.inc23.1_crit_edge
  %inc27 = add nuw nsw i32 %scheme.066, 1
  %exitcond75.not = icmp eq i32 %inc27, 2
  br i1 %exitcond75.not, label %for.inc23.1.cleanup_crit_edge, label %for.inc23.1.for.cond2.preheader_crit_edge

for.inc23.1.for.cond2.preheader_crit_edge:        ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader

for.inc23.1.cleanup_crit_edge:                    ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc23.1.cleanup_crit_edge, %do.end13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_open(ptr noundef %vcc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %vci1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %4 = ptrtoint ptr %vci1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vci1, align 8
  %vpi2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %6 = ptrtoint ptr %vpi2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vpi2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp5 = icmp eq i16 %7, 0
  br i1 %cmp5, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 1313, ptr noundef nonnull @.str.23) #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #20
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %5)
  %8 = icmp ult i32 %5, 1024
  br i1 %8, label %do.body20, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 1314, ptr noundef nonnull @.str.27) #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #20
  unreachable

do.body20:                                        ; preds = %if.end
  %q_lock = getelementptr inbounds %struct.fore200e, ptr %3, i32 0, i32 21
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #14
  %arrayidx = getelementptr %struct.fore200e, ptr %3, i32 0, i32 26, i32 %5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end41, label %if.then33

if.then33:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call25) #14
  %atm_dev = getelementptr inbounds %struct.fore200e, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %14, i32 noundef 0, i32 noundef %5) #17
  br label %cleanup

if.end41:                                         ; preds = %do.body20
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vcc, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call25) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 32) #19
  %cmp45 = icmp eq ptr %call7.i.i, null
  br i1 %cmp45, label %if.then47, label %do.end52

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

do.end52:                                         ; preds = %if.end41
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %18 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp54 = icmp eq i8 %19, 2
  br i1 %cmp54, label %land.lhs.true56, label %do.end52.if.end76_crit_edge

do.end52.if.end76_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

land.lhs.true56:                                  ; preds = %do.end52
  %max_pcr = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp59 = icmp sgt i32 %21, 0
  br i1 %cmp59, label %if.then61, label %land.lhs.true56.if.end76_crit_edge

land.lhs.true56.if.end76_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then61:                                        ; preds = %land.lhs.true56
  %rate_mtx = getelementptr inbounds %struct.fore200e, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rate_mtx, i32 noundef 0) #14
  %available_cell_rate = getelementptr inbounds %struct.fore200e, ptr %3, i32 0, i32 17
  %22 = ptrtoint ptr %available_cell_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %available_cell_rate, align 4
  %24 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_pcr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp65 = icmp ult i32 %23, %25
  br i1 %cmp65, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %rate_mtx) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 %23, %25
  %27 = ptrtoint ptr %available_cell_rate to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %available_cell_rate, align 4
  tail call void @mutex_unlock(ptr noundef %rate_mtx) #14
  br label %if.end76

if.end76:                                         ; preds = %if.end70, %land.lhs.true56.if.end76_crit_edge, %do.end52.if.end76_crit_edge
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %number78 = getelementptr inbounds %struct.atm_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %number78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %number78, align 4
  %conv79 = trunc i32 %31 to i16
  %itf = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 18
  %32 = ptrtoint ptr %itf to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv79, ptr %itf, align 8
  %flags80 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags80) #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags80) #14
  %dev_data82 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %33 = ptrtoint ptr %dev_data82 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %dev_data82, align 8
  %call84 = tail call fastcc i32 @fore200e_activate_vcin(ptr noundef %3, i32 noundef 1, ptr noundef %vcc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then87, label %if.end96

if.then87:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags80) #14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags80) #14
  %35 = ptrtoint ptr %dev_data82 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %dev_data82, align 8
  %max_pcr94 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 0, i32 1
  %36 = ptrtoint ptr %max_pcr94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_pcr94, align 4
  %available_cell_rate95 = getelementptr inbounds %struct.fore200e, ptr %3, i32 0, i32 17
  %38 = ptrtoint ptr %available_cell_rate95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %available_cell_rate95, align 4
  %add = add i32 %39, %37
  store i32 %add, ptr %available_cell_rate95, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end96:                                         ; preds = %if.end76
  %40 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp101 = icmp eq i8 %41, 2
  br i1 %cmp101, label %land.lhs.true103, label %if.end96.if.end115_crit_edge

if.end96.if.end115_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

land.lhs.true103:                                 ; preds = %if.end96
  %max_pcr106 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 0, i32 1
  %42 = ptrtoint ptr %max_pcr106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_pcr106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp107 = icmp sgt i32 %43, 0
  br i1 %cmp107, label %if.then109, label %land.lhs.true103.if.end115_crit_edge

land.lhs.true103.if.end115_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then109:                                       ; preds = %land.lhs.true103
  %rate = getelementptr inbounds %struct.fore200e_vcc, ptr %call7.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %max_pcr106 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_pcr106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 353207, i32 %45)
  %cmp.i = icmp slt i32 %45, 353207
  br i1 %cmp.i, label %if.then.i, label %if.then109.fore200e_rate_ctrl.exit_crit_edge

if.then109.fore200e_rate_ctrl.exit_crit_edge:     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_rate_ctrl.exit

if.then.i:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul i32 %45, 255
  %div.i = sdiv i32 %mul.i, 353207
  %bf.shl.i = shl nsw i32 %div.i, 16
  %sub.i = sub nsw i32 255, %div.i
  %bf.value5.i = and i32 %sub.i, 65535
  %bf.set7.i = or i32 %bf.value5.i, %bf.shl.i
  br label %fore200e_rate_ctrl.exit

fore200e_rate_ctrl.exit:                          ; preds = %if.then.i, %if.then109.fore200e_rate_ctrl.exit_crit_edge
  %storemerge.i = phi i32 [ %bf.set7.i, %if.then.i ], [ 0, %if.then109.fore200e_rate_ctrl.exit_crit_edge ]
  %46 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %storemerge.i, ptr %rate, align 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags80) #14
  br label %if.end115

if.end115:                                        ; preds = %fore200e_rate_ctrl.exit, %land.lhs.true103.if.end115_crit_edge, %if.end96.if.end115_crit_edge
  %rx_min_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %call7.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %rx_min_pdu to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 65536, ptr %rx_min_pdu, align 8
  %tx_min_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %call7.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %tx_min_pdu to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 65536, ptr %tx_min_pdu, align 8
  %rx_max_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %call7.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %rx_max_pdu to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %rx_max_pdu, align 4
  %tx_max_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %call7.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %tx_max_pdu to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %tx_max_pdu, align 4
  %rx_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %call7.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %rx_pdu to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %rx_pdu, align 4
  %tx_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %call7.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %tx_pdu to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tx_pdu, align 8
  %incarn_count = getelementptr inbounds %struct.fore200e, ptr %3, i32 0, i32 25
  %53 = ptrtoint ptr %incarn_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %incarn_count, align 4
  %inc = add i32 %54, 1
  store i32 %inc, ptr %incarn_count, align 4
  %incarn = getelementptr %struct.fore200e, ptr %3, i32 0, i32 26, i32 %5, i32 1
  %55 = ptrtoint ptr %incarn to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc, ptr %incarn, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags80) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.then87, %if.then67, %if.then47, %if.then33
  %retval.0 = phi i32 [ -22, %if.then33 ], [ -12, %if.then47 ], [ -11, %if.then67 ], [ -22, %if.then87 ], [ 0, %if.end115 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fore200e_close(ptr noundef %vcc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vcc, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.35, i32 noundef 1420, ptr noundef nonnull @.str.36) #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.35) #20
  unreachable

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %4 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vpi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp4 = icmp eq i16 %5, 0
  br i1 %cmp4, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.35, i32 noundef 1423, ptr noundef nonnull @.str.39) #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.35) #20
  unreachable

if.end12:                                         ; preds = %if.end
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %6 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vci, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %7)
  %8 = icmp ult i32 %7, 1024
  br i1 %8, label %do.end28, label %do.end22

do.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.35, i32 noundef 1424, ptr noundef nonnull @.str.42) #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.35) #20
  unreachable

do.end28:                                         ; preds = %if.end12
  %flags29 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags29) #14
  %9 = tail call fastcc i32 @fore200e_activate_vcin(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %vcc)
  %q_lock = getelementptr inbounds %struct.fore200e, ptr %3, i32 0, i32 21
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #14
  %10 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vpi, align 4
  %conv44 = sext i16 %11 to i32
  %shl = shl nsw i32 %conv44, 10
  %12 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vci, align 8
  %or = or i32 %shl, %13
  %arrayidx = getelementptr %struct.fore200e, ptr %3, i32 0, i32 26, i32 %or
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  store i16 0, ptr %vpi, align 4
  store i32 0, ptr %vci, align 8
  %itf = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 18
  %15 = ptrtoint ptr %itf to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %itf, align 8
  %dev_data49 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %16 = ptrtoint ptr %dev_data49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_data49, align 8
  store ptr null, ptr %dev_data49, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call37) #14
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %18 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp53 = icmp eq i8 %19, 2
  br i1 %cmp53, label %land.lhs.true55, label %do.end28.if.end66_crit_edge

do.end28.if.end66_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true55:                                  ; preds = %do.end28
  %max_pcr = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp58 = icmp sgt i32 %21, 0
  br i1 %cmp58, label %if.then60, label %land.lhs.true55.if.end66_crit_edge

land.lhs.true55.if.end66_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then60:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #16
  %rate_mtx = getelementptr inbounds %struct.fore200e, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rate_mtx, i32 noundef 0) #14
  %22 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_pcr, align 4
  %available_cell_rate = getelementptr inbounds %struct.fore200e, ptr %3, i32 0, i32 17
  %24 = ptrtoint ptr %available_cell_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %available_cell_rate, align 4
  %add = add i32 %25, %23
  store i32 %add, ptr %available_cell_rate, align 4
  tail call void @mutex_unlock(ptr noundef %rate_mtx) #14
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags29) #14
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %land.lhs.true55.if.end66_crit_edge, %do.end28.if.end66_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags29) #14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags29) #14
  %tobool69.not = icmp eq ptr %17, null
  br i1 %tobool69.not, label %do.end73, label %if.end76

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.35, i32 noundef 1459, ptr noundef nonnull @.str.45) #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.35) #20
  unreachable

if.end76:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %17) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  %tmp.i = alloca %struct.sonet_stats, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2145099504, label %sw.bb
    i32 -2147196652, label %sw.bb1
    i32 1074553171, label %sw.bb7
    i32 1074553170, label %sw.bb9
    i32 1074553172, label %sw.bb27
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp.i) #14
  %call.i = tail call fastcc i32 @fore200e_getstats(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.fore200e_fetch_stats.exit_crit_edge, label %if.end.i

sw.bb.fore200e_fetch_stats.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_fetch_stats.exit

if.end.i:                                         ; preds = %sw.bb
  %stats.i = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stats.i, align 4
  %oc3.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %oc3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oc3.i, align 4
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i, align 4
  %line_bip24_errors.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %line_bip24_errors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line_bip24_errors.i, align 4
  %line_bip.i = getelementptr inbounds %struct.sonet_stats, ptr %tmp.i, i32 0, i32 1
  %10 = ptrtoint ptr %line_bip.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %line_bip.i, align 4
  %path_bip8_errors.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %path_bip8_errors.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %path_bip8_errors.i, align 4
  %path_bip.i = getelementptr inbounds %struct.sonet_stats, ptr %tmp.i, i32 0, i32 2
  %13 = ptrtoint ptr %path_bip.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %path_bip.i, align 4
  %line_febe_errors.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %line_febe_errors.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %line_febe_errors.i, align 4
  %line_febe.i = getelementptr inbounds %struct.sonet_stats, ptr %tmp.i, i32 0, i32 3
  %16 = ptrtoint ptr %line_febe.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %line_febe.i, align 4
  %path_febe_errors.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %path_febe_errors.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %path_febe_errors.i, align 4
  %path_febe.i = getelementptr inbounds %struct.sonet_stats, ptr %tmp.i, i32 0, i32 4
  %19 = ptrtoint ptr %path_febe.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %path_febe.i, align 4
  %corr_hcs_errors.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %corr_hcs_errors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %corr_hcs_errors.i, align 4
  %corr_hcs.i = getelementptr inbounds %struct.sonet_stats, ptr %tmp.i, i32 0, i32 5
  %22 = ptrtoint ptr %corr_hcs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %corr_hcs.i, align 4
  %ucorr_hcs_errors.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %ucorr_hcs_errors.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ucorr_hcs_errors.i, align 4
  %uncorr_hcs.i = getelementptr inbounds %struct.sonet_stats, ptr %tmp.i, i32 0, i32 6
  %25 = ptrtoint ptr %uncorr_hcs.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %uncorr_hcs.i, align 4
  %aal0.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 3
  %26 = ptrtoint ptr %aal0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %aal0.i, align 4
  %aal34.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 4
  %28 = ptrtoint ptr %aal34.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aal34.i, align 4
  %add.i = add i32 %29, %27
  %aal5.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 5
  %30 = ptrtoint ptr %aal5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %aal5.i, align 4
  %add18.i = add i32 %add.i, %31
  %tx_cells.i = getelementptr inbounds %struct.sonet_stats, ptr %tmp.i, i32 0, i32 7
  %32 = ptrtoint ptr %tx_cells.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add18.i, ptr %tx_cells.i, align 4
  %cells_received.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %cells_received.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cells_received.i, align 4
  %cells_received23.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %cells_received23.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cells_received23.i, align 4
  %add24.i = add i32 %36, %34
  %cells_received27.i = getelementptr inbounds %struct.stats, ptr %4, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %cells_received27.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cells_received27.i, align 4
  %add28.i = add i32 %add24.i, %38
  %rx_cells.i = getelementptr inbounds %struct.sonet_stats, ptr %tmp.i, i32 0, i32 8
  %39 = ptrtoint ptr %rx_cells.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add28.i, ptr %rx_cells.i, align 4
  %tobool.not.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i, label %if.end.i.fore200e_fetch_stats.exit_crit_edge, label %if.then.i.i

if.end.i.fore200e_fetch_stats.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_fetch_stats.exit

if.then.i.i:                                      ; preds = %if.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 174) #14
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %if.then.i.i.fore200e_fetch_stats.exit_crit_edge, label %if.end.i.i.i

if.then.i.i.fore200e_fetch_stats.exit_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_fetch_stats.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %arg, i32 36, i32 -1226833920) #21, !srcloc !325
  %asmresult.i.i.i = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.fore200e_fetch_stats.exit_crit_edge

if.end.i.i.i.fore200e_fetch_stats.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_fetch_stats.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp.i, i32 noundef 36) #14
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %arg, ptr noundef nonnull %tmp.i, i32 noundef 36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool31.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool31.not.i, i32 0, i32 -14
  br label %fore200e_fetch_stats.exit

fore200e_fetch_stats.exit:                        ; preds = %copy_to_user.exit.i, %if.end.i.i.i.fore200e_fetch_stats.exit_crit_edge, %if.then.i.i.fore200e_fetch_stats.exit_crit_edge, %if.end.i.fore200e_fetch_stats.exit_crit_edge, %sw.bb.fore200e_fetch_stats.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %sw.bb.fore200e_fetch_stats.exit_crit_edge ], [ 0, %if.end.i.fore200e_fetch_stats.exit_crit_edge ], [ -14, %if.then.i.i.fore200e_fetch_stats.exit_crit_edge ], [ -14, %if.end.i.i.i.fore200e_fetch_stats.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp.i) #14
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1866) #14
  %41 = tail call i32 @llvm.read_register.i32(metadata !303) #14
  %and.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !326
  %and.i = and i32 %43, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !328
  %44 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 0, i32 -1226833921) #14, !srcloc !329
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #14, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp eq i32 %44, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %45 = ptrtoint ptr %arg to i32
  %call.i59 = tail call zeroext i1 @capable(i32 noundef 12) #14
  br i1 %call.i59, label %if.end.i60, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i60:                                       ; preds = %sw.bb7
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %45, label %if.end.i60.cleanup_crit_edge [
    i32 0, label %if.end.i60.sw.epilog.i_crit_edge
    i32 8, label %sw.bb1.i
    i32 2048, label %sw.bb2.i
  ]

if.end.i60.sw.epilog.i_crit_edge:                 ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end.i60.cleanup_crit_edge:                     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %if.end.i60.sw.epilog.i_crit_edge
  %mct_value.0.i = phi i32 [ 263431, %sw.bb2.i ], [ 132359, %sw.bb1.i ], [ 1287, %if.end.i60.sw.epilog.i_crit_edge ]
  %mct_mask.0.i = phi i32 [ 67108864, %sw.bb2.i ], [ 33554432, %sw.bb1.i ], [ 100663296, %if.end.i60.sw.epilog.i_crit_edge ]
  %host_cmdq.i.i = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 13
  %head.i.i = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 13, i32 1
  %47 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %head.i.i, align 4
  %arrayidx.i.i = getelementptr [16 x %struct.host_cmdq_entry], ptr %host_cmdq.i.i, i32 0, i32 %48
  %add.i.i = add i32 %48, 1
  %rem.i.i = srem i32 %add.i.i, 16
  store i32 %rem.i.i, ptr %head.i.i, align 4
  %bf.set16.i.i = or i32 %mct_mask.0.i, %mct_value.0.i
  %bus.i.i = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write.i.i, align 4
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i, align 4
  %regs_haddr.i.i = getelementptr inbounds %struct.oc3_block, ptr %54, i32 0, i32 1
  tail call void %52(i32 noundef 0, ptr noundef %regs_haddr.i.i) #14
  %status.i.i = getelementptr [16 x %struct.host_cmdq_entry], ptr %host_cmdq.i.i, i32 0, i32 %48, i32 1
  %55 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %status.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %56, align 4
  %58 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus.i.i, align 4
  %write18.i.i = getelementptr inbounds %struct.fore200e_bus, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %write18.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write18.i.i, align 4
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %61(i32 noundef %bf.set16.i.i, ptr noundef %63) #14
  %64 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %status.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !321
  tail call void @arm_heavy_mb() #14
  %add.neg.i.i.i = sub i32 -40, %66
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %do.cond2.i.i.i.do.body1.i.i.i_crit_edge, %sw.epilog.i
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp.i.i.i61 = icmp eq i32 %68, 2
  br i1 %cmp.i.i.i61, label %if.then4.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.body1.i.i.i
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %65, align 4
  %and.i.i.i62 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i62)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i62, 0
  br i1 %tobool.not.i.i.i, label %do.cond2.i.i.i, label %lor.lhs.false.i.i.i.fore200e_set_oc3.exit.i_crit_edge

lor.lhs.false.i.i.i.fore200e_set_oc3.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_set_oc3.exit.i

do.cond2.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = add i32 %add.neg.i.i.i, %71
  %cmp3.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp3.i.i.i, label %do.cond2.i.i.i.do.body1.i.i.i_crit_edge, label %do.cond2.i.i.i.fore200e_set_oc3.exit.i_crit_edge

do.cond2.i.i.i.fore200e_set_oc3.exit.i_crit_edge: ; preds = %do.cond2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_set_oc3.exit.i

do.cond2.i.i.i.do.body1.i.i.i_crit_edge:          ; preds = %do.cond2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i

fore200e_set_oc3.exit.i:                          ; preds = %do.cond2.i.i.i.fore200e_set_oc3.exit.i_crit_edge, %lor.lhs.false.i.i.i.fore200e_set_oc3.exit.i_crit_edge
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %65, align 4
  %call11.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %73, i32 noundef 2) #17
  %74 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %status.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %75, align 4
  %name.i.i = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 5
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 5, ptr noundef %name.i.i) #17
  br label %cleanup

if.then4.i:                                       ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %status.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4, ptr %78, align 4
  %loop_mode5.i = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 18
  %80 = ptrtoint ptr %loop_mode5.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %45, ptr %loop_mode5.i, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %loop_mode = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 18
  %81 = ptrtoint ptr %loop_mode to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %loop_mode, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1872) #14
  %83 = tail call i32 @llvm.read_register.i32(metadata !303) #14
  %and.i.i.i51 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i51 to ptr
  %cpu_domain.i.i52 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 4
  %85 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i52) #12, !srcloc !326
  %and.i53 = and i32 %85, -13
  %or.i54 = or i32 %and.i53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i54) #14, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !328
  %86 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %82, i32 -1226833921) #14, !srcloc !330
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #14, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool25.not = icmp eq i32 %86, 0
  %cond26 = select i1 %tobool25.not, i32 0, i32 -14
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1875) #14
  %87 = tail call i32 @llvm.read_register.i32(metadata !303) #14
  %and.i.i.i55 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i55 to ptr
  %cpu_domain.i.i56 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 4
  %89 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i56) #12, !srcloc !326
  %and.i57 = and i32 %89, -13
  %or.i58 = or i32 %and.i57, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i58) #14, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !328
  %90 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 2056, i32 -1226833921) #14, !srcloc !331
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #14, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool43.not = icmp eq i32 %90, 0
  %cond44 = select i1 %tobool43.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %sw.bb9, %if.then4.i, %fore200e_set_oc3.exit.i, %if.end.i60.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb1, %fore200e_fetch_stats.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond44, %sw.bb27 ], [ %cond26, %sw.bb9 ], [ %cond, %sw.bb1 ], [ %retval.0.i, %fore200e_fetch_stats.exit ], [ -38, %entry.cleanup_crit_edge ], [ -1, %sw.bb7.cleanup_crit_edge ], [ -22, %if.end.i60.cleanup_crit_edge ], [ 0, %if.then4.i ], [ -5, %fore200e_set_oc3.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_send(ptr noundef %vcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %tobool.not = icmp eq ptr %vcc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data, align 8
  %dev_data2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %6 = ptrtoint ptr %dev_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_data2, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %host_txq = getelementptr inbounds %struct.fore200e, ptr %5, i32 0, i32 14
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %flags9 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  %8 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags9, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %12)
  %cmp = icmp eq i8 %12, 13
  br i1 %cmp, label %land.lhs.true, label %if.end12.if.else_crit_edge

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end12
  %max_sdu = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 0, i32 5
  %13 = ptrtoint ptr %max_sdu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_sdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %14)
  %cmp15 = icmp eq i32 %14, 52
  br i1 %cmp15, label %if.then17, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %data18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data18, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4
  %sub = add i32 %1, -4
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end12.if.else_crit_edge
  %data24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then17
  %tx_len.0 = phi i32 [ %sub, %if.then17 ], [ %1, %if.else ]
  %cell_header.0 = phi ptr [ %16, %if.then17 ], [ null, %if.else ]
  %skb_data.0 = phi ptr [ %add.ptr, %if.then17 ], [ %18, %if.else ]
  %19 = ptrtoint ptr %skb_data.0 to i32
  %and = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %12)
  %cmp36 = icmp ne i8 %12, 13
  %rem = srem i32 %tx_len.0, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool39.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %cmp36, i1 true, i1 %tobool39.not
  %20 = add i32 %tx_len.0, 48
  %mul = sub i32 %20, %rem
  %tx_len.2 = select i1 %or.cond, i32 %tx_len.0, i32 %mul
  %tobool45.not = select i1 %or.cond, i1 %tobool27.not, i1 false
  br i1 %tobool45.not, label %if.end26.if.end64_crit_edge, label %if.end8.i

if.end26.if.end64_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.end8.i:                                        ; preds = %if.end26
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %tx_len.2, i32 noundef 2592) #18
  %cmp48 = icmp eq ptr %call9.i, null
  br i1 %cmp48, label %if.then50, label %if.end56

if.then50:                                        ; preds = %if.end8.i
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %21 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pop, align 4
  %tobool51.not = icmp eq ptr %22, null
  br i1 %tobool51.not, label %if.else54, label %if.then52

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %22(ptr noundef nonnull %vcc, ptr noundef %skb) #14
  br label %cleanup

if.else54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %cleanup

if.end56:                                         ; preds = %if.end8.i
  %23 = call ptr @memcpy(ptr %call9.i, ptr %skb_data.0, i32 %tx_len.0)
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_len.2, i32 %tx_len.0)
  %cmp57 = icmp sgt i32 %tx_len.2, %tx_len.0
  br i1 %cmp57, label %if.then59, label %if.end56.if.end64_crit_edge

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr60 = getelementptr i8, ptr %call9.i, i32 %tx_len.0
  %sub61 = sub i32 %tx_len.2, %tx_len.0
  %24 = call ptr @memset(ptr %add.ptr60, i32 0, i32 %sub61)
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end56.if.end64_crit_edge, %if.end26.if.end64_crit_edge
  %spec.select410 = phi ptr [ null, %if.end26.if.end64_crit_edge ], [ %call9.i, %if.end56.if.end64_crit_edge ], [ %call9.i, %if.then59 ]
  %data.0 = phi ptr [ %skb_data.0, %if.end26.if.end64_crit_edge ], [ %call9.i, %if.end56.if.end64_crit_edge ], [ %call9.i, %if.then59 ]
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %25 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vpi, align 4
  %conv66 = sext i16 %26 to i32
  %shl = shl nsw i32 %conv66, 10
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %27 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vci, align 8
  %or = or i32 %shl, %28
  %arrayidx = getelementptr %struct.fore200e, ptr %5, i32 0, i32 26, i32 %or
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %cmp68 = icmp eq ptr %30, %vcc
  br i1 %cmp68, label %retry_here.preheader, label %do.end73

retry_here.preheader:                             ; preds = %if.end64
  %q_lock = getelementptr inbounds %struct.fore200e, ptr %5, i32 0, i32 21
  %head = getelementptr inbounds %struct.fore200e, ptr %5, i32 0, i32 14, i32 1
  %txing = getelementptr inbounds %struct.fore200e, ptr %5, i32 0, i32 14, i32 5
  br label %retry_here

do.end73:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.53, i32 noundef 1553, ptr noundef nonnull @.str.54) #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.53) #20
  unreachable

retry_here:                                       ; preds = %if.then100, %retry_here.preheader
  %retry.0 = phi i32 [ %dec, %if.then100 ], [ 16, %retry_here.preheader ]
  %call82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #14
  %31 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head, align 4
  %status = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %32, i32 1
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %status, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp88.not = icmp eq i32 %36, 4
  br i1 %cmp88.not, label %lor.lhs.false, label %retry_here.if.then92_crit_edge

retry_here.if.then92_crit_edge:                   ; preds = %retry_here
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

lor.lhs.false:                                    ; preds = %retry_here
  %37 = ptrtoint ptr %txing to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %txing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %38)
  %cmp90 = icmp sgt i32 %38, 253
  br i1 %cmp90, label %lor.lhs.false.if.then92_crit_edge, label %lor.lhs.false.if.end115_crit_edge

lor.lhs.false.if.end115_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %retry_here.if.then92_crit_edge
  tail call fastcc void @fore200e_tx_irq(ptr noundef nonnull %5)
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %status, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp94.not = icmp eq i32 %42, 4
  br i1 %cmp94.not, label %if.then92.if.end115_crit_edge, label %if.then96

if.then92.if.end115_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then96:                                        ; preds = %if.then92
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call82) #14
  %dec = add nsw i32 %retry.0, -1
  %cmp98.not = icmp eq i32 %dec, 0
  br i1 %cmp98.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 10737400) #14
  br label %retry_here

if.end101:                                        ; preds = %if.then96
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %44 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stats, align 8
  %tx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %45, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %tx_err, i32 1, i32 3, i32 1) #14
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err, ptr %tx_err, i32 1, ptr elementtype(i32) %tx_err) #14, !srcloc !332
  %tx_sat = getelementptr inbounds %struct.fore200e, ptr %5, i32 0, i32 24
  %47 = ptrtoint ptr %tx_sat to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_sat, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %tx_sat, align 4
  %pop105 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %49 = ptrtoint ptr %pop105 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pop105, align 4
  %tobool106.not = icmp eq ptr %50, null
  br i1 %tobool106.not, label %if.else109, label %if.then107

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %50(ptr noundef nonnull %vcc, ptr noundef %skb) #14
  br label %if.end110

if.else109:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %if.end110

if.end110:                                        ; preds = %if.else109, %if.then107
  br i1 %tobool45.not, label %if.end110.cleanup_crit_edge, label %if.then112

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %data.0) #14
  br label %cleanup

if.end115:                                        ; preds = %if.then92.if.end115_crit_edge, %lor.lhs.false.if.end115_crit_edge
  %arrayidx87.le = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %32
  %incarn = getelementptr %struct.fore200e, ptr %5, i32 0, i32 26, i32 %or, i32 1
  %51 = ptrtoint ptr %incarn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %incarn, align 4
  %incarn116 = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %32, i32 6
  %53 = ptrtoint ptr %incarn116 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %incarn116, align 4
  %vc_map117 = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %32, i32 7
  %54 = ptrtoint ptr %vc_map117 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx, ptr %vc_map117, align 4
  %skb118 = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %32, i32 4
  %55 = ptrtoint ptr %skb118 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %skb, ptr %skb118, align 4
  %data120 = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %32, i32 5
  %56 = ptrtoint ptr %data120 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %spec.select410, ptr %data120, align 4
  %tpd121 = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %32, i32 2
  %57 = ptrtoint ptr %tpd121 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tpd121, align 4
  %dev122 = getelementptr inbounds %struct.fore200e, ptr %5, i32 0, i32 6
  %59 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev122, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %data.0) #14
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end115
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i412, !prof !320

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit

if.then.i412:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %60) #14
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i411 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i411, label %if.end.i.i413, label %if.then.i412.dev_name.exit.i_crit_edge

if.then.i412.dev_name.exit.i_crit_edge:           ; preds = %if.then.i412
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i413:                                    ; preds = %if.then.i412
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i413, %if.then.i412.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %64, %if.end.i.i413 ], [ %62, %if.then.i412.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %60, ptr noundef %data.0, i32 noundef %tx_len.2) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %data.0 to i32
  %sub.i = add i32 %66, 1073741824
  %shr.i414 = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %65, i32 %shr.i414
  %and.i = and i32 %66, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %60, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %tx_len.2, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %tsd = getelementptr inbounds %struct.tpd, ptr %58, i32 0, i32 4
  %67 = ptrtoint ptr %tsd to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %retval.0.i, ptr %tsd, align 4
  %68 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev122, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %69, i32 noundef %retval.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i415 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i415, label %if.then131, label %if.end136

if.then131:                                       ; preds = %dma_map_single_attrs.exit
  br i1 %tobool45.not, label %if.then131.if.end134_crit_edge, label %if.then133

if.then131.if.end134_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.then133:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %data.0) #14
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.then131.if.end134_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call82) #14
  br label %cleanup

if.end136:                                        ; preds = %dma_map_single_attrs.exit
  %length = getelementptr inbounds %struct.tpd, ptr %58, i32 0, i32 4, i32 0, i32 1
  %70 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %tx_len.2, ptr %length, align 4
  %71 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %head, align 4
  %add140 = add i32 %72, 1
  %rem141 = srem i32 %add140, 256
  store i32 %rem141, ptr %head, align 4
  %73 = ptrtoint ptr %txing to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %txing, align 4
  %inc144 = add i32 %74, 1
  store i32 %inc144, ptr %txing, align 4
  %tx_min_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %7, i32 0, i32 4
  %75 = ptrtoint ptr %tx_min_pdu to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_min_pdu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_len.0, i32 %76)
  %cmp148 = icmp slt i32 %tx_len.0, %76
  br i1 %cmp148, label %if.then150, label %if.end136.if.end152_crit_edge

if.end136.if.end152_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

if.then150:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %tx_min_pdu to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %tx_len.0, ptr %tx_min_pdu, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %if.end136.if.end152_crit_edge
  %tx_max_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %7, i32 0, i32 5
  %78 = ptrtoint ptr %tx_max_pdu to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_max_pdu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_len.0, i32 %79)
  %cmp153 = icmp sgt i32 %tx_len.0, %79
  br i1 %cmp153, label %if.then155, label %if.end152.if.end157_crit_edge

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %tx_max_pdu to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %tx_len.0, ptr %tx_max_pdu, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end152.if.end157_crit_edge
  %tx_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %7, i32 0, i32 6
  %81 = ptrtoint ptr %tx_pdu to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_pdu, align 4
  %inc158 = add i32 %82, 1
  store i32 %inc158, ptr %tx_pdu, align 4
  %rate = getelementptr inbounds %struct.fore200e_vcc, ptr %7, i32 0, i32 1
  %83 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load = load i32, ptr %rate, align 4
  %bf.lshr = and i32 %bf.load, -65536
  %rate159 = getelementptr inbounds %struct.tpd, ptr %58, i32 0, i32 2
  %84 = ptrtoint ptr %rate159 to i32
  call void @__asan_load4_noabort(i32 %84)
  %bf.load160 = load i32, ptr %rate159, align 4
  %bf.clear = and i32 %bf.load160, 65535
  %bf.set = or i32 %bf.clear, %bf.lshr
  store i32 %bf.set, ptr %rate159, align 4
  %bf.load162 = load i32, ptr %rate, align 4
  %bf.clear163 = and i32 %bf.load162, 65535
  %bf.set168 = or i32 %bf.clear163, %bf.lshr
  store i32 %bf.set168, ptr %rate159, align 4
  %tobool169.not = icmp eq ptr %cell_header.0, null
  br i1 %tobool169.not, label %if.else207, label %if.then170

if.then170:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %cell_header.0 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cell_header.0, align 4
  %and171 = and i32 %86, 1
  %87 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load172 = load i32, ptr %58, align 4
  %bf.clear174 = and i32 %bf.load172, -2
  %bf.set175 = or i32 %bf.clear174, %and171
  store i32 %bf.set175, ptr %58, align 4
  %88 = load i32, ptr %cell_header.0, align 4
  %shr = and i32 %88, 14
  %bf.clear181 = and i32 %bf.set175, -15
  %bf.set182 = or i32 %bf.clear181, %shr
  store i32 %bf.set182, ptr %58, align 4
  %89 = load i32, ptr %cell_header.0, align 4
  %shr184 = and i32 %89, 1048560
  %bf.clear189 = and i32 %bf.set182, -1048561
  %bf.set190 = or i32 %bf.clear189, %shr184
  store i32 %bf.set190, ptr %58, align 4
  %90 = load i32, ptr %cell_header.0, align 4
  %shr192 = and i32 %90, 267386880
  %bf.clear197 = and i32 %bf.set190, -267386881
  %bf.set198 = or i32 %bf.clear197, %shr192
  store i32 %bf.set198, ptr %58, align 4
  %91 = load i32, ptr %cell_header.0, align 4
  %shr200 = and i32 %91, -268435456
  %bf.clear205 = and i32 %bf.set198, 268435455
  %bf.set206 = or i32 %bf.clear205, %shr200
  br label %if.end235

if.else207:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #16
  %92 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load209 = load i32, ptr %58, align 4
  %bf.clear214 = and i32 %bf.load209, -16
  store i32 %bf.clear214, ptr %58, align 4
  %93 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vci, align 8
  %bf.value219 = shl i32 %94, 4
  %bf.shl220 = and i32 %bf.value219, 1048560
  %bf.clear221 = and i32 %bf.load209, -1048576
  %bf.set222 = or i32 %bf.shl220, %bf.clear221
  store i32 %bf.set222, ptr %58, align 4
  %95 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vpi, align 4
  %97 = and i16 %96, 255
  %bf.value227 = zext i16 %97 to i32
  %bf.shl228 = shl nuw nsw i32 %bf.value227, 20
  %bf.set230 = or i32 %bf.shl228, %bf.shl220
  br label %if.end235

if.end235:                                        ; preds = %if.else207, %if.then170
  %storemerge = phi i32 [ %bf.set230, %if.else207 ], [ %bf.set206, %if.then170 ]
  %98 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %storemerge, ptr %58, align 4
  %spec = getelementptr inbounds %struct.tpd, ptr %58, i32 0, i32 1
  %99 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load236 = load i32, ptr %spec, align 4
  %bf.value237 = and i32 %tx_len.2, 65535
  %bf.clear238 = and i32 %bf.load236, -16777216
  %bf.set239 = or i32 %bf.value237, %bf.clear238
  %bf.set243 = or i32 %bf.set239, 65536
  store i32 %bf.set243, ptr %spec, align 4
  %100 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %aal, align 8
  %102 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %101, label %sw.epilog.i [
    i8 13, label %if.end235.fore200e_atm2fore_aal.exit_crit_edge
    i8 3, label %sw.bb1.i
    i8 1, label %if.end235.sw.bb2.i_crit_edge
    i8 2, label %if.end235.sw.bb2.i_crit_edge443
    i8 5, label %if.end235.sw.bb2.i_crit_edge444
  ]

if.end235.sw.bb2.i_crit_edge444:                  ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

if.end235.sw.bb2.i_crit_edge443:                  ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

if.end235.sw.bb2.i_crit_edge:                     ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

if.end235.fore200e_atm2fore_aal.exit_crit_edge:   ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_atm2fore_aal.exit

sw.bb1.i:                                         ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_atm2fore_aal.exit

sw.bb2.i:                                         ; preds = %if.end235.sw.bb2.i_crit_edge, %if.end235.sw.bb2.i_crit_edge443, %if.end235.sw.bb2.i_crit_edge444
  br label %fore200e_atm2fore_aal.exit

sw.epilog.i:                                      ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_atm2fore_aal.exit

fore200e_atm2fore_aal.exit:                       ; preds = %sw.epilog.i, %sw.bb2.i, %sw.bb1.i, %if.end235.fore200e_atm2fore_aal.exit_crit_edge
  %retval.0.i416 = phi i32 [ 167772160, %sw.epilog.i ], [ 83886080, %sw.bb2.i ], [ 67108864, %sw.bb1.i ], [ 0, %if.end235.fore200e_atm2fore_aal.exit_crit_edge ]
  %bf.clear252 = or i32 %bf.value237, %retval.0.i416
  %bf.set257 = or i32 %bf.clear252, 268500992
  %103 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %bf.set257, ptr %spec, align 4
  %tpd_dma = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %32, i32 3
  %104 = ptrtoint ptr %tpd_dma to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tpd_dma, align 4
  %shr264 = and i32 %105, -32
  %bf.set269 = or i32 %shr264, 1
  %106 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %status, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %107, align 4
  %bus = getelementptr inbounds %struct.fore200e, ptr %5, i32 0, i32 1
  %109 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bus, align 4
  %write = getelementptr inbounds %struct.fore200e_bus, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write, align 4
  %113 = ptrtoint ptr %arrayidx87.le to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx87.le, align 4
  tail call void %112(i32 noundef %bf.set269, ptr noundef %114) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call82) #14
  br label %cleanup

cleanup:                                          ; preds = %fore200e_atm2fore_aal.exit, %if.end134, %if.then112, %if.end110.cleanup_crit_edge, %if.else54, %if.then52, %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end134 ], [ 0, %fore200e_atm2fore_aal.exit ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -12, %if.else54 ], [ -12, %if.then52 ], [ -105, %if.then112 ], [ -105, %if.end110.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_change_qos(ptr noundef %vcc, ptr nocapture noundef readonly %qos, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
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
  %flags2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags2, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end5:                                          ; preds = %entry
  %9 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %qos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp = icmp eq i8 %10, 2
  br i1 %cmp, label %land.lhs.true, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end5
  %max_pcr = getelementptr inbounds %struct.atm_trafprm, ptr %qos, i32 0, i32 1
  %11 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8 = icmp sgt i32 %12, 0
  br i1 %cmp8, label %if.then10, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  %rate_mtx = getelementptr inbounds %struct.fore200e, ptr %5, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rate_mtx, i32 noundef 0) #14
  %available_cell_rate = getelementptr inbounds %struct.fore200e, ptr %5, i32 0, i32 17
  %13 = ptrtoint ptr %available_cell_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %available_cell_rate, align 4
  %max_pcr13 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 0, i32 1
  %15 = ptrtoint ptr %max_pcr13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_pcr13, align 4
  %add = add i32 %16, %14
  %17 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_pcr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %18)
  %cmp16 = icmp ult i32 %add, %18
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %rate_mtx) #14
  br label %cleanup

if.end20:                                         ; preds = %if.then10
  %qos11 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %19 = ptrtoint ptr %available_cell_rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %available_cell_rate, align 4
  %20 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_pcr, align 4
  %sub = sub i32 %add, %21
  store i32 %sub, ptr %available_cell_rate, align 4
  tail call void @mutex_unlock(ptr noundef %rate_mtx) #14
  %22 = call ptr @memcpy(ptr %qos11, ptr %qos, i32 84)
  %rate = getelementptr inbounds %struct.fore200e_vcc, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 353207, i32 %24)
  %cmp.i = icmp slt i32 %24, 353207
  br i1 %cmp.i, label %if.then.i, label %if.end20.fore200e_rate_ctrl.exit_crit_edge

if.end20.fore200e_rate_ctrl.exit_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_rate_ctrl.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul i32 %24, 255
  %div.i = sdiv i32 %mul.i, 353207
  %bf.shl.i = shl nsw i32 %div.i, 16
  %sub.i = sub nsw i32 255, %div.i
  %bf.value5.i = and i32 %sub.i, 65535
  %bf.set7.i = or i32 %bf.value5.i, %bf.shl.i
  br label %fore200e_rate_ctrl.exit

fore200e_rate_ctrl.exit:                          ; preds = %if.then.i, %if.end20.fore200e_rate_ctrl.exit_crit_edge
  %storemerge.i = phi i32 [ %bf.set7.i, %if.then.i ], [ 0, %if.end20.fore200e_rate_ctrl.exit_crit_edge ]
  %25 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge.i, ptr %rate, align 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags2) #14
  br label %cleanup

cleanup:                                          ; preds = %fore200e_rate_ctrl.exit, %if.then18, %land.lhs.true.cleanup_crit_edge, %do.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then18 ], [ 0, %fore200e_rate_ctrl.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_proc_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %pos, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %conv = trunc i64 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %conv, label %if.end243 [
    i32 0, label %if.then
    i32 1, label %if.then24
    i32 2, label %if.then43
    i32 3, label %if.then60
    i32 4, label %if.then100
    i32 5, label %if.then112
    i32 6, label %if.then119
    i32 7, label %if.then137
    i32 8, label %if.then153
    i32 9, label %if.then165
    i32 10, label %if.then190
    i32 11, label %if.then219
    i32 12, label %if.then233
    i32 13, label %if.then241
  ]

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @fore200e_getstats(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %name = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 5
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.59, ptr noundef %name)
  %bus = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %proc_read = getelementptr inbounds %struct.fore200e_bus, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %proc_read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_read, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %page, i32 %call3
  %call8 = tail call i32 %8(ptr noundef %1, ptr noundef %add.ptr) #14
  %add = add i32 %call8, %call3
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %len.0 = phi i32 [ %add, %if.then5 ], [ %call3, %if.end.if.end9_crit_edge ]
  %add.ptr10 = getelementptr i8, ptr %page, i32 %len.0
  %irq = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @fore200e_irq_itoa.str, ptr noundef nonnull @.str.18, i32 noundef %10) #14
  %phys_base = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys_base, align 4
  %13 = inttoptr i32 %12 to ptr
  %virt_base = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_base, align 4
  %esi = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 10
  %arrayidx = getelementptr %struct.fore200e, ptr %1, i32 0, i32 10, i32 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 4
  %conv14 = zext i8 %17 to i32
  %mul = shl nuw nsw i32 %conv14, 8
  %arrayidx16 = getelementptr %struct.fore200e, ptr %1, i32 0, i32 10, i32 5
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %19 to i32
  %add18 = or i32 %mul, %conv17
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr10, ptr noundef nonnull @.str.60, ptr noundef nonnull @fore200e_irq_itoa.str, ptr noundef %13, ptr noundef %15, ptr noundef %esi, i32 noundef %add18)
  %add20 = add i32 %call19, %len.0
  br label %cleanup

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %freebuf_count = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 16, i32 0, i32 0, i32 6
  %20 = ptrtoint ptr %freebuf_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %freebuf_count, align 4
  %freebuf_count30 = getelementptr %struct.fore200e, ptr %1, i32 0, i32 16, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %freebuf_count30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %freebuf_count30, align 4
  %freebuf_count34 = getelementptr %struct.fore200e, ptr %1, i32 0, i32 16, i32 1, i32 0, i32 6
  %24 = ptrtoint ptr %freebuf_count34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %freebuf_count34, align 4
  %freebuf_count38 = getelementptr %struct.fore200e, ptr %1, i32 0, i32 16, i32 1, i32 1, i32 6
  %26 = ptrtoint ptr %freebuf_count38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %freebuf_count38, align 4
  %call39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.61, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27)
  br label %cleanup

if.then43:                                        ; preds = %entry
  %bus44 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %bus44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus44, align 4
  %read = getelementptr inbounds %struct.fore200e_bus, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read, align 4
  %cp_queues = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %cp_queues to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cp_queues, align 4
  %heartbeat = getelementptr inbounds %struct.cp_queues, ptr %33, i32 0, i32 9
  %call45 = tail call i32 %31(ptr noundef %heartbeat) #14
  %34 = call ptr @memcpy(ptr %page, ptr @.str.62, i32 41)
  %shr.mask = and i32 %call45, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559087616, i32 %shr.mask)
  %cmp47.not = icmp eq i32 %shr.mask, -559087616
  %add.ptr53 = getelementptr i8, ptr %page, i32 40
  br i1 %cmp47.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %call51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr53, ptr noundef nonnull @.str.63, i32 noundef %call45)
  br label %if.end56

if.else:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %and = and i32 %call45, 65535
  %call54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr53, ptr noundef nonnull @.str.64, i32 noundef %and)
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then49
  %len.1.in = phi i32 [ %call51, %if.then49 ], [ %call54, %if.else ]
  %len.1 = add i32 %len.1.in, 40
  br label %cleanup

if.then60:                                        ; preds = %entry
  %bus61 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %bus61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus61, align 4
  %read62 = getelementptr inbounds %struct.fore200e_bus, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %read62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read62, align 4
  %cp_queues63 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 12
  %39 = ptrtoint ptr %cp_queues63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cp_queues63, align 4
  %fw_release64 = getelementptr inbounds %struct.cp_queues, ptr %40, i32 0, i32 10
  %call65 = tail call i32 %38(ptr noundef %fw_release64) #14
  %41 = ptrtoint ptr %bus61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus61, align 4
  %read67 = getelementptr inbounds %struct.fore200e_bus, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %read67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read67, align 4
  %45 = ptrtoint ptr %cp_queues63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cp_queues63, align 4
  %mon960_release69 = getelementptr inbounds %struct.cp_queues, ptr %46, i32 0, i32 11
  %call70 = tail call i32 %44(ptr noundef %mon960_release69) #14
  %47 = ptrtoint ptr %bus61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus61, align 4
  %read72 = getelementptr inbounds %struct.fore200e_bus, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %read72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read72, align 4
  %51 = ptrtoint ptr %cp_queues63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cp_queues63, align 4
  %oc3_revision74 = getelementptr inbounds %struct.cp_queues, ptr %52, i32 0, i32 15
  %call75 = tail call i32 %50(ptr noundef %oc3_revision74) #14
  %53 = ptrtoint ptr %bus61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus61, align 4
  %read77 = getelementptr inbounds %struct.fore200e_bus, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %read77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read77, align 4
  %57 = ptrtoint ptr %cp_queues63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cp_queues63, align 4
  %media_type = getelementptr inbounds %struct.cp_queues, ptr %58, i32 0, i32 14
  %call79 = tail call i32 %56(ptr noundef %media_type) #14
  %shr80 = lshr i32 %call79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %call79)
  %cmp81 = icmp ugt i32 %call79, 79
  %spec.store.select = select i1 %cmp81, i32 5, i32 %shr80
  %loop_mode = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 18
  %59 = ptrtoint ptr %loop_mode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %loop_mode, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %60, label %sw.default [
    i32 0, label %if.then60.sw.epilog_crit_edge
    i32 8, label %sw.bb85
    i32 2048, label %sw.bb86
  ]

if.then60.sw.epilog_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.default:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb86, %sw.bb85, %if.then60.sw.epilog_crit_edge
  %oc3_index.0 = phi i32 [ 3, %sw.default ], [ 2, %sw.bb86 ], [ 1, %sw.bb85 ], [ %60, %if.then60.sw.epilog_crit_edge ]
  %shr87 = lshr i32 %call65, 16
  %62 = lshr i32 %call65, 8
  %shr88 = and i32 %62, 255
  %shl89 = and i32 %call65, 255
  %shr91 = lshr i32 %call70, 16
  %shl92 = and i32 %call70, 65535
  %arrayidx94 = getelementptr [6 x ptr], ptr @fore200e_proc_read.media_name, i32 0, i32 %spec.store.select
  %63 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx94, align 4
  %arrayidx95 = getelementptr [4 x ptr], ptr @fore200e_proc_read.oc3_mode, i32 0, i32 %oc3_index.0
  %65 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx95, align 4
  %call96 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.74, i32 noundef %shr87, i32 noundef %shr88, i32 noundef %shl89, i32 noundef %shr91, i32 noundef %shl92, ptr noundef %64, i32 noundef %call75, ptr noundef %66)
  br label %cleanup

if.then100:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cp_monitor101 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 11
  %67 = ptrtoint ptr %cp_monitor101 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cp_monitor101, align 4
  %bus102 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 1
  %69 = ptrtoint ptr %bus102 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus102, align 4
  %read103 = getelementptr inbounds %struct.fore200e_bus, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %read103 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read103, align 4
  %mon_version = getelementptr inbounds %struct.cp_monitor, ptr %68, i32 0, i32 3
  %call104 = tail call i32 %72(ptr noundef %mon_version) #14
  %73 = ptrtoint ptr %bus102 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus102, align 4
  %read106 = getelementptr inbounds %struct.fore200e_bus, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %read106 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read106, align 4
  %bstat = getelementptr inbounds %struct.cp_monitor, ptr %68, i32 0, i32 1
  %call107 = tail call i32 %76(ptr noundef %bstat) #14
  %call108 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.75, i32 noundef %call104, i32 noundef %call107)
  br label %cleanup

if.then112:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stats = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 19
  %77 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %stats, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %framing_errors = getelementptr inbounds %struct.stats_phy, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %framing_errors to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %framing_errors, align 4
  %call115 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.76, i32 noundef %80, i32 noundef %82)
  br label %cleanup

if.then119:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stats120 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 19
  %83 = ptrtoint ptr %stats120 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %stats120, align 4
  %oc3 = getelementptr inbounds %struct.stats, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %oc3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %oc3, align 4
  %path_bip8_errors = getelementptr inbounds %struct.stats, ptr %84, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %path_bip8_errors to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %path_bip8_errors, align 4
  %line_bip24_errors = getelementptr inbounds %struct.stats, ptr %84, i32 0, i32 1, i32 2
  %89 = ptrtoint ptr %line_bip24_errors to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %line_bip24_errors, align 4
  %line_febe_errors = getelementptr inbounds %struct.stats, ptr %84, i32 0, i32 1, i32 3
  %91 = ptrtoint ptr %line_febe_errors to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %line_febe_errors, align 4
  %path_febe_errors = getelementptr inbounds %struct.stats, ptr %84, i32 0, i32 1, i32 4
  %93 = ptrtoint ptr %path_febe_errors to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %path_febe_errors, align 4
  %corr_hcs_errors = getelementptr inbounds %struct.stats, ptr %84, i32 0, i32 1, i32 5
  %95 = ptrtoint ptr %corr_hcs_errors to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %corr_hcs_errors, align 4
  %ucorr_hcs_errors = getelementptr inbounds %struct.stats, ptr %84, i32 0, i32 1, i32 6
  %97 = ptrtoint ptr %ucorr_hcs_errors to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ucorr_hcs_errors, align 4
  %call133 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.77, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %98)
  br label %cleanup

if.then137:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stats138 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 19
  %99 = ptrtoint ptr %stats138 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stats138, align 4
  %atm = getelementptr inbounds %struct.stats, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %atm to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %atm, align 4
  %cells_received = getelementptr inbounds %struct.stats, ptr %100, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %cells_received to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cells_received, align 4
  %vpi_bad_range = getelementptr inbounds %struct.stats, ptr %100, i32 0, i32 2, i32 2
  %105 = ptrtoint ptr %vpi_bad_range to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vpi_bad_range, align 4
  %vpi_no_conn = getelementptr inbounds %struct.stats, ptr %100, i32 0, i32 2, i32 3
  %107 = ptrtoint ptr %vpi_no_conn to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vpi_no_conn, align 4
  %vci_bad_range = getelementptr inbounds %struct.stats, ptr %100, i32 0, i32 2, i32 4
  %109 = ptrtoint ptr %vci_bad_range to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vci_bad_range, align 4
  %vci_no_conn = getelementptr inbounds %struct.stats, ptr %100, i32 0, i32 2, i32 5
  %111 = ptrtoint ptr %vci_no_conn to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vci_no_conn, align 4
  %call149 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.78, i32 noundef %102, i32 noundef %104, i32 noundef %106, i32 noundef %108, i32 noundef %110, i32 noundef %112)
  br label %cleanup

if.then153:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stats154 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 19
  %113 = ptrtoint ptr %stats154 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %stats154, align 4
  %aal0 = getelementptr inbounds %struct.stats, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %aal0 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %aal0, align 4
  %cells_received158 = getelementptr inbounds %struct.stats, ptr %114, i32 0, i32 3, i32 1
  %117 = ptrtoint ptr %cells_received158 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cells_received158, align 4
  %cells_dropped = getelementptr inbounds %struct.stats, ptr %114, i32 0, i32 3, i32 2
  %119 = ptrtoint ptr %cells_dropped to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cells_dropped, align 4
  %call161 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.79, i32 noundef %116, i32 noundef %118, i32 noundef %120)
  br label %cleanup

if.then165:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stats166 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 19
  %121 = ptrtoint ptr %stats166 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %stats166, align 4
  %aal34 = getelementptr inbounds %struct.stats, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %aal34 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %aal34, align 4
  %cells_received170 = getelementptr inbounds %struct.stats, ptr %122, i32 0, i32 4, i32 1
  %125 = ptrtoint ptr %cells_received170 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cells_received170, align 4
  %cells_dropped173 = getelementptr inbounds %struct.stats, ptr %122, i32 0, i32 4, i32 4
  %127 = ptrtoint ptr %cells_dropped173 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cells_dropped173, align 4
  %cells_crc_errors = getelementptr inbounds %struct.stats, ptr %122, i32 0, i32 4, i32 2
  %129 = ptrtoint ptr %cells_crc_errors to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cells_crc_errors, align 4
  %cells_protocol_errors = getelementptr inbounds %struct.stats, ptr %122, i32 0, i32 4, i32 3
  %131 = ptrtoint ptr %cells_protocol_errors to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cells_protocol_errors, align 4
  %cspdus_transmitted = getelementptr inbounds %struct.stats, ptr %122, i32 0, i32 4, i32 5
  %133 = ptrtoint ptr %cspdus_transmitted to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cspdus_transmitted, align 4
  %cspdus_received = getelementptr inbounds %struct.stats, ptr %122, i32 0, i32 4, i32 6
  %135 = ptrtoint ptr %cspdus_received to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cspdus_received, align 4
  %cspdus_dropped = getelementptr inbounds %struct.stats, ptr %122, i32 0, i32 4, i32 8
  %137 = ptrtoint ptr %cspdus_dropped to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cspdus_dropped, align 4
  %cspdus_protocol_errors = getelementptr inbounds %struct.stats, ptr %122, i32 0, i32 4, i32 7
  %139 = ptrtoint ptr %cspdus_protocol_errors to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cspdus_protocol_errors, align 4
  %call186 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.80, i32 noundef %124, i32 noundef %126, i32 noundef %128, i32 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %136, i32 noundef %138, i32 noundef %140)
  br label %cleanup

if.then190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stats191 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 19
  %141 = ptrtoint ptr %stats191 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %stats191, align 4
  %aal5 = getelementptr inbounds %struct.stats, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %aal5 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %aal5, align 4
  %cells_received195 = getelementptr inbounds %struct.stats, ptr %142, i32 0, i32 5, i32 1
  %145 = ptrtoint ptr %cells_received195 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cells_received195, align 4
  %cells_dropped198 = getelementptr inbounds %struct.stats, ptr %142, i32 0, i32 5, i32 2
  %147 = ptrtoint ptr %cells_dropped198 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cells_dropped198, align 4
  %congestion_experienced = getelementptr inbounds %struct.stats, ptr %142, i32 0, i32 5, i32 3
  %149 = ptrtoint ptr %congestion_experienced to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %congestion_experienced, align 4
  %cspdus_transmitted203 = getelementptr inbounds %struct.stats, ptr %142, i32 0, i32 5, i32 4
  %151 = ptrtoint ptr %cspdus_transmitted203 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cspdus_transmitted203, align 4
  %cspdus_received206 = getelementptr inbounds %struct.stats, ptr %142, i32 0, i32 5, i32 5
  %153 = ptrtoint ptr %cspdus_received206 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cspdus_received206, align 4
  %cspdus_dropped209 = getelementptr inbounds %struct.stats, ptr %142, i32 0, i32 5, i32 8
  %155 = ptrtoint ptr %cspdus_dropped209 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cspdus_dropped209, align 4
  %cspdus_crc_errors = getelementptr inbounds %struct.stats, ptr %142, i32 0, i32 5, i32 6
  %157 = ptrtoint ptr %cspdus_crc_errors to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cspdus_crc_errors, align 4
  %cspdus_protocol_errors214 = getelementptr inbounds %struct.stats, ptr %142, i32 0, i32 5, i32 7
  %159 = ptrtoint ptr %cspdus_protocol_errors214 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cspdus_protocol_errors214, align 4
  %call215 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.81, i32 noundef %144, i32 noundef %146, i32 noundef %148, i32 noundef %150, i32 noundef %152, i32 noundef %154, i32 noundef %156, i32 noundef %158, i32 noundef %160)
  br label %cleanup

if.then219:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stats220 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 19
  %161 = ptrtoint ptr %stats220 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %stats220, align 4
  %aux = getelementptr inbounds %struct.stats, ptr %162, i32 0, i32 6
  %163 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %aux, align 4
  %large_b1_failed = getelementptr inbounds %struct.stats, ptr %162, i32 0, i32 6, i32 1
  %165 = ptrtoint ptr %large_b1_failed to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %large_b1_failed, align 4
  %small_b2_failed = getelementptr inbounds %struct.stats, ptr %162, i32 0, i32 6, i32 2
  %167 = ptrtoint ptr %small_b2_failed to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %small_b2_failed, align 4
  %large_b2_failed = getelementptr inbounds %struct.stats, ptr %162, i32 0, i32 6, i32 3
  %169 = ptrtoint ptr %large_b2_failed to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %large_b2_failed, align 4
  %rpd_alloc_failed = getelementptr inbounds %struct.stats, ptr %162, i32 0, i32 6, i32 4
  %171 = ptrtoint ptr %rpd_alloc_failed to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %rpd_alloc_failed, align 4
  %tx_sat = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 24
  %173 = ptrtoint ptr %tx_sat to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %tx_sat, align 4
  %call229 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.82, i32 noundef %164, i32 noundef %166, i32 noundef %168, i32 noundef %170, i32 noundef %172, i32 noundef %174)
  br label %cleanup

if.then233:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stats234 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 19
  %175 = ptrtoint ptr %stats234 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %stats234, align 4
  %receive_carrier = getelementptr inbounds %struct.stats, ptr %176, i32 0, i32 6, i32 5
  %177 = ptrtoint ptr %receive_carrier to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %receive_carrier, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool236.not = icmp eq i32 %178, 0
  %cond = select i1 %tobool236.not, ptr @.str.85, ptr @.str.84
  %call237 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, ptr noundef nonnull %cond)
  br label %cleanup

if.then241:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %179 = call ptr @memcpy(ptr %page, ptr @.str.86, i32 88)
  br label %cleanup

if.end243:                                        ; preds = %entry
  %dec239 = add i32 %conv, -14
  %q_lock = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end243
  %left.0447 = phi i32 [ %dec239, %if.end243 ], [ %left.2, %for.inc.for.body_crit_edge ]
  %i.0446 = phi i32 [ 0, %if.end243 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx246 = getelementptr %struct.fore200e, ptr %1, i32 0, i32 26, i32 %i.0446
  %180 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx246, align 4
  %cmp248 = icmp eq ptr %181, null
  br i1 %cmp248, label %for.body.for.inc_crit_edge, label %do.body252

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.body252:                                       ; preds = %for.body
  %call256 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #14
  %flags260 = getelementptr inbounds %struct.atm_vcc, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %flags260 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %flags260, align 4
  %184 = and i32 %183, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool262.not = icmp eq i32 %184, 0
  br i1 %tobool262.not, label %do.body252.if.end292_crit_edge, label %land.lhs.true263

do.body252.if.end292_crit_edge:                   ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end292

land.lhs.true263:                                 ; preds = %do.body252
  %dec264 = add i32 %left.0447, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0447)
  %tobool265.not = icmp eq i32 %left.0447, 0
  br i1 %tobool265.not, label %if.then266, label %land.lhs.true263.if.end292_crit_edge

land.lhs.true263.if.end292_crit_edge:             ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end292

if.then266:                                       ; preds = %land.lhs.true263
  %dev_data267 = getelementptr inbounds %struct.atm_vcc, ptr %181, i32 0, i32 14
  %185 = ptrtoint ptr %dev_data267 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev_data267, align 8
  %tobool268.not = icmp eq ptr %186, null
  br i1 %tobool268.not, label %do.end272, label %if.end275

do.end272:                                        ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #16
  %call274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.87, i32 noundef 2971, ptr noundef nonnull @.str.45) #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.87) #20
  unreachable

if.end275:                                        ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #16
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %181, i32 0, i32 2
  %187 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %vpi, align 4
  %conv276 = sext i16 %188 to i32
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %181, i32 0, i32 3
  %189 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %vci, align 8
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %181, i32 0, i32 7, i32 2
  %191 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %aal, align 8
  %conv277 = zext i8 %192 to i32
  %call278 = tail call fastcc i32 @fore200e_atm2fore_aal(i32 noundef %conv277)
  %tx_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %186, i32 0, i32 6
  %193 = ptrtoint ptr %tx_pdu to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %tx_pdu, align 4
  %tx_min_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %186, i32 0, i32 4
  %195 = ptrtoint ptr %tx_min_pdu to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %tx_min_pdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %196)
  %cmp279 = icmp sgt i32 %196, 65535
  %spec.select = select i1 %cmp279, i32 0, i32 %196
  %tx_max_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %186, i32 0, i32 5
  %197 = ptrtoint ptr %tx_max_pdu to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %tx_max_pdu, align 4
  %rx_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %186, i32 0, i32 7
  %199 = ptrtoint ptr %rx_pdu to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %rx_pdu, align 4
  %rx_min_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %186, i32 0, i32 2
  %201 = ptrtoint ptr %rx_min_pdu to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %rx_min_pdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %202)
  %cmp283 = icmp sgt i32 %202, 65535
  %cond289 = select i1 %cmp283, i32 0, i32 %202
  %rx_max_pdu = getelementptr inbounds %struct.fore200e_vcc, ptr %186, i32 0, i32 3
  %203 = ptrtoint ptr %rx_max_pdu to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %rx_max_pdu, align 4
  %call290 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.88, ptr noundef nonnull %181, i32 noundef %conv276, i32 noundef %190, i32 noundef %call278, i32 noundef %194, i32 noundef %spec.select, i32 noundef %198, i32 noundef %200, i32 noundef %cond289, i32 noundef %204)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call256) #14
  br label %cleanup

if.end292:                                        ; preds = %land.lhs.true263.if.end292_crit_edge, %do.body252.if.end292_crit_edge
  %left.1 = phi i32 [ %dec264, %land.lhs.true263.if.end292_crit_edge ], [ %left.0447, %do.body252.if.end292_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call256) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end292, %for.body.for.inc_crit_edge
  %left.2 = phi i32 [ %left.0447, %for.body.for.inc_crit_edge ], [ %left.1, %if.end292 ]
  %inc = add nuw nsw i32 %i.0446, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end275, %if.then241, %if.then233, %if.then219, %if.then190, %if.then165, %if.then153, %if.then137, %if.then119, %if.then112, %if.then100, %sw.epilog, %if.end56, %if.then24, %if.end9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call290, %if.end275 ], [ 87, %if.then241 ], [ %call237, %if.then233 ], [ %call229, %if.then219 ], [ %call215, %if.then190 ], [ %call186, %if.then165 ], [ %call161, %if.then153 ], [ %call149, %if.then137 ], [ %call133, %if.then119 ], [ %call115, %if.then112 ], [ %call108, %if.then100 ], [ %call96, %sw.epilog ], [ %len.1, %if.end56 ], [ %call39, %if.then24 ], [ %add20, %if.end9 ], [ -5, %if.then.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fore200e_activate_vcin(ptr nocapture noundef %fore200e, i32 noundef %activate, ptr nocapture noundef readonly %vcc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %host_cmdq = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13
  %head = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %arrayidx = getelementptr [16 x %struct.host_cmdq_entry], ptr %host_cmdq, i32 0, i32 %1
  %aal2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %aal2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aal2, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %3, label %sw.epilog.i [
    i8 13, label %entry.fore200e_atm2fore_aal.exit_crit_edge
    i8 3, label %sw.bb1.i
    i8 1, label %entry.sw.bb2.i_crit_edge
    i8 2, label %entry.sw.bb2.i_crit_edge5
    i8 5, label %entry.sw.bb2.i_crit_edge6
  ]

entry.sw.bb2.i_crit_edge6:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge5:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

entry.fore200e_atm2fore_aal.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_atm2fore_aal.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_atm2fore_aal.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge5, %entry.sw.bb2.i_crit_edge6
  br label %fore200e_atm2fore_aal.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_atm2fore_aal.exit

fore200e_atm2fore_aal.exit:                       ; preds = %sw.epilog.i, %sw.bb2.i, %sw.bb1.i, %entry.fore200e_atm2fore_aal.exit_crit_edge
  %retval.0.i = phi i32 [ 59906, %sw.epilog.i ], [ 1282, %sw.bb2.i ], [ 1026, %sw.bb1.i ], [ 2, %entry.fore200e_atm2fore_aal.exit_crit_edge ]
  %add = add i32 %1, 1
  %rem = srem i32 %add, 16
  %5 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %rem, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool.not = icmp eq i32 %activate, 0
  br i1 %tobool.not, label %fore200e_atm2fore_aal.exit.if.end_crit_edge, label %if.then

fore200e_atm2fore_aal.exit.if.end_crit_edge:      ; preds = %fore200e_atm2fore_aal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %fore200e_atm2fore_aal.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vci.i = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %6 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vci.i, align 8
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %10 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_data, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %11, align 4
  %13 = load ptr, ptr %dev_data, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %bf.value12 = shl i32 %15, 16
  %bf.value12.masked = and i32 %bf.value12, 16711680
  %bf.clear17 = or i32 %retval.0.i, %bf.value12.masked
  br label %if.end

if.end:                                           ; preds = %if.then, %fore200e_atm2fore_aal.exit.if.end_crit_edge
  %activ_opcode.sroa.0.0 = phi i32 [ %bf.clear17, %if.then ], [ -1, %fore200e_atm2fore_aal.exit.if.end_crit_edge ]
  %deactiv_opcode.sroa.0.0 = phi i32 [ -1, %if.then ], [ 4, %fore200e_atm2fore_aal.exit.if.end_crit_edge ]
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %16 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vci, align 8
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %18 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vpi, align 4
  %20 = and i16 %19, 255
  %bf.value31 = zext i16 %20 to i32
  %bf.shl32 = shl nuw nsw i32 %bf.value31, 16
  %bf.set28 = and i32 %17, 65535
  %bf.clear33 = or i32 %bf.shl32, %bf.set28
  %bf.set34 = or i32 %bf.clear33, -16777216
  %status = getelementptr [16 x %struct.host_cmdq_entry], ptr %host_cmdq, i32 0, i32 %1, i32 1
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %status, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %22, align 4
  %bus48 = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 1
  %24 = ptrtoint ptr %bus48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus48, align 4
  %write49 = getelementptr inbounds %struct.fore200e_bus, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %write49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write49, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool.not, label %if.else47, label %if.then36

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mtu37 = getelementptr inbounds %struct.activate_block, ptr %29, i32 0, i32 2
  tail call void %27(i32 noundef 48, ptr noundef %mtu37) #14
  %30 = ptrtoint ptr %bus48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus48, align 4
  %write39 = getelementptr inbounds %struct.fore200e_bus, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %write39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write39, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %vpvc42 = getelementptr inbounds %struct.activate_block, ptr %35, i32 0, i32 1
  tail call void %33(i32 noundef %bf.set34, ptr noundef %vpvc42) #14
  br label %if.end58

if.else47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %vpvc52 = getelementptr inbounds %struct.deactivate_block, ptr %29, i32 0, i32 1
  tail call void %27(i32 noundef %bf.set34, ptr noundef %vpvc52) #14
  br label %if.end58

if.end58:                                         ; preds = %if.else47, %if.then36
  %deactiv_opcode.sroa.0.0.sink = phi i32 [ %deactiv_opcode.sroa.0.0, %if.else47 ], [ %activ_opcode.sroa.0.0, %if.then36 ]
  %36 = ptrtoint ptr %bus48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus48, align 4
  %write54 = getelementptr inbounds %struct.fore200e_bus, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %write54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write54, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  tail call void %39(i32 noundef %deactiv_opcode.sroa.0.0.sink, ptr noundef %41) #14
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !321
  tail call void @arm_heavy_mb() #14
  %add.neg.i = sub i32 -40, %44
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.cond2.i.do.body1.i_crit_edge, %if.end58
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.i = icmp eq i32 %46, 2
  br i1 %cmp.i, label %fore200e_poll.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.body1.i
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %43, align 4
  %and.i = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.cond2.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.cond2.i:                                       ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %49
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %do.cond2.i.do.body1.i_crit_edge, label %do.cond2.i.do.end_crit_edge

do.cond2.i.do.end_crit_edge:                      ; preds = %do.cond2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.cond2.i.do.body1.i_crit_edge:                  ; preds = %do.cond2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i

fore200e_poll.exit:                               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %status, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %51, align 4
  br label %cleanup

do.end:                                           ; preds = %do.cond2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge
  %53 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %43, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %54, i32 noundef 2) #17
  %55 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %status, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %56, align 4
  %cond = select i1 %tobool.not, ptr @.str.34, ptr @.str.33
  %itf = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 18
  %58 = ptrtoint ptr %itf to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %itf, align 8
  %conv65 = sext i16 %59 to i32
  %60 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vpi, align 4
  %conv67 = sext i16 %61 to i32
  %62 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vci, align 8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull %cond, i32 noundef %conv65, i32 noundef %conv67, i32 noundef %63) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %fore200e_poll.exit
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %fore200e_poll.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @fore200e_atm2fore_aal(i32 noundef %aal) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %aal to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %aal, label %sw.epilog [
    i32 13, label %entry.return_crit_edge
    i32 3, label %sw.bb1
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge3
    i32 5, label %entry.sw.bb2_crit_edge4
  ]

entry.sw.bb2_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

entry.sw.bb2_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge3, %entry.sw.bb2_crit_edge4
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 5, %sw.bb2 ], [ 4, %sw.bb1 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fore200e_getstats(ptr noundef %fore200e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %host_cmdq = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13
  %head = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %arrayidx = getelementptr [16 x %struct.host_cmdq_entry], ptr %host_cmdq, i32 0, i32 %1
  %stats = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 19
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 224) #19
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %stats, align 4
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %dev = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %9) #14
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end6
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !320

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %7) #14
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef -1) #14
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %if.end6
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef %9, i32 noundef 224) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %9 to i32
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %16, i32 %shr.i
  %and.i = and i32 %17, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 224, i32 noundef 2, i32 noundef 0) #14
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef %call41.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end12

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %dma_map_single_attrs.exit
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %head, align 4
  %add = add i32 %21, 1
  %rem = srem i32 %add, 16
  store i32 %rem, ptr %head, align 4
  %bus = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 1
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %write = getelementptr inbounds %struct.fore200e_bus, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %stats_haddr = getelementptr inbounds %struct.stats_block, ptr %27, i32 0, i32 1
  tail call void %25(i32 noundef %call41.i, ptr noundef %stats_haddr) #14
  %status = getelementptr [16 x %struct.host_cmdq_entry], ptr %host_cmdq, i32 0, i32 %1, i32 1
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %status, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %29, align 4
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %write19 = getelementptr inbounds %struct.fore200e_bus, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %write19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write19, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  tail call void %34(i32 noundef 6, ptr noundef %36) #14
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !321
  tail call void @arm_heavy_mb() #14
  %add.neg.i = sub i32 -40, %39
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.cond2.i.do.body1.i_crit_edge, %if.end12
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i57 = icmp eq i32 %41, 2
  br i1 %cmp.i57, label %cleanup.critedge, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.body1.i
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %38, align 4
  %and.i58 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i = icmp eq i32 %and.i58, 0
  br i1 %tobool.not.i, label %do.cond2.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

do.cond2.i:                                       ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub.i59 = add i32 %add.neg.i, %44
  %cmp3.i = icmp slt i32 %sub.i59, 0
  br i1 %cmp3.i, label %do.cond2.i.do.body1.i_crit_edge, label %do.cond2.i.do.end10.i_crit_edge

do.cond2.i.do.end10.i_crit_edge:                  ; preds = %do.cond2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

do.cond2.i.do.body1.i_crit_edge:                  ; preds = %do.cond2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i

do.end10.i:                                       ; preds = %do.cond2.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %38, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %46, i32 noundef 2) #17
  %47 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %status, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %48, align 4
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %51, i32 noundef %call41.i, i32 noundef 224, i32 noundef 2, i32 noundef 0) #14
  %name = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 5
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name) #17
  br label %cleanup

cleanup.critedge:                                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %status, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %53, align 4
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %56, i32 noundef %call41.i, i32 noundef 224, i32 noundef 2, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %do.end10.i, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end10.i ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ], [ 0, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fore200e_tx_irq(ptr nocapture noundef %fore200e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %host_txq = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14
  %txing = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %txing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %tail = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  %status96 = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %status96 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status96, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and97 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %cmp398 = icmp eq i32 %and97, 0
  br i1 %cmp398, label %for.cond.preheader.cleanup_crit_edge, label %do.end.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.lr.ph:                                     ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.fore200e, ptr %fore200e, i32 0, i32 6
  br label %do.end

do.end:                                           ; preds = %if.end58.do.end_crit_edge, %do.end.lr.ph
  %status99 = phi ptr [ %status96, %do.end.lr.ph ], [ %status, %if.end58.do.end_crit_edge ]
  %8 = phi i32 [ %3, %do.end.lr.ph ], [ %rem, %if.end58.do.end_crit_edge ]
  %data = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %8, i32 5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %10) #14
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %tpd = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %8, i32 2
  %13 = ptrtoint ptr %tpd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tpd, align 4
  %tsd = getelementptr inbounds %struct.tpd, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %tsd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tsd, align 4
  %length = getelementptr inbounds %struct.tpd, ptr %14, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %16, i32 noundef %18, i32 noundef 1, i32 noundef 0) #14
  %vc_map10 = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %8, i32 7
  %19 = ptrtoint ptr %vc_map10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vc_map10, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %cmp12 = icmp eq ptr %22, null
  br i1 %cmp12, label %do.end.do.end18_crit_edge, label %lor.lhs.false

do.end.do.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18

lor.lhs.false:                                    ; preds = %do.end
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp14 = icmp eq i32 %25, 0
  br i1 %cmp14, label %lor.lhs.false.do.end18_crit_edge, label %if.end25

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false.do.end18_crit_edge, %do.end.do.end18_crit_edge
  %skb = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %8, i32 4
  %26 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %27, i32 noundef 1) #14
  br label %if.end58

if.end25:                                         ; preds = %lor.lhs.false
  %incarn = getelementptr inbounds %struct.fore200e_vc_map, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %incarn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incarn, align 4
  %incarn26 = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %8, i32 6
  %30 = ptrtoint ptr %incarn26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incarn26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp27.not = icmp eq i32 %29, %31
  br i1 %cmp27.not, label %if.end42, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %skb32 = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %8, i32 4
  %32 = ptrtoint ptr %skb32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb32, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %33, i32 noundef 1) #14
  br label %if.end58

if.end42:                                         ; preds = %if.end25
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %22, i32 0, i32 11
  %34 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pop, align 4
  %tobool43.not = icmp eq ptr %35, null
  %skb48 = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %8, i32 4
  %36 = ptrtoint ptr %skb48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb48, align 4
  br i1 %tobool43.not, label %if.else47, label %if.then44

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %35(ptr noundef nonnull %22, ptr noundef %37) #14
  br label %if.end49

if.else47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %37, i32 noundef 1) #14
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then44
  %38 = ptrtoint ptr %status99 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %status99, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and51 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %stats55 = getelementptr inbounds %struct.atm_vcc, ptr %22, i32 0, i32 16
  %42 = ptrtoint ptr %stats55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stats55, align 8
  br i1 %tobool52.not, label %if.else54, label %if.then53

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %tx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %43, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %tx_err, i32 1, i32 3, i32 1) #14
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err, ptr %tx_err, i32 1, ptr elementtype(i32) %tx_err) #14, !srcloc !332
  br label %if.end58

if.else54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %43, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %43, i32 1, i32 3, i32 1) #14
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #14, !srcloc !332
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %if.then53, %do.end31, %do.end18
  %46 = ptrtoint ptr %status99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %status99, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %47, align 4
  %49 = ptrtoint ptr %txing to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %txing, align 4
  %dec = add i32 %50, -1
  store i32 %dec, ptr %txing, align 4
  %51 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tail, align 4
  %add = add i32 %52, 1
  %rem = srem i32 %add, 256
  store i32 %rem, ptr %tail, align 4
  %status = getelementptr [256 x %struct.host_txq_entry], ptr %host_txq, i32 0, i32 %rem, i32 1
  %53 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %status, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %and = and i32 %56, 2
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.end58.cleanup_crit_edge, label %if.end58.do.end_crit_edge

if.end58.do.end_crit_edge:                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end58.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fore200e_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %bus = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %irq_check = getelementptr inbounds %struct.fore200e_bus, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %irq_check to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_check, align 4
  %call = tail call i32 %5(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end3:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 22, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end3.tasklet_schedule.exit_crit_edge

do.end3.tasklet_schedule.exit_crit_edge:          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  %tx_tasklet = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 22
  tail call void @__tasklet_schedule(ptr noundef %tx_tasklet) #14
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.end3.tasklet_schedule.exit_crit_edge
  %state.i10 = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 23, i32 1
  %call.i11 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.then.i13, label %tasklet_schedule.exit.tasklet_schedule.exit14_crit_edge

tasklet_schedule.exit.tasklet_schedule.exit14_crit_edge: ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %tasklet_schedule.exit14

if.then.i13:                                      ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #16
  %rx_tasklet = getelementptr inbounds %struct.fore200e, ptr %1, i32 0, i32 23
  tail call void @__tasklet_schedule(ptr noundef %rx_tasklet) #14
  br label %tasklet_schedule.exit14

tasklet_schedule.exit14:                          ; preds = %if.then.i13, %tasklet_schedule.exit.tasklet_schedule.exit14_crit_edge
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %irq_ack = getelementptr inbounds %struct.fore200e_bus, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ack, align 4
  tail call void %9(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %tasklet_schedule.exit14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %tasklet_schedule.exit14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fore200e_tx_tasklet(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %q_lock = getelementptr inbounds %struct.fore200e, ptr %0, i32 0, i32 21
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #14
  tail call fastcc void @fore200e_tx_irq(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fore200e_rx_tasklet(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %q_lock = getelementptr inbounds %struct.fore200e, ptr %0, i32 0, i32 21
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #14
  %host_rxq.i = getelementptr inbounds %struct.fore200e, ptr %0, i32 0, i32 15
  %head.i = getelementptr inbounds %struct.fore200e, ptr %0, i32 0, i32 15, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %head.i, align 4
  %status66.i = getelementptr [64 x %struct.host_rxq_entry], ptr %host_rxq.i, i32 0, i32 %2, i32 1
  %3 = ptrtoint ptr %status66.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %status66.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and67.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %cmp68.i = icmp eq i32 %and67.i, 0
  br i1 %cmp68.i, label %entry.fore200e_rx_irq.exit_crit_edge, label %if.end.lr.ph.i

entry.fore200e_rx_irq.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_rx_irq.exit

if.end.lr.ph.i:                                   ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.fore200e, ptr %0, i32 0, i32 6
  %bus.i = getelementptr inbounds %struct.fore200e, ptr %0, i32 0, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %fore200e_collect_rpd.exit.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %7 = phi i32 [ %6, %if.end.lr.ph.i ], [ %115, %fore200e_collect_rpd.exit.i.if.end.i_crit_edge ]
  %status70.i = phi ptr [ %status66.i, %if.end.lr.ph.i ], [ %status.i, %fore200e_collect_rpd.exit.i.if.end.i_crit_edge ]
  %8 = phi i32 [ %2, %if.end.lr.ph.i ], [ %111, %fore200e_collect_rpd.exit.i.if.end.i_crit_edge ]
  %arrayidx69.i = getelementptr [64 x %struct.host_rxq_entry], ptr %host_rxq.i, i32 0, i32 %8
  %rpd.i = getelementptr [64 x %struct.host_rxq_entry], ptr %host_rxq.i, i32 0, i32 %8, i32 2
  %9 = ptrtoint ptr %rpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rpd.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %10, align 4
  %12 = lshr i32 %bf.load.i, 10
  %shl.i = and i32 %12, 261120
  %bf.lshr6.i = lshr i32 %bf.load.i, 4
  %bf.clear7.i = and i32 %bf.lshr6.i, 65535
  %or.i = or i32 %shl.i, %bf.clear7.i
  %arrayidx8.i = getelementptr %struct.fore200e, ptr %0, i32 0, i32 26, i32 %or.i
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx8.i, align 4
  %cmp10.i = icmp eq ptr %14, null
  br i1 %cmp10.i, label %if.end.i.if.end32.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp12.i = icmp eq i32 %17, 0
  br i1 %cmp12.i, label %lor.lhs.false.i.if.end32.i_crit_edge, label %if.end20.i

lor.lhs.false.i.if.end32.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %and22.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %cmp23.i = icmp eq i32 %and22.i, 0
  br i1 %cmp23.i, label %if.end.i.i, label %do.end30.i

if.end.i.i:                                       ; preds = %if.end20.i
  %dev_data.i.i = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 14
  %18 = ptrtoint ptr %dev_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_data.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i.i, label %do.end5.i.i, label %if.end8.i.i

do.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.126, i32 noundef 973, ptr noundef nonnull @.str.45) #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.126) #20
  unreachable

if.end8.i.i:                                      ; preds = %if.end.i.i
  %aal.i.i = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %aal.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %aal.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %21)
  %cmp.i.i = icmp eq i8 %21, 13
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end8.i.i.if.end34.i.i_crit_edge

if.end8.i.i.if.end34.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %max_sdu.i.i = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 7, i32 1, i32 5
  %22 = ptrtoint ptr %max_sdu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_sdu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %23)
  %cmp11.i.i = icmp eq i32 %23, 52
  %spec.select.i = select i1 %cmp11.i.i, i32 4, i32 0
  %spec.select64.i = select i1 %cmp11.i.i, i32 %bf.load.i, i32 0
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %land.lhs.true.i.i, %if.end8.i.i.if.end34.i.i_crit_edge
  %pdu_len.0.i.i = phi i32 [ 0, %if.end8.i.i.if.end34.i.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i.i ]
  %cell_header.0.i.i = phi i32 [ 0, %if.end8.i.i.if.end34.i.i_crit_edge ], [ %spec.select64.i, %land.lhs.true.i.i ]
  %nseg.i.i = getelementptr inbounds %struct.rpd, ptr %10, i32 0, i32 1
  %24 = ptrtoint ptr %nseg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nseg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp355.not.i.i = icmp eq i32 %25, 0
  br i1 %cmp355.not.i.i, label %if.end34.i.i.for.end.i.i_crit_edge, label %if.end34.i.i.for.body.i.i_crit_edge

if.end34.i.i.for.body.i.i_crit_edge:              ; preds = %if.end34.i.i
  br label %for.body.i.i

if.end34.i.i.for.end.i.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end34.i.i.for.body.i.i_crit_edge
  %pdu_len.17.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %pdu_len.0.i.i, %if.end34.i.i.for.body.i.i_crit_edge ]
  %i.06.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end34.i.i.for.body.i.i_crit_edge ]
  %length.i.i = getelementptr %struct.rpd, ptr %10, i32 0, i32 2, i32 %i.06.i.i, i32 1
  %26 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i.i, align 4
  %add.i.i = add i32 %27, %pdu_len.17.i.i
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %25
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end34.i.i.for.end.i.i_crit_edge
  %pdu_len.1.lcssa.i.i = phi i32 [ %pdu_len.0.i.i, %if.end34.i.i.for.end.i.i_crit_edge ], [ %add.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %call.i.i58.i = tail call ptr @__alloc_skb(i32 noundef %pdu_len.1.lcssa.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %cmp38.i.i = icmp eq ptr %call.i.i58.i, null
  br i1 %cmp38.i.i, label %do.end43.i.i, label %if.end44.i.i

do.end43.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %stats.i.i = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 16
  %28 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stats.i.i, align 8
  %rx_drop.i.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %29, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rx_drop.i.i, i32 1, i32 3, i32 1) #14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop.i.i, ptr %rx_drop.i.i, i32 1, ptr elementtype(i32) %rx_drop.i.i) #14, !srcloc !332
  br label %if.end32.i

if.end44.i.i:                                     ; preds = %for.end.i.i
  %call.i.i3.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #14
  %31 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i58.i, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %call.i.i3.i.i, ptr %31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cell_header.0.i.i)
  %tobool45.not.i.i = icmp eq i32 %cell_header.0.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end44.i.i.if.end48.i.i_crit_edge, label %if.then46.i.i

if.end44.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

if.then46.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call47.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i58.i, i32 noundef 4) #14
  %33 = ptrtoint ptr %call47.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cell_header.0.i.i, ptr %call47.i.i, align 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then46.i.i, %if.end44.i.i.if.end48.i.i_crit_edge
  %34 = ptrtoint ptr %nseg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nseg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp518.not.i.i = icmp eq i32 %35, 0
  br i1 %cmp518.not.i.i, label %if.end48.i.i.do.end75.i.i_crit_edge, label %if.end48.i.i.for.body53.i.i_crit_edge

if.end48.i.i.for.body53.i.i_crit_edge:            ; preds = %if.end48.i.i
  br label %for.body53.i.i

if.end48.i.i.do.end75.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75.i.i

for.body53.i.i:                                   ; preds = %for.body53.i.i.for.body53.i.i_crit_edge, %if.end48.i.i.for.body53.i.i_crit_edge
  %i.19.i.i = phi i32 [ %inc71.i.i, %for.body53.i.i.for.body53.i.i_crit_edge ], [ 0, %if.end48.i.i.for.body53.i.i_crit_edge ]
  %arrayidx55.i.i = getelementptr %struct.rpd, ptr %10, i32 0, i32 2, i32 %i.19.i.i
  %36 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx55.i.i, align 4
  %38 = inttoptr i32 %37 to ptr
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 4
  %dma_addr.i.i = getelementptr inbounds %struct.buffer, ptr %38, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_addr.i.i, align 4
  %length58.i.i = getelementptr %struct.rpd, ptr %10, i32 0, i32 2, i32 %i.19.i.i, i32 1
  %43 = ptrtoint ptr %length58.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length58.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef 2) #14
  %align_addr.i.i = getelementptr inbounds %struct.buffer, ptr %38, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %align_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %align_addr.i.i, align 4
  %47 = ptrtoint ptr %length58.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length58.i.i, align 4
  %call.i4.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i58.i, i32 noundef %48) #14
  %49 = call ptr @memcpy(ptr %call.i4.i.i, ptr %46, i32 %48)
  %50 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i, align 4
  %52 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_addr.i.i, align 4
  %54 = ptrtoint ptr %length58.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length58.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef 2) #14
  %inc71.i.i = add nuw i32 %i.19.i.i, 1
  %56 = ptrtoint ptr %nseg.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nseg.i.i, align 4
  %cmp51.i.i = icmp ult i32 %inc71.i.i, %57
  br i1 %cmp51.i.i, label %for.body53.i.i.for.body53.i.i_crit_edge, label %for.body53.i.i.do.end75.i.i_crit_edge

for.body53.i.i.do.end75.i.i_crit_edge:            ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75.i.i

for.body53.i.i.for.body53.i.i_crit_edge:          ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body53.i.i

do.end75.i.i:                                     ; preds = %for.body53.i.i.do.end75.i.i_crit_edge, %if.end48.i.i.do.end75.i.i_crit_edge
  %rx_min_pdu.i.i = getelementptr inbounds %struct.fore200e_vcc, ptr %19, i32 0, i32 2
  %58 = ptrtoint ptr %rx_min_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_min_pdu.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pdu_len.1.lcssa.i.i, i32 %59)
  %cmp76.i.i = icmp slt i32 %pdu_len.1.lcssa.i.i, %59
  br i1 %cmp76.i.i, label %if.then78.i.i, label %do.end75.i.i.if.end80.i.i_crit_edge

do.end75.i.i.if.end80.i.i_crit_edge:              ; preds = %do.end75.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80.i.i

if.then78.i.i:                                    ; preds = %do.end75.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %rx_min_pdu.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %pdu_len.1.lcssa.i.i, ptr %rx_min_pdu.i.i, align 4
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %if.then78.i.i, %do.end75.i.i.if.end80.i.i_crit_edge
  %rx_max_pdu.i.i = getelementptr inbounds %struct.fore200e_vcc, ptr %19, i32 0, i32 3
  %61 = ptrtoint ptr %rx_max_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_max_pdu.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pdu_len.1.lcssa.i.i, i32 %62)
  %cmp81.i.i = icmp sgt i32 %pdu_len.1.lcssa.i.i, %62
  br i1 %cmp81.i.i, label %if.then83.i.i, label %if.end80.i.i.if.end85.i.i_crit_edge

if.end80.i.i.if.end85.i.i_crit_edge:              ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85.i.i

if.then83.i.i:                                    ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %rx_max_pdu.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %pdu_len.1.lcssa.i.i, ptr %rx_max_pdu.i.i, align 4
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %if.then83.i.i, %if.end80.i.i.if.end85.i.i_crit_edge
  %rx_pdu.i.i = getelementptr inbounds %struct.fore200e_vcc, ptr %19, i32 0, i32 7
  %64 = ptrtoint ptr %rx_pdu.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_pdu.i.i, align 4
  %inc86.i.i = add i32 %65, 1
  store i32 %inc86.i.i, ptr %rx_pdu.i.i, align 4
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i58.i, i32 0, i32 20
  %66 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %truesize.i.i, align 8
  %call87.i.i = tail call i32 @atm_charge(ptr noundef nonnull %14, i32 noundef %67) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i.i)
  %cmp88.i.i = icmp eq i32 %call87.i.i, 0
  br i1 %cmp88.i.i, label %do.end93.i.i, label %if.end96.i.i

do.end93.i.i:                                     ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i58.i, i32 noundef 1) #14
  %stats94.i.i = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 16
  %68 = ptrtoint ptr %stats94.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %stats94.i.i, align 8
  %rx_drop95.i.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %69, i32 0, i32 4
  %call.i.i1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop95.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rx_drop95.i.i, i32 1, i32 3, i32 1) #14
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop95.i.i, ptr %rx_drop95.i.i, i32 1, ptr elementtype(i32) %rx_drop95.i.i) #14, !srcloc !332
  br label %if.end32.i

if.end96.i.i:                                     ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %push.i.i = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 10
  %71 = ptrtoint ptr %push.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %push.i.i, align 8
  tail call void %72(ptr noundef nonnull %14, ptr noundef nonnull %call.i.i58.i) #14
  %stats97.i.i = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 16
  %73 = ptrtoint ptr %stats97.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %stats97.i.i, align 8
  %rx.i.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %74, i32 0, i32 2
  %call.i.i2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rx.i.i, i32 1, i32 3, i32 1) #14
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx.i.i, ptr %rx.i.i, i32 1, ptr elementtype(i32) %rx.i.i) #14, !srcloc !332
  br label %if.end32.i

do.end30.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  %stats.i = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 16
  %76 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stats.i, align 8
  %rx_err.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %77, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rx_err.i, i32 1, i32 3, i32 1) #14
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err.i, ptr %rx_err.i, i32 1, ptr elementtype(i32) %rx_err.i) #14, !srcloc !332
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end30.i, %if.end96.i.i, %do.end93.i.i, %do.end43.i.i, %lor.lhs.false.i.if.end32.i_crit_edge, %if.end.i.if.end32.i_crit_edge
  %79 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %head.i, align 4
  %add.i = add i32 %80, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr %head.i, align 4
  %81 = ptrtoint ptr %rpd.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rpd.i, align 4
  %nseg.i59.i = getelementptr inbounds %struct.rpd, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %nseg.i59.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nseg.i59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp13.not.i.i = icmp eq i32 %84, 0
  br i1 %cmp13.not.i.i, label %if.end32.i.fore200e_collect_rpd.exit.i_crit_edge, label %if.end32.i.for.body.i62.i_crit_edge

if.end32.i.for.body.i62.i_crit_edge:              ; preds = %if.end32.i
  br label %for.body.i62.i

if.end32.i.fore200e_collect_rpd.exit.i_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_collect_rpd.exit.i

for.body.i62.i:                                   ; preds = %for.body.i62.i.for.body.i62.i_crit_edge, %if.end32.i.for.body.i62.i_crit_edge
  %i.014.i.i = phi i32 [ %inc4.i.i, %for.body.i62.i.for.body.i62.i_crit_edge ], [ 0, %if.end32.i.for.body.i62.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rpd, ptr %82, i32 0, i32 2, i32 %i.014.i.i
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i, align 4
  %87 = inttoptr i32 %86 to ptr
  %scheme.i.i = getelementptr inbounds %struct.buffer, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %scheme.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %scheme.i.i, align 4
  %magn.i.i = getelementptr inbounds %struct.buffer, ptr %87, i32 0, i32 2
  %90 = ptrtoint ptr %magn.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %magn.i.i, align 4
  %freebuf.i.i = getelementptr %struct.fore200e, ptr %0, i32 0, i32 16, i32 %89, i32 %91, i32 5
  %92 = ptrtoint ptr %freebuf.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %freebuf.i.i, align 4
  %94 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %87, align 4
  store ptr %87, ptr %freebuf.i.i, align 4
  %freebuf_count.i.i = getelementptr %struct.fore200e, ptr %0, i32 0, i32 16, i32 %89, i32 %91, i32 6
  %95 = ptrtoint ptr %freebuf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %freebuf_count.i.i, align 4
  %inc.i60.i = add i32 %96, 1
  store volatile i32 %inc.i60.i, ptr %freebuf_count.i.i, align 4
  %inc4.i.i = add nuw i32 %i.014.i.i, 1
  %97 = ptrtoint ptr %nseg.i59.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nseg.i59.i, align 4
  %cmp.i61.i = icmp ult i32 %inc4.i.i, %98
  br i1 %cmp.i61.i, label %for.body.i62.i.for.body.i62.i_crit_edge, label %for.body.i62.i.fore200e_collect_rpd.exit.i_crit_edge

for.body.i62.i.fore200e_collect_rpd.exit.i_crit_edge: ; preds = %for.body.i62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_collect_rpd.exit.i

for.body.i62.i.for.body.i62.i_crit_edge:          ; preds = %for.body.i62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i62.i

fore200e_collect_rpd.exit.i:                      ; preds = %for.body.i62.i.fore200e_collect_rpd.exit.i_crit_edge, %if.end32.i.fore200e_collect_rpd.exit.i_crit_edge
  %99 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus.i, align 4
  %write.i = getelementptr inbounds %struct.fore200e_bus, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write.i, align 4
  %rpd_dma.i = getelementptr [64 x %struct.host_rxq_entry], ptr %host_rxq.i, i32 0, i32 %8, i32 3
  %103 = ptrtoint ptr %rpd_dma.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rpd_dma.i, align 4
  %105 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx69.i, align 4
  tail call void %102(i32 noundef %104, ptr noundef %106) #14
  %107 = ptrtoint ptr %status70.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %status70.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 4, ptr %108, align 4
  tail call fastcc void @fore200e_supply(ptr noundef %0) #14
  %110 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %head.i, align 4
  %status.i = getelementptr [64 x %struct.host_rxq_entry], ptr %host_rxq.i, i32 0, i32 %111, i32 1
  %112 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %status.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %and.i = and i32 %115, 2
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %fore200e_collect_rpd.exit.i.fore200e_rx_irq.exit_crit_edge, label %fore200e_collect_rpd.exit.i.if.end.i_crit_edge

fore200e_collect_rpd.exit.i.if.end.i_crit_edge:   ; preds = %fore200e_collect_rpd.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

fore200e_collect_rpd.exit.i.fore200e_rx_irq.exit_crit_edge: ; preds = %fore200e_collect_rpd.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fore200e_rx_irq.exit

fore200e_rx_irq.exit:                             ; preds = %fore200e_collect_rpd.exit.i.fore200e_rx_irq.exit_crit_edge, %entry.fore200e_rx_irq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_charge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !204, !205, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !225, !227, !228, !229, !230, !232, !233, !234, !236, !238, !239, !240, !242, !243, !244, !246, !247, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !290, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302}
!llvm.named.register.sp = !{!303}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/atm/fore200e.c", i32 100, i32 1}
!2 = !{ptr @__UNIQUE_ID_description460, !3, !"__UNIQUE_ID_description460", i1 false, i1 false}
!3 = !{!"../drivers/atm/fore200e.c", i32 101, i32 1}
!4 = !{ptr @__initcall__kmod_fore_200e__461_2994_fore200e_module_init6, !5, !"__initcall__kmod_fore_200e__461_2994_fore200e_module_init6", i1 false, i1 false}
!5 = !{!"../drivers/atm/fore200e.c", i32 2994, i32 1}
!6 = !{ptr @__exitcall_fore200e_module_cleanup, !7, !"__exitcall_fore200e_module_cleanup", i1 false, i1 false}
!7 = !{!"../drivers/atm/fore200e.c", i32 2995, i32 1}
!8 = !{ptr @__UNIQUE_ID_file462, !9, !"__UNIQUE_ID_file462", i1 false, i1 false}
!9 = !{!"../drivers/atm/fore200e.c", i32 3008, i32 1}
!10 = !{ptr @__UNIQUE_ID_license463, !9, !"__UNIQUE_ID_license463", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_firmware464, !12, !"__UNIQUE_ID_firmware464", i1 false, i1 false}
!12 = !{!"../drivers/atm/fore200e.c", i32 3013, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/atm/fore200e.c", i32 2665, i32 17}
!15 = !{ptr @fore200e_pca_driver, !16, !"fore200e_pca_driver", i1 false, i1 false}
!16 = !{!"../drivers/atm/fore200e.c", i32 2664, i32 26}
!17 = !{ptr @fore200e_pca_tbl, !18, !"fore200e_pca_tbl", i1 false, i1 false}
!18 = !{!"../drivers/atm/fore200e.c", i32 2657, i32 35}
!19 = !{ptr @fore200e_pca_detect.index, !20, !"index", i1 false, i1 false}
!20 = !{!"../drivers/atm/fore200e.c", i32 2593, i32 16}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/atm/fore200e.c", i32 2616, i32 29}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/atm/fore200e.c", i32 2620, i32 5}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fore200e_pca_detect._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @fore200e_pca_detect._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/atm/fore200e.c", i32 612, i32 17}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/atm/fore200e.c", i32 613, i32 16}
!33 = !{ptr @fore200e_pci_ops, !34, !"fore200e_pci_ops", i1 false, i1 false}
!34 = !{!"../drivers/atm/fore200e.c", i32 611, i32 34}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/atm/fore200e.c", i32 521, i32 2}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @fore200e_pca_configure._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @fore200e_pca_configure._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/atm/fore200e.c", i32 487, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @fore200e_pca_map._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @fore200e_pca_map._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/atm/fore200e.c", i32 585, i32 2}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @fore200e_pca_prom_read._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @fore200e_pca_prom_read._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/atm/fore200e.c", i32 253, i32 2}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @fore200e_poll._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @fore200e_poll._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/atm/fore200e.c", i32 607, i32 26}
!61 = !{ptr @fore200e_irq_itoa.str, !62, !"str", i1 false, i1 false}
!62 = !{!"../drivers/atm/fore200e.c", i32 152, i32 17}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/atm/fore200e.c", i32 153, i32 18}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/atm/fore200e.c", i32 2457, i32 2}
!67 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @fore200e_register._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @fore200e_register._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @fore200e_ops, !71, !"fore200e_ops", i1 false, i1 false}
!71 = !{!"../drivers/atm/fore200e.c", i32 2998, i32 32}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/atm/fore200e.c", i32 1313, i32 5}
!74 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @fore200e_open._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @fore200e_open._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @fore200e_open._entry.25, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/atm/fore200e.c", i32 1314, i32 5}
!81 = !{ptr @fore200e_open._entry_ptr.26, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/atm/fore200e.c", i32 1323, i32 2}
!85 = !{ptr @fore200e_open._entry.28, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @fore200e_open._entry_ptr.30, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/atm/fore200e.c", i32 1273, i32 2}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @fore200e_activate_vcin._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @fore200e_activate_vcin._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/atm/fore200e.c", i32 1420, i32 5}
!96 = !{ptr @fore200e_close._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @fore200e_close._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @fore200e_close._entry.37, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/atm/fore200e.c", i32 1423, i32 5}
!101 = !{ptr @fore200e_close._entry_ptr.38, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @fore200e_close._entry.40, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/atm/fore200e.c", i32 1424, i32 5}
!105 = !{ptr @fore200e_close._entry_ptr.41, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @fore200e_close._entry.43, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/atm/fore200e.c", i32 1459, i32 5}
!109 = !{ptr @fore200e_close._entry_ptr.44, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/atm/fore200e.c", i32 1704, i32 2}
!113 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @fore200e_getstats._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @fore200e_getstats._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!118 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/atm/fore200e.c", i32 1780, i32 2}
!125 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @fore200e_set_oc3._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @fore200e_set_oc3._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/atm/fore200e.c", i32 1553, i32 5}
!130 = !{ptr @fore200e_send._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @fore200e_send._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/atm/fore200e.c", i32 808, i32 6}
!135 = !{ptr @fore200e_tx_irq._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @fore200e_tx_irq._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @fore200e_tx_irq._entry.57, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/atm/fore200e.c", i32 832, i32 3}
!140 = !{ptr @fore200e_tx_irq._entry_ptr.58, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/atm/fore200e.c", i32 2720, i32 21}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/atm/fore200e.c", i32 2729, i32 3}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/atm/fore200e.c", i32 2745, i32 10}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/atm/fore200e.c", i32 2757, i32 21}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/atm/fore200e.c", i32 2762, i32 33}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/atm/fore200e.c", i32 2764, i32 33}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/atm/fore200e.c", i32 2771, i32 6}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/atm/fore200e.c", i32 2772, i32 6}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/atm/fore200e.c", i32 2773, i32 6}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/atm/fore200e.c", i32 2774, i32 6}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/atm/fore200e.c", i32 2775, i32 6}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/atm/fore200e.c", i32 2776, i32 6}
!165 = !{ptr @fore200e_proc_read.media_name, !166, !"media_name", i1 false, i1 false}
!166 = !{!"../drivers/atm/fore200e.c", i32 2770, i32 21}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/atm/fore200e.c", i32 2780, i32 6}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/atm/fore200e.c", i32 2781, i32 6}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/atm/fore200e.c", i32 2782, i32 6}
!173 = !{ptr @fore200e_proc_read.oc3_mode, !174, !"oc3_mode", i1 false, i1 false}
!174 = !{!"../drivers/atm/fore200e.c", i32 2779, i32 21}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/atm/fore200e.c", i32 2806, i32 10}
!177 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/atm/fore200e.c", i32 2822, i32 10}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/atm/fore200e.c", i32 2832, i32 10}
!181 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/atm/fore200e.c", i32 2841, i32 23}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/atm/fore200e.c", i32 2859, i32 22}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/atm/fore200e.c", i32 2875, i32 22}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/atm/fore200e.c", i32 2885, i32 22}
!189 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/atm/fore200e.c", i32 2909, i32 22}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/atm/fore200e.c", i32 2933, i32 22}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/atm/fore200e.c", i32 2949, i32 22}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/atm/fore200e.c", i32 2951, i32 49}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/atm/fore200e.c", i32 2951, i32 56}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/atm/fore200e.c", i32 2954, i32 29}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/atm/fore200e.c", i32 2971, i32 6}
!203 = !{ptr @fore200e_proc_read._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @fore200e_proc_read._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.88, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/atm/fore200e.c", i32 2974, i32 6}
!207 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/atm/fore200e.c", i32 345, i32 6}
!209 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @fore200e_reset._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @fore200e_reset._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.92, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/atm/fore200e.c", i32 349, i32 2}
!214 = !{ptr @fore200e_reset._entry.91, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @fore200e_reset._entry_ptr.93, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/atm/fore200e.c", i32 276, i32 2}
!218 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @fore200e_io_poll._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @fore200e_io_poll._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.96, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/atm/fore200e.c", i32 2400, i32 18}
!223 = !{ptr @.str.97, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/atm/fore200e.c", i32 2400, i32 52}
!225 = !{ptr @.str.98, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/atm/fore200e.c", i32 2402, i32 2}
!227 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @fore200e_load_and_start_fw._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @fore200e_load_and_start_fw._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.101, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/atm/fore200e.c", i32 2415, i32 2}
!232 = !{ptr @fore200e_load_and_start_fw._entry.100, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @fore200e_load_and_start_fw._entry_ptr.102, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.103, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/atm/fore200e.c", i32 2429, i32 18}
!236 = !{ptr @.str.105, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/atm/fore200e.c", i32 2433, i32 2}
!238 = !{ptr @fore200e_load_and_start_fw._entry.104, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @fore200e_load_and_start_fw._entry_ptr.106, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.108, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/atm/fore200e.c", i32 2437, i32 5}
!242 = !{ptr @fore200e_load_and_start_fw._entry.107, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @fore200e_load_and_start_fw._entry_ptr.109, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @fore200e_initialize.__key, !245, !"__key", i1 false, i1 false}
!245 = !{!"../drivers/atm/fore200e.c", i32 2292, i32 5}
!246 = !{ptr @.str.110, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @fore200e_initialize.__key.111, !248, !"__key", i1 false, i1 false}
!248 = !{!"../drivers/atm/fore200e.c", i32 2293, i32 5}
!249 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.113, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/atm/fore200e.c", i32 2325, i32 2}
!252 = !{ptr @.str.114, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @fore200e_initialize._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @fore200e_initialize._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.116, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/atm/fore200e.c", i32 2329, i32 5}
!257 = !{ptr @fore200e_initialize._entry.115, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @fore200e_initialize._entry_ptr.117, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @fore200e_rx_buf_size, !260, !"fore200e_rx_buf_size", i1 false, i1 false}
!260 = !{!"../drivers/atm/fore200e.c", i32 108, i32 18}
!261 = !{ptr @fore200e_rx_buf_nbr, !262, !"fore200e_rx_buf_nbr", i1 false, i1 false}
!262 = !{!"../drivers/atm/fore200e.c", i32 103, i32 18}
!263 = !{ptr @.str.118, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/atm/fore200e.c", i32 1967, i32 5}
!265 = !{ptr @.str.119, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @fore200e_get_esi._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @fore200e_get_esi._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.120, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/atm/fore200e.c", i32 1935, i32 2}
!270 = !{ptr @.str.121, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @fore200e_irq_request._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @fore200e_irq_request._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.123, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/atm/fore200e.c", i32 1940, i32 5}
!275 = !{ptr @fore200e_irq_request._entry.122, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @fore200e_irq_request._entry_ptr.124, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.125, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/atm/fore200e.c", i32 1111, i32 6}
!279 = !{ptr @fore200e_rx_irq._entry, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @fore200e_rx_irq._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.126, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/atm/fore200e.c", i32 970, i32 5}
!283 = !{ptr @fore200e_push_rpd._entry, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @fore200e_push_rpd._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @fore200e_push_rpd._entry.127, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/atm/fore200e.c", i32 973, i32 5}
!287 = !{ptr @fore200e_push_rpd._entry_ptr.128, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.129, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/atm/fore200e.c", i32 930, i32 4}
!290 = !{ptr @.str.130, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @fore200e_supply._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @fore200e_supply._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.131, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/atm/fore200e.c", i32 361, i32 5}
!295 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @fore200e_shutdown._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @fore200e_shutdown._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.133, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/atm/fore200e.c", i32 2676, i32 2}
!300 = !{ptr @.str.134, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @fore200e_module_init._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @fore200e_module_init._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{!"sp"}
!304 = !{i32 1, !"wchar_size", i32 2}
!305 = !{i32 1, !"min_enum_size", i32 4}
!306 = !{i32 8, !"branch-target-enforcement", i32 0}
!307 = !{i32 8, !"sign-return-address", i32 0}
!308 = !{i32 8, !"sign-return-address-all", i32 0}
!309 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!310 = !{i32 7, !"uwtable", i32 1}
!311 = !{i32 7, !"frame-pointer", i32 2}
!312 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!313 = !{!"auto-init"}
!314 = !{i64 4758404}
!315 = !{i64 2157349142}
!316 = !{i64 2157349511}
!317 = !{i64 4757986}
!318 = !{i64 2157351011}
!319 = !{i64 2157351417}
!320 = !{!"branch_weights", i32 2000, i32 1}
!321 = !{i64 2157339180}
!322 = !{i64 2157350362}
!323 = !{i64 2157350593}
!324 = !{!"branch_weights", i32 1, i32 2000}
!325 = !{i64 2153959709, i64 2153959734}
!326 = !{i64 6454583}
!327 = !{i64 6454780}
!328 = !{i64 2153940013}
!329 = !{i64 2157404365, i64 2157404645, i64 2157404979, i64 2157405313}
!330 = !{i64 2157414965, i64 2157415245, i64 2157415579, i64 2157415913}
!331 = !{i64 2157424792, i64 2157425072, i64 2157425406, i64 2157425740}
!332 = !{i64 2148292543, i64 2148292569, i64 2148292598, i64 2148292632, i64 2148292663, i64 2148292686}
