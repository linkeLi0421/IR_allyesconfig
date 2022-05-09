; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla4xxx/ql4_nx.c_pt.bc'
source_filename = "../drivers/scsi/qla4xxx/ql4_nx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.crb_128M_2M_sub_block_map = type { i32, i32, i32, i32 }
%struct.crb_128M_2M_block_map = type { [16 x %struct.crb_128M_2M_sub_block_map] }
%struct.scsi_qla_host = type { i32, i32, ptr, i32, i16, i16, ptr, ptr, ptr, i32, i32, i16, i32, ptr, [76 x i8], %struct.spinlock, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i16, [32 x i8], [256 x i8], i8, [6 x i8], [16 x i8], i16, i32, i32, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.list_head, i16, i16, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, [512 x %struct.aen], %struct.ql4_aen_log, %struct.mutex, i8, [8 x i32], [512 x ptr], ptr, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, %struct.qla4_8xxx_legacy_intr_set, i32, i8, i32, ptr, %struct.ql82xx_hw_data, i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.completion, %struct.ipaddress_config, ptr, ptr, ptr, %struct.about_fw_info, i32, i32, i16, i32, ptr, ptr, %struct.mutex, ptr, [16 x i32], ptr, %struct.ql4_boot_tgt_info, i16, i16, i16, [16 x i8], %struct.completion, ptr, i16, i16, i32, i16, %struct.list_head, %struct.spinlock, [128 x ptr], i32, ptr, %struct.qla4_83xx_reset_template, ptr, i32, %struct.qla4_83xx_idc_information, ptr, i32, i32, i32, %struct.completion, %struct.completion, [56 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aen = type { [8 x i32] }
%struct.ql4_aen_log = type { i32, [512 x %struct.aen] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla4_8xxx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.ql82xx_hw_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipaddress_config = type { i16, i16, i16, i8, [4 x i8], [4 x i8], [4 x i8], i32, i32, i8, i8, i8, i8, i16, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, [11 x i8], i8, [11 x i8], i8, i16, i8, i8, i32, i32, i32, i8, i32, i16, i8, i16, i16, i16, i16, i16, [224 x i8] }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.about_fw_info = type { i16, i16, i16, i16, [16 x i8], [16 x i8], [16 x i8], i16, [6 x i8], i16, i16, i16, i16, i16, i16, [180 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ql4_boot_tgt_info = type { %struct.ql4_boot_session_info, %struct.ql4_boot_session_info }
%struct.ql4_boot_session_info = type { [224 x i8], [1 x %struct.ql4_conn_info] }
%struct.ql4_conn_info = type { i16, %struct.ip_address_format, %struct.ql4_chap_format }
%struct.ip_address_format = type { i8, [16 x i8] }
%struct.ql4_chap_format = type { [256 x i8], [100 x i8], [256 x i8], [100 x i8], i16, i16, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qla4_83xx_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.qla4_83xx_idc_information = type { i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.174, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.174 = type { ptr }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.crb_addr_pair = type { i32, i32 }
%struct.qla_flt_header = type { i16, i16, i16, i16 }
%struct.qla_flt_region = type { i32, i32, i32, i32 }
%struct.qla_fdt_layout = type { [4 x i8], i16, i16, i16, [2 x i8], [16 x i8], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qla4_83xx_pex_dma_descriptor = type { %struct.anon.214, i64, i64, [24 x i8] }
%struct.anon.214 = type { i32, [2 x i8], i16 }
%struct.qla4_8xxx_minidump_template_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [8 x i32], [16 x i32], [16 x i32] }
%struct.qla8xxx_minidump_entry_hdr = type { i32, i32, i32, %struct.anon.211 }
%struct.anon.211 = type { i8, i8, i8, i8 }
%struct.qla8xxx_minidump_entry_crb = type { %struct.qla8xxx_minidump_entry_hdr, i32, %struct.anon.212, i32, i32, %struct.anon.213, i32, i32, i32 }
%struct.anon.212 = type { i8, i8, i16 }
%struct.anon.213 = type { i8, i8, i8, i8 }
%struct.qla4_83xx_minidump_entry_rdmem_pex_dma = type { %struct.qla8xxx_minidump_entry_hdr, i32, i16, [2 x i8], i32, [12 x i8], i32, i32 }
%struct.qla8xxx_minidump_entry_rdmem = type { %struct.qla8xxx_minidump_entry_hdr, [6 x i32], i32, i32 }
%struct.qla8xxx_minidump_entry_rdrom = type { %struct.qla8xxx_minidump_entry_hdr, [6 x i32], i32, i32 }
%struct.qla8xxx_minidump_entry_cache = type { %struct.qla8xxx_minidump_entry_hdr, i32, %struct.anon.215, i32, i32, i32, %struct.anon.216, i32, %struct.anon.217 }
%struct.anon.215 = type { i16, i16 }
%struct.anon.216 = type { i16, i8, i8 }
%struct.anon.217 = type { i8, i8, i16 }
%struct.qla8xxx_minidump_entry_rdocm = type { %struct.qla8xxx_minidump_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla8xxx_minidump_entry_mux = type { %struct.qla8xxx_minidump_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla8xxx_minidump_entry_queue = type { %struct.qla8xxx_minidump_entry_hdr, i32, %struct.anon.218, i32, i32, i32, i32, i32, %struct.anon.219 }
%struct.anon.218 = type { i16, i16 }
%struct.anon.219 = type { i8, i8, i16 }
%struct.qla83xx_minidump_entry_pollrd = type { %struct.qla8xxx_minidump_entry_hdr, i32, i32, i32, i16, i16, i32, i32, i32, i32 }
%struct.qla83xx_minidump_entry_rdmux2 = type { %struct.qla8xxx_minidump_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }
%struct.qla83xx_minidump_entry_pollrdmwr = type { %struct.qla8xxx_minidump_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla8044_minidump_entry_pollwr = type { %struct.qla8xxx_minidump_entry_hdr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_reg_83xx = type { [16 x i32], [496 x i32], [16 x i32], [496 x i32], i32, [63 x i32], i32, [63 x i32], i32, [1919 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, [544 x i32], i32, i32, i32 }
%struct.device_reg_82xx = type { i32, [63 x i32], i32, [63 x i32], i32, [63 x i32], [8 x i32], [24 x i32], i32, [31 x i32], [8 x i32], [56 x i32], i32, i32 }
%struct.mbx_sys_info = type { [16 x i8], i16, i16, i16, [6 x i8], i32, i32, [16 x i8], [12 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.168, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.168 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ql4xextended_error_logging = external dso_local local_unnamed_addr global i32, align 4
@qla4_82xx_md_rd_32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 472, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Written (0x%x) != Read (0x%x), off=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla4_82xx_md_rd_32\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/qla4xxx/ql4_nx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qla4_82xx_md_rd_32._entry_ptr = internal global ptr @qla4_82xx_md_rd_32._entry, section ".printk_index", align 4
@qla4_82xx_md_wr_32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla4_82xx_md_wr_32\00", [45 x i8] zeroinitializer }, align 32
@qla4_82xx_md_wr_32._entry_ptr = internal global ptr @qla4_82xx_md_wr_32._entry, section ".printk_index", align 4
@qla4_8xxx_ms_mem_write_128b._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1198, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: write to AGT_ADDR_HI failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4_8xxx_ms_mem_write_128b\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@qla4_8xxx_ms_mem_write_128b._entry_ptr = internal global ptr @qla4_8xxx_ms_mem_write_128b._entry, section ".printk_index", align 4
@qla4_8xxx_ms_mem_write_128b._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 1229, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: write to AGT_WRDATA failed\0A\00", [32 x i8] zeroinitializer }, align 32
@qla4_8xxx_ms_mem_write_128b._entry_ptr.11 = internal global ptr @qla4_8xxx_ms_mem_write_128b._entry.9, section ".printk_index", align 4
@qla4_8xxx_ms_mem_write_128b._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 1241, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: write to AGT_CTRL failed\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4_8xxx_ms_mem_write_128b._entry_ptr.14 = internal global ptr @qla4_8xxx_ms_mem_write_128b._entry.12, section ".printk_index", align 4
@qla4_8xxx_ms_mem_write_128b._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 1251, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to read MD_MIU_TEST_AGT_CTRL\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4_8xxx_ms_mem_write_128b._entry_ptr.17 = internal global ptr @qla4_8xxx_ms_mem_write_128b._entry.15, section ".printk_index", align 4
@qla4_8xxx_ms_mem_write_128b._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@qla4_8xxx_ms_mem_write_128b._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: MS memory write failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4_8xxx_ms_mem_write_128b._entry_ptr.21 = internal global ptr @qla4_8xxx_ms_mem_write_128b._entry.19, section ".printk_index", align 4
@qla4_82xx_pci_mem_read_2M._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.qla4_82xx_pci_mem_read_2M = private unnamed_addr constant [26 x i8] c"qla4_82xx_pci_mem_read_2M\00", align 1
@qla4_82xx_pci_mem_read_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.qla4_82xx_pci_mem_read_2M, ptr @.str.2, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: failed to read through agent\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_mem_read_2M._entry_ptr = internal global ptr @qla4_82xx_pci_mem_read_2M._entry, section ".printk_index", align 4
@__func__.qla4_82xx_pci_mem_write_2M = private unnamed_addr constant [27 x i8] c"qla4_82xx_pci_mem_write_2M\00", align 1
@qla4_82xx_pci_mem_write_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.qla4_82xx_pci_mem_write_2M, ptr @.str.2, i32 1539, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: failed to read through agent\0A\00", [62 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_mem_write_2M._entry_ptr = internal global ptr @qla4_82xx_pci_mem_write_2M._entry, section ".printk_index", align 4
@qla4_8xxx_set_drv_active._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1622, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(%ld): drv_active: 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4_8xxx_set_drv_active\00", [39 x i8] zeroinitializer }, align 32
@qla4_8xxx_set_drv_active._entry_ptr = internal global ptr @qla4_8xxx_set_drv_active._entry, section ".printk_index", align 4
@qla4_8xxx_clear_drv_active._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.2, i32 1644, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4_8xxx_clear_drv_active\00", [37 x i8] zeroinitializer }, align 32
@qla4_8xxx_clear_drv_active._entry_ptr = internal global ptr @qla4_8xxx_clear_drv_active._entry, section ".printk_index", align 4
@qla4_8xxx_set_rst_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1689, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(%ld): drv_state: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4_8xxx_set_rst_ready\00", [40 x i8] zeroinitializer }, align 32
@qla4_8xxx_set_rst_ready._entry_ptr = internal global ptr @qla4_8xxx_set_rst_ready._entry, section ".printk_index", align 4
@qla4_8xxx_clear_rst_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.2, i32 1710, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4_8xxx_clear_rst_ready\00", [38 x i8] zeroinitializer }, align 32
@qla4_8xxx_clear_rst_ready._entry_ptr = internal global ptr @qla4_8xxx_clear_rst_ready._entry, section ".printk_index", align 4
@qla4_82xx_try_start_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1779, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FW: Retrieving flash offsets from FLT/FDT ...\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_82xx_try_start_fw\00", [41 x i8] zeroinitializer }, align 32
@qla4_82xx_try_start_fw._entry_ptr = internal global ptr @qla4_82xx_try_start_fw._entry, section ".printk_index", align 4
@qla4_82xx_try_start_fw._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1785, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FW: Attempting to load firmware from flash...\0A\00", [49 x i8] zeroinitializer }, align 32
@qla4_82xx_try_start_fw._entry_ptr.34 = internal global ptr @qla4_82xx_try_start_fw._entry.32, section ".printk_index", align 4
@qla4_82xx_try_start_fw._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 1790, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FW: Load firmware from flash FAILED...\0A\00", [56 x i8] zeroinitializer }, align 32
@qla4_82xx_try_start_fw._entry_ptr.37 = internal global ptr @qla4_82xx_try_start_fw._entry.35, section ".printk_index", align 4
@qla4_82xx_rom_lock_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1801, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Resetting rom_lock\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4_82xx_rom_lock_recovery\00", [36 x i8] zeroinitializer }, align 32
@qla4_82xx_rom_lock_recovery._entry_ptr = internal global ptr @qla4_82xx_rom_lock_recovery._entry, section ".printk_index", align 4
@ql4xenablemd = external dso_local local_unnamed_addr global i32, align 4
@qla4_8xxx_get_minidump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 3235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Unable to collect minidump\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_8xxx_get_minidump\00", [41 x i8] zeroinitializer }, align 32
@qla4_8xxx_get_minidump._entry_ptr = internal global ptr @qla4_8xxx_get_minidump._entry, section ".printk_index", align 4
@qla4_8xxx_device_bootstrap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 3274, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HW State: INITIALIZING\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4_8xxx_device_bootstrap\00", [37 x i8] zeroinitializer }, align 32
@qla4_8xxx_device_bootstrap._entry_ptr = internal global ptr @qla4_8xxx_device_bootstrap._entry, section ".printk_index", align 4
@qla4_8xxx_device_bootstrap._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 3287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HW State: FAILED\0A\00", [46 x i8] zeroinitializer }, align 32
@qla4_8xxx_device_bootstrap._entry_ptr.46 = internal global ptr @qla4_8xxx_device_bootstrap._entry.44, section ".printk_index", align 4
@qla4_8xxx_device_bootstrap._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 3295, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HW State: READY\0A\00", [47 x i8] zeroinitializer }, align 32
@qla4_8xxx_device_bootstrap._entry_ptr.49 = internal global ptr @qla4_8xxx_device_bootstrap._entry.47, section ".printk_index", align 4
@ql4xdontresethba = external dso_local local_unnamed_addr global i32, align 4
@qla4_8xxx_device_state_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 3509, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Device state is 0x%x = %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qla4_8xxx_device_state_handler\00", [33 x i8] zeroinitializer }, align 32
@qla4_8xxx_device_state_handler._entry_ptr = internal global ptr @qla4_8xxx_device_state_handler._entry, section ".printk_index", align 4
@qdev_state = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.52, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277], [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qla4_8xxx_device_state_handler._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.2, i32 3522, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Device Init Failed 0x%x = %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qla4_8xxx_device_state_handler._entry_ptr.56 = internal global ptr @qla4_8xxx_device_state_handler._entry.53, section ".printk_index", align 4
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla4xxx\00", [24 x i8] zeroinitializer }, align 32
@qla4_8xxx_device_state_handler._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 3530, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_8xxx_device_state_handler._entry_ptr.59 = internal global ptr @qla4_8xxx_device_state_handler._entry.58, section ".printk_index", align 4
@qla4_8xxx_stop_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 3979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scsi%ld: %s: status = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4_8xxx_stop_firmware\00", [40 x i8] zeroinitializer }, align 32
@qla4_8xxx_stop_firmware._entry_ptr = internal global ptr @qla4_8xxx_stop_firmware._entry, section ".printk_index", align 4
@qla4_82xx_isp_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 3997, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HW State: NEED RESET\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qla4_82xx_isp_reset\00", [44 x i8] zeroinitializer }, align 32
@qla4_82xx_isp_reset._entry_ptr = internal global ptr @qla4_82xx_isp_reset._entry, section ".printk_index", align 4
@qla4_82xx_isp_reset._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 4002, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HW State: DEVICE INITIALIZING\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4_82xx_isp_reset._entry_ptr.66 = internal global ptr @qla4_82xx_isp_reset._entry.64, section ".printk_index", align 4
@qla4_82xx_isp_reset._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 4013, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Clearing AF_RECOVERY in qla4_82xx_isp_reset\0A\00", [51 x i8] zeroinitializer }, align 32
@qla4_82xx_isp_reset._entry_ptr.69 = internal global ptr @qla4_82xx_isp_reset._entry.67, section ".printk_index", align 4
@qla4_8xxx_get_sys_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 4037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"scsi%ld: %s: Unable to allocate dma buffer.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_8xxx_get_sys_info\00", [41 x i8] zeroinitializer }, align 32
@qla4_8xxx_get_sys_info._entry_ptr = internal global ptr @qla4_8xxx_get_sys_info._entry, section ".printk_index", align 4
@qla4_8xxx_get_sys_info._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 4052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"scsi%ld: %s: GET_SYS_INFO failed\0A\00", [62 x i8] zeroinitializer }, align 32
@qla4_8xxx_get_sys_info._entry_ptr.74 = internal global ptr @qla4_8xxx_get_sys_info._entry.72, section ".printk_index", align 4
@qla4_8xxx_get_sys_info._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.2, i32 4060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"scsi%ld: %s: GET_SYS_INFO data receive error (%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@qla4_8xxx_get_sys_info._entry_ptr.77 = internal global ptr @qla4_8xxx_get_sys_info._entry.75, section ".printk_index", align 4
@qla4_8xxx_get_sys_info._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.2, i32 4077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"scsi%ld: %s: mac %pM serial %s\0A\00", [32 x i8] zeroinitializer }, align 32
@qla4_8xxx_get_sys_info._entry_ptr.80 = internal global ptr @qla4_8xxx_get_sys_info._entry.78, section ".printk_index", align 4
@qla4_8xxx_intr_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 4094, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4_8xxx_intr_enable\00", [42 x i8] zeroinitializer }, align 32
@qla4_8xxx_intr_enable._entry_ptr = internal global ptr @qla4_8xxx_intr_enable._entry, section ".printk_index", align 4
@qla4_8xxx_intr_enable._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 4104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: MBOX_CMD_ENABLE_INTRS failed (0x%04x)\0A\00", [53 x i8] zeroinitializer }, align 32
@qla4_8xxx_intr_enable._entry_ptr.85 = internal global ptr @qla4_8xxx_intr_enable._entry.83, section ".printk_index", align 4
@qla4_8xxx_intr_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.86, ptr @.str.2, i32 4115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_8xxx_intr_disable\00", [41 x i8] zeroinitializer }, align 32
@qla4_8xxx_intr_disable._entry_ptr = internal global ptr @qla4_8xxx_intr_disable._entry, section ".printk_index", align 4
@qla4_8xxx_intr_disable._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.86, ptr @.str.2, i32 4125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_8xxx_intr_disable._entry_ptr.88 = internal global ptr @qla4_8xxx_intr_disable._entry.87, section ".printk_index", align 4
@qla4_8xxx_enable_msix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 4166, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MSI-X: Failed to enable support -- %d/%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4_8xxx_enable_msix\00", [42 x i8] zeroinitializer }, align 32
@qla4_8xxx_enable_msix._entry_ptr = internal global ptr @qla4_8xxx_enable_msix._entry, section ".printk_index", align 4
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla4xxx (default)\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qla4xxx (rsp_q)\00", [16 x i8] zeroinitializer }, align 32
@qla4_8xxx_check_init_adapter_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 4197, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: Skipping retry of adapter initialization as IRQs are not attached\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qla4_8xxx_check_init_adapter_retry\00", [61 x i8] zeroinitializer }, align 32
@qla4_8xxx_check_init_adapter_retry._entry_ptr = internal global ptr @qla4_8xxx_check_init_adapter_retry._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qla4_82xx_crb_hub_agt = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 1907, i32 661, i32 677, i32 0, i32 208, i32 433, i32 230, i32 224, i32 225, i32 226, i32 227, i32 1056, i32 1047, i32 1057, i32 843, i32 1029, i32 832, i32 833, i32 834, i32 835, i32 837, i32 836, i32 960, i32 961, i32 962, i32 963, i32 0, i32 964, i32 1040, i32 0, i32 209, i32 0, i32 1907, i32 1046, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1047, i32 0, i32 137, i32 1802, i32 1803, i32 1804, i32 141, i32 142, i32 1807, i32 1029, i32 1056, i32 1057, i32 0, i32 136, i32 145, i32 1810, i32 1030, i32 0, i32 1816, i32 409, i32 425, i32 0, i32 838, i32 0], [64 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_set_crbwindow_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: Written crbwin (0x%x) != Read crbwin (0x%x), off=0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qla4_82xx_pci_set_crbwindow_2M\00", [33 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_set_crbwindow_2M._entry_ptr = internal global ptr @qla4_82xx_pci_set_crbwindow_2M._entry, section ".printk_index", align 4
@crb_128M_2M_map = internal constant { <{ %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } }>, [4096 x i8] } { <{ %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } }> <{ %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 1048576, i32 1056768, i32 1179648 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1114112, i32 1179648, i32 1245184 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1179648, i32 1187840, i32 1196032 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1245184, i32 1253376, i32 1204224 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1310720, i32 1318912, i32 1212416 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1376256, i32 1384448, i32 1220608 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1441792, i32 1507328, i32 1114112 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1507328, i32 1515520, i32 1236992 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1966080, i32 1968128, i32 1187840 }, %struct.crb_128M_2M_sub_block_map zeroinitializer] }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 2097152, i32 2162688, i32 1572864 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 4194304, i32 4198400, i32 1478656 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 5242880, i32 5308416, i32 1310720 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 6291456, i32 6356992, i32 1835008 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 7340032, i32 7356416, i32 1802240 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 8388608, i32 8396800, i32 1507328 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 9371648, i32 9379840, i32 1515520 }] }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 9437184, i32 9445376, i32 1523712 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 10420224, i32 10428416, i32 1531904 }] }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 0, i32 10485760, i32 10493952, i32 1540096 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 11468800, i32 11476992, i32 1548288 }] }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 0, i32 11534336, i32 11542528, i32 1556480 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 12517376, i32 12525568, i32 1564672 }] }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 12582912, i32 12599296, i32 1916928 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 13631488, i32 13647872, i32 1720320 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 14680064, i32 14696448, i32 1703936 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 15728640, i32 15732736, i32 1458176 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 0, i32 16777216, i32 16793600, i32 1736704 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 17825792, i32 17829888, i32 1441792 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 18874368, i32 18878464, i32 1445888 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 19922944, i32 19927040, i32 1449984 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 20971520, i32 20975616, i32 1454080 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 22020096, i32 22024192, i32 1462272 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 23068672, i32 23072768, i32 1466368 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 30408704, i32 30474240, i32 1638400 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 31457280, i32 31461376, i32 1482752 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 32505856, i32 32571392, i32 1376256 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> } { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> <{ [8 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 34603008, i32 34611200, i32 1179648 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34668544, i32 34734080, i32 1245184 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34734080, i32 34742272, i32 1196032 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34799616, i32 34807808, i32 1204224 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34865152, i32 34873344, i32 1212416 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34930688, i32 34938880, i32 1220608 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34996224, i32 35061760, i32 1114112 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 35061760, i32 35069952, i32 1236992 }], [8 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 35651584, i32 35667968, i32 1769472 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 41943040, i32 41959424, i32 1720320 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 42991616, i32 42995712, i32 1486848 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 44040192, i32 44041216, i32 1754112 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 45088768, i32 45089792, i32 1755136 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 46137344, i32 46138368, i32 1756160 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 47185920, i32 47186944, i32 1757184 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 48234496, i32 48235520, i32 1758208 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 49283072, i32 49284096, i32 1759232 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 50331648, i32 50332672, i32 1760256 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 0, i32 51380224, i32 51396608, i32 1736704 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 52428800, i32 52445184, i32 1916928 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 53477376, i32 53493760, i32 1703936 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 55574528, i32 55575552, i32 1753088 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 56623104, i32 56624128, i32 1761280 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 57671680, i32 57672704, i32 1762304 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 58720256, i32 58736640, i32 1900544 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 59768832, i32 59785216, i32 1785856 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 60817408, i32 60833792, i32 1933312 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 63963136, i32 63979520, i32 1949696 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 65011712, i32 65015808, i32 1470464 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 66060288, i32 66064384, i32 1474560 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> } }>, [4096 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_mem_read_direct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s out of bound pci memory access. offset is 0x%llx\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla4_82xx_pci_mem_read_direct\00", [34 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_mem_read_direct._entry_ptr = internal global ptr @qla4_82xx_pci_mem_read_direct._entry, section ".printk_index", align 4
@qla4_82xx_pci_set_window._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 616, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Written MNwin (0x%x) != Read MNwin (0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4_82xx_pci_set_window\00", [39 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_set_window._entry_ptr = internal global ptr @qla4_82xx_pci_set_window._entry, section ".printk_index", align 4
@qla4_82xx_pci_set_window._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: QM access not handled.\0A\00", [36 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_set_window._entry_ptr.104 = internal global ptr @qla4_82xx_pci_set_window._entry.102, section ".printk_index", align 4
@qla4_82xx_pci_set_window._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Written OCMwin (0x%x) != Read OCMwin (0x%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_set_window._entry_ptr.107 = internal global ptr @qla4_82xx_pci_set_window._entry.105, section ".printk_index", align 4
@qla4_82xx_pci_set_window._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Written MSwin (0x%x) != Read MSwin (0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_set_window._entry_ptr.110 = internal global ptr @qla4_82xx_pci_set_window._entry.108, section ".printk_index", align 4
@qla4_82xx_pci_set_window_warning_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@qla4_82xx_pci_set_window._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.101, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Warning:%s Unknown address range!\0A\00", [57 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_set_window._entry_ptr.113 = internal global ptr @qla4_82xx_pci_set_window._entry.111, section ".printk_index", align 4
@qla4_82xx_pci_mem_write_direct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.114, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qla4_82xx_pci_mem_write_direct\00", [33 x i8] zeroinitializer }, align 32
@qla4_82xx_pci_mem_write_direct._entry_ptr = internal global ptr @qla4_82xx_pci_mem_write_direct._entry, section ".printk_index", align 4
@qla4_82xx_start_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 1750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Error trying to start fw!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4_82xx_start_firmware\00", [39 x i8] zeroinitializer }, align 32
@qla4_82xx_start_firmware._entry_ptr = internal global ptr @qla4_82xx_start_firmware._entry, section ".printk_index", align 4
@qla4_82xx_start_firmware._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 1756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Error during card handshake!\0A\00", [62 x i8] zeroinitializer }, align 32
@qla4_82xx_start_firmware._entry_ptr.119 = internal global ptr @qla4_82xx_start_firmware._entry.117, section ".printk_index", align 4
@qla4_82xx_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: Error during CRB Initialization\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla4_82xx_load_fw\00", [46 x i8] zeroinitializer }, align 32
@qla4_82xx_load_fw._entry_ptr = internal global ptr @qla4_82xx_load_fw._entry, section ".printk_index", align 4
@qla4_82xx_load_fw._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error trying to load fw from flash!\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4_82xx_load_fw._entry_ptr.124 = internal global ptr @qla4_82xx_load_fw._entry.122, section ".printk_index", align 4
@qla4_82xx_pinit_from_rom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1045, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[ERROR] Reading crb_init area: n: %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4_82xx_pinit_from_rom\00", [39 x i8] zeroinitializer }, align 32
@qla4_82xx_pinit_from_rom._entry_ptr = internal global ptr @qla4_82xx_pinit_from_rom._entry, section ".printk_index", align 4
@qla4_82xx_pinit_from_rom._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.2, i32 1059, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: %s:n=0x%x [ERROR] Card flash not initialized.\0A\00", [45 x i8] zeroinitializer }, align 32
@qla4_82xx_pinit_from_rom._entry_ptr.129 = internal global ptr @qla4_82xx_pinit_from_rom._entry.127, section ".printk_index", align 4
@qla4_82xx_pinit_from_rom._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.2, i32 1064, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: %d CRB init values found in ROM.\0A\00", [58 x i8] zeroinitializer }, align 32
@qla4_82xx_pinit_from_rom._entry_ptr.132 = internal global ptr @qla4_82xx_pinit_from_rom._entry.130, section ".printk_index", align 4
@qla4_82xx_pinit_from_rom._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.2, i32 1069, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: [ERROR] Unable to malloc memory.\0A\00", [58 x i8] zeroinitializer }, align 32
@qla4_82xx_pinit_from_rom._entry_ptr.135 = internal global ptr @qla4_82xx_pinit_from_rom._entry.133, section ".printk_index", align 4
@qla4_82xx_pinit_from_rom._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.126, ptr @.str.2, i32 1098, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Skip CRB init replay for offset = 0x%lx\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4_82xx_pinit_from_rom._entry_ptr.138 = internal global ptr @qla4_82xx_pinit_from_rom._entry.136, section ".printk_index", align 4
@qla4_82xx_pinit_from_rom._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.126, ptr @.str.2, i32 1130, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: [ERROR] Unknown addr: 0x%08lx\0A\00", [61 x i8] zeroinitializer }, align 32
@qla4_82xx_pinit_from_rom._entry_ptr.141 = internal global ptr @qla4_82xx_pinit_from_rom._entry.139, section ".printk_index", align 4
@qla4_82xx_rom_fast_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 955, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: qla4_82xx_rom_lock failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4_82xx_rom_fast_read\00", [40 x i8] zeroinitializer }, align 32
@qla4_82xx_rom_fast_read._entry_ptr = internal global ptr @qla4_82xx_rom_fast_read._entry, section ".printk_index", align 4
@qla4_82xx_do_rom_fast_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Error waiting for rom done\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4_82xx_do_rom_fast_read\00", [37 x i8] zeroinitializer }, align 32
@qla4_82xx_do_rom_fast_read._entry_ptr = internal global ptr @qla4_82xx_do_rom_fast_read._entry, section ".printk_index", align 4
@qla4_82xx_wait_rom_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Timeout reached  waiting for rom done\00", [54 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4_82xx_wait_rom_done\00", [40 x i8] zeroinitializer }, align 32
@qla4_82xx_wait_rom_done._entry_ptr = internal global ptr @qla4_82xx_wait_rom_done._entry, section ".printk_index", align 4
@qla4_8xxx_crb_table_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@crb_addr_xform = internal global { [60 x i32], [48 x i8] } zeroinitializer, align 32
@qla4_82xx_load_from_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"scsi%ld: %s: bootldr=0x%lx, fw_image=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4_82xx_load_from_flash\00", [38 x i8] zeroinitializer }, align 32
@qla4_82xx_load_from_flash._entry_ptr = internal global ptr @qla4_82xx_load_from_flash._entry, section ".printk_index", align 4
@qla4_82xx_cmdpeg_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: init failed, pegtune_val = %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_82xx_cmdpeg_ready\00", [41 x i8] zeroinitializer }, align 32
@qla4_82xx_cmdpeg_ready._entry_ptr = internal global ptr @qla4_82xx_cmdpeg_ready._entry, section ".printk_index", align 4
@qla4_82xx_rcvpeg_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 1597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Receive Peg initialization not complete: 0x%x.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_82xx_rcvpeg_ready\00", [41 x i8] zeroinitializer }, align 32
@qla4_82xx_rcvpeg_ready._entry_ptr = internal global ptr @qla4_82xx_rcvpeg_ready._entry, section ".printk_index", align 4
@qla4_8xxx_collect_md_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 3002, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(%ld) No buffer to dump\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4_8xxx_collect_md_data\00", [38 x i8] zeroinitializer }, align 32
@qla4_8xxx_collect_md_data._entry_ptr = internal global ptr @qla4_8xxx_collect_md_data._entry, section ".printk_index", align 4
@qla4_8xxx_collect_md_data._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.2, i32 3014, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%s]: starting data ptr: %p\0A\00", [35 x i8] zeroinitializer }, align 32
@qla4_8xxx_collect_md_data._entry_ptr.158 = internal global ptr @qla4_8xxx_collect_md_data._entry.156, section ".printk_index", align 4
@qla4_8xxx_collect_md_data._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.155, ptr @.str.2, i32 3017, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s]: no of entry headers in Template: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@qla4_8xxx_collect_md_data._entry_ptr.161 = internal global ptr @qla4_8xxx_collect_md_data._entry.159, section ".printk_index", align 4
@qla4_8xxx_collect_md_data._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.155, ptr @.str.2, i32 3019, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s]: Capture Mask obtained: 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@qla4_8xxx_collect_md_data._entry_ptr.164 = internal global ptr @qla4_8xxx_collect_md_data._entry.162, section ".printk_index", align 4
@qla4_8xxx_collect_md_data._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.155, ptr @.str.2, i32 3021, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s]: Total_data_size 0x%x, %d obtained\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4_8xxx_collect_md_data._entry_ptr.167 = internal global ptr @qla4_8xxx_collect_md_data._entry.165, section ".printk_index", align 4
@qla4_8xxx_collect_md_data._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.155, ptr @.str.2, i32 3041, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Data collected: [0x%x], Total Dump size: [0x%x]\0A\00", [47 x i8] zeroinitializer }, align 32
@qla4_8xxx_collect_md_data._entry_ptr.170 = internal global ptr @qla4_8xxx_collect_md_data._entry.168, section ".printk_index", align 4
@qla4_8xxx_collect_md_data._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.155, ptr @.str.2, i32 3055, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Data collected: [0x%x], Dump size left:[0x%x]\0A\00", [49 x i8] zeroinitializer }, align 32
@qla4_8xxx_collect_md_data._entry_ptr.173 = internal global ptr @qla4_8xxx_collect_md_data._entry.171, section ".printk_index", align 4
@qla4_8xxx_collect_md_data._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.155, ptr @.str.2, i32 3192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Dump data mismatch: Data collected: [0x%x], total_data_size:[0x%x]\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4_8xxx_collect_md_data._entry_ptr.176 = internal global ptr @qla4_8xxx_collect_md_data._entry.174, section ".printk_index", align 4
@qla4_8xxx_collect_md_data._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.155, ptr @.str.2, i32 3198, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Leaving fn: %s Last entry: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@qla4_8xxx_collect_md_data._entry_ptr.179 = internal global ptr @qla4_8xxx_collect_md_data._entry.177, section ".printk_index", align 4
@qla4_8xxx_mark_entry_skipped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 2568, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"scsi(%ld): Skipping entry[%d]: ETYPE[0x%x]-ELEVEL[0x%x]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qla4_8xxx_mark_entry_skipped\00", [35 x i8] zeroinitializer }, align 32
@qla4_8xxx_mark_entry_skipped._entry_ptr = internal global ptr @qla4_8xxx_mark_entry_skipped._entry, section ".printk_index", align 4
@qla4_8xxx_minidump_process_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.2, i32 2201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Entering fn: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qla4_8xxx_minidump_process_control\00", [61 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_process_control._entry_ptr = internal global ptr @qla4_8xxx_minidump_process_control._entry, section ".printk_index", align 4
@qla4_8xxx_minidump_process_control._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.2, i32 2304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Leaving fn: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_process_control._entry_ptr.186 = internal global ptr @qla4_8xxx_minidump_process_control._entry.184, section ".printk_index", align 4
@qla4_8xxx_minidump_process_rdcrb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.187, ptr @.str.2, i32 1915, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla4_8xxx_minidump_process_rdcrb\00", [63 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_process_rdcrb._entry_ptr = internal global ptr @qla4_8xxx_minidump_process_rdcrb._entry, section ".printk_index", align 4
@qla4_8xxx_minidump_pex_dma_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.188, ptr @.str.2, i32 2027, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qla4_8xxx_minidump_pex_dma_read\00", [32 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_pex_dma_read._entry_ptr = internal global ptr @qla4_8xxx_minidump_pex_dma_read._entry, section ".printk_index", align 4
@qla4_8xxx_minidump_pex_dma_read._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.2, i32 2033, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: DMA engine not available. Fallback to rdmem-read.\0A\00", [41 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_pex_dma_read._entry_ptr.191 = internal global ptr @qla4_8xxx_minidump_pex_dma_read._entry.189, section ".printk_index", align 4
@qla4_8xxx_minidump_pex_dma_read._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.2, i32 2044, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Unable to allocate rdmem dma buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_pex_dma_read._entry_ptr.194 = internal global ptr @qla4_8xxx_minidump_pex_dma_read._entry.192, section ".printk_index", align 4
@qla4_8xxx_minidump_pex_dma_read._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.2, i32 2082, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_pex_dma_read._entry_ptr.196 = internal global ptr @qla4_8xxx_minidump_pex_dma_read._entry.195, section ".printk_index", align 4
@qla4_8xxx_minidump_pex_dma_read._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.188, ptr @.str.2, i32 2099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Error writing rdmem-dma-init to MS !!!\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_pex_dma_read._entry_ptr.199 = internal global ptr @qla4_8xxx_minidump_pex_dma_read._entry.197, section ".printk_index", align 4
@qla4_8xxx_minidump_pex_dma_read._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.188, ptr @.str.2, i32 2105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Dma-desc: Instruct for rdmem dma (size 0x%x).\0A\00", [45 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_pex_dma_read._entry_ptr.202 = internal global ptr @qla4_8xxx_minidump_pex_dma_read._entry.200, section ".printk_index", align 4
@qla4_8xxx_minidump_pex_dma_read._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.188, ptr @.str.2, i32 2111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"scsi(%ld): start-pex-dma failed rval=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_pex_dma_read._entry_ptr.205 = internal global ptr @qla4_8xxx_minidump_pex_dma_read._entry.203, section ".printk_index", align 4
@qla4_8xxx_minidump_pex_dma_read._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.188, ptr @.str.2, i32 2120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_pex_dma_read._entry_ptr.207 = internal global ptr @qla4_8xxx_minidump_pex_dma_read._entry.206, section ".printk_index", align 4
@__qla4_8xxx_minidump_process_rdmem._entry = internal constant %struct.pi_entry { ptr @.str.182, ptr @.str.208, ptr @.str.2, i32 2473, ptr @.str.3, ptr @.str.4 }, align 1
@.str.208 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"__qla4_8xxx_minidump_process_rdmem\00", [61 x i8] zeroinitializer }, align 32
@__qla4_8xxx_minidump_process_rdmem._entry_ptr = internal global ptr @__qla4_8xxx_minidump_process_rdmem._entry, section ".printk_index", align 4
@__qla4_8xxx_minidump_process_rdmem._entry.209 = internal constant %struct.pi_entry { ptr @.str.210, ptr @.str.208, ptr @.str.2, i32 2480, ptr @.str.3, ptr @.str.4 }, align 1
@.str.210 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s]: Read addr: 0x%x, read_data_size: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@__qla4_8xxx_minidump_process_rdmem._entry_ptr.211 = internal global ptr @__qla4_8xxx_minidump_process_rdmem._entry.209, section ".printk_index", align 4
@__qla4_8xxx_minidump_process_rdmem._entry.212 = internal constant %struct.pi_entry { ptr @.str.213, ptr @.str.208, ptr @.str.2, i32 2485, ptr @.str.3, ptr @.str.4 }, align 1
@.str.213 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s]: Read addr 0x%x not 16 bytes aligned\0A\00", [53 x i8] zeroinitializer }, align 32
@__qla4_8xxx_minidump_process_rdmem._entry_ptr.214 = internal global ptr @__qla4_8xxx_minidump_process_rdmem._entry.212, section ".printk_index", align 4
@__qla4_8xxx_minidump_process_rdmem._entry.215 = internal constant %struct.pi_entry { ptr @.str.216, ptr @.str.208, ptr @.str.2, i32 2492, ptr @.str.3, ptr @.str.4 }, align 1
@.str.216 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s]: Read data[0x%x] not multiple of 16 bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@__qla4_8xxx_minidump_process_rdmem._entry_ptr.217 = internal global ptr @__qla4_8xxx_minidump_process_rdmem._entry.215, section ".printk_index", align 4
@__qla4_8xxx_minidump_process_rdmem._entry.218 = internal constant %struct.pi_entry { ptr @.str.219, ptr @.str.208, ptr @.str.2, i32 2498, ptr @.str.3, ptr @.str.4 }, align 1
@.str.219 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s]: rdmem_addr: 0x%x, read_data_size: 0x%x, loop_cnt: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@__qla4_8xxx_minidump_process_rdmem._entry_ptr.220 = internal global ptr @__qla4_8xxx_minidump_process_rdmem._entry.218, section ".printk_index", align 4
@__qla4_8xxx_minidump_process_rdmem._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__qla4_8xxx_minidump_process_rdmem._entry.221 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.208, ptr @.str.2, i32 2522, ptr null, ptr null }, align 1
@__qla4_8xxx_minidump_process_rdmem._entry_ptr.222 = internal global ptr @__qla4_8xxx_minidump_process_rdmem._entry.221, section ".printk_index", align 4
@__qla4_8xxx_minidump_process_rdmem._entry.223 = internal constant %struct.pi_entry { ptr @.str.224, ptr @.str.208, ptr @.str.2, i32 2539, ptr @.str.3, ptr @.str.4 }, align 1
@.str.224 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Leaving fn: %s datacount: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@__qla4_8xxx_minidump_process_rdmem._entry_ptr.225 = internal global ptr @__qla4_8xxx_minidump_process_rdmem._entry.223, section ".printk_index", align 4
@qla4_82xx_minidump_process_rdrom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.226, ptr @.str.2, i32 2438, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla4_82xx_minidump_process_rdrom\00", [63 x i8] zeroinitializer }, align 32
@qla4_82xx_minidump_process_rdrom._entry_ptr = internal global ptr @qla4_82xx_minidump_process_rdrom._entry, section ".printk_index", align 4
@qla4_82xx_minidump_process_rdrom._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.226, ptr @.str.2, i32 2445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s]: flash_addr: 0x%x, read_data_size: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@qla4_82xx_minidump_process_rdrom._entry_ptr.229 = internal global ptr @qla4_82xx_minidump_process_rdrom._entry.227, section ".printk_index", align 4
@qla4_83xx_minidump_process_rdrom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.2, i32 2966, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s]: fl_addr: 0x%x, count: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla4_83xx_minidump_process_rdrom\00", [63 x i8] zeroinitializer }, align 32
@qla4_83xx_minidump_process_rdrom._entry_ptr = internal global ptr @qla4_83xx_minidump_process_rdrom._entry, section ".printk_index", align 4
@qla4_83xx_minidump_process_rdrom._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.231, ptr @.str.2, i32 2973, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Flash Read Error,Count=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4_83xx_minidump_process_rdrom._entry_ptr.234 = internal global ptr @qla4_83xx_minidump_process_rdrom._entry.232, section ".printk_index", align 4
@qla4_8xxx_minidump_process_l2tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.235, ptr @.str.2, i32 2144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla4_8xxx_minidump_process_l2tag\00", [63 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_process_l2tag._entry_ptr = internal global ptr @qla4_8xxx_minidump_process_l2tag._entry, section ".printk_index", align 4
@qla4_8xxx_minidump_process_rdocm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.236, ptr @.str.2, i32 2316, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla4_8xxx_minidump_process_rdocm\00", [63 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_process_rdocm._entry_ptr = internal global ptr @qla4_8xxx_minidump_process_rdocm._entry, section ".printk_index", align 4
@qla4_8xxx_minidump_process_rdocm._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.236, ptr @.str.2, i32 2324, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%s]: r_addr: 0x%x, r_stride: 0x%x, loop_cnt: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_process_rdocm._entry_ptr.239 = internal global ptr @qla4_8xxx_minidump_process_rdocm._entry.237, section ".printk_index", align 4
@qla4_8xxx_minidump_process_rdocm._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.236, ptr @.str.2, i32 2332, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Leaving fn: %s datacount: 0x%lx\0A\00", [63 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_process_rdocm._entry_ptr.242 = internal global ptr @qla4_8xxx_minidump_process_rdocm._entry.240, section ".printk_index", align 4
@qla4_8xxx_minidump_process_rdmux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.243, ptr @.str.2, i32 2344, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla4_8xxx_minidump_process_rdmux\00", [63 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_process_rdmux._entry_ptr = internal global ptr @qla4_8xxx_minidump_process_rdmux._entry, section ".printk_index", align 4
@qla4_8xxx_minidump_process_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.244, ptr @.str.2, i32 2406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla4_8xxx_minidump_process_queue\00", [63 x i8] zeroinitializer }, align 32
@qla4_8xxx_minidump_process_queue._entry_ptr = internal global ptr @qla4_8xxx_minidump_process_queue._entry, section ".printk_index", align 4
@qla83xx_minidump_process_pollrd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.2, i32 2608, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: TIMEOUT\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qla83xx_minidump_process_pollrd\00", [32 x i8] zeroinitializer }, align 32
@qla83xx_minidump_process_pollrd._entry_ptr = internal global ptr @qla83xx_minidump_process_pollrd._entry, section ".printk_index", align 4
@qla83xx_minidump_process_pollrdmwr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.248, ptr @.str.2, i32 2916, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: TIMEOUT_1\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qla83xx_minidump_process_pollrdmwr\00", [61 x i8] zeroinitializer }, align 32
@qla83xx_minidump_process_pollrdmwr._entry_ptr = internal global ptr @qla83xx_minidump_process_pollrdmwr._entry, section ".printk_index", align 4
@qla83xx_minidump_process_pollrdmwr._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.248, ptr @.str.2, i32 2938, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: TIMEOUT_2\0A\00", [17 x i8] zeroinitializer }, align 32
@qla83xx_minidump_process_pollrdmwr._entry_ptr.251 = internal global ptr @qla83xx_minidump_process_pollrdmwr._entry.249, section ".printk_index", align 4
@qla4_84xx_minidump_process_rddfe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.252, ptr @.str.2, i32 2665, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla4_84xx_minidump_process_rddfe\00", [63 x i8] zeroinitializer }, align 32
@qla4_84xx_minidump_process_rddfe._entry_ptr = internal global ptr @qla4_84xx_minidump_process_rddfe._entry, section ".printk_index", align 4
@qla4_84xx_minidump_process_rddfe._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.252, ptr @.str.2, i32 2686, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_84xx_minidump_process_rddfe._entry_ptr.254 = internal global ptr @qla4_84xx_minidump_process_rddfe._entry.253, section ".printk_index", align 4
@qla4_84xx_minidump_process_rddfe._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.252, ptr @.str.2, i32 2704, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_84xx_minidump_process_rddfe._entry_ptr.256 = internal global ptr @qla4_84xx_minidump_process_rddfe._entry.255, section ".printk_index", align 4
@ql4_84xx_poll_wait_ipmdio_bus_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.258, ptr @.str.2, i32 1877, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error in processing mdiobus idle\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ql4_84xx_poll_wait_ipmdio_bus_idle\00", [61 x i8] zeroinitializer }, align 32
@ql4_84xx_poll_wait_ipmdio_bus_idle._entry_ptr = internal global ptr @ql4_84xx_poll_wait_ipmdio_bus_idle._entry, section ".printk_index", align 4
@ql4_84xx_poll_wait_for_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str.2, i32 1826, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error in processing rdmdio entry\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ql4_84xx_poll_wait_for_ready\00", [35 x i8] zeroinitializer }, align 32
@ql4_84xx_poll_wait_for_ready._entry_ptr = internal global ptr @ql4_84xx_poll_wait_for_ready._entry, section ".printk_index", align 4
@qla4_84xx_minidump_process_pollwr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.261, ptr @.str.2, i32 2823, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qla4_84xx_minidump_process_pollwr\00", [62 x i8] zeroinitializer }, align 32
@qla4_84xx_minidump_process_pollwr._entry_ptr = internal global ptr @qla4_84xx_minidump_process_pollwr._entry, section ".printk_index", align 4
@.str.262 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FW_DUMP=%lu\00", [20 x i8] zeroinitializer }, align 32
@qla4_82xx_set_idc_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.264, ptr @.str.2, i32 3406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: IDC version updated to %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4_82xx_set_idc_ver\00", [42 x i8] zeroinitializer }, align 32
@qla4_82xx_set_idc_ver._entry_ptr = internal global ptr @qla4_82xx_set_idc_ver._entry, section ".printk_index", align 4
@qla4_82xx_set_idc_ver._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.264, ptr @.str.2, i32 3412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s: qla4xxx driver IDC version %d is not compatible with IDC version %d of other drivers!\0A\00", [37 x i8] zeroinitializer }, align 32
@qla4_82xx_set_idc_ver._entry_ptr.267 = internal global ptr @qla4_82xx_set_idc_ver._entry.265, section ".printk_index", align 4
@qla4_83xx_set_idc_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.268, ptr @.str.2, i32 3431, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4_83xx_set_idc_ver\00", [42 x i8] zeroinitializer }, align 32
@qla4_83xx_set_idc_ver._entry_ptr = internal global ptr @qla4_83xx_set_idc_ver._entry, section ".printk_index", align 4
@qla4_83xx_set_idc_ver._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.268, ptr @.str.2, i32 3439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_set_idc_ver._entry_ptr.270 = internal global ptr @qla4_83xx_set_idc_ver._entry.269, section ".printk_index", align 4
@.str.271 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Cold\00", [27 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Initializing\00", [19 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ready\00", [26 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Need Reset\00", [21 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Need Quiescent\00", [17 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Quiescent\00", [22 x i8] zeroinitializer }, align 32
@qla4_82xx_need_reset_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.279, ptr @.str.2, i32 3315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Performing ISP error recovery\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qla4_82xx_need_reset_handler\00", [35 x i8] zeroinitializer }, align 32
@qla4_82xx_need_reset_handler._entry_ptr = internal global ptr @qla4_82xx_need_reset_handler._entry, section ".printk_index", align 4
@qla4_82xx_need_reset_handler._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.279, ptr @.str.2, i32 3326, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(%ld): reset acknowledged\0A\00", [35 x i8] zeroinitializer }, align 32
@qla4_82xx_need_reset_handler._entry_ptr.282 = internal global ptr @qla4_82xx_need_reset_handler._entry.280, section ".printk_index", align 4
@qla4_82xx_need_reset_handler._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.279, ptr @.str.2, i32 3340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(%ld): drv_state = 0x%x, drv_active = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@qla4_82xx_need_reset_handler._entry_ptr.285 = internal global ptr @qla4_82xx_need_reset_handler._entry.283, section ".printk_index", align 4
@qla4_82xx_need_reset_handler._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.279, ptr @.str.2, i32 3346, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: RESET TIMEOUT! drv_state: 0x%08x, drv_active: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@qla4_82xx_need_reset_handler._entry_ptr.288 = internal global ptr @qla4_82xx_need_reset_handler._entry.286, section ".printk_index", align 4
@qla4_82xx_need_reset_handler._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.279, ptr @.str.2, i32 3358, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_82xx_need_reset_handler._entry_ptr.290 = internal global ptr @qla4_82xx_need_reset_handler._entry.289, section ".printk_index", align 4
@qla4_82xx_need_reset_handler._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.279, ptr @.str.2, i32 3373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_82xx_need_reset_handler._entry_ptr.292 = internal global ptr @qla4_82xx_need_reset_handler._entry.291, section ".printk_index", align 4
@qla4_82xx_need_reset_handler._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.279, ptr @.str.2, i32 3377, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HW State: COLD/RE-INIT\0A\00", [40 x i8] zeroinitializer }, align 32
@qla4_82xx_need_reset_handler._entry_ptr.295 = internal global ptr @qla4_82xx_need_reset_handler._entry.293, section ".printk_index", align 4
@.str.296 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DEF\00", [28 x i8] zeroinitializer }, align 32
@qla4_8xxx_find_flt_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.299, ptr @.str.2, i32 3693, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FLTL[%s] = 0x%x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4_8xxx_find_flt_start\00", [39 x i8] zeroinitializer }, align 32
@qla4_8xxx_find_flt_start._entry_ptr = internal global ptr @qla4_8xxx_find_flt_start._entry, section ".printk_index", align 4
@.str.300 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FLT\00", [28 x i8] zeroinitializer }, align 32
@qla4_8xxx_get_flt_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.302, ptr @.str.2, i32 3730, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Unsupported FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_8xxx_get_flt_info\00", [41 x i8] zeroinitializer }, align 32
@qla4_8xxx_get_flt_info._entry_ptr = internal global ptr @qla4_8xxx_get_flt_info._entry, section ".printk_index", align 4
@qla4_8xxx_get_flt_info._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.302, ptr @.str.2, i32 3741, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Inconsistent FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4_8xxx_get_flt_info._entry_ptr.305 = internal global ptr @qla4_8xxx_get_flt_info._entry.303, section ".printk_index", align 4
@qla4_8xxx_get_flt_info._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.302, ptr @.str.2, i32 3804, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"FLT[%s]: flt=0x%x fdt=0x%x boot=0x%x bootload=0x%x fw=0x%x chap=0x%x chap_size=0x%x ddb=0x%x  ddb_size=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@qla4_8xxx_get_flt_info._entry_ptr.308 = internal global ptr @qla4_8xxx_get_flt_info._entry.306, section ".printk_index", align 4
@qla4_82xx_read_flash_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.310, ptr @.str.2, i32 3650, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ROM lock failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4_82xx_read_flash_data\00", [38 x i8] zeroinitializer }, align 32
@qla4_82xx_read_flash_data._entry_ptr = internal global ptr @qla4_82xx_read_flash_data._entry, section ".printk_index", align 4
@qla4_82xx_read_flash_data._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.310, ptr @.str.2, i32 3658, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Do ROM fast read failed\0A\00", [39 x i8] zeroinitializer }, align 32
@qla4_82xx_read_flash_data._entry_ptr.313 = internal global ptr @qla4_82xx_read_flash_data._entry.311, section ".printk_index", align 4
@.str.314 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MID\00", [28 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FDT\00", [28 x i8] zeroinitializer }, align 32
@qla4_82xx_get_fdt_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.317, ptr @.str.2, i32 3843, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Inconsistent FDT detected: checksum=0x%x id=%c version=0x%x.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_82xx_get_fdt_info\00", [41 x i8] zeroinitializer }, align 32
@qla4_82xx_get_fdt_info._entry_ptr = internal global ptr @qla4_82xx_get_fdt_info._entry, section ".printk_index", align 4
@qla4_82xx_get_fdt_info._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.317, ptr @.str.2, i32 3871, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"FDT[%s]: (0x%x/0x%x) erase=0x%x pro=%x upro=%x wrtd=0x%x blk=0x%x.\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4_82xx_get_fdt_info._entry_ptr.320 = internal global ptr @qla4_82xx_get_fdt_info._entry.318, section ".printk_index", align 4
@qla4_82xx_get_idc_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.322, ptr @.str.2, i32 3895, ptr @.str.323, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ha->nx_dev_init_timeout = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4_82xx_get_idc_param\00", [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@qla4_82xx_get_idc_param._entry_ptr = internal global ptr @qla4_82xx_get_idc_param._entry, section ".printk_index", align 4
@qla4_82xx_get_idc_param._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.325, ptr @.str.322, ptr @.str.2, i32 3897, ptr @.str.323, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ha->nx_reset_timeout = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qla4_82xx_get_idc_param._entry_ptr.326 = internal global ptr @qla4_82xx_get_idc_param._entry.324, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.327 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.328 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.329 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.330 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.331 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.332 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.333 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.334 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.335 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.336 = internal global [7 x i64] [i64 5, i64 32, i64 1122368, i64 1122376, i64 35660284, i64 53477564, i64 53477576]
@__sancov_gen_cov_switch_values.337 = internal global [4 x i64] [i64 2, i64 32, i64 102760448, i64 161480704]
@__sancov_gen_cov_switch_values.338 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.339 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 65535]
@__sancov_gen_cov_switch_values.340 = internal global [10 x i64] [i64 8, i64 8, i64 26, i64 99, i64 101, i64 106, i64 114, i64 116, i64 120, i64 151]
@__sancov_gen_cov_switch_values.341 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.342 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.343 = internal global [25 x i64] [i64 23, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 8, i64 9, i64 11, i64 12, i64 21, i64 22, i64 23, i64 24, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 71, i64 72, i64 98, i64 255]
@__sancov_gen_cov_switch_values.344 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.345 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.346 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.347 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.348 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.349 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.350 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.351 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.352 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.353 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.354 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.355 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.356 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.357 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.358 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.359 = internal global [4 x i64] [i64 2, i64 32, i64 61455, i64 65281]
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 470, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 495, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1197, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1228, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1240, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1250, i32 5 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1260, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1400, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1537, i32 5 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1621, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1643, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1688, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1709, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1778, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1784, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1789, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1801, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3234, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3274, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3287, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3295, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [11 x i8] c"qdev_state\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 342, i32 14 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3507, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3518, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3528, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3978, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3997, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4002, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4013, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4036, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4051, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4059, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4076, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4094, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4102, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4115, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4123, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4164, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4171, i32 39 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4177, i32 29 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 4196, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant [22 x i8] c"qla4_82xx_crb_hub_agt\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 274, i32 17 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 371, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant [16 x i8] c"crb_128M_2M_map\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 114, i32 37 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 723, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 614, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 624, i32 4 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 637, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 652, i32 4 }
@___asan_gen_.717 = private unnamed_addr constant [39 x i8] c"qla4_82xx_pci_set_window_warning_count\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 596, i32 12 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 664, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 796, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1750, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1756, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1326, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1344, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1044, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1057, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1063, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1068, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1097, i32 4 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1128, i32 4 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 954, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 932, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 916, i32 4 }
@___asan_gen_.828 = private unnamed_addr constant [32 x i8] c"qla4_8xxx_crb_table_initialized\00", align 1
@___asan_gen_.829 = private unnamed_addr constant [15 x i8] c"crb_addr_xform\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 50, i32 22 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1286, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1567, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1596, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3001, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3013, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3015, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3018, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3020, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3039, i32 4 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3052, i32 3 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3190, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3197, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2565, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2201, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2304, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1915, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2027, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2031, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2042, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2080, i32 5 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2097, i32 4 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2103, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2109, i32 4 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2120, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2473, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2478, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2483, i32 3 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2490, i32 3 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2496, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2538, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2438, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2443, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2965, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2972, i32 3 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2144, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2316, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2322, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2331, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2344, i32 2 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2406, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2607, i32 6 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2915, i32 5 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2937, i32 5 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2665, i32 4 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2685, i32 5 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2703, i32 5 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1877, i32 4 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 1826, i32 4 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 2823, i32 3 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3215, i32 48 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3404, i32 3 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3410, i32 4 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3429, i32 3 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3436, i32 4 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 344, i32 2 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 345, i32 2 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 346, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 347, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 348, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 349, i32 2 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 350, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3314, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3324, i32 3 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3338, i32 2 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3344, i32 4 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3355, i32 4 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3372, i32 2 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3377, i32 3 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3683, i32 36 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3693, i32 2 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3700, i32 43 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3727, i32 3 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3738, i32 3 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3798, i32 2 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3650, i32 3 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3657, i32 4 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3813, i32 36 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3813, i32 43 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3841, i32 3 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3867, i32 2 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3894, i32 2 }
@___asan_gen_.1300 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1303 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1304 = private constant [33 x i8] c"../drivers/scsi/qla4xxx/ql4_nx.c\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1304, i32 3896, i32 2 }
@llvm.compiler.used = appending global [453 x ptr] [ptr @__qla4_8xxx_minidump_process_rdmem._entry, ptr @__qla4_8xxx_minidump_process_rdmem._entry.209, ptr @__qla4_8xxx_minidump_process_rdmem._entry.212, ptr @__qla4_8xxx_minidump_process_rdmem._entry.215, ptr @__qla4_8xxx_minidump_process_rdmem._entry.218, ptr @__qla4_8xxx_minidump_process_rdmem._entry.221, ptr @__qla4_8xxx_minidump_process_rdmem._entry.223, ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr, ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.211, ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.214, ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.217, ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.220, ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.222, ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.225, ptr @ql4_84xx_poll_wait_for_ready._entry, ptr @ql4_84xx_poll_wait_for_ready._entry_ptr, ptr @ql4_84xx_poll_wait_ipmdio_bus_idle._entry, ptr @ql4_84xx_poll_wait_ipmdio_bus_idle._entry_ptr, ptr @qla4_82xx_cmdpeg_ready._entry, ptr @qla4_82xx_cmdpeg_ready._entry_ptr, ptr @qla4_82xx_do_rom_fast_read._entry, ptr @qla4_82xx_do_rom_fast_read._entry_ptr, ptr @qla4_82xx_get_fdt_info._entry, ptr @qla4_82xx_get_fdt_info._entry.318, ptr @qla4_82xx_get_fdt_info._entry_ptr, ptr @qla4_82xx_get_fdt_info._entry_ptr.320, ptr @qla4_82xx_get_idc_param._entry, ptr @qla4_82xx_get_idc_param._entry.324, ptr @qla4_82xx_get_idc_param._entry_ptr, ptr @qla4_82xx_get_idc_param._entry_ptr.326, ptr @qla4_82xx_isp_reset._entry, ptr @qla4_82xx_isp_reset._entry.64, ptr @qla4_82xx_isp_reset._entry.67, ptr @qla4_82xx_isp_reset._entry_ptr, ptr @qla4_82xx_isp_reset._entry_ptr.66, ptr @qla4_82xx_isp_reset._entry_ptr.69, ptr @qla4_82xx_load_from_flash._entry, ptr @qla4_82xx_load_from_flash._entry_ptr, ptr @qla4_82xx_load_fw._entry, ptr @qla4_82xx_load_fw._entry.122, ptr @qla4_82xx_load_fw._entry_ptr, ptr @qla4_82xx_load_fw._entry_ptr.124, ptr @qla4_82xx_md_rd_32._entry, ptr @qla4_82xx_md_rd_32._entry_ptr, ptr @qla4_82xx_md_wr_32._entry, ptr @qla4_82xx_md_wr_32._entry_ptr, ptr @qla4_82xx_minidump_process_rdrom._entry, ptr @qla4_82xx_minidump_process_rdrom._entry.227, ptr @qla4_82xx_minidump_process_rdrom._entry_ptr, ptr @qla4_82xx_minidump_process_rdrom._entry_ptr.229, ptr @qla4_82xx_need_reset_handler._entry, ptr @qla4_82xx_need_reset_handler._entry.280, ptr @qla4_82xx_need_reset_handler._entry.283, ptr @qla4_82xx_need_reset_handler._entry.286, ptr @qla4_82xx_need_reset_handler._entry.289, ptr @qla4_82xx_need_reset_handler._entry.291, ptr @qla4_82xx_need_reset_handler._entry.293, ptr @qla4_82xx_need_reset_handler._entry_ptr, ptr @qla4_82xx_need_reset_handler._entry_ptr.282, ptr @qla4_82xx_need_reset_handler._entry_ptr.285, ptr @qla4_82xx_need_reset_handler._entry_ptr.288, ptr @qla4_82xx_need_reset_handler._entry_ptr.290, ptr @qla4_82xx_need_reset_handler._entry_ptr.292, ptr @qla4_82xx_need_reset_handler._entry_ptr.295, ptr @qla4_82xx_pci_mem_read_2M._entry, ptr @qla4_82xx_pci_mem_read_2M._entry_ptr, ptr @qla4_82xx_pci_mem_read_direct._entry, ptr @qla4_82xx_pci_mem_read_direct._entry_ptr, ptr @qla4_82xx_pci_mem_write_2M._entry, ptr @qla4_82xx_pci_mem_write_2M._entry_ptr, ptr @qla4_82xx_pci_mem_write_direct._entry, ptr @qla4_82xx_pci_mem_write_direct._entry_ptr, ptr @qla4_82xx_pci_set_crbwindow_2M._entry, ptr @qla4_82xx_pci_set_crbwindow_2M._entry_ptr, ptr @qla4_82xx_pci_set_window._entry, ptr @qla4_82xx_pci_set_window._entry.102, ptr @qla4_82xx_pci_set_window._entry.105, ptr @qla4_82xx_pci_set_window._entry.108, ptr @qla4_82xx_pci_set_window._entry.111, ptr @qla4_82xx_pci_set_window._entry_ptr, ptr @qla4_82xx_pci_set_window._entry_ptr.104, ptr @qla4_82xx_pci_set_window._entry_ptr.107, ptr @qla4_82xx_pci_set_window._entry_ptr.110, ptr @qla4_82xx_pci_set_window._entry_ptr.113, ptr @qla4_82xx_pinit_from_rom._entry, ptr @qla4_82xx_pinit_from_rom._entry.127, ptr @qla4_82xx_pinit_from_rom._entry.130, ptr @qla4_82xx_pinit_from_rom._entry.133, ptr @qla4_82xx_pinit_from_rom._entry.136, ptr @qla4_82xx_pinit_from_rom._entry.139, ptr @qla4_82xx_pinit_from_rom._entry_ptr, ptr @qla4_82xx_pinit_from_rom._entry_ptr.129, ptr @qla4_82xx_pinit_from_rom._entry_ptr.132, ptr @qla4_82xx_pinit_from_rom._entry_ptr.135, ptr @qla4_82xx_pinit_from_rom._entry_ptr.138, ptr @qla4_82xx_pinit_from_rom._entry_ptr.141, ptr @qla4_82xx_rcvpeg_ready._entry, ptr @qla4_82xx_rcvpeg_ready._entry_ptr, ptr @qla4_82xx_read_flash_data._entry, ptr @qla4_82xx_read_flash_data._entry.311, ptr @qla4_82xx_read_flash_data._entry_ptr, ptr @qla4_82xx_read_flash_data._entry_ptr.313, ptr @qla4_82xx_rom_fast_read._entry, ptr @qla4_82xx_rom_fast_read._entry_ptr, ptr @qla4_82xx_rom_lock_recovery._entry, ptr @qla4_82xx_rom_lock_recovery._entry_ptr, ptr @qla4_82xx_set_idc_ver._entry, ptr @qla4_82xx_set_idc_ver._entry.265, ptr @qla4_82xx_set_idc_ver._entry_ptr, ptr @qla4_82xx_set_idc_ver._entry_ptr.267, ptr @qla4_82xx_start_firmware._entry, ptr @qla4_82xx_start_firmware._entry.117, ptr @qla4_82xx_start_firmware._entry_ptr, ptr @qla4_82xx_start_firmware._entry_ptr.119, ptr @qla4_82xx_try_start_fw._entry, ptr @qla4_82xx_try_start_fw._entry.32, ptr @qla4_82xx_try_start_fw._entry.35, ptr @qla4_82xx_try_start_fw._entry_ptr, ptr @qla4_82xx_try_start_fw._entry_ptr.34, ptr @qla4_82xx_try_start_fw._entry_ptr.37, ptr @qla4_82xx_wait_rom_done._entry, ptr @qla4_82xx_wait_rom_done._entry_ptr, ptr @qla4_83xx_minidump_process_rdrom._entry, ptr @qla4_83xx_minidump_process_rdrom._entry.232, ptr @qla4_83xx_minidump_process_rdrom._entry_ptr, ptr @qla4_83xx_minidump_process_rdrom._entry_ptr.234, ptr @qla4_83xx_set_idc_ver._entry, ptr @qla4_83xx_set_idc_ver._entry.269, ptr @qla4_83xx_set_idc_ver._entry_ptr, ptr @qla4_83xx_set_idc_ver._entry_ptr.270, ptr @qla4_84xx_minidump_process_pollwr._entry, ptr @qla4_84xx_minidump_process_pollwr._entry_ptr, ptr @qla4_84xx_minidump_process_rddfe._entry, ptr @qla4_84xx_minidump_process_rddfe._entry.253, ptr @qla4_84xx_minidump_process_rddfe._entry.255, ptr @qla4_84xx_minidump_process_rddfe._entry_ptr, ptr @qla4_84xx_minidump_process_rddfe._entry_ptr.254, ptr @qla4_84xx_minidump_process_rddfe._entry_ptr.256, ptr @qla4_8xxx_check_init_adapter_retry._entry, ptr @qla4_8xxx_check_init_adapter_retry._entry_ptr, ptr @qla4_8xxx_clear_drv_active._entry, ptr @qla4_8xxx_clear_drv_active._entry_ptr, ptr @qla4_8xxx_clear_rst_ready._entry, ptr @qla4_8xxx_clear_rst_ready._entry_ptr, ptr @qla4_8xxx_collect_md_data._entry, ptr @qla4_8xxx_collect_md_data._entry.156, ptr @qla4_8xxx_collect_md_data._entry.159, ptr @qla4_8xxx_collect_md_data._entry.162, ptr @qla4_8xxx_collect_md_data._entry.165, ptr @qla4_8xxx_collect_md_data._entry.168, ptr @qla4_8xxx_collect_md_data._entry.171, ptr @qla4_8xxx_collect_md_data._entry.174, ptr @qla4_8xxx_collect_md_data._entry.177, ptr @qla4_8xxx_collect_md_data._entry_ptr, ptr @qla4_8xxx_collect_md_data._entry_ptr.158, ptr @qla4_8xxx_collect_md_data._entry_ptr.161, ptr @qla4_8xxx_collect_md_data._entry_ptr.164, ptr @qla4_8xxx_collect_md_data._entry_ptr.167, ptr @qla4_8xxx_collect_md_data._entry_ptr.170, ptr @qla4_8xxx_collect_md_data._entry_ptr.173, ptr @qla4_8xxx_collect_md_data._entry_ptr.176, ptr @qla4_8xxx_collect_md_data._entry_ptr.179, ptr @qla4_8xxx_device_bootstrap._entry, ptr @qla4_8xxx_device_bootstrap._entry.44, ptr @qla4_8xxx_device_bootstrap._entry.47, ptr @qla4_8xxx_device_bootstrap._entry_ptr, ptr @qla4_8xxx_device_bootstrap._entry_ptr.46, ptr @qla4_8xxx_device_bootstrap._entry_ptr.49, ptr @qla4_8xxx_device_state_handler._entry, ptr @qla4_8xxx_device_state_handler._entry.53, ptr @qla4_8xxx_device_state_handler._entry.58, ptr @qla4_8xxx_device_state_handler._entry_ptr, ptr @qla4_8xxx_device_state_handler._entry_ptr.56, ptr @qla4_8xxx_device_state_handler._entry_ptr.59, ptr @qla4_8xxx_enable_msix._entry, ptr @qla4_8xxx_enable_msix._entry_ptr, ptr @qla4_8xxx_find_flt_start._entry, ptr @qla4_8xxx_find_flt_start._entry_ptr, ptr @qla4_8xxx_get_flt_info._entry, ptr @qla4_8xxx_get_flt_info._entry.303, ptr @qla4_8xxx_get_flt_info._entry.306, ptr @qla4_8xxx_get_flt_info._entry_ptr, ptr @qla4_8xxx_get_flt_info._entry_ptr.305, ptr @qla4_8xxx_get_flt_info._entry_ptr.308, ptr @qla4_8xxx_get_minidump._entry, ptr @qla4_8xxx_get_minidump._entry_ptr, ptr @qla4_8xxx_get_sys_info._entry, ptr @qla4_8xxx_get_sys_info._entry.72, ptr @qla4_8xxx_get_sys_info._entry.75, ptr @qla4_8xxx_get_sys_info._entry.78, ptr @qla4_8xxx_get_sys_info._entry_ptr, ptr @qla4_8xxx_get_sys_info._entry_ptr.74, ptr @qla4_8xxx_get_sys_info._entry_ptr.77, ptr @qla4_8xxx_get_sys_info._entry_ptr.80, ptr @qla4_8xxx_intr_disable._entry, ptr @qla4_8xxx_intr_disable._entry.87, ptr @qla4_8xxx_intr_disable._entry_ptr, ptr @qla4_8xxx_intr_disable._entry_ptr.88, ptr @qla4_8xxx_intr_enable._entry, ptr @qla4_8xxx_intr_enable._entry.83, ptr @qla4_8xxx_intr_enable._entry_ptr, ptr @qla4_8xxx_intr_enable._entry_ptr.85, ptr @qla4_8xxx_mark_entry_skipped._entry, ptr @qla4_8xxx_mark_entry_skipped._entry_ptr, ptr @qla4_8xxx_minidump_pex_dma_read._entry, ptr @qla4_8xxx_minidump_pex_dma_read._entry.189, ptr @qla4_8xxx_minidump_pex_dma_read._entry.192, ptr @qla4_8xxx_minidump_pex_dma_read._entry.195, ptr @qla4_8xxx_minidump_pex_dma_read._entry.197, ptr @qla4_8xxx_minidump_pex_dma_read._entry.200, ptr @qla4_8xxx_minidump_pex_dma_read._entry.203, ptr @qla4_8xxx_minidump_pex_dma_read._entry.206, ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr, ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.191, ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.194, ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.196, ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.199, ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.202, ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.205, ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.207, ptr @qla4_8xxx_minidump_process_control._entry, ptr @qla4_8xxx_minidump_process_control._entry.184, ptr @qla4_8xxx_minidump_process_control._entry_ptr, ptr @qla4_8xxx_minidump_process_control._entry_ptr.186, ptr @qla4_8xxx_minidump_process_l2tag._entry, ptr @qla4_8xxx_minidump_process_l2tag._entry_ptr, ptr @qla4_8xxx_minidump_process_queue._entry, ptr @qla4_8xxx_minidump_process_queue._entry_ptr, ptr @qla4_8xxx_minidump_process_rdcrb._entry, ptr @qla4_8xxx_minidump_process_rdcrb._entry_ptr, ptr @qla4_8xxx_minidump_process_rdmux._entry, ptr @qla4_8xxx_minidump_process_rdmux._entry_ptr, ptr @qla4_8xxx_minidump_process_rdocm._entry, ptr @qla4_8xxx_minidump_process_rdocm._entry.237, ptr @qla4_8xxx_minidump_process_rdocm._entry.240, ptr @qla4_8xxx_minidump_process_rdocm._entry_ptr, ptr @qla4_8xxx_minidump_process_rdocm._entry_ptr.239, ptr @qla4_8xxx_minidump_process_rdocm._entry_ptr.242, ptr @qla4_8xxx_ms_mem_write_128b._entry, ptr @qla4_8xxx_ms_mem_write_128b._entry.12, ptr @qla4_8xxx_ms_mem_write_128b._entry.15, ptr @qla4_8xxx_ms_mem_write_128b._entry.19, ptr @qla4_8xxx_ms_mem_write_128b._entry.9, ptr @qla4_8xxx_ms_mem_write_128b._entry_ptr, ptr @qla4_8xxx_ms_mem_write_128b._entry_ptr.11, ptr @qla4_8xxx_ms_mem_write_128b._entry_ptr.14, ptr @qla4_8xxx_ms_mem_write_128b._entry_ptr.17, ptr @qla4_8xxx_ms_mem_write_128b._entry_ptr.21, ptr @qla4_8xxx_set_drv_active._entry, ptr @qla4_8xxx_set_drv_active._entry_ptr, ptr @qla4_8xxx_set_rst_ready._entry, ptr @qla4_8xxx_set_rst_ready._entry_ptr, ptr @qla4_8xxx_stop_firmware._entry, ptr @qla4_8xxx_stop_firmware._entry_ptr, ptr @qla83xx_minidump_process_pollrd._entry, ptr @qla83xx_minidump_process_pollrd._entry_ptr, ptr @qla83xx_minidump_process_pollrdmwr._entry, ptr @qla83xx_minidump_process_pollrdmwr._entry.249, ptr @qla83xx_minidump_process_pollrdmwr._entry_ptr, ptr @qla83xx_minidump_process_pollrdmwr._entry_ptr.251, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @qla4_8xxx_ms_mem_write_128b._rs, ptr @.str.18, ptr @.str.20, ptr @qla4_82xx_pci_mem_read_2M._rs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @qdev_state, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @qla4_82xx_crb_hub_agt, ptr @.str.95, ptr @.str.96, ptr @crb_128M_2M_map, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @qla4_82xx_pci_set_window_warning_count, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @qla4_8xxx_crb_table_initialized, ptr @crb_addr_xform, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.193, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.208, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.224, ptr @.str.226, ptr @.str.228, ptr @.str.230, ptr @.str.231, ptr @.str.233, ptr @.str.235, ptr @.str.236, ptr @.str.238, ptr @.str.241, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.250, ptr @.str.252, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.266, ptr @.str.268, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.281, ptr @.str.284, ptr @.str.287, ptr @.str.294, ptr @.str.296, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.304, ptr @.str.307, ptr @.str.309, ptr @.str.310, ptr @.str.312, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.319, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.325], section "llvm.metadata"
@0 = internal global [316 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_md_rd_32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_md_wr_32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_ms_mem_write_128b._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_ms_mem_write_128b._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_ms_mem_write_128b._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_ms_mem_write_128b._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_ms_mem_write_128b._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_ms_mem_write_128b._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_mem_read_2M._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_mem_read_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_mem_write_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_set_drv_active._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_clear_drv_active._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_set_rst_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_clear_rst_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_try_start_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_try_start_fw._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_try_start_fw._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_rom_lock_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_get_minidump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_device_bootstrap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_device_bootstrap._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_device_bootstrap._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_device_state_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qdev_state to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_device_state_handler._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_device_state_handler._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_stop_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_isp_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_isp_reset._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_isp_reset._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_get_sys_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_get_sys_info._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_get_sys_info._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_get_sys_info._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_intr_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_intr_enable._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_intr_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_intr_disable._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_enable_msix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_check_init_adapter_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_crb_hub_agt to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_set_crbwindow_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crb_128M_2M_map to i32), i32 16384, i32 20480, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_mem_read_direct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_set_window._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_set_window._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_set_window._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_set_window._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_set_window_warning_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_set_window._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pci_mem_write_direct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_start_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_start_firmware._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_load_fw._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pinit_from_rom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pinit_from_rom._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pinit_from_rom._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pinit_from_rom._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pinit_from_rom._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_pinit_from_rom._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_rom_fast_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_do_rom_fast_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_wait_rom_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_crb_table_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crb_addr_xform to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_load_from_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_cmdpeg_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_rcvpeg_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_collect_md_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_collect_md_data._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_collect_md_data._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_collect_md_data._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_collect_md_data._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_collect_md_data._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_collect_md_data._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_collect_md_data._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_collect_md_data._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_mark_entry_skipped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_process_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_process_control._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_process_rdcrb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_pex_dma_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_pex_dma_read._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_pex_dma_read._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_pex_dma_read._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_pex_dma_read._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_pex_dma_read._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_pex_dma_read._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_pex_dma_read._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_minidump_process_rdrom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_minidump_process_rdrom._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_minidump_process_rdrom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_minidump_process_rdrom._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_process_l2tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_process_rdocm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_process_rdocm._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_process_rdocm._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_process_rdmux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_minidump_process_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla83xx_minidump_process_pollrd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla83xx_minidump_process_pollrdmwr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla83xx_minidump_process_pollrdmwr._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_minidump_process_rddfe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_minidump_process_rddfe._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_minidump_process_rddfe._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4_84xx_poll_wait_ipmdio_bus_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4_84xx_poll_wait_for_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_minidump_process_pollwr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_set_idc_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_set_idc_ver._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_set_idc_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_set_idc_ver._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_need_reset_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_need_reset_handler._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_need_reset_handler._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_need_reset_handler._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_need_reset_handler._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_need_reset_handler._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_need_reset_handler._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_find_flt_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_get_flt_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_get_flt_info._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_get_flt_info._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_read_flash_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_read_flash_data._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_get_fdt_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_get_fdt_info._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_get_idc_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_get_idc_param._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_crb_win_unlock(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826620)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %off.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772159, i32 %off)
  %cmp.i = icmp ugt i32 %off, 167772159
  br i1 %cmp.i, label %entry.do.body2_crit_edge, label %if.end.i

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.end.i:                                         ; preds = %entry
  %0 = and i32 %off, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 75497472, i32 %0)
  %1 = icmp eq i32 %0, 75497472
  br i1 %1, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %off, -74450944
  %nx_pcibase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %2 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nx_pcibase.i, align 16
  %add4.i = add i32 %add.i, %3
  br label %do.end7

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %off)
  %cmp6.i = icmp ult i32 %off, 100663296
  br i1 %cmp6.i, label %if.end5.i.do.body2_crit_edge, label %if.end8.i

if.end5.i.do.body2_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.end8.i:                                        ; preds = %if.end5.i
  %sub9.i = add nsw i32 %off, -100663296
  %4 = ptrtoint ptr %off.addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub9.i, ptr %off.addr, align 4
  %shr.i = lshr i32 %sub9.i, 20
  %arrayidx.i = getelementptr [64 x %struct.crb_128M_2M_block_map], ptr @crb_128M_2M_map, i32 0, i32 %shr.i
  %shr10.i = lshr i32 %sub9.i, 16
  %and11.i = and i32 %shr10.i, 15
  %arrayidx12.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and11.i
  %5 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end8.i.do.body10_crit_edge, label %land.lhs.true13.i

if.end8.i.do.body10_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

land.lhs.true13.i:                                ; preds = %if.end8.i
  %start_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and11.i, i32 1
  %7 = ptrtoint ptr %start_128M.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i, i32 %8)
  %cmp14.not.i = icmp ult i32 %sub9.i, %8
  br i1 %cmp14.not.i, label %land.lhs.true13.i.do.body10_crit_edge, label %land.lhs.true15.i

land.lhs.true13.i.do.body10_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

land.lhs.true15.i:                                ; preds = %land.lhs.true13.i
  %end_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and11.i, i32 2
  %9 = ptrtoint ptr %end_128M.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub9.i)
  %cmp16.i = icmp ugt i32 %10, %sub9.i
  br i1 %cmp16.i, label %if.then17.i, label %land.lhs.true15.i.do.body10_crit_edge

land.lhs.true15.i.do.body10_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  %start_2M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and11.i, i32 3
  %11 = ptrtoint ptr %start_2M.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start_2M.i, align 4
  %nx_pcibase21.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %13 = ptrtoint ptr %nx_pcibase21.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nx_pcibase21.i, align 16
  %add18.i = sub i32 %sub9.i, %8
  %sub20.i = add i32 %add18.i, %12
  %add22.i = add i32 %sub20.i, %14
  br label %do.end7

do.body2:                                         ; preds = %if.end5.i.do.body2_crit_edge, %entry.do.body2_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla4xxx/ql4_nx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 439, 0\0A.popsection", ""() #10, !srcloc !627
  unreachable

do.end7:                                          ; preds = %if.then17.i, %if.then3.i
  %add22.sink.i = phi i32 [ %add22.i, %if.then17.i ], [ %add4.i, %if.then3.i ]
  %15 = ptrtoint ptr %off.addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add22.sink.i, ptr %off.addr, align 4
  br label %if.end16

do.body10:                                        ; preds = %land.lhs.true15.i.do.body10_crit_edge, %land.lhs.true13.i.do.body10_crit_edge, %if.end8.i.do.body10_crit_edge
  %hw_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 95
  %call12 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock) #10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end3.i.while.body.i_crit_edge, %do.body10
  %timeout.0.i51 = phi i32 [ 0, %do.body10 ], [ %inc.i, %if.end3.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826616) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i41 = icmp eq i32 %call.i, 1
  br i1 %cmp.i41, label %while.body.i.while.end.i_crit_edge, label %if.end.i42

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i42:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %timeout.0.i51)
  %exitcond = icmp eq i32 %timeout.0.i51, 100000000
  br i1 %exitcond, label %if.end.i42.qla4_82xx_crb_win_lock.exit_crit_edge, label %if.end3.i

if.end.i42.qla4_82xx_crb_win_lock.exit_crit_edge: ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_crb_win_lock.exit

if.end3.i:                                        ; preds = %if.end.i42
  %inc.i = add nuw nsw i32 %timeout.0.i51, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #10
  %tobool.not.i40 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i40, label %if.end3.i.while.body.i_crit_edge, label %if.end3.i.while.end.i_crit_edge

if.end3.i.while.end.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %if.end3.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %func_num.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %17 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %func_num.i, align 8
  %conv.i = zext i16 %18 to i32
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323364, i32 noundef %conv.i) #10
  br label %qla4_82xx_crb_win_lock.exit

qla4_82xx_crb_win_lock.exit:                      ; preds = %while.end.i, %if.end.i42.qla4_82xx_crb_win_lock.exit_crit_edge
  call fastcc void @qla4_82xx_pci_set_crbwindow_2M(ptr noundef %ha, ptr noundef nonnull %off.addr)
  br label %if.end16

if.end16:                                         ; preds = %qla4_82xx_crb_win_lock.exit, %do.end7
  %cmp849 = phi i1 [ true, %qla4_82xx_crb_win_lock.exit ], [ false, %do.end7 ]
  %flags.0 = phi i32 [ %call12, %qla4_82xx_crb_win_lock.exit ], [ 0, %do.end7 ]
  %19 = ptrtoint ptr %off.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %off.addr, align 4
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !629
  br i1 %cmp849, label %if.then22, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call.i43 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826620) #10
  %hw_lock29 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 95
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock29, i32 noundef %flags.0) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then22, %if.end16.if.end32_crit_edge
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %off, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %off.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772159, i32 %off)
  %cmp.i = icmp ugt i32 %off, 167772159
  br i1 %cmp.i, label %entry.do.body2_crit_edge, label %if.end.i

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.end.i:                                         ; preds = %entry
  %0 = and i32 %off, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 75497472, i32 %0)
  %1 = icmp eq i32 %0, 75497472
  br i1 %1, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %off, -74450944
  %nx_pcibase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %2 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nx_pcibase.i, align 16
  %add4.i = add i32 %add.i, %3
  br label %do.end7

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %off)
  %cmp6.i = icmp ult i32 %off, 100663296
  br i1 %cmp6.i, label %if.end5.i.do.body2_crit_edge, label %if.end8.i

if.end5.i.do.body2_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.end8.i:                                        ; preds = %if.end5.i
  %sub9.i = add nsw i32 %off, -100663296
  %4 = ptrtoint ptr %off.addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub9.i, ptr %off.addr, align 4
  %shr.i = lshr i32 %sub9.i, 20
  %arrayidx.i = getelementptr [64 x %struct.crb_128M_2M_block_map], ptr @crb_128M_2M_map, i32 0, i32 %shr.i
  %shr10.i = lshr i32 %sub9.i, 16
  %and11.i = and i32 %shr10.i, 15
  %arrayidx12.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and11.i
  %5 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end8.i.do.body10_crit_edge, label %land.lhs.true13.i

if.end8.i.do.body10_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

land.lhs.true13.i:                                ; preds = %if.end8.i
  %start_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and11.i, i32 1
  %7 = ptrtoint ptr %start_128M.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i, i32 %8)
  %cmp14.not.i = icmp ult i32 %sub9.i, %8
  br i1 %cmp14.not.i, label %land.lhs.true13.i.do.body10_crit_edge, label %land.lhs.true15.i

land.lhs.true13.i.do.body10_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

land.lhs.true15.i:                                ; preds = %land.lhs.true13.i
  %end_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and11.i, i32 2
  %9 = ptrtoint ptr %end_128M.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub9.i)
  %cmp16.i = icmp ugt i32 %10, %sub9.i
  br i1 %cmp16.i, label %if.then17.i, label %land.lhs.true15.i.do.body10_crit_edge

land.lhs.true15.i.do.body10_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  %start_2M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and11.i, i32 3
  %11 = ptrtoint ptr %start_2M.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start_2M.i, align 4
  %nx_pcibase21.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %13 = ptrtoint ptr %nx_pcibase21.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nx_pcibase21.i, align 16
  %add18.i = sub i32 %sub9.i, %8
  %sub20.i = add i32 %add18.i, %12
  %add22.i = add i32 %sub20.i, %14
  br label %do.end7

do.body2:                                         ; preds = %if.end5.i.do.body2_crit_edge, %entry.do.body2_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla4xxx/ql4_nx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #10, !srcloc !630
  unreachable

do.end7:                                          ; preds = %if.then17.i, %if.then3.i
  %add22.sink.i = phi i32 [ %add22.i, %if.then17.i ], [ %add4.i, %if.then3.i ]
  %15 = ptrtoint ptr %off.addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add22.sink.i, ptr %off.addr, align 4
  br label %do.body17

do.body10:                                        ; preds = %land.lhs.true15.i.do.body10_crit_edge, %land.lhs.true13.i.do.body10_crit_edge, %if.end8.i.do.body10_crit_edge
  %hw_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 95
  %call12 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock) #10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end3.i.while.body.i_crit_edge, %do.body10
  %timeout.0.i51 = phi i32 [ 0, %do.body10 ], [ %inc.i, %if.end3.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826616) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i41 = icmp eq i32 %call.i, 1
  br i1 %cmp.i41, label %while.body.i.while.end.i_crit_edge, label %if.end.i42

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i42:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %timeout.0.i51)
  %exitcond = icmp eq i32 %timeout.0.i51, 100000000
  br i1 %exitcond, label %if.end.i42.qla4_82xx_crb_win_lock.exit_crit_edge, label %if.end3.i

if.end.i42.qla4_82xx_crb_win_lock.exit_crit_edge: ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_crb_win_lock.exit

if.end3.i:                                        ; preds = %if.end.i42
  %inc.i = add nuw nsw i32 %timeout.0.i51, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #10
  %tobool.not.i40 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i40, label %if.end3.i.while.body.i_crit_edge, label %if.end3.i.while.end.i_crit_edge

if.end3.i.while.end.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %if.end3.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %func_num.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %17 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %func_num.i, align 8
  %conv.i = zext i16 %18 to i32
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323364, i32 noundef %conv.i) #10
  br label %qla4_82xx_crb_win_lock.exit

qla4_82xx_crb_win_lock.exit:                      ; preds = %while.end.i, %if.end.i42.qla4_82xx_crb_win_lock.exit_crit_edge
  call fastcc void @qla4_82xx_pci_set_crbwindow_2M(ptr noundef %ha, ptr noundef nonnull %off.addr)
  br label %do.body17

do.body17:                                        ; preds = %qla4_82xx_crb_win_lock.exit, %do.end7
  %cmp849 = phi i1 [ true, %qla4_82xx_crb_win_lock.exit ], [ false, %do.end7 ]
  %flags.0 = phi i32 [ %call12, %qla4_82xx_crb_win_lock.exit ], [ 0, %do.end7 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !631
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %data)
  %20 = ptrtoint ptr %off.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %off.addr, align 4
  %22 = inttoptr i32 %21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #10, !srcloc !632
  br i1 %cmp849, label %if.then22, label %do.body17.if.end32_crit_edge

do.body17.if.end32_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %call.i43 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826620) #10
  %hw_lock29 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 95
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock29, i32 noundef %flags.0) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then22, %do.body17.if.end32_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qla4_82xx_pci_get_crb_addr_2M(ptr nocapture noundef readonly %ha, ptr nocapture noundef %off) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772159, i32 %1)
  %cmp = icmp ugt i32 %1, 167772159
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i32 %1, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 75497472, i32 %2)
  %3 = icmp eq i32 %2, 75497472
  br i1 %3, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nsw i32 %1, -74450944
  %nx_pcibase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %4 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nx_pcibase, align 16
  %add4 = add i32 %add, %5
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %1)
  %cmp6 = icmp ult i32 %1, 100663296
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %sub9 = add nsw i32 %1, -100663296
  %6 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub9, ptr %off, align 4
  %shr = lshr i32 %sub9, 20
  %arrayidx = getelementptr [64 x %struct.crb_128M_2M_block_map], ptr @crb_128M_2M_map, i32 0, i32 %shr
  %shr10 = lshr i32 %sub9, 16
  %and11 = and i32 %shr10, 15
  %arrayidx12 = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx, i32 0, i32 %and11
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end8
  %start_128M = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx, i32 0, i32 %and11, i32 1
  %9 = ptrtoint ptr %start_128M to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_128M, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9, i32 %10)
  %cmp14.not = icmp ult i32 %sub9, %10
  br i1 %cmp14.not, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true15

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true15:                                  ; preds = %land.lhs.true13
  %end_128M = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx, i32 0, i32 %and11, i32 2
  %11 = ptrtoint ptr %end_128M to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end_128M, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub9)
  %cmp16 = icmp ugt i32 %12, %sub9
  br i1 %cmp16, label %if.then17, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  %start_2M = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx, i32 0, i32 %and11, i32 3
  %13 = ptrtoint ptr %start_2M to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_2M, align 4
  %nx_pcibase21 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %15 = ptrtoint ptr %nx_pcibase21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nx_pcibase21, align 16
  %add18 = sub i32 %sub9, %10
  %sub20 = add i32 %add18, %14
  %add22 = add i32 %sub20, %16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %if.then3
  %add22.sink = phi i32 [ %add22, %if.then17 ], [ %add4, %if.then3 ]
  %17 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add22.sink, ptr %off, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ 1, %land.lhs.true15.cleanup_crit_edge ], [ 1, %land.lhs.true13.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla4_82xx_pci_set_crbwindow_2M(ptr nocapture noundef %ha, ptr nocapture noundef %off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %off, align 4
  %shr = lshr i32 %1, 20
  %and = and i32 %shr, 63
  %arrayidx = getelementptr [64 x i32], ptr @qla4_82xx_crb_hub_agt, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %3, 20
  %and1 = and i32 %1, 983040
  %or = or i32 %shl, %and1
  %crb_win = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 89
  %4 = ptrtoint ptr %crb_win to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %crb_win, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !633
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %crb_win to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %crb_win, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %nx_pcibase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %8 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nx_pcibase, align 16
  %add = add i32 %9, 1245280
  %10 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #10, !srcloc !632
  %11 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nx_pcibase, align 16
  %add4 = add i32 %12, 1245280
  %13 = inttoptr i32 %add4 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !628
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !634
  %16 = ptrtoint ptr %crb_win to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crb_win, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp eq i32 %15, %17
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %do.body7

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.body7:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %18 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp8 = icmp eq i32 %18, 2
  br i1 %cmp8, label %do.end12, label %do.body7.if.end16_crit_edge

do.body7.if.end16_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %off, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef %17, i32 noundef %15, i32 noundef %22) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end12, %do.body7.if.end16_crit_edge, %entry.if.end16_crit_edge
  %23 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %off, align 4
  %25 = and i32 %24, 65535
  %26 = or i32 %25, 1966080
  %27 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nx_pcibase, align 16
  %add21 = add i32 %26, %28
  store i32 %add21, ptr %off, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_82xx_md_rd_32(ptr nocapture noundef readonly %ha, i32 noundef %off, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %off, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !635
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %nx_pcibase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %1 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nx_pcibase, align 16
  %add = add i32 %2, 1245280
  %3 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %0) #10, !srcloc !632
  %4 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nx_pcibase, align 16
  %add2 = add i32 %5, 1245280
  %6 = inttoptr i32 %add2 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !628
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !636
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %and)
  %cmp.not = icmp eq i32 %8, %and
  br i1 %cmp.not, label %if.else, label %do.body4

do.body4:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %9 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %do.end9, label %do.body4.if.end21_crit_edge

do.body4.if.end21_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %and, i32 noundef %8, i32 noundef %off) #13
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and12 = and i32 %off, 65535
  %add15 = or i32 %and12, 1966080
  %12 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nx_pcibase, align 16
  %add17 = add i32 %add15, %13
  %14 = inttoptr i32 %add17 to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !628
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !637
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %data, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %do.end9, %do.body4.if.end21_crit_edge
  %rval.0 = phi i32 [ 0, %if.else ], [ 1, %do.end9 ], [ 1, %do.body4.if.end21_crit_edge ]
  ret i32 %rval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_82xx_md_wr_32(ptr nocapture noundef readonly %ha, i32 noundef %off, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %off, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !638
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %nx_pcibase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %1 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nx_pcibase, align 16
  %add = add i32 %2, 1245280
  %3 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %0) #10, !srcloc !632
  %4 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nx_pcibase, align 16
  %add2 = add i32 %5, 1245280
  %6 = inttoptr i32 %add2 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !628
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !639
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %and)
  %cmp.not = icmp eq i32 %8, %and
  br i1 %cmp.not, label %if.else, label %do.body4

do.body4:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %9 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %do.end9, label %do.body4.if.end19_crit_edge

do.body4.if.end19_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %and, i32 noundef %8, i32 noundef %off) #13
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and12 = and i32 %off, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !640
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %data)
  %add16 = or i32 %and12, 1966080
  %13 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nx_pcibase, align 16
  %add18 = add i32 %add16, %14
  %15 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #10, !srcloc !632
  br label %if.end19

if.end19:                                         ; preds = %if.else, %do.end9, %do.body4.if.end19_crit_edge
  %rval.0 = phi i32 [ 0, %if.else ], [ 1, %do.end9 ], [ 1, %do.body4.if.end19_crit_edge ]
  ret i32 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_82xx_idc_lock(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 522) #10
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %entry
  %timeout.010 = phi i32 [ 0, %entry ], [ %inc, %if.end6.while.body_crit_edge ]
  %call = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826600)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %timeout.010)
  %exitcond = icmp eq i32 %timeout.010, 100000000
  br i1 %exitcond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %timeout.010, 1
  tail call void @msleep(i32 noundef 100) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6.while.body_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_idc_unlock(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826604)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_ms_mem_write_128b(ptr noundef %ha, i64 noundef %addr, ptr nocapture noundef readonly %data, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %agt_ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agt_ctrl) #10
  %0 = ptrtoint ptr %agt_ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %agt_ctrl, align 4, !annotation !641
  %and = and i64 %addr, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.exit_ms_mem_write_crit_edge

entry.exit_ms_mem_write_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_ms_mem_write

do.body:                                          ; preds = %entry
  %hw_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 95
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock) #10
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %1 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %isp_ops, align 4
  %wr_reg_indirect = getelementptr inbounds %struct.isp_operations, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %wr_reg_indirect to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wr_reg_indirect, align 4
  %call1 = tail call i32 %4(ptr noundef %ha, i32 noundef 1090519192, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %do.end7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9163.not = icmp eq i32 %count, 0
  br i1 %cmp9163.not, label %for.cond.preheader.do.body105_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body105_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

do.end7:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #13
  br label %do.body105

for.body:                                         ; preds = %for.inc102.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %addr.addr.0166 = phi i64 [ %add, %for.inc102.for.body_crit_edge ], [ %addr, %for.cond.preheader.for.body_crit_edge ]
  %data.addr.0165 = phi ptr [ %incdec.ptr41, %for.inc102.for.body_crit_edge ], [ %data, %for.cond.preheader.for.body_crit_edge ]
  %i.0164 = phi i32 [ %inc103, %for.inc102.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %7 = and i64 %addr.addr.0166, -134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %7)
  %8 = icmp eq i64 %7, 12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %addr.addr.0166)
  %cmp15 = icmp ult i64 %addr.addr.0166, 268435456
  %or.cond158 = or i1 %cmp15, %8
  br i1 %or.cond158, label %if.end21, label %for.body.do.body105_crit_edge

for.body.do.body105_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

if.end21:                                         ; preds = %for.body
  %9 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %isp_ops, align 4
  %wr_reg_indirect23 = getelementptr inbounds %struct.isp_operations, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %wr_reg_indirect23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wr_reg_indirect23, align 4
  %conv24 = trunc i64 %addr.addr.0166 to i32
  %call25 = call i32 %12(ptr noundef %ha, i32 noundef 1090519188, i32 noundef %conv24) #10
  %13 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %isp_ops, align 4
  %wr_reg_indirect27 = getelementptr inbounds %struct.isp_operations, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %wr_reg_indirect27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr_reg_indirect27, align 4
  %incdec.ptr = getelementptr i32, ptr %data.addr.0165, i32 1
  %17 = ptrtoint ptr %data.addr.0165 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data.addr.0165, align 4
  %call28 = call i32 %16(ptr noundef %ha, i32 noundef 1090519200, i32 noundef %18) #10
  %or = or i32 %call28, %call25
  %19 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %isp_ops, align 4
  %wr_reg_indirect30 = getelementptr inbounds %struct.isp_operations, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %wr_reg_indirect30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr_reg_indirect30, align 4
  %incdec.ptr31 = getelementptr i32, ptr %data.addr.0165, i32 2
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr, align 4
  %call32 = call i32 %22(ptr noundef %ha, i32 noundef 1090519204, i32 noundef %24) #10
  %or33 = or i32 %or, %call32
  %25 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %isp_ops, align 4
  %wr_reg_indirect35 = getelementptr inbounds %struct.isp_operations, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %wr_reg_indirect35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr_reg_indirect35, align 4
  %incdec.ptr36 = getelementptr i32, ptr %data.addr.0165, i32 3
  %29 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr31, align 4
  %call37 = call i32 %28(ptr noundef %ha, i32 noundef 1090519216, i32 noundef %30) #10
  %or38 = or i32 %or33, %call37
  %31 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %isp_ops, align 4
  %wr_reg_indirect40 = getelementptr inbounds %struct.isp_operations, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %wr_reg_indirect40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr_reg_indirect40, align 4
  %incdec.ptr41 = getelementptr i32, ptr %data.addr.0165, i32 4
  %35 = ptrtoint ptr %incdec.ptr36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %incdec.ptr36, align 4
  %call42 = call i32 %34(ptr noundef %ha, i32 noundef 1090519220, i32 noundef %36) #10
  %or43 = or i32 %or38, %call42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %or43)
  %cmp44 = icmp eq i32 %or43, 1
  br i1 %cmp44, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %pdev50 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %37 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev50, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev51, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #13
  br label %do.body105

if.end52:                                         ; preds = %if.end21
  %39 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %isp_ops, align 4
  %wr_reg_indirect54 = getelementptr inbounds %struct.isp_operations, ptr %40, i32 0, i32 19
  %41 = ptrtoint ptr %wr_reg_indirect54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wr_reg_indirect54, align 4
  %call55 = call i32 %42(ptr noundef %ha, i32 noundef 1090519184, i32 noundef 6) #10
  %43 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %isp_ops, align 4
  %wr_reg_indirect57 = getelementptr inbounds %struct.isp_operations, ptr %44, i32 0, i32 19
  %45 = ptrtoint ptr %wr_reg_indirect57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr_reg_indirect57, align 4
  %call58 = call i32 %46(ptr noundef %ha, i32 noundef 1090519184, i32 noundef 7) #10
  %or59 = or i32 %call58, %call55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %or59)
  %cmp60 = icmp eq i32 %or59, 1
  br i1 %cmp60, label %do.end65, label %if.end52.for.body72_crit_edge

if.end52.for.body72_crit_edge:                    ; preds = %if.end52
  br label %for.body72

do.end65:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %pdev66 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %47 = ptrtoint ptr %pdev66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev66, align 8
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev67, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7) #13
  br label %do.body105

for.cond69:                                       ; preds = %if.end83
  %inc = add nuw nsw i32 %j.0162, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then91, label %for.cond69.for.body72_crit_edge

for.cond69.for.body72_crit_edge:                  ; preds = %for.cond69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body72

for.body72:                                       ; preds = %for.cond69.for.body72_crit_edge, %if.end52.for.body72_crit_edge
  %j.0162 = phi i32 [ %inc, %for.cond69.for.body72_crit_edge ], [ 0, %if.end52.for.body72_crit_edge ]
  %49 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %isp_ops, align 4
  %rd_reg_indirect = getelementptr inbounds %struct.isp_operations, ptr %50, i32 0, i32 18
  %51 = ptrtoint ptr %rd_reg_indirect to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rd_reg_indirect, align 4
  %call74 = call i32 %52(ptr noundef %ha, i32 noundef 1090519184, ptr noundef nonnull %agt_ctrl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call74)
  %cmp75 = icmp eq i32 %call74, 1
  br i1 %cmp75, label %do.end80, label %if.end83

do.end80:                                         ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #12
  %pdev81 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %53 = ptrtoint ptr %pdev81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev81, align 8
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev82, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7) #13
  br label %do.body105

if.end83:                                         ; preds = %for.body72
  %55 = ptrtoint ptr %agt_ctrl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %agt_ctrl, align 4
  %and84 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %cmp85 = icmp eq i32 %and84, 0
  br i1 %cmp85, label %for.inc102, label %for.cond69

if.then91:                                        ; preds = %for.cond69
  %call92 = call i32 @___ratelimit(ptr noundef nonnull @qla4_8xxx_ms_mem_write_128b._rs, ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then91.do.body105_crit_edge, label %do.end97

if.then91.do.body105_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

do.end97:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.7) #13
  br label %do.body105

for.inc102:                                       ; preds = %if.end83
  %inc103 = add nuw i32 %i.0164, 1
  %add = add i64 %addr.addr.0166, 16
  %exitcond170.not = icmp eq i32 %inc103, %count
  br i1 %exitcond170.not, label %for.inc102.do.body105_crit_edge, label %for.inc102.for.body_crit_edge

for.inc102.for.body_crit_edge:                    ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc102.do.body105_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

do.body105:                                       ; preds = %for.inc102.do.body105_crit_edge, %do.end97, %if.then91.do.body105_crit_edge, %do.end80, %do.end65, %do.end49, %for.body.do.body105_crit_edge, %do.end7, %for.cond.preheader.do.body105_crit_edge
  %ret_val.3 = phi i32 [ 1, %do.end7 ], [ 1, %do.end49 ], [ 1, %do.end65 ], [ 1, %do.end80 ], [ 1, %do.end97 ], [ 1, %if.then91.do.body105_crit_edge ], [ %call1, %for.cond.preheader.do.body105_crit_edge ], [ %call74, %for.inc102.do.body105_crit_edge ], [ 1, %for.body.do.body105_crit_edge ]
  call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call) #10
  br label %exit_ms_mem_write

exit_ms_mem_write:                                ; preds = %do.body105, %entry.exit_ms_mem_write_crit_edge
  %ret_val.4 = phi i32 [ %ret_val.3, %do.body105 ], [ 1, %entry.exit_ms_mem_write_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agt_ctrl) #10
  ret i32 %ret_val.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_82xx_pci_mem_read_2M(ptr noundef %ha, i64 noundef %off, ptr nocapture noundef writeonly %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %sz = alloca [2 x i32], align 4
  %off0 = alloca [2 x i32], align 4
  %word = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sz) #10
  %0 = getelementptr inbounds [2 x i32], ptr %sz, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %off0) #10
  %1 = getelementptr inbounds [2 x i32], ptr %off0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %word) #10
  %2 = call ptr @memset(ptr %word, i32 0, i32 16)
  %3 = and i64 %off, -67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %3)
  %4 = icmp eq i64 %3, 12884901888
  br i1 %4, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %off)
  %cmp.i = icmp ult i64 %off, 268435456
  br i1 %cmp.i, label %lor.lhs.false.i, label %if.else.if.then3_crit_edge

if.else.if.then3_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false.i:                                  ; preds = %if.else
  %conv.i = sext i32 %size to i64
  %add.i = add nsw i64 %off, -1
  %sub.i = add nsw i64 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %sub.i)
  %cmp2.i = icmp ult i64 %sub.i, 268435456
  br i1 %cmp2.i, label %lor.lhs.false10.i, label %lor.lhs.false.i.if.then3_crit_edge

lor.lhs.false.i.if.then3_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %switch.tableidx = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 8
  br i1 %5, label %switch.hole_check, label %lor.lhs.false10.i.if.then3_crit_edge

lor.lhs.false10.i.if.then3_crit_edge:             ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %switch.hole_check.if.then3_crit_edge, %lor.lhs.false10.i.if.then3_crit_edge, %lor.lhs.false.i.if.then3_crit_edge, %if.else.if.then3_crit_edge
  %hw_lock.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 95
  %call.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock.i) #10
  %call1.i = tail call fastcc i32 @qla4_82xx_pci_set_window(ptr noundef %ha, i64 noundef %off) #10
  %conv2.i = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp3.i = icmp eq i32 %call1.i, -1
  br i1 %cmp3.i, label %if.then3.do.body9.i_crit_edge, label %lor.lhs.false.i185

if.then3.do.body9.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9.i

lor.lhs.false.i185:                               ; preds = %if.then3
  %conv5.i = sext i32 %size to i64
  %add.i183 = add nsw i64 %conv5.i, -1
  %sub.i184 = add i64 %add.i183, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %sub.i184)
  %cmp.i.i = icmp ult i64 %sub.i184, 268435456
  br i1 %cmp.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i185
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla4xxx/ql4_nx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 684, 0\0A.popsection", ""() #10, !srcloc !642
  unreachable

if.else.i.i:                                      ; preds = %lor.lhs.false.i185
  %6 = and i64 %sub.i184, -5242880
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934592, i64 %6)
  %7 = icmp eq i64 %6, 8589934592
  br i1 %7, label %if.else.i.i.if.end.i186_crit_edge, label %if.else14.i.i

if.else.i.i.if.end.i186_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i186

if.else14.i.i:                                    ; preds = %if.else.i.i
  %8 = and i64 %sub.i184, -67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %8)
  %9 = icmp eq i64 %8, 12884901888
  br i1 %9, label %if.then18.i.i, label %if.else14.i.i.do.body9.i_crit_edge

if.else14.i.i.do.body9.i_crit_edge:               ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9.i

if.then18.i.i:                                    ; preds = %if.else14.i.i
  %10 = trunc i64 %sub.i184 to i32
  %11 = lshr i32 %10, 22
  %qdr_sn_window.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 94
  %12 = ptrtoint ptr %qdr_sn_window.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qdr_sn_window.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp19.i.i = icmp eq i32 %13, %11
  br i1 %cmp19.i.i, label %if.then18.i.i.if.end.i186_crit_edge, label %if.then18.i.i.do.body9.i_crit_edge

if.then18.i.i.do.body9.i_crit_edge:               ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9.i

if.then18.i.i.if.end.i186_crit_edge:              ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i186

do.body9.i:                                       ; preds = %if.then18.i.i.do.body9.i_crit_edge, %if.else14.i.i.do.body9.i_crit_edge, %if.then3.do.body9.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call.i) #10
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.57, i64 noundef %off) #13
  br label %cleanup

if.end.i186:                                      ; preds = %if.then18.i.i.if.end.i186_crit_edge, %if.else.i.i.if.end.i186_crit_edge
  %first_page_group_end.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 88
  %14 = ptrtoint ptr %first_page_group_end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %first_page_group_end.i.i, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call1.i)
  %cmp.i134.i = icmp ugt i32 %15, %call1.i
  br i1 %cmp.i134.i, label %land.lhs.true.i.i, label %if.end.i186.do.body26.i_crit_edge

if.end.i186.do.body26.i_crit_edge:                ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

land.lhs.true.i.i:                                ; preds = %if.end.i186
  %first_page_group_start.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 87
  %16 = ptrtoint ptr %first_page_group_start.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %first_page_group_start.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %call1.i)
  %cmp1.not.i.i = icmp ugt i32 %17, %call1.i
  br i1 %cmp1.not.i.i, label %land.lhs.true.i.i.do.body26.i_crit_edge, label %qla4_8xxx_pci_base_offsetfset.exit.i

land.lhs.true.i.i.do.body26.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

qla4_8xxx_pci_base_offsetfset.exit.i:             ; preds = %land.lhs.true.i.i
  %nx_pcibase.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %18 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i.i = add i32 %19, %call1.i
  %20 = inttoptr i32 %add.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool.not.i, label %qla4_8xxx_pci_base_offsetfset.exit.i.do.body26.i_crit_edge, label %qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge

qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge: ; preds = %qla4_8xxx_pci_base_offsetfset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

qla4_8xxx_pci_base_offsetfset.exit.i.do.body26.i_crit_edge: ; preds = %qla4_8xxx_pci_base_offsetfset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

do.body26.i:                                      ; preds = %qla4_8xxx_pci_base_offsetfset.exit.i.do.body26.i_crit_edge, %land.lhs.true.i.i.do.body26.i_crit_edge, %if.end.i186.do.body26.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call.i) #10
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 47
  %23 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resource.i, align 8
  %and.i = and i32 %call1.i, -4096
  %conv37.i = zext i32 %and.i to i64
  %sub40.i = add nsw i64 %add.i183, %conv2.i
  %and41.i = and i64 %sub40.i, -4096
  call void @__sanitizer_cov_trace_cmp8(i64 %and41.i, i64 %conv37.i)
  %cmp42.not.i = icmp eq i64 %and41.i, %conv37.i
  %add47.i = add i32 %24, %and.i
  %..i = select i1 %cmp42.not.i, i32 4096, i32 8192
  %call48.i = tail call ptr @ioremap(i32 noundef %add47.i, i32 noundef %..i) #10
  %cmp50.i = icmp eq ptr %call48.i, null
  br i1 %cmp50.i, label %if.then52.i, label %if.end53.i

if.then52.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %data, align 1
  br label %cleanup

if.end53.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %and54.i = and i32 %call1.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call48.i, i32 %and54.i
  %call62.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock.i) #10
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end53.i, %qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge
  %mem_ptr.1.i = phi ptr [ null, %qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge ], [ %call48.i, %if.end53.i ]
  %addr.0.i = phi ptr [ %20, %qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge ], [ %add.ptr.i, %if.end53.i ]
  %flags.0.i = phi i32 [ %call.i, %qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge ], [ %call62.i, %if.end53.i ]
  %26 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %if.end65.i.do.body83.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb69.i
    i32 4, label %sw.bb75.i
    i32 8, label %sw.bb81.i
  ]

if.end65.i.do.body83.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body83.i

sw.bb.i:                                          ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %addr.0.i) #10, !srcloc !643
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !644
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %data, align 1
  br label %do.body83.i

sw.bb69.i:                                        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr.0.i) #10, !srcloc !645
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !646
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %data, align 2
  br label %do.body83.i

sw.bb75.i:                                        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr.0.i) #10, !srcloc !628
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !647
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %data, align 4
  br label %do.body83.i

sw.bb81.i:                                        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr.0.i) #10, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !648
  %add.ptr.i.i = getelementptr i32, ptr %addr.0.i, i32 1
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !649
  %37 = zext i32 %36 to i64
  %38 = zext i32 %35 to i64
  %39 = shl nuw i64 %38, 32
  %40 = or i64 %39, %37
  %41 = tail call i64 @llvm.bswap.i64(i64 %40) #10
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %data, align 8
  br label %do.body83.i

do.body83.i:                                      ; preds = %sw.bb81.i, %sw.bb75.i, %sw.bb69.i, %sw.bb.i, %if.end65.i.do.body83.i_crit_edge
  %ret.0.i = phi i32 [ 0, %sw.bb81.i ], [ 0, %sw.bb75.i ], [ 0, %sw.bb69.i ], [ 0, %sw.bb.i ], [ -1, %if.end65.i.do.body83.i_crit_edge ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %flags.0.i) #10
  %tobool92.not.i = icmp eq ptr %mem_ptr.1.i, null
  br i1 %tobool92.not.i, label %do.body83.i.cleanup_crit_edge, label %if.then93.i

do.body83.i.cleanup_crit_edge:                    ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then93.i:                                      ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %mem_ptr.1.i) #10
  br label %cleanup

switch.hole_check:                                ; preds = %lor.lhs.false10.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %43 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %switch.lobit.not = icmp eq i8 %43, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then3_crit_edge, label %switch.hole_check.if.end5_crit_edge

switch.hole_check.if.end5_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

switch.hole_check.if.then3_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end5:                                          ; preds = %switch.hole_check.if.end5_crit_edge, %entry.if.end5_crit_edge
  %mem_crb.0 = phi i32 [ 131072000, %entry.if.end5_crit_edge ], [ 102760448, %switch.hole_check.if.end5_crit_edge ]
  %44 = trunc i64 %off to i32
  %conv = and i32 %44, 15
  %45 = ptrtoint ptr %off0 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv, ptr %off0, align 4
  %sub = sub nuw nsw i32 16, %conv
  %46 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %size)
  %47 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sz, align 4
  %add = add i32 %size, -1
  %sub14 = add i32 %add, %conv
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %1, align 4
  %sub18 = sub i32 %size, %46
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub18, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %cmp20.not198 = icmp slt i32 %sub14, 0
  br i1 %cmp20.not198, label %if.end5.if.end83_crit_edge, label %for.body.lr.ph

if.end5.if.end83_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

for.body.lr.ph:                                   ; preds = %if.end5
  %shr206 = lshr i32 %sub14, 4
  %50 = and i32 %44, -16
  %conv26 = or i32 %mem_crb.0, 148
  %conv28 = or i32 %mem_crb.0, 152
  %conv30 = or i32 %mem_crb.0, 144
  %add64 = or i32 %mem_crb.0, 168
  br label %for.body

for.body:                                         ; preds = %for.inc77.for.body_crit_edge, %for.body.lr.ph
  %i.0199 = phi i32 [ 0, %for.body.lr.ph ], [ %inc78, %for.inc77.for.body_crit_edge ]
  %shl = shl i32 %i.0199, 4
  %conv24 = add i32 %shl, %50
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv26, i32 noundef %conv24)
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv28, i32 noundef 0)
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv30, i32 noundef 2)
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv30, i32 noundef 3)
  br label %for.body36

for.body36:                                       ; preds = %for.inc.for.body36_crit_edge, %for.body
  %j.1195 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body36_crit_edge ]
  %call39 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef %conv30)
  %and40 = and i32 %call39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %cmp41 = icmp eq i32 %and40, 0
  br i1 %cmp41, label %if.end52, label %for.inc

for.inc:                                          ; preds = %for.body36
  %inc = add nuw nsw i32 %j.1195, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then47, label %for.inc.for.body36_crit_edge

for.inc.for.body36_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body36

if.then47:                                        ; preds = %for.inc
  %call48 = tail call i32 @___ratelimit(ptr noundef nonnull @qla4_82xx_pci_mem_read_2M._rs, ptr noundef nonnull @__func__.qla4_82xx_pci_mem_read_2M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool.not = icmp eq i32 %call48, 0
  br i1 %tobool.not, label %if.then47.cleanup_crit_edge, label %do.end

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.qla4_82xx_pci_mem_read_2M) #13
  br label %cleanup

if.end52:                                         ; preds = %for.body36
  %arrayidx53 = getelementptr [2 x i32], ptr %off0, i32 0, i32 %i.0199
  %51 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx53, align 4
  %shr54 = ashr i32 %52, 2
  %arrayidx56 = getelementptr [2 x i32], ptr %sz, i32 0, i32 %i.0199
  %53 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx56, align 4
  %add57 = add i32 %52, -1
  %sub58 = add i32 %add57, %54
  %shr59 = ashr i32 %sub58, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr54, i32 %shr59)
  %cmp61.not196 = icmp sgt i32 %shr54, %shr59
  br i1 %cmp61.not196, label %if.end52.for.inc77_crit_edge, label %for.body63.lr.ph

if.end52.for.inc77_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc77

for.body63.lr.ph:                                 ; preds = %if.end52
  %arrayidx73 = getelementptr [2 x i64], ptr %word, i32 0, i32 %i.0199
  br label %for.body63

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.body63.lr.ph
  %k.0197 = phi i32 [ %shr54, %for.body63.lr.ph ], [ %inc75, %for.body63.for.body63_crit_edge ]
  %mul = shl i32 %k.0197, 2
  %conv67 = add i32 %add64, %mul
  %call68 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef %conv67)
  %conv69 = zext i32 %call68 to i64
  %and70 = shl i32 %k.0197, 5
  %mul71 = and i32 %and70, 32
  %sh_prom = zext i32 %mul71 to i64
  %shl72 = shl nuw i64 %conv69, %sh_prom
  %55 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx73, align 8
  %or = or i64 %shl72, %56
  store i64 %or, ptr %arrayidx73, align 8
  %inc75 = add nsw i32 %k.0197, 1
  %exitcond202 = icmp eq i32 %k.0197, %shr59
  br i1 %exitcond202, label %for.body63.for.inc77_crit_edge, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63

for.body63.for.inc77_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc77

for.inc77:                                        ; preds = %for.body63.for.inc77_crit_edge, %if.end52.for.inc77_crit_edge
  %inc78 = add nuw nsw i32 %i.0199, 1
  %exitcond203 = icmp eq i32 %i.0199, %shr206
  br i1 %exitcond203, label %for.end79, label %for.inc77.for.body_crit_edge

for.inc77.for.body_crit_edge:                     ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end79:                                        ; preds = %for.inc77
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %j.1195)
  %cmp80 = icmp ugt i32 %j.1195, 999
  br i1 %cmp80, label %for.end79.cleanup_crit_edge, label %for.end79.if.end83_crit_edge

for.end79.if.end83_crit_edge:                     ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

for.end79.cleanup_crit_edge:                      ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end83:                                         ; preds = %for.end79.if.end83_crit_edge, %if.end5.if.end83_crit_edge
  %and85 = and i32 %44, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %cmp86 = icmp eq i32 %and85, 0
  %57 = ptrtoint ptr %word to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %word, align 8
  br i1 %cmp86, label %if.end83.if.end113_crit_edge, label %if.else90

if.end83.if.end113_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.else90:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %mul93 = shl nuw nsw i32 %conv, 3
  %sh_prom94 = zext i32 %mul93 to i64
  %shr95 = lshr i64 %58, %sh_prom94
  %mul97 = shl i32 %46, 3
  %sh_prom98 = zext i32 %mul97 to i64
  %shl99 = shl nsw i64 -1, %sh_prom98
  %neg = xor i64 %shl99, -1
  %and100 = and i64 %shr95, %neg
  %arrayidx101 = getelementptr inbounds [2 x i64], ptr %word, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx101, align 8
  %mul103 = shl i32 %sub18, 3
  %sh_prom104 = zext i32 %mul103 to i64
  %shl105 = shl nsw i64 -1, %sh_prom104
  %neg106 = xor i64 %shl105, -1
  %and107 = and i64 %60, %neg106
  %shl111 = shl i64 %and107, %sh_prom98
  %or112 = or i64 %shl111, %and100
  br label %if.end113

if.end113:                                        ; preds = %if.else90, %if.end83.if.end113_crit_edge
  %val.0 = phi i64 [ %or112, %if.else90 ], [ %58, %if.end83.if.end113_crit_edge ]
  %61 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.327)
  switch i32 %size, label %if.end113.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb115
    i32 4, label %sw.bb117
    i32 8, label %sw.bb119
  ]

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %conv114 = trunc i64 %val.0 to i8
  %62 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv114, ptr %data, align 1
  br label %cleanup

sw.bb115:                                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %conv116 = trunc i64 %val.0 to i16
  %63 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv116, ptr %data, align 2
  br label %cleanup

sw.bb117:                                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %conv118 = trunc i64 %val.0 to i32
  %64 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv118, ptr %data, align 4
  br label %cleanup

sw.bb119:                                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %val.0, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb119, %sw.bb117, %sw.bb115, %sw.bb, %if.end113.cleanup_crit_edge, %for.end79.cleanup_crit_edge, %do.end, %if.then47.cleanup_crit_edge, %if.then93.i, %do.body83.i.cleanup_crit_edge, %if.then52.i, %do.body9.i
  %retval.0 = phi i32 [ -1, %for.end79.cleanup_crit_edge ], [ 0, %if.end113.cleanup_crit_edge ], [ 0, %sw.bb119 ], [ 0, %sw.bb117 ], [ 0, %sw.bb115 ], [ 0, %sw.bb ], [ -1, %do.body9.i ], [ -1, %if.then52.i ], [ %ret.0.i, %if.then93.i ], [ %ret.0.i, %do.body83.i.cleanup_crit_edge ], [ -1, %do.end ], [ -1, %if.then47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %word) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sz) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_82xx_pci_mem_write_2M(ptr noundef %ha, i64 noundef %off, ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %word = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %word) #10
  %0 = call ptr @memset(ptr %word, i32 0, i32 16)
  %1 = and i64 %off, -67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %1)
  %2 = icmp eq i64 %1, 12884901888
  br i1 %2, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = sext i32 %size to i64
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %off)
  %cmp.i = icmp ult i64 %off, 268435456
  br i1 %cmp.i, label %lor.lhs.false.i, label %if.else.if.then3_crit_edge

if.else.if.then3_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false.i:                                  ; preds = %if.else
  %conv.i = sext i32 %size to i64
  %add.i = add nsw i64 %off, -1
  %sub.i = add nsw i64 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %sub.i)
  %cmp2.i = icmp ult i64 %sub.i, 268435456
  br i1 %cmp2.i, label %lor.lhs.false10.i, label %lor.lhs.false.i.if.then3_crit_edge

lor.lhs.false.i.if.then3_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %3 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %size, label %lor.lhs.false10.i.if.then3_crit_edge [
    i32 1, label %lor.lhs.false10.i.if.end5_crit_edge
    i32 2, label %lor.lhs.false10.i.if.end5_crit_edge256
    i32 4, label %lor.lhs.false10.i.if.end5_crit_edge257
    i32 8, label %lor.lhs.false10.i.if.end5_crit_edge258
  ]

lor.lhs.false10.i.if.end5_crit_edge258:           ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

lor.lhs.false10.i.if.end5_crit_edge257:           ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

lor.lhs.false10.i.if.end5_crit_edge256:           ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

lor.lhs.false10.i.if.end5_crit_edge:              ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

lor.lhs.false10.i.if.then3_crit_edge:             ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false10.i.if.then3_crit_edge, %lor.lhs.false.i.if.then3_crit_edge, %if.else.if.then3_crit_edge
  %hw_lock.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 95
  %call.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock.i) #10
  %call1.i = tail call fastcc i32 @qla4_82xx_pci_set_window(ptr noundef %ha, i64 noundef %off) #10
  %conv2.i = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp3.i = icmp eq i32 %call1.i, -1
  br i1 %cmp3.i, label %if.then3.do.body9.i_crit_edge, label %lor.lhs.false.i238

if.then3.do.body9.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9.i

lor.lhs.false.i238:                               ; preds = %if.then3
  %conv5.i = sext i32 %size to i64
  %add.i236 = add nsw i64 %conv5.i, -1
  %sub.i237 = add i64 %add.i236, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %sub.i237)
  %cmp.i.i = icmp ult i64 %sub.i237, 268435456
  br i1 %cmp.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i238
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/qla4xxx/ql4_nx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 684, 0\0A.popsection", ""() #10, !srcloc !642
  unreachable

if.else.i.i:                                      ; preds = %lor.lhs.false.i238
  %4 = and i64 %sub.i237, -5242880
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934592, i64 %4)
  %5 = icmp eq i64 %4, 8589934592
  br i1 %5, label %if.else.i.i.if.end.i239_crit_edge, label %if.else14.i.i

if.else.i.i.if.end.i239_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i239

if.else14.i.i:                                    ; preds = %if.else.i.i
  %6 = and i64 %sub.i237, -67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %6)
  %7 = icmp eq i64 %6, 12884901888
  br i1 %7, label %if.then18.i.i, label %if.else14.i.i.do.body9.i_crit_edge

if.else14.i.i.do.body9.i_crit_edge:               ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9.i

if.then18.i.i:                                    ; preds = %if.else14.i.i
  %8 = trunc i64 %sub.i237 to i32
  %9 = lshr i32 %8, 22
  %qdr_sn_window.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 94
  %10 = ptrtoint ptr %qdr_sn_window.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qdr_sn_window.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp19.i.i = icmp eq i32 %11, %9
  br i1 %cmp19.i.i, label %if.then18.i.i.if.end.i239_crit_edge, label %if.then18.i.i.do.body9.i_crit_edge

if.then18.i.i.do.body9.i_crit_edge:               ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9.i

if.then18.i.i.if.end.i239_crit_edge:              ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i239

do.body9.i:                                       ; preds = %if.then18.i.i.do.body9.i_crit_edge, %if.else14.i.i.do.body9.i_crit_edge, %if.then3.do.body9.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call.i) #10
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.57, i64 noundef %off) #13
  br label %cleanup

if.end.i239:                                      ; preds = %if.then18.i.i.if.end.i239_crit_edge, %if.else.i.i.if.end.i239_crit_edge
  %first_page_group_end.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 88
  %12 = ptrtoint ptr %first_page_group_end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %first_page_group_end.i.i, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call1.i)
  %cmp.i128.i = icmp ugt i32 %13, %call1.i
  br i1 %cmp.i128.i, label %land.lhs.true.i.i, label %if.end.i239.do.body26.i_crit_edge

if.end.i239.do.body26.i_crit_edge:                ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

land.lhs.true.i.i:                                ; preds = %if.end.i239
  %first_page_group_start.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 87
  %14 = ptrtoint ptr %first_page_group_start.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %first_page_group_start.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call1.i)
  %cmp1.not.i.i = icmp ugt i32 %15, %call1.i
  br i1 %cmp1.not.i.i, label %land.lhs.true.i.i.do.body26.i_crit_edge, label %qla4_8xxx_pci_base_offsetfset.exit.i

land.lhs.true.i.i.do.body26.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

qla4_8xxx_pci_base_offsetfset.exit.i:             ; preds = %land.lhs.true.i.i
  %nx_pcibase.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %16 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i.i = add i32 %17, %call1.i
  %18 = inttoptr i32 %add.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool.not.i, label %qla4_8xxx_pci_base_offsetfset.exit.i.do.body26.i_crit_edge, label %qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge

qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge: ; preds = %qla4_8xxx_pci_base_offsetfset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

qla4_8xxx_pci_base_offsetfset.exit.i.do.body26.i_crit_edge: ; preds = %qla4_8xxx_pci_base_offsetfset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

do.body26.i:                                      ; preds = %qla4_8xxx_pci_base_offsetfset.exit.i.do.body26.i_crit_edge, %land.lhs.true.i.i.do.body26.i_crit_edge, %if.end.i239.do.body26.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call.i) #10
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 47
  %21 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource.i, align 8
  %and.i = and i32 %call1.i, -4096
  %conv37.i = zext i32 %and.i to i64
  %sub40.i = add nsw i64 %add.i236, %conv2.i
  %and41.i = and i64 %sub40.i, -4096
  call void @__sanitizer_cov_trace_cmp8(i64 %and41.i, i64 %conv37.i)
  %cmp42.not.i = icmp eq i64 %and41.i, %conv37.i
  %add47.i = add i32 %22, %and.i
  %..i = select i1 %cmp42.not.i, i32 4096, i32 8192
  %call48.i = tail call ptr @ioremap(i32 noundef %add47.i, i32 noundef %..i) #10
  %cmp50.i = icmp eq ptr %call48.i, null
  br i1 %cmp50.i, label %do.body26.i.cleanup_crit_edge, label %if.end53.i

do.body26.i.cleanup_crit_edge:                    ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %and54.i = and i32 %call1.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call48.i, i32 %and54.i
  %call62.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock.i) #10
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end53.i, %qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge
  %mem_ptr.1.i = phi ptr [ null, %qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge ], [ %call48.i, %if.end53.i ]
  %addr.0.i = phi ptr [ %18, %qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge ], [ %add.ptr.i, %if.end53.i ]
  %flags.0.i = phi i32 [ %call.i, %qla4_8xxx_pci_base_offsetfset.exit.i.if.end65.i_crit_edge ], [ %call62.i, %if.end53.i ]
  %23 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.329)
  switch i32 %size, label %if.end65.i.do.body78.i_crit_edge [
    i32 1, label %do.body66.i
    i32 2, label %do.body70.i
    i32 4, label %do.body74.i
    i32 8, label %sw.bb77.i
  ]

if.end65.i.do.body78.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body78.i

do.body66.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !650
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %addr.0.i, i8 %25) #10, !srcloc !651
  br label %do.body78.i

do.body70.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !652
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr.0.i, i16 %28) #10, !srcloc !653
  br label %do.body78.i

do.body74.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !654
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr.0.i, i32 %31) #10, !srcloc !632
  br label %do.body78.i

sw.bb77.i:                                        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !655
  tail call void @arm_heavy_mb() #10
  %conv.i.i = trunc i64 %33 to i32
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr.0.i, i32 %34) #10, !srcloc !632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !656
  tail call void @arm_heavy_mb() #10
  %shr.i.i = lshr i64 %33, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %addr.0.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %35) #10, !srcloc !632
  br label %do.body78.i

do.body78.i:                                      ; preds = %sw.bb77.i, %do.body74.i, %do.body70.i, %do.body66.i, %if.end65.i.do.body78.i_crit_edge
  %ret.0.i = phi i32 [ 0, %sw.bb77.i ], [ 0, %do.body74.i ], [ 0, %do.body70.i ], [ 0, %do.body66.i ], [ -1, %if.end65.i.do.body78.i_crit_edge ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %flags.0.i) #10
  %tobool87.not.i = icmp eq ptr %mem_ptr.1.i, null
  br i1 %tobool87.not.i, label %do.body78.i.cleanup_crit_edge, label %if.then88.i

do.body78.i.cleanup_crit_edge:                    ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then88.i:                                      ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %mem_ptr.1.i) #10
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false10.i.if.end5_crit_edge, %lor.lhs.false10.i.if.end5_crit_edge256, %lor.lhs.false10.i.if.end5_crit_edge257, %lor.lhs.false10.i.if.end5_crit_edge258, %entry.if.end5_crit_edge
  %conv14.pre-phi = phi i64 [ %.pre, %entry.if.end5_crit_edge ], [ %conv.i, %lor.lhs.false10.i.if.end5_crit_edge ], [ %conv.i, %lor.lhs.false10.i.if.end5_crit_edge256 ], [ %conv.i, %lor.lhs.false10.i.if.end5_crit_edge257 ], [ %conv.i, %lor.lhs.false10.i.if.end5_crit_edge258 ]
  %mem_crb.0 = phi i32 [ 131072000, %entry.if.end5_crit_edge ], [ 102760448, %lor.lhs.false10.i.if.end5_crit_edge ], [ 102760448, %lor.lhs.false10.i.if.end5_crit_edge256 ], [ 102760448, %lor.lhs.false10.i.if.end5_crit_edge257 ], [ 102760448, %lor.lhs.false10.i.if.end5_crit_edge258 ]
  %36 = trunc i64 %off to i32
  %conv = and i32 %36, 7
  %sub = sub nuw nsw i32 8, %conv
  %37 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %size)
  %sub10 = sub i32 %size, %37
  %and12 = and i64 %off, 4294967280
  %and13 = and i64 %off, 15
  %add = add nuw nsw i64 %and13, 68719476735
  %sub15 = add nsw i64 %add, %conv14.pre-phi
  %shr = lshr i64 %sub15, 4
  %38 = trunc i64 %shr to i32
  %div234 = lshr i64 %and13, 3
  %conv19 = trunc i64 %div234 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp20.not245 = icmp slt i32 %38, 0
  br i1 %cmp20.not245, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0246, 1
  %exitcond.not = icmp eq i32 %i.0246, %38
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.0246 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %shl = shl i32 %i.0246, 4
  %conv22 = sext i32 %shl to i64
  %add23 = add nsw i64 %and12, %conv22
  %mul = shl nuw i32 %i.0246, 1
  %arrayidx24 = getelementptr [2 x i64], ptr %word, i32 0, i32 %mul
  %call25 = call i32 @qla4_82xx_pci_mem_read_2M(ptr noundef %ha, i64 noundef %add23, ptr noundef %arrayidx24, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end5.for.end_crit_edge
  %39 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.330)
  switch i32 %size, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb29
    i32 4, label %sw.bb31
  ]

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data, align 1
  %conv28 = zext i8 %41 to i64
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %data, align 2
  %conv30 = zext i16 %43 to i64
  br label %sw.epilog

sw.bb31:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data, align 4
  %conv32 = zext i32 %45 to i64
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %data, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %sw.bb29, %sw.bb
  %tmpw.0 = phi i64 [ %47, %sw.default ], [ %conv32, %sw.bb31 ], [ %conv30, %sw.bb29 ], [ %conv28, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp35 = icmp eq i32 %37, 8
  br i1 %cmp35, label %if.then37, label %if.else39

if.then37:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx38 = getelementptr [2 x i64], ptr %word, i32 0, i32 %conv19
  %48 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %tmpw.0, ptr %arrayidx38, align 8
  br label %if.end53

if.else39:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %mul41 = shl i32 %37, 3
  %sh_prom = zext i32 %mul41 to i64
  %shl42 = shl nsw i64 -1, %sh_prom
  %neg = xor i64 %shl42, -1
  %mul43 = shl nuw nsw i32 %conv, 3
  %sh_prom44 = zext i32 %mul43 to i64
  %shl45 = shl i64 %neg, %sh_prom44
  %neg46 = xor i64 %shl45, -1
  %arrayidx47 = getelementptr [2 x i64], ptr %word, i32 0, i32 %conv19
  %49 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx47, align 8
  %and48 = and i64 %50, %neg46
  %shl51 = shl i64 %tmpw.0, %sh_prom44
  %or = or i64 %and48, %shl51
  store i64 %or, ptr %arrayidx47, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.else39, %if.then37
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size)
  %cmp55.not.not = icmp slt i32 %sub, %size
  br i1 %cmp55.not.not, label %if.then57, label %if.end53.if.end73_crit_edge

if.end53.if.end73_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %mul59 = shl i32 %sub10, 3
  %sh_prom60 = zext i32 %mul59 to i64
  %shl61 = shl nsw i64 -1, %sh_prom60
  %neg62 = xor i64 %shl61, -1
  %add63 = add nuw nsw i32 %conv19, 1
  %arrayidx64 = getelementptr [2 x i64], ptr %word, i32 0, i32 %add63
  %51 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx64, align 8
  %and65 = and i64 %52, %neg62
  %mul67 = shl i32 %37, 3
  %sh_prom68 = zext i32 %mul67 to i64
  %shr69 = lshr i64 %tmpw.0, %sh_prom68
  %or72 = or i64 %and65, %shr69
  store i64 %or72, ptr %arrayidx64, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then57, %if.end53.if.end73_crit_edge
  br i1 %cmp20.not245, label %if.end73.cleanup_crit_edge, label %for.body77.lr.ph

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body77.lr.ph:                                 ; preds = %if.end73
  %53 = trunc i64 %and12 to i32
  %conv83 = or i32 %mem_crb.0, 148
  %conv85 = or i32 %mem_crb.0, 152
  %conv91 = or i32 %mem_crb.0, 160
  %conv98 = or i32 %mem_crb.0, 164
  %conv105 = or i32 %mem_crb.0, 176
  %conv113 = or i32 %mem_crb.0, 180
  %conv115 = or i32 %mem_crb.0, 144
  br label %for.body77

for.body77:                                       ; preds = %for.inc141.for.body77_crit_edge, %for.body77.lr.ph
  %i.1249 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc142, %for.inc141.for.body77_crit_edge ]
  %shl78 = shl i32 %i.1249, 4
  %conv81 = add i32 %shl78, %53
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv83, i32 noundef %conv81)
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv85, i32 noundef 0)
  %mul86 = shl nuw i32 %i.1249, 1
  %arrayidx87 = getelementptr [2 x i64], ptr %word, i32 0, i32 %mul86
  %54 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx87, align 8
  %conv89 = trunc i64 %55 to i32
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv91, i32 noundef %conv89)
  %shr94 = lshr i64 %55, 32
  %conv96 = trunc i64 %shr94 to i32
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv98, i32 noundef %conv96)
  %add100 = or i32 %mul86, 1
  %arrayidx101 = getelementptr [2 x i64], ptr %word, i32 0, i32 %add100
  %56 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx101, align 8
  %conv103 = trunc i64 %57 to i32
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv105, i32 noundef %conv103)
  %shr109 = lshr i64 %57, 32
  %conv111 = trunc i64 %shr109 to i32
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv113, i32 noundef %conv111)
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv115, i32 noundef 6)
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %conv115, i32 noundef 7)
  br label %for.body121

for.cond118:                                      ; preds = %for.body121
  %inc131 = add nuw nsw i32 %j.0247, 1
  %exitcond251.not = icmp eq i32 %inc131, 1000
  br i1 %exitcond251.not, label %if.then135, label %for.cond118.for.body121_crit_edge

for.cond118.for.body121_crit_edge:                ; preds = %for.cond118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body121

for.body121:                                      ; preds = %for.cond118.for.body121_crit_edge, %for.body77
  %j.0247 = phi i32 [ 0, %for.body77 ], [ %inc131, %for.cond118.for.body121_crit_edge ]
  %call124 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef %conv115)
  %and125 = and i32 %call124, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %cmp126 = icmp eq i32 %and125, 0
  br i1 %cmp126, label %for.inc141, label %for.cond118

if.then135:                                       ; preds = %for.cond118
  %call136 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.qla4_82xx_pci_mem_write_2M) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.then135.cleanup_crit_edge, label %do.end

if.then135.cleanup_crit_edge:                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.qla4_82xx_pci_mem_write_2M) #13
  br label %cleanup

for.inc141:                                       ; preds = %for.body121
  %inc142 = add nuw nsw i32 %i.1249, 1
  %exitcond252 = icmp eq i32 %i.1249, %38
  br i1 %exitcond252, label %for.inc141.cleanup_crit_edge, label %for.inc141.for.body77_crit_edge

for.inc141.for.body77_crit_edge:                  ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body77

for.inc141.cleanup_crit_edge:                     ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc141.cleanup_crit_edge, %do.end, %if.then135.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then88.i, %do.body78.i.cleanup_crit_edge, %do.body26.i.cleanup_crit_edge, %do.body9.i
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then135.cleanup_crit_edge ], [ -1, %do.body9.i ], [ -1, %do.body26.i.cleanup_crit_edge ], [ %ret.0.i, %if.then88.i ], [ %ret.0.i, %do.body78.i.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ], [ 0, %for.inc141.cleanup_crit_edge ], [ -1, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %word) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_8xxx_set_drv_active(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %4 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ha, i32 noundef %7) #10
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device.i, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.331)
  switch i16 %11, label %if.else [
    i16 -32718, label %entry.if.then_crit_edge
    i16 -32702, label %entry.if.then_crit_edge25
  ]

entry.if.then_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge25
  %func_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %13 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %func_num, align 8
  %conv = zext i16 %14 to i32
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %func_num4 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %15 = ptrtoint ptr %func_num4 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %func_num4, align 8
  %conv5 = zext i16 %16 to i32
  %mul = shl nuw nsw i32 %conv5, 2
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %conv.pn = phi i32 [ %conv, %if.then ], [ %mul, %if.else ]
  %shl.pn = shl nuw i32 1, %conv.pn
  %drv_active.0 = or i32 %shl.pn, %call.i
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %17 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %18, i32 noundef %drv_active.0) #13
  %19 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %wr_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr_reg_direct.i, align 4
  %23 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i24 = getelementptr i32, ptr %24, i32 3
  %25 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i24, align 4
  tail call void %22(ptr noundef %ha, i32 noundef %26, i32 noundef %drv_active.0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_8xxx_clear_drv_active(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %4 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ha, i32 noundef %7) #10
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device.i, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.332)
  switch i16 %11, label %if.else [
    i16 -32718, label %entry.if.then_crit_edge
    i16 -32702, label %entry.if.then_crit_edge26
  ]

entry.if.then_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge26
  %func_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %13 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %func_num, align 8
  %conv = zext i16 %14 to i32
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %func_num4 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %15 = ptrtoint ptr %func_num4 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %func_num4, align 8
  %conv5 = zext i16 %16 to i32
  %mul = shl nuw nsw i32 %conv5, 2
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %conv.pn = phi i32 [ %conv, %if.then ], [ %mul, %if.else ]
  %neg.pn.in = shl nuw i32 1, %conv.pn
  %neg.pn = xor i32 %neg.pn.in, -1
  %drv_active.0 = and i32 %call.i, %neg.pn
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %17 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef %18, i32 noundef %drv_active.0) #13
  %19 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %wr_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr_reg_direct.i, align 4
  %23 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i25 = getelementptr i32, ptr %24, i32 3
  %25 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i25, align 4
  tail call void %22(ptr noundef %ha, i32 noundef %26, i32 noundef %drv_active.0) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_need_reset(ptr noundef %ha) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %4 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ha, i32 noundef %7) #10
  %8 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i22 = getelementptr inbounds %struct.isp_operations, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %rd_reg_direct.i22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd_reg_direct.i22, align 4
  %12 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i24 = getelementptr i32, ptr %13, i32 5
  %14 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i24, align 4
  %call.i25 = tail call i32 %11(ptr noundef %ha, i32 noundef %15) #10
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.333)
  switch i16 %19, label %if.else [
    i16 -32718, label %entry.if.then_crit_edge
    i16 -32702, label %entry.if.then_crit_edge30
  ]

entry.if.then_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge30
  %func_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %21 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %func_num, align 8
  %conv = zext i16 %22 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %func_num5 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %23 = ptrtoint ptr %func_num5 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %func_num5, align 8
  %conv6 = zext i16 %24 to i32
  %mul = shl nuw nsw i32 %conv6, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv.pn = phi i32 [ %conv, %if.then ], [ %mul, %if.else ]
  %shl.pn = shl nuw i32 1, %conv.pn
  %rval.0 = and i32 %shl.pn, %call.i25
  %25 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %ha, align 4
  %27 = and i32 %26, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool11.not
  %rval.1 = select i1 %or.cond, i32 %rval.0, i32 1
  ret i32 %rval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_8xxx_set_rst_ready(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %4 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ha, i32 noundef %7) #10
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device.i, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.334)
  switch i16 %11, label %if.else [
    i16 -32718, label %entry.if.then_crit_edge
    i16 -32702, label %entry.if.then_crit_edge25
  ]

entry.if.then_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge25
  %func_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %13 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %func_num, align 8
  %conv = zext i16 %14 to i32
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %func_num4 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %15 = ptrtoint ptr %func_num4 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %func_num4, align 8
  %conv5 = zext i16 %16 to i32
  %mul = shl nuw nsw i32 %conv5, 2
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %conv.pn = phi i32 [ %conv, %if.then ], [ %mul, %if.else ]
  %shl.pn = shl nuw i32 1, %conv.pn
  %drv_state.0 = or i32 %shl.pn, %call.i
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %17 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %18, i32 noundef %drv_state.0) #13
  %19 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %wr_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr_reg_direct.i, align 4
  %23 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i24 = getelementptr i32, ptr %24, i32 5
  %25 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i24, align 4
  tail call void %22(ptr noundef %ha, i32 noundef %26, i32 noundef %drv_state.0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_8xxx_clear_rst_ready(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %4 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ha, i32 noundef %7) #10
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device.i, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.335)
  switch i16 %11, label %if.else [
    i16 -32718, label %entry.if.then_crit_edge
    i16 -32702, label %entry.if.then_crit_edge26
  ]

entry.if.then_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge26
  %func_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %13 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %func_num, align 8
  %conv = zext i16 %14 to i32
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %func_num4 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %15 = ptrtoint ptr %func_num4 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %func_num4, align 8
  %conv5 = zext i16 %16 to i32
  %mul = shl nuw nsw i32 %conv5, 2
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %conv.pn = phi i32 [ %conv, %if.then ], [ %mul, %if.else ]
  %neg.pn.in = shl nuw i32 1, %conv.pn
  %neg.pn = xor i32 %neg.pn.in, -1
  %drv_state.0 = and i32 %call.i, %neg.pn
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %17 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef %18, i32 noundef %drv_state.0) #13
  %19 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %wr_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr_reg_direct.i, align 4
  %23 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i25 = getelementptr i32, ptr %24, i32 5
  %25 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i25, align 4
  tail call void %22(ptr noundef %ha, i32 noundef %26, i32 noundef %drv_state.0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_82xx_try_start_fw(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %data.i16.i.i = alloca i64, align 8
  %high.i.i.i = alloca i32, align 4
  %low.i.i.i = alloca i32, align 4
  %addr.i.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %n.i.i.i = alloca i32, align 4
  %lnk.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  %call = tail call i32 @qla4_8xxx_get_flash_info(ptr noundef %ha)
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev5, ptr noundef nonnull @.str.33) #13
  %flt_region_fw = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 11
  %4 = ptrtoint ptr %flt_region_fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flt_region_fw, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk.i) #10
  %6 = ptrtoint ptr %lnk.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %lnk.i, align 2, !annotation !641
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323788, i32 noundef 1431655765) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323664, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323900, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323240, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323244, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323664, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i) #10
  %7 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %addr.i.i.i, align 4, !annotation !641
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i.i.i) #10
  %8 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %n.i.i.i, align 4, !annotation !641
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 882) #10
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end6.i.i.i.i.while.body.i.i.i.i_crit_edge, %entry
  %timeout.011.i.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i.i, %if.end6.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %call.i.i.i.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, label %if.end.i.i.i.i

while.body.i.i.i.i.while.end.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout.011.i.i.i.i)
  %exitcond.i.i.i.i = icmp eq i32 %timeout.011.i.i.i.i, 100
  br i1 %exitcond.i.i.i.i, label %if.end.i.i.i.i.qla4_82xx_rom_lock.exit.i.i.i_crit_edge, label %if.end6.i.i.i.i

if.end.i.i.i.i.qla4_82xx_rom_lock.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_rom_lock.exit.i.i.i

if.end6.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %timeout.011.i.i.i.i, 1
  tail call void @msleep(i32 noundef 20) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end6.i.i.i.i.while.body.i.i.i.i_crit_edge, label %if.end6.i.i.i.i.while.end.i.i.i.i_crit_edge

if.end6.i.i.i.i.while.end.i.i.i.i_crit_edge:      ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i.i

if.end6.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i.i

while.end.i.i.i.i:                                ; preds = %if.end6.i.i.i.i.while.end.i.i.i.i_crit_edge, %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323328, i32 noundef 222393152) #10
  br label %qla4_82xx_rom_lock.exit.i.i.i

qla4_82xx_rom_lock.exit.i.i.i:                    ; preds = %while.end.i.i.i.i, %if.end.i.i.i.i.qla4_82xx_rom_lock.exit.i.i.i_crit_edge
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 153092112, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 153092116, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 153092120, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 153092124, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 153092128, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 153092132, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 106954816, i32 noundef 255) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 107413504, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 107479040, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 107544576, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 107610112, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 107675648, i32 noundef 0) #10
  %call1.i.i.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 105910272) #10
  %9 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call1.i.i.i, ptr %val.i.i.i, align 4
  %and.i.i.i = and i32 %call1.i.i.i, -2
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 105910272, i32 noundef %and.i.i.i) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 133174016, i32 noundef 1) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 142606336, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 142606344, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 142606352, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 142606360, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 142606592, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 142606848, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 118489148, i32 noundef 1) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 119537724, i32 noundef 1) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 120586300, i32 noundef 1) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 121634876, i32 noundef 1) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 116391996, i32 noundef 1) #10
  tail call void @msleep(i32 noundef 5) #10
  %dpc_flags.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  %10 = ptrtoint ptr %dpc_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dpc_flags.i.i.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  %..i.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 -16777217
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 154140680, i32 noundef %..i.i.i) #10
  %call.i1.i.i.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826580) #10
  %call3.i.i.i = call fastcc i32 @qla4_82xx_rom_fast_read(ptr noundef %ha, i32 noundef 0, ptr noundef nonnull %n.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i, label %qla4_82xx_rom_lock.exit.i.i.i.do.end.i.i.i_crit_edge

qla4_82xx_rom_lock.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %qla4_82xx_rom_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %qla4_82xx_rom_lock.exit.i.i.i
  %13 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -889271554, i32 %14)
  %cmp4.not.i.i.i = icmp eq i32 %14, -889271554
  br i1 %cmp4.not.i.i.i, label %lor.lhs.false5.i.i.i, label %lor.lhs.false.i.i.i.do.end.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

lor.lhs.false5.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %call6.i.i.i = call fastcc i32 @qla4_82xx_rom_fast_read(ptr noundef %ha, i32 noundef 4, ptr noundef nonnull %n.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %cmp7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %cmp7.not.i.i.i, label %if.end9.i.i.i, label %lor.lhs.false5.i.i.i.do.end.i.i.i_crit_edge

lor.lhs.false5.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %lor.lhs.false5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %lor.lhs.false5.i.i.i.do.end.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end.i.i.i_crit_edge, %qla4_82xx_rom_lock.exit.i.i.i.do.end.i.i.i_crit_edge
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.125, i32 noundef %18) #13
  br label %do.end.i.i

if.end9.i.i.i:                                    ; preds = %lor.lhs.false5.i.i.i
  %19 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n.i.i.i, align 4
  %shr.i.i.i = lshr i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %20)
  %cmp12.i.i.i = icmp ugt i32 %20, 67108863
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %dev18.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  br i1 %cmp12.i.i.i, label %do.end16.i.i.i, label %do.end22.i.i.i

do.end16.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev18.i.i.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.126, i32 noundef %shr.i.i.i) #13
  br label %do.end.i.i

do.end22.i.i.i:                                   ; preds = %if.end9.i.i.i
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev18.i.i.i, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.57, i32 noundef %shr.i.i.i) #13
  %23 = shl nuw nsw i32 %shr.i.i.i, 3
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #14
  %cmp26.i.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %cmp26.i.i.i, label %do.end30.i.i.i, label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %do.end22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %20)
  %cmp3415.not.i.i.i = icmp ult i32 %20, 65536
  br i1 %cmp3415.not.i.i.i, label %for.cond.preheader.i.i.i.if.end.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.if.end.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %and10.i.i.i = shl nuw nsw i32 %20, 2
  %mul35.i.i.i = and i32 %and10.i.i.i, 262140
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %shr.i.i.i, i32 1) #10
  br label %for.body.i.i.i

do.end30.i.i.i:                                   ; preds = %do.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev32.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev32.i.i.i, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.57) #13
  br label %do.end.i.i

for.body.i.i.i:                                   ; preds = %if.end46.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.016.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %if.end46.i.i.i.for.body.i.i.i_crit_edge ]
  %mul.i.i.i = shl i32 %i.016.i.i.i, 3
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, %mul35.i.i.i
  %call36.i.i.i = call fastcc i32 @qla4_82xx_rom_fast_read(ptr noundef %ha, i32 noundef %add.i.i.i, ptr noundef nonnull %val.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i.i)
  %cmp37.not.i.i.i = icmp eq i32 %call36.i.i.i, 0
  br i1 %cmp37.not.i.i.i, label %lor.lhs.false38.i.i.i, label %for.body.i.i.i.if.then45.i.i.i_crit_edge

for.body.i.i.i.if.then45.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.i.i.i

lor.lhs.false38.i.i.i:                            ; preds = %for.body.i.i.i
  %add42.i.i.i = add nuw nsw i32 %add.i.i.i, 4
  %call43.i.i.i = call fastcc i32 @qla4_82xx_rom_fast_read(ptr noundef %ha, i32 noundef %add42.i.i.i, ptr noundef nonnull %addr.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i.i)
  %cmp44.not.i.i.i = icmp eq i32 %call43.i.i.i, 0
  br i1 %cmp44.not.i.i.i, label %if.end46.i.i.i, label %lor.lhs.false38.i.i.i.if.then45.i.i.i_crit_edge

lor.lhs.false38.i.i.i.if.then45.i.i.i_crit_edge:  ; preds = %lor.lhs.false38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.i.i.i

if.then45.i.i.i:                                  ; preds = %lor.lhs.false38.i.i.i.if.then45.i.i.i_crit_edge, %for.body.i.i.i.if.then45.i.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #10
  br label %do.end.i.i

if.end46.i.i.i:                                   ; preds = %lor.lhs.false38.i.i.i
  %26 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.crb_addr_pair, ptr %call8.i.i.i.i, i32 %i.016.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i.i.i, align 8
  %29 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i.i.i, align 4
  %data.i.i.i = getelementptr %struct.crb_addr_pair, ptr %call8.i.i.i.i, i32 %i.016.i.i.i, i32 1
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %data.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %if.end46.i.i.i.for.body51.i.i.i_crit_edge, label %if.end46.i.i.i.for.body.i.i.i_crit_edge

if.end46.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end46.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

if.end46.i.i.i.for.body51.i.i.i_crit_edge:        ; preds = %if.end46.i.i.i
  br label %for.body51.i.i.i

for.body51.i.i.i:                                 ; preds = %for.inc109.i.i.i.for.body51.i.i.i_crit_edge, %if.end46.i.i.i.for.body51.i.i.i_crit_edge
  %i.118.i.i.i = phi i32 [ %inc110.i.i.i, %for.inc109.i.i.i.for.body51.i.i.i_crit_edge ], [ 0, %if.end46.i.i.i.for.body51.i.i.i_crit_edge ]
  %arrayidx52.i.i.i = getelementptr %struct.crb_addr_pair, ptr %call8.i.i.i.i, i32 %i.118.i.i.i
  %32 = ptrtoint ptr %arrayidx52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx52.i.i.i, align 8
  %.b.i.i.i.i = load i1, ptr @qla4_8xxx_crb_table_initialized, align 4
  br i1 %.b.i.i.i.i, label %for.body51.i.i.i.if.end.i5.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body51.i.i.i.if.end.i5.i.i.i_crit_edge:       ; preds = %for.body51.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i5.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body51.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1078984704, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 49), align 4
  store i32 1097859072, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 40), align 4
  store i32 218103808, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 5), align 4
  store i32 238026752, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 11), align 4
  store i32 236978176, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 10), align 4
  store i32 235929600, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 9), align 4
  store i32 234881024, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 8), align 4
  store i32 1883242496, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 16), align 4
  store i32 1882193920, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 15), align 4
  store i32 1881145344, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 14), align 4
  store i32 1880096768, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 13), align 4
  store i32 1894776832, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 48), align 4
  store i32 148897792, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 47), align 4
  store i32 147849216, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 46), align 4
  store i32 1891631104, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 45), align 4
  store i32 1890582528, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 44), align 4
  store i32 1889533952, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 43), align 4
  store i32 143654912, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 42), align 4
  store i32 142606336, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 53), align 4
  store i32 1108344832, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 51), align 4
  store i32 1090519040, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 29), align 4
  store i32 241172480, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 7), align 4
  store i32 1879048192, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 12), align 4
  store i32 876609536, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 22), align 4
  store i32 877658112, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 21), align 4
  store i32 875560960, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 20), align 4
  store i32 874512384, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 19), align 4
  store i32 873463808, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 18), align 4
  store i32 872415232, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 17), align 4
  store i32 1010827264, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 28), align 4
  store i32 1011875840, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 27), align 4
  store i32 1009778688, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 26), align 4
  store i32 1008730112, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 25), align 4
  store i32 1007681536, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 24), align 4
  store i32 1006632960, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 23), align 4
  store i32 1999634432, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 1), align 4
  store i32 698351616, ptr @crb_addr_xform, align 4
  store i32 454033408, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 6), align 4
  store i32 1107296256, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 50), align 4
  store i32 219152384, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 31), align 4
  store i32 693108736, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 2), align 4
  store i32 709885952, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 3), align 4
  store i32 209715200, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 37), align 4
  store i32 208666624, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 36), align 4
  store i32 207618048, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 35), align 4
  store i32 1096810496, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 34), align 4
  store i32 1972371456, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 39), align 4
  store i32 1971322880, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 38), align 4
  store i32 1904214016, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 58), align 4
  store i32 1080033280, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 56), align 4
  store i32 428867584, ptr getelementptr inbounds ([60 x i32], ptr @crb_addr_xform, i32 0, i32 59), align 4
  store i1 true, ptr @qla4_8xxx_crb_table_initialized, align 4
  br label %if.end.i5.i.i.i

if.end.i5.i.i.i:                                  ; preds = %if.then.i.i.i.i, %for.body51.i.i.i.if.end.i5.i.i.i_crit_edge
  %and.i.i.i.i = and i32 %33, -1048576
  %and1.i4.i.i.i = and i32 %33, 1048575
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end.i5.i.i.i
  %i.020.i.i.i.i = phi i32 [ 0, %if.end.i5.i.i.i ], [ %inc.i6.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr [60 x i32], ptr @crb_addr_xform, i32 0, i32 %i.020.i.i.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %and.i.i.i.i)
  %cmp2.i.i.i.i = icmp eq i32 %35, %and.i.i.i.i
  br i1 %cmp2.i.i.i.i, label %qla4_82xx_decode_crb_addr.exit.i.i.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i6.i.i.i = add nuw nsw i32 %i.020.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i6.i.i.i, 60
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.do.body59.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.do.body59.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59.i.i.i

qla4_82xx_decode_crb_addr.exit.i.i.i:             ; preds = %for.body.i.i.i.i
  %shl.i.i.i.i = shl i32 %i.020.i.i.i.i, 20
  %add.i.i.i.i = or i32 %shl.i.i.i.i, %and1.i4.i.i.i
  %add55.i.i.i = add i32 %add.i.i.i.i, 100663296
  %and56.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i.i)
  %tobool57.not.i.i.i = icmp eq i32 %and56.i.i.i, 0
  br i1 %tobool57.not.i.i.i, label %if.end70.i.i.i, label %qla4_82xx_decode_crb_addr.exit.i.i.i.do.body59.i.i.i_crit_edge

qla4_82xx_decode_crb_addr.exit.i.i.i.do.body59.i.i.i_crit_edge: ; preds = %qla4_82xx_decode_crb_addr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59.i.i.i

do.body59.i.i.i:                                  ; preds = %qla4_82xx_decode_crb_addr.exit.i.i.i.do.body59.i.i.i_crit_edge, %for.inc.i.i.i.i.do.body59.i.i.i_crit_edge
  %add5513.i.i.i = phi i32 [ %add55.i.i.i, %qla4_82xx_decode_crb_addr.exit.i.i.i.do.body59.i.i.i_crit_edge ], [ 100663295, %for.inc.i.i.i.i.do.body59.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %36 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp60.i.i.i = icmp eq i32 %36, 2
  br i1 %cmp60.i.i.i, label %do.end64.i.i.i, label %do.body59.i.i.i.for.inc109.i.i.i_crit_edge

do.body59.i.i.i.for.inc109.i.i.i_crit_edge:       ; preds = %do.body59.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc109.i.i.i

do.end64.i.i.i:                                   ; preds = %do.body59.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %dev66.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev66.i.i.i, ptr noundef nonnull @.str.137, i32 noundef %add5513.i.i.i) #13
  br label %for.inc109.i.i.i

if.end70.i.i.i:                                   ; preds = %qla4_82xx_decode_crb_addr.exit.i.i.i
  %39 = zext i32 %add.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.336)
  switch i32 %add.i.i.i.i, label %if.end85.i.i.i [
    i32 35660284, label %if.end70.i.i.i.for.inc109.i.i.i_crit_edge
    i32 53477564, label %if.end70.i.i.i.for.inc109.i.i.i_crit_edge33
    i32 53477576, label %if.end70.i.i.i.for.inc109.i.i.i_crit_edge34
    i32 1122368, label %if.end70.i.i.i.for.inc109.i.i.i_crit_edge35
    i32 1122376, label %if.end70.i.i.i.for.inc109.i.i.i_crit_edge36
  ]

if.end70.i.i.i.for.inc109.i.i.i_crit_edge36:      ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc109.i.i.i

if.end70.i.i.i.for.inc109.i.i.i_crit_edge35:      ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc109.i.i.i

if.end70.i.i.i.for.inc109.i.i.i_crit_edge34:      ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc109.i.i.i

if.end70.i.i.i.for.inc109.i.i.i_crit_edge33:      ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc109.i.i.i

if.end70.i.i.i.for.inc109.i.i.i_crit_edge:        ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc109.i.i.i

if.end85.i.i.i:                                   ; preds = %if.end70.i.i.i
  %and86.i.i.i = and i32 %add55.i.i.i, 267386880
  %40 = zext i32 %and86.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.337)
  switch i32 %and86.i.i.i, label %if.end93.i.i.i [
    i32 161480704, label %if.end85.i.i.i.for.inc109.i.i.i_crit_edge
    i32 102760448, label %if.end85.i.i.i.for.inc109.i.i.i_crit_edge37
  ]

if.end85.i.i.i.for.inc109.i.i.i_crit_edge37:      ; preds = %if.end85.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc109.i.i.i

if.end85.i.i.i.for.inc109.i.i.i_crit_edge:        ; preds = %if.end85.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc109.i.i.i

if.end93.i.i.i:                                   ; preds = %if.end85.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add55.i.i.i)
  %cmp94.i.i.i = icmp eq i32 %add55.i.i.i, -1
  br i1 %cmp94.i.i.i, label %do.end98.i.i.i, label %if.end103.i.i.i

do.end98.i.i.i:                                   ; preds = %if.end93.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %dev100.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev100.i.i.i, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.57, i32 noundef %33) #13
  br label %for.inc109.i.i.i

if.end103.i.i.i:                                  ; preds = %if.end93.i.i.i
  %data105.i.i.i = getelementptr %struct.crb_addr_pair, ptr %call8.i.i.i.i, i32 %i.118.i.i.i, i32 1
  %43 = ptrtoint ptr %data105.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data105.i.i.i, align 4
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %add55.i.i.i, i32 noundef %44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 154140680, i32 %add55.i.i.i)
  %cmp106.i.i.i = icmp eq i32 %add55.i.i.i, 154140680
  br i1 %cmp106.i.i.i, label %if.then107.i.i.i, label %if.end103.i.i.i.if.end108.i.i.i_crit_edge

if.end103.i.i.i.if.end108.i.i.i_crit_edge:        ; preds = %if.end103.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108.i.i.i

if.then107.i.i.i:                                 ; preds = %if.end103.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1000) #10
  br label %if.end108.i.i.i

if.end108.i.i.i:                                  ; preds = %if.then107.i.i.i, %if.end103.i.i.i.if.end108.i.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc109.i.i.i

for.inc109.i.i.i:                                 ; preds = %if.end108.i.i.i, %do.end98.i.i.i, %if.end85.i.i.i.for.inc109.i.i.i_crit_edge, %if.end85.i.i.i.for.inc109.i.i.i_crit_edge37, %if.end70.i.i.i.for.inc109.i.i.i_crit_edge, %if.end70.i.i.i.for.inc109.i.i.i_crit_edge33, %if.end70.i.i.i.for.inc109.i.i.i_crit_edge34, %if.end70.i.i.i.for.inc109.i.i.i_crit_edge35, %if.end70.i.i.i.for.inc109.i.i.i_crit_edge36, %do.end64.i.i.i, %do.body59.i.i.i.for.inc109.i.i.i_crit_edge
  %inc110.i.i.i = add nuw nsw i32 %i.118.i.i.i, 1
  %exitcond23.not.i.i.i = icmp eq i32 %inc110.i.i.i, %umax.i.i.i
  br i1 %exitcond23.not.i.i.i, label %for.inc109.i.i.i.if.end.i.i_crit_edge, label %for.inc109.i.i.i.for.body51.i.i.i_crit_edge

for.inc109.i.i.i.for.body51.i.i.i_crit_edge:      ; preds = %for.inc109.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body51.i.i.i

for.inc109.i.i.i.if.end.i.i_crit_edge:            ; preds = %for.inc109.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then45.i.i.i, %do.end30.i.i.i, %do.end16.i.i.i, %do.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #10
  br label %do.end.i

if.end.i.i:                                       ; preds = %for.inc109.i.i.i.if.end.i.i_crit_edge, %for.cond.preheader.i.i.i.if.end.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 122683628, i32 noundef 30) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 122683468, i32 noundef 8) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 123732044, i32 noundef 8) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 118489096, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 118489100, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 119537672, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 119537676, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 120586248, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 120586252, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 121634824, i32 noundef 0) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 121634828, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 107374000) #10
  %call2.i.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 154140680) #10
  %and.i.i = and i32 %call2.i.i, -268435457
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 154140680, i32 noundef %and.i.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i16.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %high.i.i.i) #10
  %46 = ptrtoint ptr %high.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %high.i.i.i, align 4, !annotation !641
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low.i.i.i) #10
  %47 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %low.i.i.i, align 4, !annotation !641
  %flt_region_bootload.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 10
  %48 = ptrtoint ptr %flt_region_bootload.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flt_region_bootload.i.i.i, align 8
  %sub.i.i.i = sub i32 %5, %49
  %div40.i.i.i = lshr i32 %sub.i.i.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %50 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i.i.i = icmp eq i32 %50, 2
  br i1 %cmp.i.i.i, label %do.end.i17.i.i, label %if.end.i.i.do.end3.i.i.i_crit_edge

if.end.i.i.do.end3.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i.i.i

do.end.i17.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host_no.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %51 = ptrtoint ptr %host_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %host_no.i.i.i, align 4
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %52, ptr noundef nonnull @.str.149, i32 noundef %49, i32 noundef %5) #13
  br label %do.end3.i.i.i

do.end3.i.i.i:                                    ; preds = %do.end.i17.i.i, %if.end.i.i.do.end3.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i.i)
  %cmp441.not.i.i.i = icmp ult i32 %sub.i.i.i, 8
  br i1 %cmp441.not.i.i.i, label %do.end3.i.i.i.if.end.i_crit_edge, label %for.body.preheader.i.i.i

do.end3.i.i.i.if.end.i_crit_edge:                 ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.preheader.i.i.i:                         ; preds = %do.end3.i.i.i
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %div40.i.i.i, i32 1) #10
  br label %for.body.i19.i.i

for.body.i19.i.i:                                 ; preds = %for.inc.i.i.i.for.body.i19.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.044.i.i.i = phi i32 [ %inc.i24.i.i, %for.inc.i.i.i.for.body.i19.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %memaddr.043.i.i.i = phi i32 [ %add17.i.i.i, %for.inc.i.i.i.for.body.i19.i.i_crit_edge ], [ %49, %for.body.preheader.i.i.i ]
  %call5.i.i.i = call fastcc i32 @qla4_82xx_rom_fast_read(ptr noundef %ha, i32 noundef %memaddr.043.i.i.i, ptr noundef nonnull %low.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool.not.i18.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool.not.i18.i.i, label %lor.lhs.false.i22.i.i, label %for.body.i19.i.i.do.end7.i.i_crit_edge

for.body.i19.i.i.do.end7.i.i_crit_edge:           ; preds = %for.body.i19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

lor.lhs.false.i22.i.i:                            ; preds = %for.body.i19.i.i
  %add.i20.i.i = add i32 %memaddr.043.i.i.i, 4
  %call6.i21.i.i = call fastcc i32 @qla4_82xx_rom_fast_read(ptr noundef %ha, i32 noundef %add.i20.i.i, ptr noundef nonnull %high.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i21.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i21.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end9.i23.i.i, label %lor.lhs.false.i22.i.i.do.end7.i.i_crit_edge

lor.lhs.false.i22.i.i.do.end7.i.i_crit_edge:      ; preds = %lor.lhs.false.i22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.end9.i23.i.i:                                  ; preds = %lor.lhs.false.i22.i.i
  %53 = ptrtoint ptr %high.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %high.i.i.i, align 4
  %conv.i.i.i = zext i32 %54 to i64
  %shl.i.i.i = shl nuw i64 %conv.i.i.i, 32
  %55 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %low.i.i.i, align 4
  %conv10.i.i.i = zext i32 %56 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv10.i.i.i
  %57 = ptrtoint ptr %data.i16.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %or.i.i.i, ptr %data.i16.i.i, align 8
  %conv11.i.i.i = sext i32 %memaddr.043.i.i.i to i64
  %call12.i.i.i = call i32 @qla4_82xx_pci_mem_write_2M(ptr noundef %ha, i64 noundef %conv11.i.i.i, ptr noundef nonnull %data.i16.i.i, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %if.end15.i.i.i, label %if.end9.i23.i.i.do.end7.i.i_crit_edge

if.end9.i23.i.i.do.end7.i.i_crit_edge:            ; preds = %if.end9.i23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.end15.i.i.i:                                   ; preds = %if.end9.i23.i.i
  %add17.i.i.i = add i32 %memaddr.043.i.i.i, 8
  %58 = and i32 %i.044.i.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp18.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp18.i.i.i, label %if.then20.i.i.i, label %if.end15.i.i.i.for.inc.i.i.i_crit_edge

if.end15.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then20.i.i.i:                                  ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1) #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then20.i.i.i, %if.end15.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i24.i.i = add nuw nsw i32 %i.044.i.i.i, 1
  %exitcond.not.i25.i.i = icmp eq i32 %inc.i24.i.i, %smax.i.i.i
  br i1 %exitcond.not.i25.i.i, label %for.inc.i.i.i.if.end.i_crit_edge, label %for.inc.i.i.i.for.body.i19.i.i_crit_edge

for.inc.i.i.i.for.body.i19.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i19.i.i

for.inc.i.i.i.if.end.i_crit_edge:                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end7.i.i:                                      ; preds = %if.end9.i23.i.i.do.end7.i.i_crit_edge, %lor.lhs.false.i22.i.i.do.end7.i.i_crit_edge, %for.body.i19.i.i.do.end7.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %high.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i16.i.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %do.end7.i.i, %do.end.i.i
  %.str.120.sink.i = phi ptr [ @.str.120, %do.end.i.i ], [ @.str.123, %do.end7.i.i ]
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.120.sink.i, ptr noundef nonnull @.str.121) #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116) #13
  br label %do.end11

if.end.i:                                         ; preds = %for.inc.i.i.i.if.end.i_crit_edge, %do.end3.i.i.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 21474800) #10
  %hw_lock.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 95
  tail call void @_raw_read_lock(ptr noundef %hw_lock.i.i.i) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 118489112, i32 noundef 4128) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 154140680, i32 noundef 8388638) #10
  tail call void @_raw_read_unlock(ptr noundef %hw_lock.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %high.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i16.i.i) #10
  %call2.i = tail call fastcc i32 @qla4_82xx_cmdpeg_ready(ptr noundef %ha, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end10.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.116) #13
  br label %do.end11

if.end10.i:                                       ; preds = %if.end.i
  %60 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev, align 8
  %call11.i = call i32 @pcie_capability_read_word(ptr noundef %61, i32 noundef 18, ptr noundef nonnull %lnk.i) #10
  %62 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %lnk.i, align 2
  %64 = lshr i16 %63, 4
  %65 = and i16 %64, 63
  %and.i = zext i16 %65 to i32
  %link_width.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 97
  %66 = ptrtoint ptr %link_width.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and.i, ptr %link_width.i, align 4
  call void @_raw_read_lock(ptr noundef %hw_lock.i.i.i) #10
  %call.i.i = call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 136323900) #10
  call void @_raw_read_unlock(ptr noundef %hw_lock.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65281, i32 %call.i.i)
  %cmp.not23.not.i.i = icmp eq i32 %call.i.i, 65281
  br i1 %cmp.not23.not.i.i, label %if.end10.i.qla4_82xx_start_firmware.exit_crit_edge, label %if.end10.i.while.body.i.i_crit_edge

if.end10.i.while.body.i.i_crit_edge:              ; preds = %if.end10.i
  br label %while.body.i.i

if.end10.i.qla4_82xx_start_firmware.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_start_firmware.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end10.i.while.body.i.i_crit_edge
  %loops.024.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.end10.i.while.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 21474800) #10
  call void @_raw_read_lock(ptr noundef %hw_lock.i.i.i) #10
  %call4.i.i = call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 136323900) #10
  call void @_raw_read_unlock(ptr noundef %hw_lock.i.i.i) #10
  %inc.i.i = add nuw nsw i32 %loops.024.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65281, i32 %call4.i.i)
  %cmp.not.i.i = icmp ne i32 %call4.i.i, 65281
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999, i32 %loops.024.i.i)
  %cmp2.i.i = icmp ult i32 %loops.024.i.i, 29999
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp2.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29998, i32 %loops.024.i.i)
  %phi.cmp.i.i = icmp ugt i32 %loops.024.i.i, 29998
  br i1 %phi.cmp.i.i, label %do.body.i.i, label %while.end.i.i.qla4_82xx_start_firmware.exit_crit_edge

while.end.i.i.qla4_82xx_start_firmware.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_start_firmware.exit

do.body.i.i:                                      ; preds = %while.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %68 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp7.i.i = icmp eq i32 %68, 2
  br i1 %cmp7.i.i, label %do.end.i22.i, label %do.body.i.i.do.end11_crit_edge

do.body.i.i.do.end11_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

do.end.i22.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i.i, ptr noundef nonnull @.str.152, i32 noundef %call4.i.i) #13
  br label %do.end11

qla4_82xx_start_firmware.exit:                    ; preds = %while.end.i.i.qla4_82xx_start_firmware.exit_crit_edge, %if.end10.i.qla4_82xx_start_firmware.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk.i) #10
  br label %cleanup

do.end11:                                         ; preds = %do.end.i22.i, %do.body.i.i.do.end11_crit_edge, %do.end7.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk.i) #10
  %71 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev13, ptr noundef nonnull @.str.36) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %qla4_82xx_start_firmware.exit
  %retval.0 = phi i32 [ 1, %do.end11 ], [ 0, %qla4_82xx_start_firmware.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_get_flash_info(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %0 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp.i = icmp eq i32 %0, 2
  br i1 %cmp.i, label %do.end.i, label %entry.qla4_8xxx_find_flt_start.exit_crit_edge

entry.qla4_8xxx_find_flt_start.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_find_flt_start.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.296, i32 noundef 1033216) #13
  br label %qla4_8xxx_find_flt_start.exit

qla4_8xxx_find_flt_start.exit:                    ; preds = %do.end.i, %entry.qla4_8xxx_find_flt_start.exit_crit_edge
  %flt_region_flt.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 7
  %3 = ptrtoint ptr %flt_region_flt.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1033216, ptr %flt_region_flt.i, align 4
  %request_ring.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 61
  %4 = ptrtoint ptr %request_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request_ring.i, align 4
  %arrayidx.i = getelementptr %struct.qla_flt_header, ptr %5, i32 1
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %6 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device.i.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.338)
  switch i16 %9, label %qla4_8xxx_find_flt_start.exit.if.end15.i_crit_edge [
    i16 -32734, label %if.then.i
    i16 -32718, label %qla4_8xxx_find_flt_start.exit.if.then9.i_crit_edge
    i16 -32702, label %qla4_8xxx_find_flt_start.exit.if.then9.i_crit_edge54
  ]

qla4_8xxx_find_flt_start.exit.if.then9.i_crit_edge54: ; preds = %qla4_8xxx_find_flt_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

qla4_8xxx_find_flt_start.exit.if.then9.i_crit_edge: ; preds = %qla4_8xxx_find_flt_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

qla4_8xxx_find_flt_start.exit.if.end15.i_crit_edge: ; preds = %qla4_8xxx_find_flt_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %qla4_8xxx_find_flt_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qla4_82xx_read_optrom_data(ptr noundef %ha, ptr noundef %5, i32 noundef 4132864, i32 noundef 4096) #10
  br label %if.end15.i

if.then9.i:                                       ; preds = %qla4_8xxx_find_flt_start.exit.if.then9.i_crit_edge, %qla4_8xxx_find_flt_start.exit.if.then9.i_crit_edge54
  %call12.i = tail call i32 @qla4_83xx_flash_read_u32(ptr noundef %ha, i32 noundef 4132864, ptr noundef %5, i32 noundef 1024) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.not.i = icmp eq i32 %call12.i, 0
  br i1 %cmp.not.i, label %if.then9.i.if.end15.i_crit_edge, label %if.then9.i.no_flash_data.i_crit_edge

if.then9.i.no_flash_data.i_crit_edge:             ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_flash_data.i

if.then9.i.if.end15.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then9.i.if.end15.i_crit_edge, %if.then.i, %qla4_8xxx_find_flt_start.exit.if.end15.i_crit_edge
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %5, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.339)
  switch i16 %12, label %do.body.i [
    i16 -1, label %if.end15.i.no_flash_data.i_crit_edge
    i16 256, label %for.body.preheader.i
  ]

if.end15.i.no_flash_data.i_crit_edge:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_flash_data.i

do.body.i:                                        ; preds = %if.end15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %14 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp24.i = icmp eq i32 %14, 2
  br i1 %cmp24.i, label %do.end.i20, label %do.body.i.no_flash_data.i_crit_edge

do.body.i.no_flash_data.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_flash_data.i

do.end.i20:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i.i, align 8
  %dev.i19 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  %conv29.i = zext i16 %17 to i32
  %length.i = getelementptr inbounds %struct.qla_flt_header, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %length.i, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #10
  %conv30.i = zext i16 %20 to i32
  %checksum.i = getelementptr inbounds %struct.qla_flt_header, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %checksum.i, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #10
  %conv31.i = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i19, ptr noundef nonnull @.str.301, i32 noundef %conv29.i, i32 noundef %conv30.i, i32 noundef %conv31.i) #13
  br label %no_flash_data.i

for.body.preheader.i:                             ; preds = %if.end15.i
  %length36.i = getelementptr inbounds %struct.qla_flt_header, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %length36.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %length36.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #10
  %conv37.i = zext i16 %26 to i32
  %add.i = add nuw nsw i32 %conv37.i, 8
  %shr.i = lshr i32 %add.i, 1
  %conv38.i = trunc i32 %shr.i to i16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %chksum.0192.i = phi i16 [ %add42.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %cnt.0191.i = phi i16 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %conv38.i, %for.body.preheader.i ]
  %wptr.0190.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %5, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i16, ptr %wptr.0190.i, i32 1
  %27 = ptrtoint ptr %wptr.0190.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %wptr.0190.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #10
  %add42.i = add i16 %29, %chksum.0192.i
  %dec.i = add i16 %cnt.0191.i, -1
  %tobool39.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool39.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add42.i)
  %tobool44.not.i = icmp eq i16 %add42.i, 0
  br i1 %tobool44.not.i, label %if.end63.i, label %do.body46.i

do.body46.i:                                      ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %30 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp47.i = icmp eq i32 %30, 2
  br i1 %cmp47.i, label %do.end52.i, label %do.body46.i.no_flash_data.i_crit_edge

do.body46.i.no_flash_data.i_crit_edge:            ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_flash_data.i

do.end52.i:                                       ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i.i, align 8
  %dev54.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %conv59.i = zext i16 %add42.i to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev54.i, ptr noundef nonnull @.str.304, i32 noundef 1, i32 noundef %conv37.i, i32 noundef %conv59.i) #13
  br label %no_flash_data.i

if.end63.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %26)
  %tobool69.not193.i = icmp ult i16 %26, 16
  br i1 %tobool69.not193.i, label %if.end63.i.do.body96.i_crit_edge, label %for.body70.lr.ph.i

if.end63.i.do.body96.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body96.i

for.body70.lr.ph.i:                               ; preds = %if.end63.i
  %33 = lshr i16 %26, 4
  %flt_region_ddb.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 15
  %flt_ddb_size.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 16
  %flt_region_chap.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 13
  %flt_chap_size.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 14
  %flt_iscsi_param.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 12
  %flt_region_bootload.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 10
  %flt_region_fw.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 11
  %flt_region_boot.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 9
  %flt_region_fdt.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 8
  br label %for.body70.i

for.body70.i:                                     ; preds = %for.inc83.i.for.body70.i_crit_edge, %for.body70.lr.ph.i
  %region.0195.i = phi ptr [ %arrayidx.i, %for.body70.lr.ph.i ], [ %incdec.ptr85.i, %for.inc83.i.for.body70.i_crit_edge ]
  %cnt.1194.i = phi i16 [ %33, %for.body70.lr.ph.i ], [ %dec84.i, %for.inc83.i.for.body70.i_crit_edge ]
  %start71.i = getelementptr inbounds %struct.qla_flt_region, ptr %region.0195.i, i32 0, i32 2
  %34 = ptrtoint ptr %start71.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %start71.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  %shr72.i = lshr i32 %36, 2
  %37 = ptrtoint ptr %region.0195.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %region.0195.i, align 4
  %39 = lshr i32 %38, 24
  %trunc.i = trunc i32 %39 to i8
  %40 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.340)
  switch i8 %trunc.i, label %for.body70.i.for.inc83.i_crit_edge [
    i8 26, label %sw.bb.i
    i8 120, label %sw.bb76.i
    i8 116, label %for.body70.i.sw.bb77.i_crit_edge
    i8 -105, label %for.body70.i.sw.bb77.i_crit_edge55
    i8 114, label %sw.bb78.i
    i8 101, label %sw.bb79.i
    i8 99, label %sw.bb80.i
    i8 106, label %sw.bb81.i
  ]

for.body70.i.sw.bb77.i_crit_edge55:               ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb77.i

for.body70.i.sw.bb77.i_crit_edge:                 ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb77.i

for.body70.i.for.inc83.i_crit_edge:               ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83.i

sw.bb.i:                                          ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %flt_region_fdt.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr72.i, ptr %flt_region_fdt.i, align 4
  br label %for.inc83.i

sw.bb76.i:                                        ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %flt_region_boot.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr72.i, ptr %flt_region_boot.i, align 4
  br label %for.inc83.i

sw.bb77.i:                                        ; preds = %for.body70.i.sw.bb77.i_crit_edge, %for.body70.i.sw.bb77.i_crit_edge55
  %43 = ptrtoint ptr %flt_region_fw.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr72.i, ptr %flt_region_fw.i, align 4
  br label %for.inc83.i

sw.bb78.i:                                        ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %flt_region_bootload.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr72.i, ptr %flt_region_bootload.i, align 4
  br label %for.inc83.i

sw.bb79.i:                                        ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %flt_iscsi_param.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr72.i, ptr %flt_iscsi_param.i, align 4
  br label %for.inc83.i

sw.bb80.i:                                        ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %flt_region_chap.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr72.i, ptr %flt_region_chap.i, align 4
  %size.i = getelementptr inbounds %struct.qla_flt_region, ptr %region.0195.i, i32 0, i32 1
  %47 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  %50 = ptrtoint ptr %flt_chap_size.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %flt_chap_size.i, align 4
  br label %for.inc83.i

sw.bb81.i:                                        ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %flt_region_ddb.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr72.i, ptr %flt_region_ddb.i, align 4
  %size82.i = getelementptr inbounds %struct.qla_flt_region, ptr %region.0195.i, i32 0, i32 1
  %52 = ptrtoint ptr %size82.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size82.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  %55 = ptrtoint ptr %flt_ddb_size.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %flt_ddb_size.i, align 4
  br label %for.inc83.i

for.inc83.i:                                      ; preds = %sw.bb81.i, %sw.bb80.i, %sw.bb79.i, %sw.bb78.i, %sw.bb77.i, %sw.bb76.i, %sw.bb.i, %for.body70.i.for.inc83.i_crit_edge
  %dec84.i = add nsw i16 %cnt.1194.i, -1
  %incdec.ptr85.i = getelementptr %struct.qla_flt_region, ptr %region.0195.i, i32 1
  %tobool69.not.i = icmp eq i16 %dec84.i, 0
  br i1 %tobool69.not.i, label %for.inc83.i.do.body96.i_crit_edge, label %for.inc83.i.for.body70.i_crit_edge

for.inc83.i.for.body70.i_crit_edge:               ; preds = %for.inc83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body70.i

for.inc83.i.do.body96.i_crit_edge:                ; preds = %for.inc83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body96.i

no_flash_data.i:                                  ; preds = %do.end52.i, %do.body46.i.no_flash_data.i_crit_edge, %do.end.i20, %do.body.i.no_flash_data.i_crit_edge, %if.end15.i.no_flash_data.i_crit_edge, %if.then9.i.no_flash_data.i_crit_edge
  %flt_region_fdt88.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 8
  %56 = ptrtoint ptr %flt_region_fdt88.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1032192, ptr %flt_region_fdt88.i, align 4
  %flt_region_boot89.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 9
  %57 = ptrtoint ptr %flt_region_boot89.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 131072, ptr %flt_region_boot89.i, align 4
  %flt_region_bootload90.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 10
  %58 = ptrtoint ptr %flt_region_bootload90.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 16384, ptr %flt_region_bootload90.i, align 4
  %flt_region_fw91.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 11
  %59 = ptrtoint ptr %flt_region_fw91.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 262144, ptr %flt_region_fw91.i, align 4
  %flt_region_chap92.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 13
  %60 = ptrtoint ptr %flt_region_chap92.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1376256, ptr %flt_region_chap92.i, align 4
  %flt_chap_size93.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 14
  %61 = ptrtoint ptr %flt_chap_size93.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 786432, ptr %flt_chap_size93.i, align 4
  %flt_region_ddb94.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 15
  %62 = ptrtoint ptr %flt_region_ddb94.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1081344, ptr %flt_region_ddb94.i, align 4
  %flt_ddb_size95.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 16
  %63 = ptrtoint ptr %flt_ddb_size95.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 524288, ptr %flt_ddb_size95.i, align 4
  br label %do.body96.i

do.body96.i:                                      ; preds = %no_flash_data.i, %for.inc83.i.do.body96.i_crit_edge, %if.end63.i.do.body96.i_crit_edge
  %loc.0.i = phi ptr [ @.str.296, %no_flash_data.i ], [ @.str.300, %if.end63.i.do.body96.i_crit_edge ], [ @.str.300, %for.inc83.i.do.body96.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %64 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp97.i = icmp eq i32 %64, 2
  br i1 %cmp97.i, label %do.end102.i, label %do.body96.i.qla4_8xxx_get_flt_info.exit_crit_edge

do.body96.i.qla4_8xxx_get_flt_info.exit_crit_edge: ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_get_flt_info.exit

do.end102.i:                                      ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i.i, align 8
  %dev104.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %67 = ptrtoint ptr %flt_region_flt.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flt_region_flt.i, align 4
  %flt_region_fdt106.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 8
  %69 = ptrtoint ptr %flt_region_fdt106.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flt_region_fdt106.i, align 4
  %flt_region_boot107.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 9
  %71 = ptrtoint ptr %flt_region_boot107.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flt_region_boot107.i, align 4
  %flt_region_bootload108.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 10
  %73 = ptrtoint ptr %flt_region_bootload108.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flt_region_bootload108.i, align 4
  %flt_region_fw109.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 11
  %75 = ptrtoint ptr %flt_region_fw109.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flt_region_fw109.i, align 4
  %flt_region_chap110.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 13
  %77 = ptrtoint ptr %flt_region_chap110.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flt_region_chap110.i, align 4
  %flt_chap_size111.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 14
  %79 = ptrtoint ptr %flt_chap_size111.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flt_chap_size111.i, align 4
  %flt_region_ddb112.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 15
  %81 = ptrtoint ptr %flt_region_ddb112.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flt_region_ddb112.i, align 4
  %flt_ddb_size113.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 16
  %83 = ptrtoint ptr %flt_ddb_size113.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flt_ddb_size113.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev104.i, ptr noundef nonnull @.str.307, ptr noundef nonnull %loc.0.i, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84) #13
  br label %qla4_8xxx_get_flt_info.exit

qla4_8xxx_get_flt_info.exit:                      ; preds = %do.end102.i, %do.body96.i.qla4_8xxx_get_flt_info.exit_crit_edge
  %85 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev.i.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %device.i, align 2
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.341)
  switch i16 %88, label %qla4_8xxx_get_flt_info.exit.cleanup_crit_edge [
    i16 -32734, label %if.then2
    i16 -32718, label %qla4_8xxx_get_flt_info.exit.if.then7_crit_edge
    i16 -32702, label %qla4_8xxx_get_flt_info.exit.if.then7_crit_edge56
  ]

qla4_8xxx_get_flt_info.exit.if.then7_crit_edge56: ; preds = %qla4_8xxx_get_flt_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

qla4_8xxx_get_flt_info.exit.if.then7_crit_edge:   ; preds = %qla4_8xxx_get_flt_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

qla4_8xxx_get_flt_info.exit.cleanup_crit_edge:    ; preds = %qla4_8xxx_get_flt_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %qla4_8xxx_get_flt_info.exit
  %hw1.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103
  %90 = ptrtoint ptr %hw1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2147287040, ptr %hw1.i, align 4
  %flash_data_off.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 1
  %91 = ptrtoint ptr %flash_data_off.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2146435072, ptr %flash_data_off.i, align 4
  %92 = ptrtoint ptr %request_ring.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %request_ring.i, align 4
  %flt_region_fdt.i24 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 8
  %94 = ptrtoint ptr %flt_region_fdt.i24 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flt_region_fdt.i24, align 4
  %shl.i25 = shl i32 %95, 2
  tail call fastcc void @qla4_82xx_read_optrom_data(ptr noundef %ha, ptr noundef %93, i32 noundef %shl.i25, i32 noundef 4096) #10
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %93, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %97)
  %cmp.i26 = icmp eq i16 %97, -1
  br i1 %cmp.i26, label %if.then2.no_flash_data.i36_crit_edge, label %if.end.i

if.then2.no_flash_data.i36_crit_edge:             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_flash_data.i36

if.end.i:                                         ; preds = %if.then2
  %98 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %93, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %99)
  %cmp6.not.i = icmp eq i8 %99, 81
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.end.i.no_flash_data.i36_crit_edge

if.end.i.no_flash_data.i36_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_flash_data.i36

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx9.i = getelementptr [4 x i8], ptr %93, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %101)
  %cmp11.not.i = icmp eq i8 %101, 76
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %lor.lhs.false.i.no_flash_data.i36_crit_edge

lor.lhs.false.i.no_flash_data.i36_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_flash_data.i36

lor.lhs.false13.i:                                ; preds = %lor.lhs.false.i
  %arrayidx15.i = getelementptr [4 x i8], ptr %93, i32 0, i32 2
  %102 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %103)
  %cmp17.not.i = icmp eq i8 %103, 73
  br i1 %cmp17.not.i, label %lor.lhs.false19.i, label %lor.lhs.false13.i.no_flash_data.i36_crit_edge

lor.lhs.false13.i.no_flash_data.i36_crit_edge:    ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_flash_data.i36

lor.lhs.false19.i:                                ; preds = %lor.lhs.false13.i
  %arrayidx21.i = getelementptr [4 x i8], ptr %93, i32 0, i32 3
  %104 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %105)
  %cmp23.not.i = icmp eq i8 %105, 68
  br i1 %cmp23.not.i, label %lor.lhs.false19.i.for.body.i29_crit_edge, label %lor.lhs.false19.i.no_flash_data.i36_crit_edge

lor.lhs.false19.i.no_flash_data.i36_crit_edge:    ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_flash_data.i36

lor.lhs.false19.i.for.body.i29_crit_edge:         ; preds = %lor.lhs.false19.i
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %lor.lhs.false19.i.for.body.i29_crit_edge
  %wptr.0132.i = phi ptr [ %incdec.ptr.i27, %for.body.i29.for.body.i29_crit_edge ], [ %93, %lor.lhs.false19.i.for.body.i29_crit_edge ]
  %chksum.0131.i = phi i16 [ %add.i28, %for.body.i29.for.body.i29_crit_edge ], [ 0, %lor.lhs.false19.i.for.body.i29_crit_edge ]
  %cnt.0130.i = phi i16 [ %inc.i, %for.body.i29.for.body.i29_crit_edge ], [ 0, %lor.lhs.false19.i.for.body.i29_crit_edge ]
  %incdec.ptr.i27 = getelementptr i16, ptr %wptr.0132.i, i32 1
  %106 = ptrtoint ptr %wptr.0132.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %wptr.0132.i, align 2
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #10
  %add.i28 = add i16 %108, %chksum.0131.i
  %inc.i = add nuw nsw i16 %cnt.0130.i, 1
  %cmp28.i = icmp ult i16 %cnt.0130.i, 63
  br i1 %cmp28.i, label %for.body.i29.for.body.i29_crit_edge, label %for.end.i30

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i29

for.end.i30:                                      ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i28)
  %tobool.not.i = icmp eq i16 %add.i28, 0
  br i1 %tobool.not.i, label %if.end46.i, label %do.body.i31

do.body.i31:                                      ; preds = %for.end.i30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %109 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp34.i = icmp eq i32 %109, 2
  br i1 %cmp34.i, label %do.end.i35, label %do.body.i31.no_flash_data.i36_crit_edge

do.body.i31.no_flash_data.i36_crit_edge:          ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_flash_data.i36

do.end.i35:                                       ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev.i.i, align 8
  %dev.i33 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %conv38.i34 = zext i16 %add.i28 to i32
  %version.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %93, i32 0, i32 1
  %112 = ptrtoint ptr %version.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %version.i, align 4
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #10
  %conv42.i = zext i16 %114 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i33, ptr noundef nonnull @.str.316, i32 noundef %conv38.i34, i32 noundef 81, i32 noundef %conv42.i) #13
  br label %no_flash_data.i36

if.end46.i:                                       ; preds = %for.end.i30
  %man_id.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %93, i32 0, i32 6
  %115 = ptrtoint ptr %man_id.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %man_id.i, align 4
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #10
  %id.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %93, i32 0, i32 7
  %118 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %id.i, align 2
  %120 = tail call i16 @llvm.bswap.i16(i16 %119) #10
  %wrt_disable_bits.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %93, i32 0, i32 21
  %121 = ptrtoint ptr %wrt_disable_bits.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %wrt_disable_bits.i, align 1
  %conv48.i = zext i8 %122 to i32
  %fdt_wrt_disable.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 2
  %123 = ptrtoint ptr %fdt_wrt_disable.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %conv48.i, ptr %fdt_wrt_disable.i, align 4
  %erase_cmd.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %93, i32 0, i32 9
  %124 = ptrtoint ptr %erase_cmd.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %erase_cmd.i, align 1
  %conv49.i = zext i8 %125 to i32
  %126 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hw1.i, align 4
  %or.i = or i32 %127, %conv49.i
  %or.i.i = or i32 %or.i, 768
  %fdt_erase_cmd.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 3
  %128 = ptrtoint ptr %fdt_erase_cmd.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or.i.i, ptr %fdt_erase_cmd.i, align 4
  %block_size.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %93, i32 0, i32 16
  %129 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %block_size.i, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #10
  %fdt_block_size.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 4
  %132 = ptrtoint ptr %fdt_block_size.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %fdt_block_size.i, align 4
  %unprotect_sec_cmd.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %93, i32 0, i32 14
  %133 = ptrtoint ptr %unprotect_sec_cmd.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %unprotect_sec_cmd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool51.not.i = icmp eq i8 %134, 0
  br i1 %tobool51.not.i, label %if.end46.i.do.body67.i_crit_edge, label %if.then52.i

if.end46.i.do.body67.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body67.i

if.then52.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv54.i = zext i8 %134 to i32
  %or55.i = or i32 %127, %conv54.i
  %or.i127.i = or i32 %or55.i, 768
  %fdt_unprotect_sec_cmd.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 5
  %135 = ptrtoint ptr %fdt_unprotect_sec_cmd.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or.i127.i, ptr %fdt_unprotect_sec_cmd.i, align 4
  %protect_sec_cmd.i = getelementptr inbounds %struct.qla_fdt_layout, ptr %93, i32 0, i32 25
  %136 = ptrtoint ptr %protect_sec_cmd.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %protect_sec_cmd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool58.not.i = icmp eq i8 %137, 0
  %conv57.i = zext i8 %137 to i32
  %or61.i = or i32 %conv57.i, 768
  %cond.v.i = select i1 %tobool58.not.i, i32 822, i32 %or61.i
  %cond.i = or i32 %cond.v.i, %127
  %fdt_protect_sec_cmd.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 6
  %138 = ptrtoint ptr %fdt_protect_sec_cmd.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %cond.i, ptr %fdt_protect_sec_cmd.i, align 4
  br label %do.body67.i

no_flash_data.i36:                                ; preds = %do.end.i35, %do.body.i31.no_flash_data.i36_crit_edge, %lor.lhs.false19.i.no_flash_data.i36_crit_edge, %lor.lhs.false13.i.no_flash_data.i36_crit_edge, %lor.lhs.false.i.no_flash_data.i36_crit_edge, %if.end.i.no_flash_data.i36_crit_edge, %if.then2.no_flash_data.i36_crit_edge
  %fdt_block_size66.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 4
  %139 = ptrtoint ptr %fdt_block_size66.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 65536, ptr %fdt_block_size66.i, align 4
  br label %do.body67.i

do.body67.i:                                      ; preds = %no_flash_data.i36, %if.then52.i, %if.end46.i.do.body67.i_crit_edge
  %loc.0.i37 = phi ptr [ @.str.314, %no_flash_data.i36 ], [ @.str.315, %if.then52.i ], [ @.str.315, %if.end46.i.do.body67.i_crit_edge ]
  %mid.0.i = phi i16 [ 0, %no_flash_data.i36 ], [ %117, %if.then52.i ], [ %117, %if.end46.i.do.body67.i_crit_edge ]
  %fid.0.i = phi i16 [ 0, %no_flash_data.i36 ], [ %120, %if.then52.i ], [ %120, %if.end46.i.do.body67.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %140 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %140)
  %cmp68.i = icmp eq i32 %140, 2
  br i1 %cmp68.i, label %do.end73.i, label %do.body67.i.qla4_82xx_get_fdt_info.exit_crit_edge

do.body67.i.qla4_82xx_get_fdt_info.exit_crit_edge: ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_get_fdt_info.exit

do.end73.i:                                       ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pdev.i.i, align 8
  %dev75.i = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  %conv76.i = zext i16 %mid.0.i to i32
  %conv77.i = zext i16 %fid.0.i to i32
  %fdt_erase_cmd78.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 3
  %143 = ptrtoint ptr %fdt_erase_cmd78.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %fdt_erase_cmd78.i, align 4
  %fdt_protect_sec_cmd79.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 6
  %145 = ptrtoint ptr %fdt_protect_sec_cmd79.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %fdt_protect_sec_cmd79.i, align 4
  %fdt_unprotect_sec_cmd80.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 5
  %147 = ptrtoint ptr %fdt_unprotect_sec_cmd80.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %fdt_unprotect_sec_cmd80.i, align 4
  %fdt_wrt_disable81.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 2
  %149 = ptrtoint ptr %fdt_wrt_disable81.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %fdt_wrt_disable81.i, align 4
  %fdt_block_size82.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 4
  %151 = ptrtoint ptr %fdt_block_size82.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %fdt_block_size82.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev75.i, ptr noundef nonnull @.str.319, ptr noundef nonnull %loc.0.i37, i32 noundef %conv76.i, i32 noundef %conv77.i, i32 noundef %144, i32 noundef %146, i32 noundef %148, i32 noundef %150, i32 noundef %152) #13
  br label %qla4_82xx_get_fdt_info.exit

qla4_82xx_get_fdt_info.exit:                      ; preds = %do.end73.i, %do.body67.i.qla4_82xx_get_fdt_info.exit_crit_edge
  %153 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i39 = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 8
  %155 = ptrtoint ptr %device.i.i39 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %device.i.i39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %156)
  %cmp.i.not.i = icmp eq i16 %156, -32734
  br i1 %cmp.i.not.i, label %if.end.i42, label %qla4_82xx_get_fdt_info.exit.cleanup_crit_edge

qla4_82xx_get_fdt_info.exit.cleanup_crit_edge:    ; preds = %qla4_82xx_get_fdt_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i42:                                       ; preds = %qla4_82xx_get_fdt_info.exit
  %157 = ptrtoint ptr %request_ring.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %request_ring.i, align 4
  tail call fastcc void @qla4_82xx_read_optrom_data(ptr noundef %ha, ptr noundef %158, i32 noundef 4098140, i32 noundef 8) #10
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %160)
  %cmp.i41 = icmp eq i32 %160, -1
  br i1 %cmp.i41, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %nx_dev_init_timeout.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 104
  %161 = ptrtoint ptr %nx_dev_init_timeout.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 30, ptr %nx_dev_init_timeout.i, align 4
  br label %do.body.i44

if.else.i:                                        ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i43 = getelementptr i32, ptr %158, i32 1
  %162 = tail call i32 @llvm.bswap.i32(i32 %160) #10
  %nx_dev_init_timeout4.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 104
  %163 = ptrtoint ptr %nx_dev_init_timeout4.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %nx_dev_init_timeout4.i, align 4
  %164 = ptrtoint ptr %incdec.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %incdec.ptr.i43, align 4
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #10
  br label %do.body.i44

do.body.i44:                                      ; preds = %if.else.i, %if.then3.i
  %.sink.i = phi i32 [ 10, %if.then3.i ], [ %166, %if.else.i ]
  %167 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 105
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %.sink.i, ptr %167, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %169 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %169)
  %cmp7.i = icmp eq i32 %169, 2
  br i1 %cmp7.i, label %do.body14.i, label %do.body.i44.cleanup_crit_edge

do.body.i44.cleanup_crit_edge:                    ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body14.i:                                      ; preds = %do.body.i44
  %170 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pdev.i.i, align 8
  %dev.i45 = getelementptr inbounds %struct.pci_dev, ptr %171, i32 0, i32 44
  %nx_dev_init_timeout10.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 104
  %172 = ptrtoint ptr %nx_dev_init_timeout10.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %nx_dev_init_timeout10.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.323, ptr noundef %dev.i45, ptr noundef nonnull @.str.321, i32 noundef %173) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp15.i = icmp eq i32 %.pr.i, 2
  br i1 %cmp15.i, label %do.end19.i, label %do.body14.i.cleanup_crit_edge

do.body14.i.cleanup_crit_edge:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end19.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %174 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pdev.i.i, align 8
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %175, i32 0, i32 44
  %176 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %167, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.323, ptr noundef %dev21.i, ptr noundef nonnull @.str.325, i32 noundef %177) #13
  br label %cleanup

if.then7:                                         ; preds = %qla4_8xxx_get_flt_info.exit.if.then7_crit_edge, %qla4_8xxx_get_flt_info.exit.if.then7_crit_edge56
  tail call void @qla4_83xx_get_idc_param(ptr noundef %ha) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.end19.i, %do.body14.i.cleanup_crit_edge, %do.body.i44.cleanup_crit_edge, %qla4_82xx_get_fdt_info.exit.cleanup_crit_edge, %qla4_8xxx_get_flt_info.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_rom_lock_recovery(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 882) #10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry
  %timeout.011.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end6.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %while.body.i.qla4_82xx_rom_lock.exit.thread_crit_edge, label %if.end.i

while.body.i.qla4_82xx_rom_lock.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_rom_lock.exit.thread

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout.011.i)
  %exitcond.i = icmp eq i32 %timeout.011.i, 100
  br i1 %exitcond.i, label %do.end, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %timeout.011.i, 1
  tail call void @msleep(i32 noundef 20) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i.while.body.i_crit_edge, label %if.end6.i.qla4_82xx_rom_lock.exit.thread_crit_edge

if.end6.i.qla4_82xx_rom_lock.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_rom_lock.exit.thread

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

qla4_82xx_rom_lock.exit.thread:                   ; preds = %if.end6.i.qla4_82xx_rom_lock.exit.thread_crit_edge, %while.body.i.qla4_82xx_rom_lock.exit.thread_crit_edge
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323328, i32 noundef 222393152) #10
  br label %if.end

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %qla4_82xx_rom_lock.exit.thread
  %call.i3 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826580) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_8xxx_get_minidump(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %event_string.i = alloca [40 x i8], align 1
  %envp.i = alloca [2 x ptr], align 4
  %r_value.i697.i = alloca i32, align 4
  %r_value.i639.i = alloca i32, align 4
  %data.i640.i = alloca i32, align 4
  %data.i.i = alloca i32, align 4
  %r_value.i547.i = alloca i32, align 4
  %r_value.i505.i = alloca i32, align 4
  %r_value.i484.i = alloca i32, align 4
  %r_value.i438.i = alloca i32, align 4
  %r_value.i400.i = alloca i32, align 4
  %c_value_r.i.i = alloca i32, align 4
  %r_value.i354.i = alloca i32, align 4
  %r_value.i.i.i = alloca i32, align 4
  %r_data.i.i.i = alloca i32, align 4
  %cmd_sts_and_cntrl.i193.i.i.i = alloca i32, align 4
  %cmd_sts_and_cntrl.i.i.i.i = alloca i32, align 4
  %rdmem_dma.i.i.i = alloca i32, align 4
  %dma_desc.i.i.i = alloca %struct.qla4_83xx_pex_dma_descriptor, align 4
  %r_value.i.i = alloca i32, align 4
  %read_value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xenablemd to i32))
  %0 = load i32, ptr @ql4xenablemd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %ha, align 4
  %3 = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true2

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ha, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true2.if.end10_crit_edge

land.lhs.true2.if.end10_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true2
  %fw_dump_skip_size.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 111
  %7 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fw_dump_skip_size.i, align 16
  %fw_dump.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 106
  %8 = ptrtoint ptr %fw_dump.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_dump.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %12 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.155, i32 noundef %13) #13
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %fw_dump_tmplt_hdr.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 109
  %14 = ptrtoint ptr %fw_dump_tmplt_hdr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw_dump_tmplt_hdr.i, align 8
  %fw_dump_tmplt_size.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 110
  %16 = ptrtoint ptr %fw_dump_tmplt_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_dump_tmplt_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %17
  %num_of_entries.i = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %num_of_entries.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_of_entries.i, align 4
  %pdev6.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %20 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev6.i, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev7.i, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.155, ptr noundef %add.ptr.i) #13
  %22 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev6.i, align 8
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev12.i, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.155, i32 noundef %19) #13
  %24 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev6.i, align 8
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %fw_dump_capture_mask.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 108
  %26 = ptrtoint ptr %fw_dump_capture_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_dump_capture_mask.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev17.i, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.155, i32 noundef %27) #13
  %28 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev6.i, align 8
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %fw_dump_size.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 107
  %30 = ptrtoint ptr %fw_dump_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fw_dump_size.i, align 128
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev22.i, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.155, i32 noundef %31, i32 noundef %31) #13
  %call.i = tail call i64 @get_jiffies_64() #10
  %conv.i = trunc i64 %call.i to i32
  %call24.i = tail call i32 @jiffies_to_msecs(i32 noundef %conv.i) #10
  %div.i = udiv i32 %call24.i, 1000
  %driver_timestamp.i = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, ptr %15, i32 0, i32 6
  %32 = ptrtoint ptr %driver_timestamp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div.i, ptr %driver_timestamp.i, align 4
  %33 = ptrtoint ptr %fw_dump_tmplt_hdr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw_dump_tmplt_hdr.i, align 8
  %first_entry_offset.i = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, ptr %15, i32 0, i32 1
  %35 = ptrtoint ptr %first_entry_offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %first_entry_offset.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %34, i32 %36
  %37 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev6.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device.i.i, align 2
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.342)
  switch i16 %40, label %if.end.i.if.end33.i_crit_edge [
    i16 -32718, label %if.end.i.if.then31.i_crit_edge
    i16 -32702, label %if.end.i.if.then31.i_crit_edge351
  ]

if.end.i.if.then31.i_crit_edge351:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

if.end.i.if.then31.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31.i

if.end.i.if.end33.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.end.i.if.then31.i_crit_edge, %if.end.i.if.then31.i_crit_edge351
  %func_num.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %42 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %func_num.i, align 8
  %idxprom.i = zext i16 %43 to i32
  %arrayidx.i = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %15, i32 0, i32 14, i32 %idxprom.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %arrayidx32.i = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %15, i32 0, i32 12, i32 3
  %46 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx32.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %if.end.i.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp830.i = icmp sgt i32 %19, 0
  br i1 %cmp830.i, label %for.body.lr.ph.i, label %if.end33.i.for.end.i_crit_edge

if.end33.i.for.end.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end33.i
  %isp_ops.i700.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %host_no.i720.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %nx_pcibase.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %47 = getelementptr inbounds i8, ptr %dma_desc.i.i.i, i32 4
  %dma_desc_cmd35.i.i.i = getelementptr inbounds %struct.anon.214, ptr %dma_desc.i.i.i, i32 0, i32 2
  %dma_bus_addr.i.i.i = getelementptr inbounds %struct.qla4_83xx_pex_dma_descriptor, ptr %dma_desc.i.i.i, i32 0, i32 2
  %src_addr.i.i.i = getelementptr inbounds %struct.qla4_83xx_pex_dma_descriptor, ptr %dma_desc.i.i.i, i32 0, i32 1
  %hw_lock.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 95
  br label %for.body.i

for.body.i:                                       ; preds = %skip_nxt_entry.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rval.0866.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %rval.2.i, %skip_nxt_entry.i.for.body.i_crit_edge ]
  %i.0852.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %skip_nxt_entry.i.for.body.i_crit_edge ]
  %data_collected.0851.i = phi i32 [ %17, %for.body.lr.ph.i ], [ %data_collected.1.i, %skip_nxt_entry.i.for.body.i_crit_edge ]
  %entry_hdr.0835.i = phi ptr [ %add.ptr26.i, %for.body.lr.ph.i ], [ %add.ptr152.i, %skip_nxt_entry.i.for.body.i_crit_edge ]
  %data_ptr.0831.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %data_ptr.6.i, %skip_nxt_entry.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %fw_dump_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_dump_size.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %data_collected.0851.i)
  %cmp36.i = icmp ult i32 %49, %data_collected.0851.i
  br i1 %cmp36.i, label %do.end41.i, label %if.end45.i

do.end41.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev6.i, align 8
  %dev43.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev43.i, ptr noundef nonnull @.str.169, i32 noundef %data_collected.0851.i, i32 noundef %49) #13
  br label %qla4_8xxx_collect_md_data.exit

if.end45.i:                                       ; preds = %for.body.i
  %d_ctrl.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3
  %52 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %d_ctrl.i, align 4
  %conv46.i = zext i8 %53 to i32
  %54 = ptrtoint ptr %fw_dump_capture_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fw_dump_capture_mask.i, align 4
  %and.i = and i32 %55, %conv46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool48.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %do.body54.i

if.then49.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %driver_flags.i, align 1
  %58 = or i8 %57, -128
  store i8 %58, ptr %driver_flags.i, align 1
  br label %skip_nxt_entry.i

do.body54.i:                                      ; preds = %if.end45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %59 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp55.i = icmp eq i32 %59, 2
  br i1 %cmp55.i, label %do.end60.i, label %do.body54.i.do.end66.i_crit_edge

do.body54.i.do.end66.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66.i

do.end60.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev6.i, align 8
  %dev62.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %sub.i = sub i32 %49, %data_collected.0851.i
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev62.i, ptr noundef nonnull @.str.172, i32 noundef %data_collected.0851.i, i32 noundef %sub.i) #13
  br label %do.end66.i

do.end66.i:                                       ; preds = %do.end60.i, %do.body54.i.do.end66.i_crit_edge
  %62 = ptrtoint ptr %entry_hdr.0835.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %entry_hdr.0835.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.343)
  switch i32 %63, label %sw.default.i [
    i32 255, label %sw.bb.i
    i32 98, label %sw.bb67.i
    i32 1, label %sw.bb73.i
    i32 72, label %sw.bb74.i
    i32 4, label %do.end66.i.sw.bb80.i_crit_edge
    i32 71, label %do.end66.i.sw.bb80.i_crit_edge352
    i32 21, label %do.end66.i.sw.bb97.i_crit_edge
    i32 22, label %do.end66.i.sw.bb97.i_crit_edge353
    i32 23, label %do.end66.i.sw.bb97.i_crit_edge354
    i32 24, label %do.end66.i.sw.bb97.i_crit_edge355
    i32 8, label %do.end66.i.sw.bb103.i_crit_edge
    i32 9, label %do.end66.i.sw.bb103.i_crit_edge356
    i32 11, label %do.end66.i.sw.bb103.i_crit_edge357
    i32 12, label %do.end66.i.sw.bb103.i_crit_edge358
    i32 6, label %sw.bb104.i
    i32 2, label %sw.bb105.i
    i32 3, label %sw.bb106.i
    i32 35, label %sw.bb107.i
    i32 36, label %sw.bb117.i
    i32 37, label %sw.bb122.i
    i32 38, label %do.end66.i.sw.epilog.i_crit_edge
    i32 39, label %do.end66.i.sw.epilog.i_crit_edge359
    i32 40, label %sw.bb144.i
  ]

do.end66.i.sw.epilog.i_crit_edge359:              ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end66.i.sw.epilog.i_crit_edge:                 ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end66.i.sw.bb103.i_crit_edge358:               ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103.i

do.end66.i.sw.bb103.i_crit_edge357:               ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103.i

do.end66.i.sw.bb103.i_crit_edge356:               ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103.i

do.end66.i.sw.bb103.i_crit_edge:                  ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103.i

do.end66.i.sw.bb97.i_crit_edge355:                ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb97.i

do.end66.i.sw.bb97.i_crit_edge354:                ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb97.i

do.end66.i.sw.bb97.i_crit_edge353:                ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb97.i

do.end66.i.sw.bb97.i_crit_edge:                   ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb97.i

do.end66.i.sw.bb80.i_crit_edge352:                ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb80.i

do.end66.i.sw.bb80.i_crit_edge:                   ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb80.i

sw.bb.i:                                          ; preds = %do.end66.i
  %driver_flags.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %driver_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %driver_flags.i.i, align 1
  %67 = or i8 %66, -128
  store i8 %67, ptr %driver_flags.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %68 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp.i330.i = icmp eq i32 %68, 2
  br i1 %cmp.i330.i, label %do.end.i.i, label %sw.bb.i.qla4_8xxx_mark_entry_skipped.exit.i_crit_edge

sw.bb.i.qla4_8xxx_mark_entry_skipped.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_mark_entry_skipped.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev6.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %71 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %host_no.i720.i, align 4
  %73 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %d_ctrl.i, align 4
  %conv5.i.i = zext i8 %74 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i.i, ptr noundef nonnull @.str.180, i32 noundef %72, i32 noundef %i.0852.i, i32 noundef 255, i32 noundef %conv5.i.i) #13
  br label %qla4_8xxx_mark_entry_skipped.exit.i

qla4_8xxx_mark_entry_skipped.exit.i:              ; preds = %do.end.i.i, %sw.bb.i.qla4_8xxx_mark_entry_skipped.exit.i_crit_edge
  %entry_capture_size.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %75 = ptrtoint ptr %entry_capture_size.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %entry_capture_size.i.i, align 4
  %77 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add.i.i = add i32 %78, %76
  store i32 %add.i.i, ptr %fw_dump_skip_size.i, align 16
  br label %sw.epilog.i

sw.bb67.i:                                        ; preds = %do.end66.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i.i) #10
  %79 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %read_value.i.i, align 4, !annotation !641
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %80 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp.i332.i = icmp eq i32 %80, 2
  br i1 %cmp.i332.i, label %do.end.i335.i, label %sw.bb67.i.do.end3.i.i_crit_edge

sw.bb67.i.do.end3.i.i_crit_edge:                  ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i.i

do.end.i335.i:                                    ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev6.i, align 8
  %dev.i334.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i334.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183) #13
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i335.i, %sw.bb67.i.do.end3.i.i_crit_edge
  %83 = ptrtoint ptr %fw_dump_tmplt_hdr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fw_dump_tmplt_hdr.i, align 8
  %op_count.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 4
  %85 = ptrtoint ptr %op_count.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %op_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp5266.not.i.i = icmp eq i32 %86, 0
  br i1 %cmp5266.not.i.i, label %do.end3.i.i.do.body159.i.i_crit_edge, label %for.body.lr.ph.i.i

do.end3.i.i.do.body159.i.i_crit_edge:             ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body159.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end3.i.i
  %addr4.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 1
  %87 = ptrtoint ptr %addr4.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr4.i.i, align 4
  %crb_ctrl.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 5
  %value_1.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 6
  %value_2.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 7
  %value_3.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 8
  %poll_timeout.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 2, i32 2
  %state_index_a.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 2, i32 1
  %state_index_v.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 5, i32 1
  %shl.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 5, i32 2
  %shr.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 5, i32 3
  %crb_strd156.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end155.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0270.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end155.i.i.for.body.i.i_crit_edge ]
  %crb_addr.0268.i.i = phi i32 [ %88, %for.body.lr.ph.i.i ], [ %add158.i.i, %if.end155.i.i.for.body.i.i_crit_edge ]
  %rval.0267.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %rval.2.i.i, %if.end155.i.i.for.body.i.i_crit_edge ]
  %89 = ptrtoint ptr %crb_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %crb_ctrl.i.i, align 4
  %conv.i.i = zext i8 %90 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end9.i.i_crit_edge, label %if.then7.i.i

for.body.i.i.if.end9.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i.i = getelementptr inbounds %struct.isp_operations, ptr %92, i32 0, i32 19
  %93 = ptrtoint ptr %wr_reg_indirect.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wr_reg_indirect.i.i, align 4
  %95 = ptrtoint ptr %value_1.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %value_1.i.i, align 4
  %call.i.i = call i32 %94(ptr noundef %ha, i32 noundef %crb_addr.0268.i.i, i32 noundef %96) #10
  %and8.i.i = and i32 %conv.i.i, 254
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %for.body.i.i.if.end9.i.i_crit_edge
  %opcode.0.i.i = phi i32 [ %and8.i.i, %if.then7.i.i ], [ %conv.i.i, %for.body.i.i.if.end9.i.i_crit_edge ]
  %and10.i.i = and i32 %opcode.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end9.i.i.if.end19.i.i_crit_edge, label %if.then12.i.i

if.end9.i.i.if.end19.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

if.then12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i.i = getelementptr inbounds %struct.isp_operations, ptr %98, i32 0, i32 18
  %99 = ptrtoint ptr %rd_reg_indirect.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rd_reg_indirect.i.i, align 4
  %call14.i.i = call i32 %100(ptr noundef %ha, i32 noundef %crb_addr.0268.i.i, ptr noundef nonnull %read_value.i.i) #10
  %101 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect16.i.i = getelementptr inbounds %struct.isp_operations, ptr %102, i32 0, i32 19
  %103 = ptrtoint ptr %wr_reg_indirect16.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wr_reg_indirect16.i.i, align 4
  %105 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %read_value.i.i, align 4
  %call17.i.i = call i32 %104(ptr noundef %ha, i32 noundef %crb_addr.0268.i.i, i32 noundef %106) #10
  %and18.i.i = and i32 %opcode.0.i.i, 253
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then12.i.i, %if.end9.i.i.if.end19.i.i_crit_edge
  %opcode.1.i.i = phi i32 [ %and18.i.i, %if.then12.i.i ], [ %opcode.0.i.i, %if.end9.i.i.if.end19.i.i_crit_edge ]
  %and20.i.i = and i32 %opcode.1.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end19.i.i.if.end36.i.i_crit_edge, label %if.then22.i.i

if.end19.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i.i

if.then22.i.i:                                    ; preds = %if.end19.i.i
  %107 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect24.i.i = getelementptr inbounds %struct.isp_operations, ptr %108, i32 0, i32 18
  %109 = ptrtoint ptr %rd_reg_indirect24.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rd_reg_indirect24.i.i, align 4
  %call25.i.i = call i32 %110(ptr noundef %ha, i32 noundef %crb_addr.0268.i.i, ptr noundef nonnull %read_value.i.i) #10
  %111 = ptrtoint ptr %value_2.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %value_2.i.i, align 4
  %113 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %read_value.i.i, align 4
  %and26.i.i = and i32 %114, %112
  store i32 %and26.i.i, ptr %read_value.i.i, align 4
  %and27.i.i = and i32 %opcode.1.i.i, -5
  %and28.i.i = and i32 %opcode.1.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.then22.i.i.if.end32.i.i_crit_edge, label %if.then30.i.i

if.then22.i.i.if.end32.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i.i

if.then30.i.i:                                    ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %value_3.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %value_3.i.i, align 4
  %or.i.i = or i32 %116, %and26.i.i
  %117 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or.i.i, ptr %read_value.i.i, align 4
  %and31.i.i = and i32 %opcode.1.i.i, -13
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then30.i.i, %if.then22.i.i.if.end32.i.i_crit_edge
  %opcode.2.i.i = phi i32 [ %and31.i.i, %if.then30.i.i ], [ %and27.i.i, %if.then22.i.i.if.end32.i.i_crit_edge ]
  %118 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect34.i.i = getelementptr inbounds %struct.isp_operations, ptr %119, i32 0, i32 19
  %120 = ptrtoint ptr %wr_reg_indirect34.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wr_reg_indirect34.i.i, align 4
  %122 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %read_value.i.i, align 4
  %call35.i.i = call i32 %121(ptr noundef %ha, i32 noundef %crb_addr.0268.i.i, i32 noundef %123) #10
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.end32.i.i, %if.end19.i.i.if.end36.i.i_crit_edge
  %opcode.3.i.i = phi i32 [ %opcode.2.i.i, %if.end32.i.i ], [ %opcode.1.i.i, %if.end19.i.i.if.end36.i.i_crit_edge ]
  %and37.i.i = and i32 %opcode.3.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i)
  %tobool38.not.i.i = icmp eq i32 %and37.i.i, 0
  br i1 %tobool38.not.i.i, label %if.end36.i.i.if.end49.i.i_crit_edge, label %if.then39.i.i

if.end36.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

if.then39.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect41.i.i = getelementptr inbounds %struct.isp_operations, ptr %125, i32 0, i32 18
  %126 = ptrtoint ptr %rd_reg_indirect41.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rd_reg_indirect41.i.i, align 4
  %call42.i.i = call i32 %127(ptr noundef %ha, i32 noundef %crb_addr.0268.i.i, ptr noundef nonnull %read_value.i.i) #10
  %128 = ptrtoint ptr %value_3.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %value_3.i.i, align 4
  %130 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %read_value.i.i, align 4
  %or44.i.i = or i32 %131, %129
  store i32 %or44.i.i, ptr %read_value.i.i, align 4
  %132 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect46.i.i = getelementptr inbounds %struct.isp_operations, ptr %133, i32 0, i32 19
  %134 = ptrtoint ptr %wr_reg_indirect46.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wr_reg_indirect46.i.i, align 4
  %call47.i.i = call i32 %135(ptr noundef %ha, i32 noundef %crb_addr.0268.i.i, i32 noundef %or44.i.i) #10
  %and48.i.i = and i32 %opcode.3.i.i, -9
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then39.i.i, %if.end36.i.i.if.end49.i.i_crit_edge
  %opcode.4.i.i = phi i32 [ %and48.i.i, %if.then39.i.i ], [ %opcode.3.i.i, %if.end36.i.i.if.end49.i.i_crit_edge ]
  %and50.i.i = and i32 %opcode.4.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i.i)
  %tobool51.not.i.i = icmp eq i32 %and50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.end49.i.i.if.end76.i.i_crit_edge, label %if.then52.i.i

if.end49.i.i.if.end76.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i.i

if.then52.i.i:                                    ; preds = %if.end49.i.i
  %136 = ptrtoint ptr %poll_timeout.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %poll_timeout.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %138 = load volatile i32, ptr @jiffies, align 128
  %139 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect55.i.i = getelementptr inbounds %struct.isp_operations, ptr %140, i32 0, i32 18
  %141 = ptrtoint ptr %rd_reg_indirect55.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rd_reg_indirect55.i.i, align 4
  %call56.i.i = call i32 %142(ptr noundef %ha, i32 noundef %crb_addr.0268.i.i, ptr noundef nonnull %read_value.i.i) #10
  %143 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %read_value.i.i, align 4
  %145 = ptrtoint ptr %value_2.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %value_2.i.i, align 4
  %and59263.i.i = and i32 %146, %144
  %147 = ptrtoint ptr %value_1.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %value_1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and59263.i.i, i32 %148)
  %cmp61264.i.i = icmp eq i32 %and59263.i.i, %148
  br i1 %cmp61264.i.i, label %if.then52.i.i.do.end74.i.i_crit_edge, label %if.else.lr.ph.i.i

if.then52.i.i.do.end74.i.i_crit_edge:             ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74.i.i

if.else.lr.ph.i.i:                                ; preds = %if.then52.i.i
  %conv53.i.i = zext i16 %137 to i32
  %149 = add i32 %138, %conv53.i.i
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.else67.i.i.if.else.i.i_crit_edge, %if.else.lr.ph.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %150 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %150, %149
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp64.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp64.i.i, label %if.else.i.i.do.end74.i.i_crit_edge, label %if.else67.i.i

if.else.i.i.do.end74.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74.i.i

if.else67.i.i:                                    ; preds = %if.else.i.i
  %151 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect69.i.i = getelementptr inbounds %struct.isp_operations, ptr %152, i32 0, i32 18
  %153 = ptrtoint ptr %rd_reg_indirect69.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rd_reg_indirect69.i.i, align 4
  %call70.i.i = call i32 %154(ptr noundef %ha, i32 noundef %crb_addr.0268.i.i, ptr noundef nonnull %read_value.i.i) #10
  %155 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %read_value.i.i, align 4
  %157 = ptrtoint ptr %value_2.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %value_2.i.i, align 4
  %and59.i.i = and i32 %158, %156
  %159 = ptrtoint ptr %value_1.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %value_1.i.i, align 4
  %cmp61.i.i = icmp eq i32 %and59.i.i, %160
  br i1 %cmp61.i.i, label %if.else67.i.i.do.end74.i.i_crit_edge, label %if.else67.i.i.if.else.i.i_crit_edge

if.else67.i.i.if.else.i.i_crit_edge:              ; preds = %if.else67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.else67.i.i.do.end74.i.i_crit_edge:             ; preds = %if.else67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74.i.i

do.end74.i.i:                                     ; preds = %if.else67.i.i.do.end74.i.i_crit_edge, %if.else.i.i.do.end74.i.i_crit_edge, %if.then52.i.i.do.end74.i.i_crit_edge
  %rval.1.i.i = phi i32 [ %rval.0267.i.i, %if.then52.i.i.do.end74.i.i_crit_edge ], [ 1, %if.else.i.i.do.end74.i.i_crit_edge ], [ %rval.0267.i.i, %if.else67.i.i.do.end74.i.i_crit_edge ]
  %and75.i.i = and i32 %opcode.4.i.i, -17
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %do.end74.i.i, %if.end49.i.i.if.end76.i.i_crit_edge
  %opcode.5.i.i = phi i32 [ %and75.i.i, %do.end74.i.i ], [ %opcode.4.i.i, %if.end49.i.i.if.end76.i.i_crit_edge ]
  %rval.2.i.i = phi i32 [ %rval.1.i.i, %do.end74.i.i ], [ %rval.0267.i.i, %if.end49.i.i.if.end76.i.i_crit_edge ]
  %and77.i.i = and i32 %opcode.5.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i.i)
  %tobool78.not.i.i = icmp eq i32 %and77.i.i, 0
  br i1 %tobool78.not.i.i, label %if.end76.i.i.if.end96.i.i_crit_edge, label %if.then79.i.i

if.end76.i.i.if.end96.i.i_crit_edge:              ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i.i

if.then79.i.i:                                    ; preds = %if.end76.i.i
  %161 = ptrtoint ptr %state_index_a.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %state_index_a.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool81.not.i.i = icmp eq i8 %162, 0
  br i1 %tobool81.not.i.i, label %if.then79.i.i.if.end87.i.i_crit_edge, label %if.then82.i.i

if.then79.i.i.if.end87.i.i_crit_edge:             ; preds = %if.then79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i.i

if.then82.i.i:                                    ; preds = %if.then79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv85.i.i = zext i8 %162 to i32
  %arrayidx.i.i = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %84, i32 0, i32 12, i32 %conv85.i.i
  %163 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end87.i.i

if.end87.i.i:                                     ; preds = %if.then82.i.i, %if.then79.i.i.if.end87.i.i_crit_edge
  %addr.0.i.i = phi i32 [ %164, %if.then82.i.i ], [ %crb_addr.0268.i.i, %if.then79.i.i.if.end87.i.i_crit_edge ]
  %165 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect89.i.i = getelementptr inbounds %struct.isp_operations, ptr %166, i32 0, i32 18
  %167 = ptrtoint ptr %rd_reg_indirect89.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rd_reg_indirect89.i.i, align 4
  %call90.i.i = call i32 %168(ptr noundef %ha, i32 noundef %addr.0.i.i, ptr noundef nonnull %read_value.i.i) #10
  %169 = ptrtoint ptr %state_index_v.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %state_index_v.i.i, align 1
  %conv92.i.i = zext i8 %170 to i32
  %171 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %read_value.i.i, align 4
  %arrayidx94.i.i = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %84, i32 0, i32 12, i32 %conv92.i.i
  %173 = ptrtoint ptr %arrayidx94.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %arrayidx94.i.i, align 4
  %and95.i.i = and i32 %opcode.5.i.i, -33
  br label %if.end96.i.i

if.end96.i.i:                                     ; preds = %if.end87.i.i, %if.end76.i.i.if.end96.i.i_crit_edge
  %opcode.6.i.i = phi i32 [ %and95.i.i, %if.end87.i.i ], [ %opcode.5.i.i, %if.end76.i.i.if.end96.i.i_crit_edge ]
  %and97.i.i = and i32 %opcode.6.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i.i)
  %tobool98.not.i.i = icmp eq i32 %and97.i.i, 0
  br i1 %tobool98.not.i.i, label %if.end96.i.i.if.end127.i.i_crit_edge, label %if.then99.i.i

if.end96.i.i.if.end127.i.i_crit_edge:             ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.i.i

if.then99.i.i:                                    ; preds = %if.end96.i.i
  %174 = ptrtoint ptr %state_index_a.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %state_index_a.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool102.not.i.i = icmp eq i8 %175, 0
  br i1 %tobool102.not.i.i, label %if.then99.i.i.if.end110.i.i_crit_edge, label %if.then103.i.i

if.then99.i.i.if.end110.i.i_crit_edge:            ; preds = %if.then99.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110.i.i

if.then103.i.i:                                   ; preds = %if.then99.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv106.i.i = zext i8 %175 to i32
  %arrayidx108.i.i = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %84, i32 0, i32 12, i32 %conv106.i.i
  %176 = ptrtoint ptr %arrayidx108.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx108.i.i, align 4
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %if.then103.i.i, %if.then99.i.i.if.end110.i.i_crit_edge
  %addr.1.i.i = phi i32 [ %177, %if.then103.i.i ], [ %crb_addr.0268.i.i, %if.then99.i.i.if.end110.i.i_crit_edge ]
  %178 = ptrtoint ptr %state_index_v.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %state_index_v.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool113.not.i.i = icmp eq i8 %179, 0
  %conv117.i.i = zext i8 %179 to i32
  %arrayidx119.i.i = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %84, i32 0, i32 12, i32 %conv117.i.i
  %storemerge.in.i.i = select i1 %tobool113.not.i.i, ptr %value_1.i.i, ptr %arrayidx119.i.i
  %180 = ptrtoint ptr %storemerge.in.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %storemerge.i.i = load i32, ptr %storemerge.in.i.i, align 4
  %181 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %storemerge.i.i, ptr %read_value.i.i, align 4
  %182 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect124.i.i = getelementptr inbounds %struct.isp_operations, ptr %183, i32 0, i32 19
  %184 = ptrtoint ptr %wr_reg_indirect124.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wr_reg_indirect124.i.i, align 4
  %call125.i.i = call i32 %185(ptr noundef %ha, i32 noundef %addr.1.i.i, i32 noundef %storemerge.i.i) #10
  %and126.i.i = and i32 %opcode.6.i.i, -65
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %if.end110.i.i, %if.end96.i.i.if.end127.i.i_crit_edge
  %opcode.7.i.i = phi i32 [ %and126.i.i, %if.end110.i.i ], [ %opcode.6.i.i, %if.end96.i.i.if.end127.i.i_crit_edge ]
  %and128.i.i = and i32 %opcode.7.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128.i.i)
  %tobool129.not.i.i = icmp eq i32 %and128.i.i, 0
  br i1 %tobool129.not.i.i, label %if.end127.i.i.if.end155.i.i_crit_edge, label %if.then130.i.i

if.end127.i.i.if.end155.i.i_crit_edge:            ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155.i.i

if.then130.i.i:                                   ; preds = %if.end127.i.i
  %186 = ptrtoint ptr %state_index_v.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %state_index_v.i.i, align 1
  %conv133.i.i = zext i8 %187 to i32
  %arrayidx135.i.i = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %84, i32 0, i32 12, i32 %conv133.i.i
  %188 = ptrtoint ptr %arrayidx135.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx135.i.i, align 4
  %190 = ptrtoint ptr %shl.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %shl.i.i, align 2
  %conv137.i.i = zext i8 %191 to i32
  %shl138.i.i = shl i32 %189, %conv137.i.i
  %192 = ptrtoint ptr %shr.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %shr.i.i, align 1
  %conv140.i.i = zext i8 %193 to i32
  %shr141.i.i = lshr i32 %shl138.i.i, %conv140.i.i
  %194 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %shr141.i.i, ptr %read_value.i.i, align 4
  %195 = ptrtoint ptr %value_2.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %value_2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool143.not.i.i = icmp eq i32 %196, 0
  br i1 %tobool143.not.i.i, label %if.then130.i.i.if.end147.i.i_crit_edge, label %if.then144.i.i

if.then130.i.i.if.end147.i.i_crit_edge:           ; preds = %if.then130.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147.i.i

if.then144.i.i:                                   ; preds = %if.then130.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and146.i.i = and i32 %shr141.i.i, %196
  %197 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %and146.i.i, ptr %read_value.i.i, align 4
  br label %if.end147.i.i

if.end147.i.i:                                    ; preds = %if.then144.i.i, %if.then130.i.i.if.end147.i.i_crit_edge
  %198 = ptrtoint ptr %value_3.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %value_3.i.i, align 4
  %200 = ptrtoint ptr %read_value.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %read_value.i.i, align 4
  %or149.i.i = or i32 %201, %199
  %202 = ptrtoint ptr %value_1.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %value_1.i.i, align 4
  %add151.i.i = add i32 %203, %or149.i.i
  store i32 %add151.i.i, ptr %read_value.i.i, align 4
  %204 = ptrtoint ptr %arrayidx135.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %add151.i.i, ptr %arrayidx135.i.i, align 4
  br label %if.end155.i.i

if.end155.i.i:                                    ; preds = %if.end147.i.i, %if.end127.i.i.if.end155.i.i_crit_edge
  %205 = ptrtoint ptr %crb_strd156.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %crb_strd156.i.i, align 4
  %conv157.i.i = zext i8 %206 to i32
  %add158.i.i = add i32 %crb_addr.0268.i.i, %conv157.i.i
  %inc.i.i = add nuw i32 %i.0270.i.i, 1
  %207 = ptrtoint ptr %op_count.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %op_count.i.i, align 4
  %cmp5.i.i = icmp ult i32 %inc.i.i, %208
  br i1 %cmp5.i.i, label %if.end155.i.i.for.body.i.i_crit_edge, label %if.end155.i.i.do.body159.i.i_crit_edge

if.end155.i.i.do.body159.i.i_crit_edge:           ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body159.i.i

if.end155.i.i.for.body.i.i_crit_edge:             ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.body159.i.i:                                   ; preds = %if.end155.i.i.do.body159.i.i_crit_edge, %do.end3.i.i.do.body159.i.i_crit_edge
  %rval.0.lcssa.i.i = phi i32 [ 0, %do.end3.i.i.do.body159.i.i_crit_edge ], [ %rval.2.i.i, %if.end155.i.i.do.body159.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %209 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %209)
  %cmp160.i.i = icmp eq i32 %209, 2
  br i1 %cmp160.i.i, label %do.end165.i.i, label %do.body159.i.i.qla4_8xxx_minidump_process_control.exit.i_crit_edge

do.body159.i.i.qla4_8xxx_minidump_process_control.exit.i_crit_edge: ; preds = %do.body159.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_control.exit.i

do.end165.i.i:                                    ; preds = %do.body159.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pdev6.i, align 8
  %dev167.i.i = getelementptr inbounds %struct.pci_dev, ptr %211, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev167.i.i, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.183) #13
  br label %qla4_8xxx_minidump_process_control.exit.i

qla4_8xxx_minidump_process_control.exit.i:        ; preds = %do.end165.i.i, %do.body159.i.i.qla4_8xxx_minidump_process_control.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0.lcssa.i.i)
  %cmp69.not.i = icmp eq i32 %rval.0.lcssa.i.i, 0
  br i1 %cmp69.not.i, label %qla4_8xxx_minidump_process_control.exit.i.sw.epilog.i_crit_edge, label %if.then71.i

qla4_8xxx_minidump_process_control.exit.i.sw.epilog.i_crit_edge: ; preds = %qla4_8xxx_minidump_process_control.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then71.i:                                      ; preds = %qla4_8xxx_minidump_process_control.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @qla4_8xxx_mark_entry_skipped(ptr noundef %ha, ptr noundef %entry_hdr.0835.i, i32 noundef %i.0852.i) #10
  br label %do.end

sw.bb73.i:                                        ; preds = %do.end66.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i.i) #10
  %212 = ptrtoint ptr %r_value.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 -1, ptr %r_value.i.i, align 4, !annotation !641
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %213 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %213)
  %cmp.i336.i = icmp eq i32 %213, 2
  br i1 %cmp.i336.i, label %do.end.i339.i, label %sw.bb73.i.do.end3.i342.i_crit_edge

sw.bb73.i.do.end3.i342.i_crit_edge:               ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i342.i

do.end.i339.i:                                    ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #12
  %214 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pdev6.i, align 8
  %dev.i338.i = getelementptr inbounds %struct.pci_dev, ptr %215, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i338.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.187) #13
  br label %do.end3.i342.i

do.end3.i342.i:                                   ; preds = %do.end.i339.i, %sw.bb73.i.do.end3.i342.i_crit_edge
  %crb_strd.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 2
  %216 = ptrtoint ptr %crb_strd.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %crb_strd.i.i, align 4
  %conv.i340.i = zext i8 %217 to i32
  %op_count.i341.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 4
  %218 = ptrtoint ptr %op_count.i341.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %op_count.i341.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp417.not.i.i = icmp eq i32 %219, 0
  br i1 %cmp417.not.i.i, label %do.end3.i342.i.qla4_8xxx_minidump_process_rdcrb.exit.i_crit_edge, label %for.body.lr.ph.i344.i

do.end3.i342.i.qla4_8xxx_minidump_process_rdcrb.exit.i_crit_edge: ; preds = %do.end3.i342.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_rdcrb.exit.i

for.body.lr.ph.i344.i:                            ; preds = %do.end3.i342.i
  %addr.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_crb, ptr %entry_hdr.0835.i, i32 0, i32 1
  %220 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %addr.i.i, align 4
  br label %for.body.i349.i

for.body.i349.i:                                  ; preds = %for.body.i349.i.for.body.i349.i_crit_edge, %for.body.lr.ph.i344.i
  %data_ptr.020.i.i = phi ptr [ %data_ptr.0831.i, %for.body.lr.ph.i344.i ], [ %incdec.ptr6.i.i, %for.body.i349.i.for.body.i349.i_crit_edge ]
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i344.i ], [ %inc.i348.i, %for.body.i349.i.for.body.i349.i_crit_edge ]
  %r_addr.018.i.i = phi i32 [ %221, %for.body.lr.ph.i344.i ], [ %add.i347.i, %for.body.i349.i.for.body.i349.i_crit_edge ]
  %222 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i345.i = getelementptr inbounds %struct.isp_operations, ptr %223, i32 0, i32 18
  %224 = ptrtoint ptr %rd_reg_indirect.i345.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rd_reg_indirect.i345.i, align 4
  %call.i346.i = call i32 %225(ptr noundef %ha, i32 noundef %r_addr.018.i.i, ptr noundef nonnull %r_value.i.i) #10
  %226 = call i32 @llvm.bswap.i32(i32 %r_addr.018.i.i) #10
  %incdec.ptr.i.i = getelementptr i32, ptr %data_ptr.020.i.i, i32 1
  %227 = ptrtoint ptr %data_ptr.020.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %data_ptr.020.i.i, align 4
  %228 = ptrtoint ptr %r_value.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %r_value.i.i, align 4
  %230 = call i32 @llvm.bswap.i32(i32 %229) #10
  %incdec.ptr6.i.i = getelementptr i32, ptr %data_ptr.020.i.i, i32 2
  %231 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %incdec.ptr.i.i, align 4
  %add.i347.i = add i32 %r_addr.018.i.i, %conv.i340.i
  %inc.i348.i = add nuw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i348.i, %219
  br i1 %exitcond.not.i.i, label %for.body.i349.i.qla4_8xxx_minidump_process_rdcrb.exit.i_crit_edge, label %for.body.i349.i.for.body.i349.i_crit_edge

for.body.i349.i.for.body.i349.i_crit_edge:        ; preds = %for.body.i349.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i349.i

for.body.i349.i.qla4_8xxx_minidump_process_rdcrb.exit.i_crit_edge: ; preds = %for.body.i349.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_rdcrb.exit.i

qla4_8xxx_minidump_process_rdcrb.exit.i:          ; preds = %for.body.i349.i.qla4_8xxx_minidump_process_rdcrb.exit.i_crit_edge, %do.end3.i342.i.qla4_8xxx_minidump_process_rdcrb.exit.i_crit_edge
  %data_ptr.0.lcssa.i.i = phi ptr [ %data_ptr.0831.i, %do.end3.i342.i.qla4_8xxx_minidump_process_rdcrb.exit.i_crit_edge ], [ %incdec.ptr6.i.i, %for.body.i349.i.qla4_8xxx_minidump_process_rdcrb.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i.i) #10
  br label %sw.epilog.i

sw.bb74.i:                                        ; preds = %do.end66.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdmem_dma.i.i.i) #10
  %232 = ptrtoint ptr %rdmem_dma.i.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 -1, ptr %rdmem_dma.i.i.i, align 4, !annotation !641
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_desc.i.i.i) #10
  %233 = call ptr @memset(ptr %47, i32 255, i32 44)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %234 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %234)
  %cmp.i.i.i = icmp eq i32 %234, 2
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %sw.bb74.i.do.end3.i.i.i_crit_edge

sw.bb74.i.do.end3.i.i.i_crit_edge:                ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i.i.i

do.end.i.i.i:                                     ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #12
  %235 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pdev6.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %236, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.188) #13
  br label %do.end3.i.i.i

do.end3.i.i.i:                                    ; preds = %do.end.i.i.i, %sw.bb74.i.do.end3.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i.i.i.i) #10
  %237 = ptrtoint ptr %cmd_sts_and_cntrl.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %cmd_sts_and_cntrl.i.i.i.i, align 4
  %238 = ptrtoint ptr %fw_dump_tmplt_hdr.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %fw_dump_tmplt_hdr.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %239, i32 0, i32 12, i32 8
  %240 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %mul.i.i.i.i = shl i32 %241, 16
  %242 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %243, i32 0, i32 18
  %244 = ptrtoint ptr %rd_reg_indirect.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rd_reg_indirect.i.i.i.i, align 4
  %246 = add i32 %mul.i.i.i.i, 1999765512
  %call.i.i.i.i = call i32 %245(ptr noundef %ha, i32 noundef %246, ptr noundef nonnull %cmd_sts_and_cntrl.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %qla4_83xx_check_dma_engine_state.exit.i.i.i, label %qla4_83xx_check_dma_engine_state.exit.thread.i.i.i

qla4_83xx_check_dma_engine_state.exit.thread.i.i.i: ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i.i.i.i) #10
  br label %do.body6.i.i.i

qla4_83xx_check_dma_engine_state.exit.i.i.i:      ; preds = %do.end3.i.i.i
  %247 = ptrtoint ptr %cmd_sts_and_cntrl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %cmd_sts_and_cntrl.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp4.not.i.i.i = icmp slt i32 %248, 0
  br i1 %cmp4.not.i.i.i, label %if.end17.i.i.i, label %qla4_83xx_check_dma_engine_state.exit.i.i.i.do.body6.i.i.i_crit_edge

qla4_83xx_check_dma_engine_state.exit.i.i.i.do.body6.i.i.i_crit_edge: ; preds = %qla4_83xx_check_dma_engine_state.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i.i

do.body6.i.i.i:                                   ; preds = %qla4_83xx_check_dma_engine_state.exit.i.i.i.do.body6.i.i.i_crit_edge, %qla4_83xx_check_dma_engine_state.exit.thread.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %249 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %249)
  %cmp7.i.i.i = icmp eq i32 %249, 2
  br i1 %cmp7.i.i.i, label %do.body6.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge, label %do.body6.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i_crit_edge

do.body6.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i_crit_edge: ; preds = %do.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i

do.body6.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge: ; preds = %do.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i

if.end17.i.i.i:                                   ; preds = %qla4_83xx_check_dma_engine_state.exit.i.i.i
  %250 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %pdev6.i, align 8
  %dev19.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %251, i32 0, i32 44
  %call.i191.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev19.i.i.i, i32 noundef 16384, ptr noundef nonnull %rdmem_dma.i.i.i, i32 noundef 3264, i32 noundef 0) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i191.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.body22.i.i.i, label %if.end33.i.i.i

do.body22.i.i.i:                                  ; preds = %if.end17.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %252 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %252)
  %cmp23.i.i.i = icmp eq i32 %252, 2
  br i1 %cmp23.i.i.i, label %do.body22.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge, label %do.body22.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i_crit_edge

do.body22.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i_crit_edge: ; preds = %do.body22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i

do.body22.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge: ; preds = %do.body22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i

if.end33.i.i.i:                                   ; preds = %if.end17.i.i.i
  %dma_desc_cmd.i.i.i = getelementptr inbounds %struct.qla4_83xx_minidump_entry_rdmem_pex_dma, ptr %entry_hdr.0835.i, i32 0, i32 2
  %253 = ptrtoint ptr %dma_desc_cmd.i.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %dma_desc_cmd.i.i.i, align 4
  %255 = and i16 %254, -241
  %256 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %pdev6.i, align 8
  %devfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %257, i32 0, i32 6
  %258 = ptrtoint ptr %devfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %devfn.i.i.i, align 4
  %.tr.i.i.i = trunc i32 %259 to i16
  %260 = shl i16 %.tr.i.i.i, 4
  %261 = and i16 %260, 112
  %conv42.i.i.i = or i16 %261, %255
  %262 = ptrtoint ptr %dma_desc_cmd35.i.i.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv42.i.i.i, ptr %dma_desc_cmd35.i.i.i, align 2
  %263 = ptrtoint ptr %rdmem_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %rdmem_dma.i.i.i, align 4
  %conv43.i.i.i = zext i32 %264 to i64
  %265 = ptrtoint ptr %dma_bus_addr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %265, i32 8)
  store i64 %conv43.i.i.i, ptr %dma_bus_addr.i.i.i, align 4
  %read_data_size.i.i.i = getelementptr inbounds %struct.qla4_83xx_minidump_entry_rdmem_pex_dma, ptr %entry_hdr.0835.i, i32 0, i32 7
  %266 = ptrtoint ptr %read_data_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %read_data_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %cmp44251.not.i.i.i = icmp eq i32 %267, 0
  br i1 %cmp44251.not.i.i.i, label %if.end33.i.i.i.do.body122.i.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.end33.i.i.i.do.body122.i.i.i_crit_edge:        ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body122.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end33.i.i.i
  %read_addr.i.i.i = getelementptr inbounds %struct.qla4_83xx_minidump_entry_rdmem_pex_dma, ptr %entry_hdr.0835.i, i32 0, i32 6
  %desc_card_addr.i.i.i = getelementptr inbounds %struct.qla4_83xx_minidump_entry_rdmem_pex_dma, ptr %entry_hdr.0835.i, i32 0, i32 1
  %start_dma_cmd.i.i.i.i = getelementptr inbounds %struct.qla4_83xx_minidump_entry_rdmem_pex_dma, ptr %entry_hdr.0835.i, i32 0, i32 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end120.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %268 = phi i32 [ %267, %while.body.lr.ph.i.i.i ], [ %326, %if.end120.i.i.i.while.body.i.i.i_crit_edge ]
  %rdmem_buffer.0254.i.i.i = phi ptr [ %call.i191.i.i.i, %while.body.lr.ph.i.i.i ], [ %rdmem_buffer.1.i.i.i, %if.end120.i.i.i.while.body.i.i.i_crit_edge ]
  %data_ptr.0253.i.i.i = phi ptr [ %data_ptr.0831.i, %while.body.lr.ph.i.i.i ], [ %add.ptr.i.i.i, %if.end120.i.i.i.while.body.i.i.i_crit_edge ]
  %read_size.0252.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %add121.i.i.i, %if.end120.i.i.i.while.body.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %268, %read_size.0252.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %sub.i.i.i)
  %cmp47.i.i.i = icmp ugt i32 %sub.i.i.i, 16383
  br i1 %cmp47.i.i.i, label %while.body.i.i.i.if.end77.i.i.i_crit_edge, label %if.else.i.i.i

while.body.i.i.i.if.end77.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  %tobool52.not.i.i.i = icmp eq ptr %rdmem_buffer.0254.i.i.i, null
  br i1 %tobool52.not.i.i.i, label %if.else.i.i.i.if.end56.i.i.i_crit_edge, label %if.then53.i.i.i

if.else.i.i.i.if.end56.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i.i.i

if.then53.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %269 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %pdev6.i, align 8
  %dev55.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %270, i32 0, i32 44
  %271 = ptrtoint ptr %rdmem_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %rdmem_dma.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev55.i.i.i, i32 noundef 16384, ptr noundef nonnull %rdmem_buffer.0254.i.i.i, i32 noundef %272, i32 noundef 0) #10
  br label %if.end56.i.i.i

if.end56.i.i.i:                                   ; preds = %if.then53.i.i.i, %if.else.i.i.i.if.end56.i.i.i_crit_edge
  %273 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %pdev6.i, align 8
  %dev58.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %274, i32 0, i32 44
  %call.i192.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev58.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull %rdmem_dma.i.i.i, i32 noundef 3264, i32 noundef 0) #10
  %tobool60.not.i.i.i = icmp eq ptr %call.i192.i.i.i, null
  br i1 %tobool60.not.i.i.i, label %do.body62.i.i.i, label %if.end74.i.i.i

do.body62.i.i.i:                                  ; preds = %if.end56.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %275 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %275)
  %cmp63.i.i.i = icmp eq i32 %275, 2
  br i1 %cmp63.i.i.i, label %do.body62.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge, label %do.body62.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i_crit_edge

do.body62.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i_crit_edge: ; preds = %do.body62.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i

do.body62.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge: ; preds = %do.body62.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i

if.end74.i.i.i:                                   ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %276 = ptrtoint ptr %rdmem_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %rdmem_dma.i.i.i, align 4
  %conv75.i.i.i = zext i32 %277 to i64
  %278 = ptrtoint ptr %dma_bus_addr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %278, i32 8)
  store i64 %conv75.i.i.i, ptr %dma_bus_addr.i.i.i, align 4
  br label %if.end77.i.i.i

if.end77.i.i.i:                                   ; preds = %if.end74.i.i.i, %while.body.i.i.i.if.end77.i.i.i_crit_edge
  %size.1.i.i.i = phi i32 [ %sub.i.i.i, %if.end74.i.i.i ], [ 16384, %while.body.i.i.i.if.end77.i.i.i_crit_edge ]
  %rdmem_buffer.1.i.i.i = phi ptr [ %call.i192.i.i.i, %if.end74.i.i.i ], [ %rdmem_buffer.0254.i.i.i, %while.body.i.i.i.if.end77.i.i.i_crit_edge ]
  %279 = ptrtoint ptr %read_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %read_addr.i.i.i, align 4
  %add.i.i.i = add i32 %280, %read_size.0252.i.i.i
  %conv78.i.i.i = zext i32 %add.i.i.i to i64
  %281 = ptrtoint ptr %src_addr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %281, i32 8)
  store i64 %conv78.i.i.i, ptr %src_addr.i.i.i, align 4
  %282 = ptrtoint ptr %dma_desc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %size.1.i.i.i, ptr %dma_desc.i.i.i, align 4
  %283 = ptrtoint ptr %desc_card_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %desc_card_addr.i.i.i, align 4
  %conv81.i.i.i = zext i32 %284 to i64
  %call82.i.i.i = call i32 @qla4_8xxx_ms_mem_write_128b(ptr noundef %ha, i64 noundef %conv81.i.i.i, ptr noundef nonnull %dma_desc.i.i.i, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i.i.i)
  %cmp83.not.i.i.i = icmp eq i32 %call82.i.i.i, 0
  br i1 %cmp83.not.i.i.i, label %do.body92.i.i.i, label %do.end88.i.i.i

do.end88.i.i.i:                                   ; preds = %if.end77.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %285 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pdev6.i, align 8
  %dev90.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %286, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev90.i.i.i, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.188) #13
  br label %error_exit.i.i.i

do.body92.i.i.i:                                  ; preds = %if.end77.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %287 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %287)
  %cmp93.i.i.i = icmp eq i32 %287, 2
  br i1 %cmp93.i.i.i, label %do.end98.i.i.i, label %do.body92.i.i.i.do.end103.i.i.i_crit_edge

do.body92.i.i.i.do.end103.i.i.i_crit_edge:        ; preds = %do.body92.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end103.i.i.i

do.end98.i.i.i:                                   ; preds = %do.body92.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %288 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %pdev6.i, align 8
  %dev100.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %289, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev100.i.i.i, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.188, i32 noundef %size.1.i.i.i) #13
  br label %do.end103.i.i.i

do.end103.i.i.i:                                  ; preds = %do.end98.i.i.i, %do.body92.i.i.i.do.end103.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i193.i.i.i) #10
  %290 = ptrtoint ptr %cmd_sts_and_cntrl.i193.i.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 0, ptr %cmd_sts_and_cntrl.i193.i.i.i, align 4
  %291 = ptrtoint ptr %fw_dump_tmplt_hdr.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %fw_dump_tmplt_hdr.i, align 8
  %arrayidx.i195.i.i.i = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %292, i32 0, i32 12, i32 8
  %293 = ptrtoint ptr %arrayidx.i195.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx.i195.i.i.i, align 4
  %mul.i196.i.i.i = shl i32 %294, 16
  %add.i.i.i.i = add i32 %mul.i196.i.i.i, 1999765504
  %295 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %296, i32 0, i32 19
  %297 = ptrtoint ptr %wr_reg_indirect.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %wr_reg_indirect.i.i.i.i, align 4
  %299 = ptrtoint ptr %desc_card_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %desc_card_addr.i.i.i, align 4
  %call.i198.i.i.i = call i32 %298(ptr noundef %ha, i32 noundef %add.i.i.i.i, i32 noundef %300) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198.i.i.i)
  %tobool.not.i199.i.i.i = icmp eq i32 %call.i198.i.i.i, 0
  br i1 %tobool.not.i199.i.i.i, label %if.end.i200.i.i.i, label %do.end103.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge

do.end103.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge: ; preds = %do.end103.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_83xx_start_pex_dma.exit.thread.i.i.i

if.end.i200.i.i.i:                                ; preds = %do.end103.i.i.i
  %301 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect4.i.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %302, i32 0, i32 19
  %303 = ptrtoint ptr %wr_reg_indirect4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %wr_reg_indirect4.i.i.i.i, align 4
  %add5.i.i.i.i = or i32 %add.i.i.i.i, 4
  %call7.i.i.i.i = call i32 %304(ptr noundef %ha, i32 noundef %add5.i.i.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq i32 %call7.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i, label %if.end10.i.i.i.i, label %if.end.i200.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge

if.end.i200.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge: ; preds = %if.end.i200.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_83xx_start_pex_dma.exit.thread.i.i.i

if.end10.i.i.i.i:                                 ; preds = %if.end.i200.i.i.i
  %305 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect12.i.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %306, i32 0, i32 19
  %307 = ptrtoint ptr %wr_reg_indirect12.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %wr_reg_indirect12.i.i.i.i, align 4
  %309 = or i32 %add.i.i.i.i, 8
  %310 = ptrtoint ptr %start_dma_cmd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %start_dma_cmd.i.i.i.i, align 4
  %call15.i.i.i.i = call i32 %308(ptr noundef %ha, i32 noundef %309, i32 noundef %311) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i.i)
  %tobool16.not.i.i.i.i = icmp eq i32 %call15.i.i.i.i, 0
  br i1 %tobool16.not.i.i.i.i, label %if.end10.i.i.i.i.for.body.i.i.i.i_crit_edge, label %if.end10.i.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge

if.end10.i.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge: ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_83xx_start_pex_dma.exit.thread.i.i.i

if.end10.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %if.end10.i.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.else.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end10.i.i.i.i.for.body.i.i.i.i_crit_edge
  %wait.054.i.i.i.i = phi i32 [ %inc.i.i.i.i, %if.else.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end10.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %312 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i201.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %313, i32 0, i32 18
  %314 = ptrtoint ptr %rd_reg_indirect.i201.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %rd_reg_indirect.i201.i.i.i, align 4
  %call23.i.i.i.i = call i32 %315(ptr noundef %ha, i32 noundef %309, ptr noundef nonnull %cmd_sts_and_cntrl.i193.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i.i)
  %tobool24.not.i.i.i.i = icmp eq i32 %call23.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i, label %if.end26.i.i.i.i, label %for.body.i.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge

for.body.i.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_83xx_start_pex_dma.exit.thread.i.i.i

if.end26.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %316 = ptrtoint ptr %cmd_sts_and_cntrl.i193.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %cmd_sts_and_cntrl.i193.i.i.i, align 4
  %and.i.i.i.i = and i32 %317, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp27.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp27.i.i.i.i, label %qla4_83xx_start_pex_dma.exit.i.i.i, label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end26.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %318(i32 noundef 2147480) #10
  %inc.i.i.i.i = add nuw nsw i32 %wait.054.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 10000
  br i1 %exitcond.not.i.i.i.i, label %qla4_83xx_start_pex_dma.exit.thread207.i.i.i, label %if.else.i.i.i.i.for.body.i.i.i.i_crit_edge

if.else.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

qla4_83xx_start_pex_dma.exit.thread207.i.i.i:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i193.i.i.i) #10
  br label %do.body108.i.i.i

qla4_83xx_start_pex_dma.exit.thread.i.i.i:        ; preds = %for.body.i.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge, %if.end10.i.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge, %if.end.i200.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge, %do.end103.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge
  %rval.2.i.ph.i.i.i = phi i32 [ %call23.i.i.i.i, %for.body.i.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge ], [ %call15.i.i.i.i, %if.end10.i.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i200.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge ], [ %call.i198.i.i.i, %do.end103.i.i.i.qla4_83xx_start_pex_dma.exit.thread.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i193.i.i.i) #10
  br label %do.body108.i.i.i

qla4_83xx_start_pex_dma.exit.i.i.i:               ; preds = %if.end26.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %wait.054.i.i.i.i)
  %cmp31.i.i.i.i = icmp ult i32 %wait.054.i.i.i.i, 10000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_sts_and_cntrl.i193.i.i.i) #10
  br i1 %cmp31.i.i.i.i, label %if.end120.i.i.i, label %qla4_83xx_start_pex_dma.exit.i.i.i.do.body108.i.i.i_crit_edge

qla4_83xx_start_pex_dma.exit.i.i.i.do.body108.i.i.i_crit_edge: ; preds = %qla4_83xx_start_pex_dma.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body108.i.i.i

do.body108.i.i.i:                                 ; preds = %qla4_83xx_start_pex_dma.exit.i.i.i.do.body108.i.i.i_crit_edge, %qla4_83xx_start_pex_dma.exit.thread.i.i.i, %qla4_83xx_start_pex_dma.exit.thread207.i.i.i
  %rval.2.i206.i.i.i = phi i32 [ %rval.2.i.ph.i.i.i, %qla4_83xx_start_pex_dma.exit.thread.i.i.i ], [ 1, %qla4_83xx_start_pex_dma.exit.thread207.i.i.i ], [ 1, %qla4_83xx_start_pex_dma.exit.i.i.i.do.body108.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %319 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %319)
  %cmp109.i.i.i = icmp eq i32 %319, 2
  br i1 %cmp109.i.i.i, label %do.end114.i.i.i, label %do.body108.i.i.i.error_exit.i.i.i_crit_edge

do.body108.i.i.i.error_exit.i.i.i_crit_edge:      ; preds = %do.body108.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_exit.i.i.i

do.end114.i.i.i:                                  ; preds = %do.body108.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %320 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %pdev6.i, align 8
  %dev116.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %321, i32 0, i32 44
  %322 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %host_no.i720.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev116.i.i.i, ptr noundef nonnull @.str.204, i32 noundef %323, i32 noundef %rval.2.i206.i.i.i) #13
  br label %error_exit.i.i.i

if.end120.i.i.i:                                  ; preds = %qla4_83xx_start_pex_dma.exit.i.i.i
  %324 = call ptr @memcpy(ptr %data_ptr.0253.i.i.i, ptr %rdmem_buffer.1.i.i.i, i32 %size.1.i.i.i)
  %add.ptr.i.i.i = getelementptr i8, ptr %data_ptr.0253.i.i.i, i32 %size.1.i.i.i
  %add121.i.i.i = add i32 %size.1.i.i.i, %read_size.0252.i.i.i
  %325 = ptrtoint ptr %read_data_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %read_data_size.i.i.i, align 4
  %cmp44.i.i.i = icmp ugt i32 %326, %add121.i.i.i
  br i1 %cmp44.i.i.i, label %if.end120.i.i.i.while.body.i.i.i_crit_edge, label %if.end120.i.i.i.do.body122.i.i.i_crit_edge

if.end120.i.i.i.do.body122.i.i.i_crit_edge:       ; preds = %if.end120.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body122.i.i.i

if.end120.i.i.i.while.body.i.i.i_crit_edge:       ; preds = %if.end120.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

do.body122.i.i.i:                                 ; preds = %if.end120.i.i.i.do.body122.i.i.i_crit_edge, %if.end33.i.i.i.do.body122.i.i.i_crit_edge
  %size.0.lcssa.i.i.i = phi i32 [ 0, %if.end33.i.i.i.do.body122.i.i.i_crit_edge ], [ %size.1.i.i.i, %if.end120.i.i.i.do.body122.i.i.i_crit_edge ]
  %data_ptr.0.lcssa.i.i.i = phi ptr [ %data_ptr.0831.i, %if.end33.i.i.i.do.body122.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.end120.i.i.i.do.body122.i.i.i_crit_edge ]
  %rdmem_buffer.0.lcssa.i.i.i = phi ptr [ %call.i191.i.i.i, %if.end33.i.i.i.do.body122.i.i.i_crit_edge ], [ %rdmem_buffer.1.i.i.i, %if.end120.i.i.i.do.body122.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %327 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %327)
  %cmp123.i.i.i = icmp eq i32 %327, 2
  br i1 %cmp123.i.i.i, label %do.end128.i.i.i, label %do.body122.i.i.i.error_exit.i.i.i_crit_edge

do.body122.i.i.i.error_exit.i.i.i_crit_edge:      ; preds = %do.body122.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_exit.i.i.i

do.end128.i.i.i:                                  ; preds = %do.body122.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %328 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %pdev6.i, align 8
  %dev130.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %329, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev130.i.i.i, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.188) #13
  br label %error_exit.i.i.i

error_exit.i.i.i:                                 ; preds = %do.end128.i.i.i, %do.body122.i.i.i.error_exit.i.i.i_crit_edge, %do.end114.i.i.i, %do.body108.i.i.i.error_exit.i.i.i_crit_edge, %do.end88.i.i.i
  %data_ptr.0.i.i = phi ptr [ %data_ptr.0831.i, %do.end114.i.i.i ], [ %data_ptr.0831.i, %do.body108.i.i.i.error_exit.i.i.i_crit_edge ], [ %data_ptr.0831.i, %do.end88.i.i.i ], [ %data_ptr.0.lcssa.i.i.i, %do.end128.i.i.i ], [ %data_ptr.0.lcssa.i.i.i, %do.body122.i.i.i.error_exit.i.i.i_crit_edge ]
  %rval.1.i.i.i = phi i32 [ %rval.2.i206.i.i.i, %do.end114.i.i.i ], [ %rval.2.i206.i.i.i, %do.body108.i.i.i.error_exit.i.i.i_crit_edge ], [ 1, %do.end88.i.i.i ], [ 0, %do.end128.i.i.i ], [ 0, %do.body122.i.i.i.error_exit.i.i.i_crit_edge ]
  %size.2.i.i.i = phi i32 [ %size.1.i.i.i, %do.end114.i.i.i ], [ %size.1.i.i.i, %do.body108.i.i.i.error_exit.i.i.i_crit_edge ], [ %size.1.i.i.i, %do.end88.i.i.i ], [ %size.0.lcssa.i.i.i, %do.end128.i.i.i ], [ %size.0.lcssa.i.i.i, %do.body122.i.i.i.error_exit.i.i.i_crit_edge ]
  %rdmem_buffer.2.i.i.i = phi ptr [ %rdmem_buffer.1.i.i.i, %do.end114.i.i.i ], [ %rdmem_buffer.1.i.i.i, %do.body108.i.i.i.error_exit.i.i.i_crit_edge ], [ %rdmem_buffer.1.i.i.i, %do.end88.i.i.i ], [ %rdmem_buffer.0.lcssa.i.i.i, %do.end128.i.i.i ], [ %rdmem_buffer.0.lcssa.i.i.i, %do.body122.i.i.i.error_exit.i.i.i_crit_edge ]
  %tobool134.not.i.i.i = icmp eq ptr %rdmem_buffer.2.i.i.i, null
  br i1 %tobool134.not.i.i.i, label %error_exit.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.i.i_crit_edge, label %if.then135.i.i.i

error_exit.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.i.i_crit_edge: ; preds = %error_exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_pex_dma_read.exit.i.i

if.then135.i.i.i:                                 ; preds = %error_exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %330 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %pdev6.i, align 8
  %dev137.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %331, i32 0, i32 44
  %332 = ptrtoint ptr %rdmem_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %rdmem_dma.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev137.i.i.i, i32 noundef %size.2.i.i.i, ptr noundef nonnull %rdmem_buffer.2.i.i.i, i32 noundef %333, i32 noundef 0) #10
  br label %qla4_8xxx_minidump_pex_dma_read.exit.i.i

qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i: ; preds = %do.body62.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge, %do.body22.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge, %do.body6.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge
  %.str.190.sink.i.i = phi ptr [ @.str.193, %do.body22.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge ], [ @.str.193, %do.body62.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge ], [ @.str.190, %do.body6.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i_crit_edge ]
  %334 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %pdev6.i, align 8
  %dev13.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %335, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev13.i.i.i, ptr noundef nonnull %.str.190.sink.i.i, ptr noundef nonnull @.str.188) #13
  br label %qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i

qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i:  ; preds = %qla4_8xxx_minidump_pex_dma_read.exit.thread.sink.split.i.i, %do.body62.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i_crit_edge, %do.body22.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i_crit_edge, %do.body6.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_desc.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdmem_dma.i.i.i) #10
  br label %if.then.i.i

qla4_8xxx_minidump_pex_dma_read.exit.i.i:         ; preds = %if.then135.i.i.i, %error_exit.i.i.i.qla4_8xxx_minidump_pex_dma_read.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_desc.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdmem_dma.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.1.i.i.i)
  %cmp.not.i.i = icmp eq i32 %rval.1.i.i.i, 0
  br i1 %cmp.not.i.i, label %qla4_8xxx_minidump_pex_dma_read.exit.i.i.sw.epilog.i_crit_edge, label %qla4_8xxx_minidump_pex_dma_read.exit.i.i.if.then.i.i_crit_edge

qla4_8xxx_minidump_pex_dma_read.exit.i.i.if.then.i.i_crit_edge: ; preds = %qla4_8xxx_minidump_pex_dma_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

qla4_8xxx_minidump_pex_dma_read.exit.i.i.sw.epilog.i_crit_edge: ; preds = %qla4_8xxx_minidump_pex_dma_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then.i.i:                                      ; preds = %qla4_8xxx_minidump_pex_dma_read.exit.i.i.if.then.i.i_crit_edge, %qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i
  %data_ptr.121.i.i = phi ptr [ %data_ptr.0831.i, %qla4_8xxx_minidump_pex_dma_read.exit.thread.i.i ], [ %data_ptr.0.i.i, %qla4_8xxx_minidump_pex_dma_read.exit.i.i.if.then.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i.i.i) #10
  %336 = ptrtoint ptr %r_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 -1, ptr %r_value.i.i.i, align 4, !annotation !641
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_data.i.i.i) #10
  %337 = ptrtoint ptr %r_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 -1, ptr %r_data.i.i.i, align 4, !annotation !641
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %338 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %338)
  %cmp.i6.i.i = icmp eq i32 %338, 2
  br i1 %cmp.i6.i.i, label %do.end3.i11.i.i, label %do.end3.thread.i.i.i

do.end3.thread.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %read_addr190.i.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdmem, ptr %entry_hdr.0835.i, i32 0, i32 2
  %339 = ptrtoint ptr %read_addr190.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %read_addr190.i.i.i, align 4
  %read_data_size191.i.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdmem, ptr %entry_hdr.0835.i, i32 0, i32 3
  %341 = ptrtoint ptr %read_data_size191.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %read_data_size191.i.i.i, align 4
  br label %do.end15.i.i.i

do.end3.i11.i.i:                                  ; preds = %if.then.i.i
  %343 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %pdev6.i, align 8
  %dev.i8.i.i = getelementptr inbounds %struct.pci_dev, ptr %344, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i8.i.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.208) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr.i.i.i = load i32, ptr @ql4xextended_error_logging, align 4
  %read_addr.i9.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdmem, ptr %entry_hdr.0835.i, i32 0, i32 2
  %345 = ptrtoint ptr %read_addr.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %read_addr.i9.i.i, align 4
  %read_data_size.i10.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdmem, ptr %entry_hdr.0835.i, i32 0, i32 3
  %347 = ptrtoint ptr %read_data_size.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %read_data_size.i10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i.i)
  %cmp5.i.i.i = icmp eq i32 %.pr.i.i.i, 2
  br i1 %cmp5.i.i.i, label %do.end9.i.i.i, label %do.end3.i11.i.i.do.end15.i.i.i_crit_edge

do.end3.i11.i.i.do.end15.i.i.i_crit_edge:         ; preds = %do.end3.i11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15.i.i.i

do.end9.i.i.i:                                    ; preds = %do.end3.i11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %349 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %pdev6.i, align 8
  %dev11.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %350, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev11.i.i.i, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.208, i32 noundef %346, i32 noundef %348) #13
  br label %do.end15.i.i.i

do.end15.i.i.i:                                   ; preds = %do.end9.i.i.i, %do.end3.i11.i.i.do.end15.i.i.i_crit_edge, %do.end3.thread.i.i.i
  %351 = phi i32 [ %342, %do.end3.thread.i.i.i ], [ %348, %do.end9.i.i.i ], [ %348, %do.end3.i11.i.i.do.end15.i.i.i_crit_edge ]
  %read_data_size194.i.i.i = phi ptr [ %read_data_size191.i.i.i, %do.end3.thread.i.i.i ], [ %read_data_size.i10.i.i, %do.end9.i.i.i ], [ %read_data_size.i10.i.i, %do.end3.i11.i.i.do.end15.i.i.i_crit_edge ]
  %352 = phi i32 [ %340, %do.end3.thread.i.i.i ], [ %346, %do.end9.i.i.i ], [ %346, %do.end3.i11.i.i.do.end15.i.i.i_crit_edge ]
  %div189195.i.i.i = lshr i32 %351, 4
  %and.i.i.i = and i32 %352, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i12.i.i, label %if.end28.i.i.i, label %do.body17.i.i.i

do.body17.i.i.i:                                  ; preds = %do.end15.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %353 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %353)
  %cmp18.i.i.i = icmp eq i32 %353, 2
  br i1 %cmp18.i.i.i, label %do.end22.i.i.i, label %do.body17.i.i.i.if.then78.i_crit_edge

do.body17.i.i.i.if.then78.i_crit_edge:            ; preds = %do.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78.i

do.end22.i.i.i:                                   ; preds = %do.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %354 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %pdev6.i, align 8
  %dev24.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %355, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev24.i.i.i, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.208, i32 noundef %352) #13
  br label %if.then78.i

if.end28.i.i.i:                                   ; preds = %do.end15.i.i.i
  %356 = ptrtoint ptr %read_data_size194.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %read_data_size194.i.i.i, align 4
  %rem.i.i.i = and i32 %357, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %358 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %358)
  %cmp46.i.i.i = icmp eq i32 %358, 2
  br i1 %tobool30.not.i.i.i, label %do.body45.i.i.i, label %do.body32.i.i.i

do.body32.i.i.i:                                  ; preds = %if.end28.i.i.i
  br i1 %cmp46.i.i.i, label %do.end37.i.i.i, label %do.body32.i.i.i.if.then78.i_crit_edge

do.body32.i.i.i.if.then78.i_crit_edge:            ; preds = %do.body32.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78.i

do.end37.i.i.i:                                   ; preds = %do.body32.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %359 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %pdev6.i, align 8
  %dev39.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %360, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev39.i.i.i, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.208, i32 noundef %357) #13
  br label %if.then78.i

do.body45.i.i.i:                                  ; preds = %if.end28.i.i.i
  br i1 %cmp46.i.i.i, label %do.end50.i.i.i, label %do.body45.i.i.i.do.body57.i.i.i_crit_edge

do.body45.i.i.i.do.body57.i.i.i_crit_edge:        ; preds = %do.body45.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57.i.i.i

do.end50.i.i.i:                                   ; preds = %do.body45.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %361 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %pdev6.i, align 8
  %dev52.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %362, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev52.i.i.i, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.208, i32 noundef %352, i32 noundef %357, i32 noundef %div189195.i.i.i) #13
  br label %do.body57.i.i.i

do.body57.i.i.i:                                  ; preds = %do.end50.i.i.i, %do.body45.i.i.i.do.body57.i.i.i_crit_edge
  %call.i.i.i = call i32 @_raw_write_lock_irqsave(ptr noundef %hw_lock.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %351)
  %cmp61201.not.i.i.i = icmp ult i32 %351, 16
  br i1 %cmp61201.not.i.i.i, label %do.body57.i.i.i.do.body119.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

do.body57.i.i.i.do.body119.i.i.i_crit_edge:       ; preds = %do.body57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body119.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %do.body57.i.i.i
  %umax.i.i.i = call i32 @llvm.umax.i32(i32 %div189195.i.i.i, i32 1) #10
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body109.preheader.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %r_addr.0204.i.i.i = phi i32 [ %352, %for.body.lr.ph.i.i.i ], [ %add.i13.i.i, %for.body109.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %i.0203.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc117.i.i.i, %for.body109.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %data_ptr.0202.i.i.i = phi ptr [ %data_ptr.121.i.i, %for.body.lr.ph.i.i.i ], [ %incdec.ptr.3.i.i.i, %for.body109.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %363 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %364, i32 0, i32 19
  %365 = ptrtoint ptr %wr_reg_indirect.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %wr_reg_indirect.i.i.i, align 4
  %call63.i.i.i = call i32 %366(ptr noundef %ha, i32 noundef 1090519188, i32 noundef %r_addr.0204.i.i.i) #10
  %367 = ptrtoint ptr %r_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 0, ptr %r_value.i.i.i, align 4
  %368 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect65.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %369, i32 0, i32 19
  %370 = ptrtoint ptr %wr_reg_indirect65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %wr_reg_indirect65.i.i.i, align 4
  %call66.i.i.i = call i32 %371(ptr noundef %ha, i32 noundef 1090519192, i32 noundef 0) #10
  %372 = ptrtoint ptr %r_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 2, ptr %r_value.i.i.i, align 4
  %373 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect68.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %374, i32 0, i32 19
  %375 = ptrtoint ptr %wr_reg_indirect68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %wr_reg_indirect68.i.i.i, align 4
  %call69.i.i.i = call i32 %376(ptr noundef %ha, i32 noundef 1090519184, i32 noundef 2) #10
  %377 = ptrtoint ptr %r_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 3, ptr %r_value.i.i.i, align 4
  %378 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect71.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %379, i32 0, i32 19
  %380 = ptrtoint ptr %wr_reg_indirect71.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %wr_reg_indirect71.i.i.i, align 4
  %call72.i.i.i = call i32 %381(ptr noundef %ha, i32 noundef 1090519184, i32 noundef 3) #10
  br label %for.body76.i.i.i

for.cond73.i.i.i:                                 ; preds = %for.body76.i.i.i
  %inc.i.i.i = add nuw nsw i32 %j.0198.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 1000
  br i1 %exitcond.not.i.i.i, label %if.then86.i.i.i, label %for.cond73.i.i.i.for.body76.i.i.i_crit_edge

for.cond73.i.i.i.for.body76.i.i.i_crit_edge:      ; preds = %for.cond73.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body76.i.i.i

for.body76.i.i.i:                                 ; preds = %for.cond73.i.i.i.for.body76.i.i.i_crit_edge, %for.body.i.i.i
  %j.0198.i.i.i = phi i32 [ 0, %for.body.i.i.i ], [ %inc.i.i.i, %for.cond73.i.i.i.for.body76.i.i.i_crit_edge ]
  %382 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %383, i32 0, i32 18
  %384 = ptrtoint ptr %rd_reg_indirect.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %rd_reg_indirect.i.i.i, align 4
  %call78.i.i.i = call i32 %385(ptr noundef %ha, i32 noundef 1090519184, ptr noundef nonnull %r_value.i.i.i) #10
  %386 = ptrtoint ptr %r_value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %r_value.i.i.i, align 4
  %and79.i.i.i = and i32 %387, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i.i)
  %cmp80.i.i.i = icmp eq i32 %and79.i.i.i, 0
  br i1 %cmp80.i.i.i, label %for.body109.preheader.i.i.i, label %for.cond73.i.i.i

for.body109.preheader.i.i.i:                      ; preds = %for.body76.i.i.i
  %388 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect111.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %389, i32 0, i32 18
  %390 = ptrtoint ptr %rd_reg_indirect111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %rd_reg_indirect111.i.i.i, align 4
  %call112.i.i.i = call i32 %391(ptr noundef %ha, i32 noundef 1090519208, ptr noundef nonnull %r_data.i.i.i) #10
  %392 = ptrtoint ptr %r_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %r_data.i.i.i, align 4
  %394 = call i32 @llvm.bswap.i32(i32 %393) #10
  %incdec.ptr.i.i.i = getelementptr i32, ptr %data_ptr.0202.i.i.i, i32 1
  %395 = ptrtoint ptr %data_ptr.0202.i.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %394, ptr %data_ptr.0202.i.i.i, align 4
  %396 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect111.1.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %397, i32 0, i32 18
  %398 = ptrtoint ptr %rd_reg_indirect111.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %rd_reg_indirect111.1.i.i.i, align 4
  %call112.1.i.i.i = call i32 %399(ptr noundef %ha, i32 noundef 1090519212, ptr noundef nonnull %r_data.i.i.i) #10
  %400 = ptrtoint ptr %r_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %r_data.i.i.i, align 4
  %402 = call i32 @llvm.bswap.i32(i32 %401) #10
  %incdec.ptr.1.i.i.i = getelementptr i32, ptr %data_ptr.0202.i.i.i, i32 2
  %403 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %402, ptr %incdec.ptr.i.i.i, align 4
  %404 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect111.2.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %405, i32 0, i32 18
  %406 = ptrtoint ptr %rd_reg_indirect111.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %rd_reg_indirect111.2.i.i.i, align 4
  %call112.2.i.i.i = call i32 %407(ptr noundef %ha, i32 noundef 1090519224, ptr noundef nonnull %r_data.i.i.i) #10
  %408 = ptrtoint ptr %r_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %r_data.i.i.i, align 4
  %410 = call i32 @llvm.bswap.i32(i32 %409) #10
  %incdec.ptr.2.i.i.i = getelementptr i32, ptr %data_ptr.0202.i.i.i, i32 3
  %411 = ptrtoint ptr %incdec.ptr.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %410, ptr %incdec.ptr.1.i.i.i, align 4
  %412 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect111.3.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %413, i32 0, i32 18
  %414 = ptrtoint ptr %rd_reg_indirect111.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %rd_reg_indirect111.3.i.i.i, align 4
  %call112.3.i.i.i = call i32 %415(ptr noundef %ha, i32 noundef 1090519228, ptr noundef nonnull %r_data.i.i.i) #10
  %416 = ptrtoint ptr %r_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %r_data.i.i.i, align 4
  %418 = call i32 @llvm.bswap.i32(i32 %417) #10
  %incdec.ptr.3.i.i.i = getelementptr i32, ptr %data_ptr.0202.i.i.i, i32 4
  %419 = ptrtoint ptr %incdec.ptr.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %418, ptr %incdec.ptr.2.i.i.i, align 4
  %add.i13.i.i = add i32 %r_addr.0204.i.i.i, 16
  %inc117.i.i.i = add nuw nsw i32 %i.0203.i.i.i, 1
  %exitcond206.not.i.i.i = icmp eq i32 %inc117.i.i.i, %umax.i.i.i
  br i1 %exitcond206.not.i.i.i, label %for.body109.preheader.i.i.i.do.body119.i.i.i_crit_edge, label %for.body109.preheader.i.i.i.for.body.i.i.i_crit_edge

for.body109.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.body109.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body109.preheader.i.i.i.do.body119.i.i.i_crit_edge: ; preds = %for.body109.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body119.i.i.i

if.then86.i.i.i:                                  ; preds = %for.cond73.i.i.i
  %call87.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @__qla4_8xxx_minidump_process_rdmem._rs, ptr noundef nonnull @.str.208) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i.i.i)
  %tobool88.not.i.i.i = icmp eq i32 %call87.i.i.i, 0
  br i1 %tobool88.not.i.i.i, label %if.then86.i.i.i.do.body96.i.i.i_crit_edge, label %do.end92.i.i.i

if.then86.i.i.i.do.body96.i.i.i_crit_edge:        ; preds = %if.then86.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body96.i.i.i

do.end92.i.i.i:                                   ; preds = %if.then86.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call94.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.208) #13
  br label %do.body96.i.i.i

do.body96.i.i.i:                                  ; preds = %do.end92.i.i.i, %if.then86.i.i.i.do.body96.i.i.i_crit_edge
  call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i.i.i, i32 noundef %call.i.i.i) #10
  br label %qla4_8xxx_minidump_process_rdmem.exit.i

do.body119.i.i.i:                                 ; preds = %for.body109.preheader.i.i.i.do.body119.i.i.i_crit_edge, %do.body57.i.i.i.do.body119.i.i.i_crit_edge
  %data_ptr.0.lcssa.i14.i.i = phi ptr [ %data_ptr.121.i.i, %do.body57.i.i.i.do.body119.i.i.i_crit_edge ], [ %incdec.ptr.3.i.i.i, %for.body109.preheader.i.i.i.do.body119.i.i.i_crit_edge ]
  call void @_raw_write_unlock_irqrestore(ptr noundef %hw_lock.i.i.i, i32 noundef %call.i.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %420 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %420)
  %cmp129.i.i.i = icmp eq i32 %420, 2
  br i1 %cmp129.i.i.i, label %do.end134.i.i.i, label %do.body119.i.i.i.qla4_8xxx_minidump_process_rdmem.exit.i_crit_edge

do.body119.i.i.i.qla4_8xxx_minidump_process_rdmem.exit.i_crit_edge: ; preds = %do.body119.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_rdmem.exit.i

do.end134.i.i.i:                                  ; preds = %do.body119.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %421 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %pdev6.i, align 8
  %dev136.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %422, i32 0, i32 44
  %mul.i.i.i = and i32 %351, -16
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev136.i.i.i, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.208, i32 noundef %mul.i.i.i) #13
  br label %qla4_8xxx_minidump_process_rdmem.exit.i

qla4_8xxx_minidump_process_rdmem.exit.i:          ; preds = %do.end134.i.i.i, %do.body119.i.i.i.qla4_8xxx_minidump_process_rdmem.exit.i_crit_edge, %do.body96.i.i.i
  %data_ptr.2.i.i = phi ptr [ %data_ptr.121.i.i, %do.body96.i.i.i ], [ %data_ptr.0.lcssa.i14.i.i, %do.end134.i.i.i ], [ %data_ptr.0.lcssa.i14.i.i, %do.body119.i.i.i.qla4_8xxx_minidump_process_rdmem.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_data.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i.i.i) #10
  br label %sw.epilog.i

if.then78.i:                                      ; preds = %do.end37.i.i.i, %do.body32.i.i.i.if.then78.i_crit_edge, %do.end22.i.i.i, %do.body17.i.i.i.if.then78.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_data.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i.i.i) #10
  call fastcc void @qla4_8xxx_mark_entry_skipped(ptr noundef %ha, ptr noundef %entry_hdr.0835.i, i32 noundef %i.0852.i) #10
  br label %do.end

sw.bb80.i:                                        ; preds = %do.end66.i.sw.bb80.i_crit_edge, %do.end66.i.sw.bb80.i_crit_edge352
  %423 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %pdev6.i, align 8
  %device.i351.i = getelementptr inbounds %struct.pci_dev, ptr %424, i32 0, i32 8
  %425 = ptrtoint ptr %device.i351.i to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %device.i351.i, align 2
  %427 = zext i16 %426 to i64
  call void @__sanitizer_cov_trace_switch(i64 %427, ptr @__sancov_gen_cov_switch_values.344)
  switch i16 %426, label %sw.bb80.i.sw.epilog.i_crit_edge [
    i16 -32734, label %if.then83.i
    i16 -32718, label %sw.bb80.i.if.then89.i_crit_edge
    i16 -32702, label %sw.bb80.i.if.then89.i_crit_edge360
  ]

sw.bb80.i.if.then89.i_crit_edge360:               ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then89.i

sw.bb80.i.if.then89.i_crit_edge:                  ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then89.i

sw.bb80.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then83.i:                                      ; preds = %sw.bb80.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i354.i) #10
  %428 = ptrtoint ptr %r_value.i354.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 -1, ptr %r_value.i354.i, align 4, !annotation !641
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %429 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %429)
  %cmp.i355.i = icmp eq i32 %429, 2
  br i1 %cmp.i355.i, label %do.end3.i359.i, label %do.end3.thread.i.i

do.end3.thread.i.i:                               ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #12
  %read_addr34.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdrom, ptr %entry_hdr.0835.i, i32 0, i32 2
  %430 = ptrtoint ptr %read_addr34.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %read_addr34.i.i, align 4
  %read_data_size35.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdrom, ptr %entry_hdr.0835.i, i32 0, i32 3
  %432 = ptrtoint ptr %read_data_size35.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %read_data_size35.i.i, align 4
  %div3336.i.i = lshr i32 %433, 2
  br label %do.end14.i.i

do.end3.i359.i:                                   ; preds = %if.then83.i
  %dev.i357.i = getelementptr inbounds %struct.pci_dev, ptr %424, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i357.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.226) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr.i.i = load i32, ptr @ql4xextended_error_logging, align 4
  %read_addr.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdrom, ptr %entry_hdr.0835.i, i32 0, i32 2
  %434 = ptrtoint ptr %read_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %read_addr.i.i, align 4
  %read_data_size.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdrom, ptr %entry_hdr.0835.i, i32 0, i32 3
  %436 = ptrtoint ptr %read_data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %read_data_size.i.i, align 4
  %div33.i.i = lshr i32 %437, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i)
  %cmp5.i358.i = icmp eq i32 %.pr.i.i, 2
  br i1 %cmp5.i358.i, label %do.end9.i.i, label %do.end3.i359.i.do.end14.i.i_crit_edge

do.end3.i359.i.do.end14.i.i_crit_edge:            ; preds = %do.end3.i359.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i.i

do.end9.i.i:                                      ; preds = %do.end3.i359.i
  call void @__sanitizer_cov_trace_pc() #12
  %438 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %pdev6.i, align 8
  %dev11.i.i = getelementptr inbounds %struct.pci_dev, ptr %439, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev11.i.i, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.226, i32 noundef %435, i32 noundef %div33.i.i) #13
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i, %do.end3.i359.i.do.end14.i.i_crit_edge, %do.end3.thread.i.i
  %div3338.i.i = phi i32 [ %div3336.i.i, %do.end3.thread.i.i ], [ %div33.i.i, %do.end9.i.i ], [ %div33.i.i, %do.end3.i359.i.do.end14.i.i_crit_edge ]
  %440 = phi i32 [ %431, %do.end3.thread.i.i ], [ %435, %do.end9.i.i ], [ %435, %do.end3.i359.i.do.end14.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div3338.i.i)
  %cmp1539.not.i.i = icmp eq i32 %div3338.i.i, 0
  br i1 %cmp1539.not.i.i, label %do.end14.i.i.qla4_82xx_minidump_process_rdrom.exit.i_crit_edge, label %do.end14.i.i.for.body.i370.i_crit_edge

do.end14.i.i.for.body.i370.i_crit_edge:           ; preds = %do.end14.i.i
  br label %for.body.i370.i

do.end14.i.i.qla4_82xx_minidump_process_rdrom.exit.i_crit_edge: ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_minidump_process_rdrom.exit.i

for.body.i370.i:                                  ; preds = %for.body.i370.i.for.body.i370.i_crit_edge, %do.end14.i.i.for.body.i370.i_crit_edge
  %data_ptr.042.i.i = phi ptr [ %incdec.ptr.i367.i, %for.body.i370.i.for.body.i370.i_crit_edge ], [ %data_ptr.0831.i, %do.end14.i.i.for.body.i370.i_crit_edge ]
  %i.041.i.i = phi i32 [ %inc.i368.i, %for.body.i370.i.for.body.i370.i_crit_edge ], [ 0, %do.end14.i.i.for.body.i370.i_crit_edge ]
  %r_addr.040.i.i = phi i32 [ %add19.i.i, %for.body.i370.i.for.body.i370.i_crit_edge ], [ %440, %do.end14.i.i.for.body.i370.i_crit_edge ]
  %441 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i362.i = getelementptr inbounds %struct.isp_operations, ptr %442, i32 0, i32 19
  %443 = ptrtoint ptr %wr_reg_indirect.i362.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %wr_reg_indirect.i362.i, align 4
  %and.i363.i = and i32 %r_addr.040.i.i, -65536
  %call.i364.i = call i32 %444(ptr noundef %ha, i32 noundef 1108410416, i32 noundef %and.i363.i) #10
  %445 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i365.i = getelementptr inbounds %struct.isp_operations, ptr %446, i32 0, i32 18
  %447 = ptrtoint ptr %rd_reg_indirect.i365.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %rd_reg_indirect.i365.i, align 4
  %and17.i.i = and i32 %r_addr.040.i.i, 65535
  %add.i366.i = or i32 %and17.i.i, 1108672512
  %call18.i.i = call i32 %448(ptr noundef %ha, i32 noundef %add.i366.i, ptr noundef nonnull %r_value.i354.i) #10
  %449 = ptrtoint ptr %r_value.i354.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %r_value.i354.i, align 4
  %451 = call i32 @llvm.bswap.i32(i32 %450) #10
  %incdec.ptr.i367.i = getelementptr i32, ptr %data_ptr.042.i.i, i32 1
  %452 = ptrtoint ptr %data_ptr.042.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %451, ptr %data_ptr.042.i.i, align 4
  %add19.i.i = add i32 %r_addr.040.i.i, 4
  %inc.i368.i = add nuw nsw i32 %i.041.i.i, 1
  %exitcond.not.i369.i = icmp eq i32 %inc.i368.i, %div3338.i.i
  br i1 %exitcond.not.i369.i, label %for.body.i370.i.qla4_82xx_minidump_process_rdrom.exit.i_crit_edge, label %for.body.i370.i.for.body.i370.i_crit_edge

for.body.i370.i.for.body.i370.i_crit_edge:        ; preds = %for.body.i370.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i370.i

for.body.i370.i.qla4_82xx_minidump_process_rdrom.exit.i_crit_edge: ; preds = %for.body.i370.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_minidump_process_rdrom.exit.i

qla4_82xx_minidump_process_rdrom.exit.i:          ; preds = %for.body.i370.i.qla4_82xx_minidump_process_rdrom.exit.i_crit_edge, %do.end14.i.i.qla4_82xx_minidump_process_rdrom.exit.i_crit_edge
  %data_ptr.0.lcssa.i371.i = phi ptr [ %data_ptr.0831.i, %do.end14.i.i.qla4_82xx_minidump_process_rdrom.exit.i_crit_edge ], [ %incdec.ptr.i367.i, %for.body.i370.i.qla4_82xx_minidump_process_rdrom.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i354.i) #10
  br label %sw.epilog.i

if.then89.i:                                      ; preds = %sw.bb80.i.if.then89.i_crit_edge, %sw.bb80.i.if.then89.i_crit_edge360
  %read_addr.i380.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdrom, ptr %entry_hdr.0835.i, i32 0, i32 2
  %453 = ptrtoint ptr %read_addr.i380.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %read_addr.i380.i, align 4
  %455 = call i32 @llvm.bswap.i32(i32 %454) #10
  %read_data_size.i381.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdrom, ptr %entry_hdr.0835.i, i32 0, i32 3
  %456 = ptrtoint ptr %read_data_size.i381.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %read_data_size.i381.i, align 4
  %458 = call i32 @llvm.bswap.i32(i32 %457) #10
  %div23.i.i = lshr i32 %458, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %459 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %459)
  %cmp.i382.i = icmp eq i32 %459, 2
  br i1 %cmp.i382.i, label %do.end.i385.i, label %if.then89.i.do.end3.i387.i_crit_edge

if.then89.i.do.end3.i387.i_crit_edge:             ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i387.i

do.end.i385.i:                                    ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i384.i = getelementptr inbounds %struct.pci_dev, ptr %424, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i384.i, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.231, i32 noundef %455, i32 noundef %div23.i.i) #13
  br label %do.end3.i387.i

do.end3.i387.i:                                   ; preds = %do.end.i385.i, %if.then89.i.do.end3.i387.i_crit_edge
  %call.i386.i = call i32 @qla4_83xx_lockless_flash_read_u32(ptr noundef %ha, i32 noundef %455, ptr noundef %data_ptr.0831.i, i32 noundef %div23.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i386.i)
  %cmp4.i.i = icmp eq i32 %call.i386.i, 1
  br i1 %cmp4.i.i, label %qla4_83xx_minidump_process_rdrom.exit.thread.i, label %qla4_83xx_minidump_process_rdrom.exit.i

qla4_83xx_minidump_process_rdrom.exit.thread.i:   ; preds = %do.end3.i387.i
  call void @__sanitizer_cov_trace_pc() #12
  %460 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %pdev6.i, align 8
  %dev10.i.i = getelementptr inbounds %struct.pci_dev, ptr %461, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev10.i.i, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.231, i32 noundef %div23.i.i) #13
  br label %if.then93.i

qla4_83xx_minidump_process_rdrom.exit.i:          ; preds = %do.end3.i387.i
  %add.ptr.i.i = getelementptr i32, ptr %data_ptr.0831.i, i32 %div23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386.i)
  %cmp91.not.i = icmp eq i32 %call.i386.i, 0
  br i1 %cmp91.not.i, label %qla4_83xx_minidump_process_rdrom.exit.i.sw.epilog.i_crit_edge, label %qla4_83xx_minidump_process_rdrom.exit.i.if.then93.i_crit_edge

qla4_83xx_minidump_process_rdrom.exit.i.if.then93.i_crit_edge: ; preds = %qla4_83xx_minidump_process_rdrom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93.i

qla4_83xx_minidump_process_rdrom.exit.i.sw.epilog.i_crit_edge: ; preds = %qla4_83xx_minidump_process_rdrom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then93.i:                                      ; preds = %qla4_83xx_minidump_process_rdrom.exit.i.if.then93.i_crit_edge, %qla4_83xx_minidump_process_rdrom.exit.thread.i
  %data_ptr.1761.i = phi ptr [ %data_ptr.0831.i, %qla4_83xx_minidump_process_rdrom.exit.thread.i ], [ %add.ptr.i.i, %qla4_83xx_minidump_process_rdrom.exit.i.if.then93.i_crit_edge ]
  %driver_flags.i388.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %462 = ptrtoint ptr %driver_flags.i388.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %driver_flags.i388.i, align 1
  %464 = or i8 %463, -128
  store i8 %464, ptr %driver_flags.i388.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %465 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %465)
  %cmp.i389.i = icmp eq i32 %465, 2
  br i1 %cmp.i389.i, label %do.end.i395.i, label %if.then93.i.qla4_8xxx_mark_entry_skipped.exit399.i_crit_edge

if.then93.i.qla4_8xxx_mark_entry_skipped.exit399.i_crit_edge: ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_mark_entry_skipped.exit399.i

do.end.i395.i:                                    ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #12
  %466 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %pdev6.i, align 8
  %dev.i392.i = getelementptr inbounds %struct.pci_dev, ptr %467, i32 0, i32 44
  %468 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %host_no.i720.i, align 4
  %470 = ptrtoint ptr %entry_hdr.0835.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %entry_hdr.0835.i, align 4
  %472 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %d_ctrl.i, align 4
  %conv5.i394.i = zext i8 %473 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i392.i, ptr noundef nonnull @.str.180, i32 noundef %469, i32 noundef %i.0852.i, i32 noundef %471, i32 noundef %conv5.i394.i) #13
  br label %qla4_8xxx_mark_entry_skipped.exit399.i

qla4_8xxx_mark_entry_skipped.exit399.i:           ; preds = %do.end.i395.i, %if.then93.i.qla4_8xxx_mark_entry_skipped.exit399.i_crit_edge
  %entry_capture_size.i396.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %474 = ptrtoint ptr %entry_capture_size.i396.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %entry_capture_size.i396.i, align 4
  %476 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add.i398.i = add i32 %477, %475
  store i32 %add.i398.i, ptr %fw_dump_skip_size.i, align 16
  br label %sw.epilog.i

sw.bb97.i:                                        ; preds = %do.end66.i.sw.bb97.i_crit_edge, %do.end66.i.sw.bb97.i_crit_edge353, %do.end66.i.sw.bb97.i_crit_edge354, %do.end66.i.sw.bb97.i_crit_edge355
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i400.i) #10
  %478 = ptrtoint ptr %r_value.i400.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 -1, ptr %r_value.i400.i, align 4, !annotation !641
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c_value_r.i.i) #10
  %479 = ptrtoint ptr %c_value_r.i.i to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 -1, ptr %c_value_r.i.i, align 4, !annotation !641
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %480 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %480)
  %cmp.i401.i = icmp eq i32 %480, 2
  br i1 %cmp.i401.i, label %do.end.i404.i, label %sw.bb97.i.do.end3.i409.i_crit_edge

sw.bb97.i.do.end3.i409.i_crit_edge:               ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i409.i

do.end.i404.i:                                    ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #12
  %481 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %pdev6.i, align 8
  %dev.i403.i = getelementptr inbounds %struct.pci_dev, ptr %482, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i403.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.235) #13
  br label %do.end3.i409.i

do.end3.i409.i:                                   ; preds = %do.end.i404.i, %sw.bb97.i.do.end3.i409.i_crit_edge
  %op_count.i405.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 4
  %483 = ptrtoint ptr %op_count.i405.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %op_count.i405.i, align 4
  %read_addr.i406.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 7
  %485 = ptrtoint ptr %read_addr.i406.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %read_addr.i406.i, align 4
  %control_addr.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 5
  %487 = ptrtoint ptr %control_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %control_addr.i.i, align 4
  %cache_ctrl.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 6
  %489 = ptrtoint ptr %cache_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %489)
  %490 = load i16, ptr %cache_ctrl.i.i, align 4
  %conv.i407.i = zext i16 %490 to i32
  %tag_reg_addr.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 1
  %491 = ptrtoint ptr %tag_reg_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %tag_reg_addr.i.i, align 4
  %addr_ctrl.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 2
  %read_ctrl.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 8
  %read_addr_cnt.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 8, i32 1
  %493 = ptrtoint ptr %read_addr_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %read_addr_cnt.i.i, align 1
  %conv5.i408.i = zext i8 %494 to i32
  %poll_mask.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 6, i32 1
  %495 = ptrtoint ptr %poll_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %poll_mask.i.i, align 2
  %conv9.i.i = zext i8 %496 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %484)
  %cmp1098.not.i.i = icmp eq i32 %484, 0
  br i1 %cmp1098.not.i.i, label %do.end3.i409.i.qla4_8xxx_minidump_process_l2tag.exit.thread.i_crit_edge, label %for.body.lr.ph.i412.i

do.end3.i409.i.qla4_8xxx_minidump_process_l2tag.exit.thread.i_crit_edge: ; preds = %do.end3.i409.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_l2tag.exit.thread.i

for.body.lr.ph.i412.i:                            ; preds = %do.end3.i409.i
  %poll_wait.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 6, i32 2
  %497 = ptrtoint ptr %poll_wait.i.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %poll_wait.i.i, align 1
  %conv7.i.i = zext i8 %498 to i32
  %init_tag_value.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 2, i32 1
  %499 = ptrtoint ptr %init_tag_value.i.i to i32
  call void @__asan_load2_noabort(i32 %499)
  %500 = load i16, ptr %init_tag_value.i.i, align 2
  %conv4.i.i = zext i16 %500 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %490)
  %tobool.not.i411.i = icmp eq i16 %490, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %496)
  %tobool17.not.i.i = icmp eq i8 %496, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %494)
  %cmp3494.not.i.i = icmp eq i8 %494, 0
  br label %for.body.i415.i

for.body.i415.i:                                  ; preds = %for.end.i.i.for.body.i415.i_crit_edge, %for.body.lr.ph.i412.i
  %data_ptr.0101.i.i = phi ptr [ %data_ptr.0831.i, %for.body.lr.ph.i412.i ], [ %data_ptr.1.lcssa.i.i, %for.end.i.i.for.body.i415.i_crit_edge ]
  %t_value.0100.i.i = phi i32 [ %conv4.i.i, %for.body.lr.ph.i412.i ], [ %add45.i.i, %for.end.i.i.for.body.i415.i_crit_edge ]
  %i.099.i.i = phi i32 [ 0, %for.body.lr.ph.i412.i ], [ %inc47.i.i, %for.end.i.i.for.body.i415.i_crit_edge ]
  %501 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i413.i = getelementptr inbounds %struct.isp_operations, ptr %502, i32 0, i32 19
  %503 = ptrtoint ptr %wr_reg_indirect.i413.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %wr_reg_indirect.i413.i, align 4
  %call.i414.i = call i32 %504(ptr noundef %ha, i32 noundef %492, i32 noundef %t_value.0100.i.i) #10
  br i1 %tobool.not.i411.i, label %for.body.i415.i.if.end16.i.i_crit_edge, label %if.then12.i416.i

for.body.i415.i.if.end16.i.i_crit_edge:           ; preds = %for.body.i415.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.then12.i416.i:                                 ; preds = %for.body.i415.i
  call void @__sanitizer_cov_trace_pc() #12
  %505 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect14.i.i = getelementptr inbounds %struct.isp_operations, ptr %506, i32 0, i32 19
  %507 = ptrtoint ptr %wr_reg_indirect14.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %wr_reg_indirect14.i.i, align 4
  %call15.i.i = call i32 %508(ptr noundef %ha, i32 noundef %488, i32 noundef %conv.i407.i) #10
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then12.i416.i, %for.body.i415.i.if.end16.i.i_crit_edge
  br i1 %tobool17.not.i.i, label %if.end16.i.i.if.end32.i421.i_crit_edge, label %if.then18.i.i

if.end16.i.i.if.end32.i421.i_crit_edge:           ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i421.i

if.then18.i.i:                                    ; preds = %if.end16.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %509 = load volatile i32, ptr @jiffies, align 128
  %510 = add i32 %509, %conv7.i.i
  br label %do.body19.i.i

do.body19.i.i:                                    ; preds = %if.else.i420.i.do.body19.i.i_crit_edge, %if.then18.i.i
  %511 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i417.i = getelementptr inbounds %struct.isp_operations, ptr %512, i32 0, i32 18
  %513 = ptrtoint ptr %rd_reg_indirect.i417.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %rd_reg_indirect.i417.i, align 4
  %call21.i.i = call i32 %514(ptr noundef %ha, i32 noundef %488, ptr noundef nonnull %c_value_r.i.i) #10
  %515 = ptrtoint ptr %c_value_r.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %c_value_r.i.i, align 4
  %and.i418.i = and i32 %516, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i418.i)
  %cmp22.i.i = icmp eq i32 %and.i418.i, 0
  br i1 %cmp22.i.i, label %do.body19.i.i.if.end32.i421.i_crit_edge, label %if.else.i420.i

do.body19.i.i.if.end32.i421.i_crit_edge:          ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i421.i

if.else.i420.i:                                   ; preds = %do.body19.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %517 = load volatile i32, ptr @jiffies, align 128
  %sub.i419.i = sub i32 %517, %510
  %cmp25.i.i = icmp sgt i32 %sub.i419.i, -1
  br i1 %cmp25.i.i, label %if.then101.i, label %if.else.i420.i.do.body19.i.i_crit_edge

if.else.i420.i.do.body19.i.i_crit_edge:           ; preds = %if.else.i420.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i.i

if.end32.i421.i:                                  ; preds = %do.body19.i.i.if.end32.i421.i_crit_edge, %if.end16.i.i.if.end32.i421.i_crit_edge
  br i1 %cmp3494.not.i.i, label %if.end32.i421.i.for.end.i.i_crit_edge, label %if.end32.i421.i.for.body36.i.i_crit_edge

if.end32.i421.i.for.body36.i.i_crit_edge:         ; preds = %if.end32.i421.i
  br label %for.body36.i.i

if.end32.i421.i.for.end.i.i_crit_edge:            ; preds = %if.end32.i421.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body36.i.i:                                   ; preds = %for.body36.i.i.for.body36.i.i_crit_edge, %if.end32.i421.i.for.body36.i.i_crit_edge
  %data_ptr.197.i.i = phi ptr [ %incdec.ptr.i422.i, %for.body36.i.i.for.body36.i.i_crit_edge ], [ %data_ptr.0101.i.i, %if.end32.i421.i.for.body36.i.i_crit_edge ]
  %k.096.i.i = phi i32 [ %inc.i423.i, %for.body36.i.i.for.body36.i.i_crit_edge ], [ 0, %if.end32.i421.i.for.body36.i.i_crit_edge ]
  %addr.095.i.i = phi i32 [ %add42.i.i, %for.body36.i.i.for.body36.i.i_crit_edge ], [ %486, %if.end32.i421.i.for.body36.i.i_crit_edge ]
  %518 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect38.i.i = getelementptr inbounds %struct.isp_operations, ptr %519, i32 0, i32 18
  %520 = ptrtoint ptr %rd_reg_indirect38.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %rd_reg_indirect38.i.i, align 4
  %call39.i.i = call i32 %521(ptr noundef %ha, i32 noundef %addr.095.i.i, ptr noundef nonnull %r_value.i400.i) #10
  %522 = ptrtoint ptr %r_value.i400.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %r_value.i400.i, align 4
  %524 = call i32 @llvm.bswap.i32(i32 %523) #10
  %incdec.ptr.i422.i = getelementptr i32, ptr %data_ptr.197.i.i, i32 1
  %525 = ptrtoint ptr %data_ptr.197.i.i to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 %524, ptr %data_ptr.197.i.i, align 4
  %526 = ptrtoint ptr %read_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %read_ctrl.i.i, align 4
  %conv41.i.i = zext i8 %527 to i32
  %add42.i.i = add i32 %addr.095.i.i, %conv41.i.i
  %inc.i423.i = add nuw nsw i32 %k.096.i.i, 1
  %exitcond.not.i424.i = icmp eq i32 %inc.i423.i, %conv5.i408.i
  br i1 %exitcond.not.i424.i, label %for.body36.i.i.for.end.i.i_crit_edge, label %for.body36.i.i.for.body36.i.i_crit_edge

for.body36.i.i.for.body36.i.i_crit_edge:          ; preds = %for.body36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body36.i.i

for.body36.i.i.for.end.i.i_crit_edge:             ; preds = %for.body36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body36.i.i.for.end.i.i_crit_edge, %if.end32.i421.i.for.end.i.i_crit_edge
  %data_ptr.1.lcssa.i.i = phi ptr [ %data_ptr.0101.i.i, %if.end32.i421.i.for.end.i.i_crit_edge ], [ %incdec.ptr.i422.i, %for.body36.i.i.for.end.i.i_crit_edge ]
  %528 = ptrtoint ptr %addr_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %addr_ctrl.i.i, align 4
  %conv44.i.i = zext i16 %529 to i32
  %add45.i.i = add i32 %t_value.0100.i.i, %conv44.i.i
  %inc47.i.i = add nuw i32 %i.099.i.i, 1
  %exitcond103.not.i.i = icmp eq i32 %inc47.i.i, %484
  br i1 %exitcond103.not.i.i, label %for.end.i.i.qla4_8xxx_minidump_process_l2tag.exit.thread.i_crit_edge, label %for.end.i.i.for.body.i415.i_crit_edge

for.end.i.i.for.body.i415.i_crit_edge:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i415.i

for.end.i.i.qla4_8xxx_minidump_process_l2tag.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_l2tag.exit.thread.i

qla4_8xxx_minidump_process_l2tag.exit.thread.i:   ; preds = %for.end.i.i.qla4_8xxx_minidump_process_l2tag.exit.thread.i_crit_edge, %do.end3.i409.i.qla4_8xxx_minidump_process_l2tag.exit.thread.i_crit_edge
  %data_ptr.2.ph.i = phi ptr [ %data_ptr.0831.i, %do.end3.i409.i.qla4_8xxx_minidump_process_l2tag.exit.thread.i_crit_edge ], [ %data_ptr.1.lcssa.i.i, %for.end.i.i.qla4_8xxx_minidump_process_l2tag.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_value_r.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i400.i) #10
  br label %sw.epilog.i

if.then101.i:                                     ; preds = %if.else.i420.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_value_r.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i400.i) #10
  %driver_flags.i426.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %530 = ptrtoint ptr %driver_flags.i426.i to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %driver_flags.i426.i, align 1
  %532 = or i8 %531, -128
  store i8 %532, ptr %driver_flags.i426.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %533 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %533)
  %cmp.i427.i = icmp eq i32 %533, 2
  br i1 %cmp.i427.i, label %do.end.i433.i, label %if.then101.i.qla4_8xxx_mark_entry_skipped.exit437.i_crit_edge

if.then101.i.qla4_8xxx_mark_entry_skipped.exit437.i_crit_edge: ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_mark_entry_skipped.exit437.i

do.end.i433.i:                                    ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #12
  %534 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %pdev6.i, align 8
  %dev.i430.i = getelementptr inbounds %struct.pci_dev, ptr %535, i32 0, i32 44
  %536 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %host_no.i720.i, align 4
  %538 = ptrtoint ptr %entry_hdr.0835.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %entry_hdr.0835.i, align 4
  %540 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %d_ctrl.i, align 4
  %conv5.i432.i = zext i8 %541 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i430.i, ptr noundef nonnull @.str.180, i32 noundef %537, i32 noundef %i.0852.i, i32 noundef %539, i32 noundef %conv5.i432.i) #13
  br label %qla4_8xxx_mark_entry_skipped.exit437.i

qla4_8xxx_mark_entry_skipped.exit437.i:           ; preds = %do.end.i433.i, %if.then101.i.qla4_8xxx_mark_entry_skipped.exit437.i_crit_edge
  %entry_capture_size.i434.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %542 = ptrtoint ptr %entry_capture_size.i434.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %entry_capture_size.i434.i, align 4
  %544 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add.i436.i = add i32 %545, %543
  store i32 %add.i436.i, ptr %fw_dump_skip_size.i, align 16
  br label %do.end

sw.bb103.i:                                       ; preds = %do.end66.i.sw.bb103.i_crit_edge, %do.end66.i.sw.bb103.i_crit_edge356, %do.end66.i.sw.bb103.i_crit_edge357, %do.end66.i.sw.bb103.i_crit_edge358
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i438.i) #10
  %546 = ptrtoint ptr %r_value.i438.i to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 -1, ptr %r_value.i438.i, align 4, !annotation !641
  %op_count.i439.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 4
  %547 = ptrtoint ptr %op_count.i439.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %op_count.i439.i, align 4
  %read_addr.i440.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 7
  %549 = ptrtoint ptr %read_addr.i440.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %read_addr.i440.i, align 4
  %control_addr.i441.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 5
  %551 = ptrtoint ptr %control_addr.i441.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %control_addr.i441.i, align 4
  %cache_ctrl.i442.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 6
  %553 = ptrtoint ptr %cache_ctrl.i442.i to i32
  call void @__asan_load2_noabort(i32 %553)
  %554 = load i16, ptr %cache_ctrl.i442.i, align 4
  %conv.i443.i = zext i16 %554 to i32
  %tag_reg_addr.i444.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 1
  %555 = ptrtoint ptr %tag_reg_addr.i444.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %tag_reg_addr.i444.i, align 4
  %addr_ctrl.i445.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 2
  %read_ctrl.i446.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 8
  %read_addr_cnt.i447.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 8, i32 1
  %557 = ptrtoint ptr %read_addr_cnt.i447.i to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %read_addr_cnt.i447.i, align 1
  %conv2.i.i = zext i8 %558 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %548)
  %cmp44.not.i.i = icmp eq i32 %548, 0
  br i1 %cmp44.not.i.i, label %sw.bb103.i.qla4_8xxx_minidump_process_l1cache.exit.i_crit_edge, label %for.body.lr.ph.i451.i

sw.bb103.i.qla4_8xxx_minidump_process_l1cache.exit.i_crit_edge: ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_l1cache.exit.i

for.body.lr.ph.i451.i:                            ; preds = %sw.bb103.i
  %init_tag_value.i448.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_cache, ptr %entry_hdr.0835.i, i32 0, i32 2, i32 1
  %559 = ptrtoint ptr %init_tag_value.i448.i to i32
  call void @__asan_load2_noabort(i32 %559)
  %560 = load i16, ptr %init_tag_value.i448.i, align 2
  %conv1.i449.i = zext i16 %560 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %558)
  %cmp840.not.i.i = icmp eq i8 %558, 0
  br label %for.body.i454.i

for.body.i454.i:                                  ; preds = %for.end.i461.i.for.body.i454.i_crit_edge, %for.body.lr.ph.i451.i
  %data_ptr.047.i.i = phi ptr [ %data_ptr.0831.i, %for.body.lr.ph.i451.i ], [ %data_ptr.1.lcssa.i460.i, %for.end.i461.i.for.body.i454.i_crit_edge ]
  %t_value.046.i.i = phi i32 [ %conv1.i449.i, %for.body.lr.ph.i451.i ], [ %add17.i.i, %for.end.i461.i.for.body.i454.i_crit_edge ]
  %i.045.i.i = phi i32 [ 0, %for.body.lr.ph.i451.i ], [ %inc19.i.i, %for.end.i461.i.for.body.i454.i_crit_edge ]
  %561 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i452.i = getelementptr inbounds %struct.isp_operations, ptr %562, i32 0, i32 19
  %563 = ptrtoint ptr %wr_reg_indirect.i452.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %wr_reg_indirect.i452.i, align 4
  %call.i453.i = call i32 %564(ptr noundef %ha, i32 noundef %556, i32 noundef %t_value.046.i.i) #10
  %565 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect5.i.i = getelementptr inbounds %struct.isp_operations, ptr %566, i32 0, i32 19
  %567 = ptrtoint ptr %wr_reg_indirect5.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %wr_reg_indirect5.i.i, align 4
  %call6.i.i = call i32 %568(ptr noundef %ha, i32 noundef %552, i32 noundef %conv.i443.i) #10
  br i1 %cmp840.not.i.i, label %for.body.i454.i.for.end.i461.i_crit_edge, label %for.body.i454.i.for.body10.i.i_crit_edge

for.body.i454.i.for.body10.i.i_crit_edge:         ; preds = %for.body.i454.i
  br label %for.body10.i.i

for.body.i454.i.for.end.i461.i_crit_edge:         ; preds = %for.body.i454.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i461.i

for.body10.i.i:                                   ; preds = %for.body10.i.i.for.body10.i.i_crit_edge, %for.body.i454.i.for.body10.i.i_crit_edge
  %data_ptr.143.i.i = phi ptr [ %incdec.ptr.i456.i, %for.body10.i.i.for.body10.i.i_crit_edge ], [ %data_ptr.047.i.i, %for.body.i454.i.for.body10.i.i_crit_edge ]
  %k.042.i.i = phi i32 [ %inc.i458.i, %for.body10.i.i.for.body10.i.i_crit_edge ], [ 0, %for.body.i454.i.for.body10.i.i_crit_edge ]
  %addr.041.i.i = phi i32 [ %add.i457.i, %for.body10.i.i.for.body10.i.i_crit_edge ], [ %550, %for.body.i454.i.for.body10.i.i_crit_edge ]
  %569 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i455.i = getelementptr inbounds %struct.isp_operations, ptr %570, i32 0, i32 18
  %571 = ptrtoint ptr %rd_reg_indirect.i455.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %rd_reg_indirect.i455.i, align 4
  %call12.i.i = call i32 %572(ptr noundef %ha, i32 noundef %addr.041.i.i, ptr noundef nonnull %r_value.i438.i) #10
  %573 = ptrtoint ptr %r_value.i438.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %r_value.i438.i, align 4
  %575 = call i32 @llvm.bswap.i32(i32 %574) #10
  %incdec.ptr.i456.i = getelementptr i32, ptr %data_ptr.143.i.i, i32 1
  %576 = ptrtoint ptr %data_ptr.143.i.i to i32
  call void @__asan_store4_noabort(i32 %576)
  store i32 %575, ptr %data_ptr.143.i.i, align 4
  %577 = ptrtoint ptr %read_ctrl.i446.i to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %read_ctrl.i446.i, align 4
  %conv14.i.i = zext i8 %578 to i32
  %add.i457.i = add i32 %addr.041.i.i, %conv14.i.i
  %inc.i458.i = add nuw nsw i32 %k.042.i.i, 1
  %exitcond.not.i459.i = icmp eq i32 %inc.i458.i, %conv2.i.i
  br i1 %exitcond.not.i459.i, label %for.body10.i.i.for.end.i461.i_crit_edge, label %for.body10.i.i.for.body10.i.i_crit_edge

for.body10.i.i.for.body10.i.i_crit_edge:          ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i.i

for.body10.i.i.for.end.i461.i_crit_edge:          ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i461.i

for.end.i461.i:                                   ; preds = %for.body10.i.i.for.end.i461.i_crit_edge, %for.body.i454.i.for.end.i461.i_crit_edge
  %data_ptr.1.lcssa.i460.i = phi ptr [ %data_ptr.047.i.i, %for.body.i454.i.for.end.i461.i_crit_edge ], [ %incdec.ptr.i456.i, %for.body10.i.i.for.end.i461.i_crit_edge ]
  %579 = ptrtoint ptr %addr_ctrl.i445.i to i32
  call void @__asan_load2_noabort(i32 %579)
  %580 = load i16, ptr %addr_ctrl.i445.i, align 4
  %conv16.i.i = zext i16 %580 to i32
  %add17.i.i = add i32 %t_value.046.i.i, %conv16.i.i
  %inc19.i.i = add nuw i32 %i.045.i.i, 1
  %exitcond49.not.i.i = icmp eq i32 %inc19.i.i, %548
  br i1 %exitcond49.not.i.i, label %for.end.i461.i.qla4_8xxx_minidump_process_l1cache.exit.i_crit_edge, label %for.end.i461.i.for.body.i454.i_crit_edge

for.end.i461.i.for.body.i454.i_crit_edge:         ; preds = %for.end.i461.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i454.i

for.end.i461.i.qla4_8xxx_minidump_process_l1cache.exit.i_crit_edge: ; preds = %for.end.i461.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_l1cache.exit.i

qla4_8xxx_minidump_process_l1cache.exit.i:        ; preds = %for.end.i461.i.qla4_8xxx_minidump_process_l1cache.exit.i_crit_edge, %sw.bb103.i.qla4_8xxx_minidump_process_l1cache.exit.i_crit_edge
  %data_ptr.0.lcssa.i462.i = phi ptr [ %data_ptr.0831.i, %sw.bb103.i.qla4_8xxx_minidump_process_l1cache.exit.i_crit_edge ], [ %data_ptr.1.lcssa.i460.i, %for.end.i461.i.qla4_8xxx_minidump_process_l1cache.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i438.i) #10
  br label %sw.epilog.i

sw.bb104.i:                                       ; preds = %do.end66.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %581 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %581)
  %cmp.i463.i = icmp eq i32 %581, 2
  br i1 %cmp.i463.i, label %do.end3.i471.i, label %do.end3.thread.i464.i

do.end3.thread.i464.i:                            ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #12
  %read_addr42.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdocm, ptr %entry_hdr.0835.i, i32 0, i32 7
  %582 = ptrtoint ptr %read_addr42.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %read_addr42.i.i, align 4
  %read_addr_stride43.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdocm, ptr %entry_hdr.0835.i, i32 0, i32 8
  %584 = ptrtoint ptr %read_addr_stride43.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %read_addr_stride43.i.i, align 4
  %op_count44.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdocm, ptr %entry_hdr.0835.i, i32 0, i32 4
  %586 = ptrtoint ptr %op_count44.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %op_count44.i.i, align 4
  br label %do.end14.i474.i

do.end3.i471.i:                                   ; preds = %sw.bb104.i
  %588 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %pdev6.i, align 8
  %dev.i466.i = getelementptr inbounds %struct.pci_dev, ptr %589, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i466.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.236) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr.i467.i = load i32, ptr @ql4xextended_error_logging, align 4
  %read_addr.i468.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdocm, ptr %entry_hdr.0835.i, i32 0, i32 7
  %590 = ptrtoint ptr %read_addr.i468.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %read_addr.i468.i, align 4
  %read_addr_stride.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdocm, ptr %entry_hdr.0835.i, i32 0, i32 8
  %592 = ptrtoint ptr %read_addr_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %read_addr_stride.i.i, align 4
  %op_count.i469.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_rdocm, ptr %entry_hdr.0835.i, i32 0, i32 4
  %594 = ptrtoint ptr %op_count.i469.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %op_count.i469.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i467.i)
  %cmp5.i470.i = icmp eq i32 %.pr.i467.i, 2
  br i1 %cmp5.i470.i, label %do.end9.i473.i, label %do.end3.i471.i.do.end14.i474.i_crit_edge

do.end3.i471.i.do.end14.i474.i_crit_edge:         ; preds = %do.end3.i471.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i474.i

do.end9.i473.i:                                   ; preds = %do.end3.i471.i
  call void @__sanitizer_cov_trace_pc() #12
  %596 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %pdev6.i, align 8
  %dev11.i472.i = getelementptr inbounds %struct.pci_dev, ptr %597, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev11.i472.i, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.236, i32 noundef %591, i32 noundef %593, i32 noundef %595) #13
  br label %do.end14.i474.i

do.end14.i474.i:                                  ; preds = %do.end9.i473.i, %do.end3.i471.i.do.end14.i474.i_crit_edge, %do.end3.thread.i464.i
  %598 = phi i32 [ %587, %do.end3.thread.i464.i ], [ %595, %do.end9.i473.i ], [ %595, %do.end3.i471.i.do.end14.i474.i_crit_edge ]
  %599 = phi i32 [ %585, %do.end3.thread.i464.i ], [ %593, %do.end9.i473.i ], [ %593, %do.end3.i471.i.do.end14.i474.i_crit_edge ]
  %600 = phi i32 [ %583, %do.end3.thread.i464.i ], [ %591, %do.end9.i473.i ], [ %591, %do.end3.i471.i.do.end14.i474.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %598)
  %cmp1546.not.i.i = icmp eq i32 %598, 0
  br i1 %cmp1546.not.i.i, label %do.end14.i474.i.do.body18.i.i_crit_edge, label %do.end14.i474.i.for.body.i482.i_crit_edge

do.end14.i474.i.for.body.i482.i_crit_edge:        ; preds = %do.end14.i474.i
  br label %for.body.i482.i

do.end14.i474.i.do.body18.i.i_crit_edge:          ; preds = %do.end14.i474.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18.i.i

for.body.i482.i:                                  ; preds = %for.body.i482.i.for.body.i482.i_crit_edge, %do.end14.i474.i.for.body.i482.i_crit_edge
  %r_addr.049.i.i = phi i32 [ %add17.i479.i, %for.body.i482.i.for.body.i482.i_crit_edge ], [ %600, %do.end14.i474.i.for.body.i482.i_crit_edge ]
  %i.048.i.i = phi i32 [ %inc.i480.i, %for.body.i482.i.for.body.i482.i_crit_edge ], [ 0, %do.end14.i474.i.for.body.i482.i_crit_edge ]
  %data_ptr.047.i476.i = phi ptr [ %incdec.ptr.i478.i, %for.body.i482.i.for.body.i482.i_crit_edge ], [ %data_ptr.0831.i, %do.end14.i474.i.for.body.i482.i_crit_edge ]
  %601 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i477.i = add i32 %602, %r_addr.049.i.i
  %603 = inttoptr i32 %add.i477.i to ptr
  %604 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %603) #10, !srcloc !628
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !657
  %incdec.ptr.i478.i = getelementptr i32, ptr %data_ptr.047.i476.i, i32 1
  %605 = ptrtoint ptr %data_ptr.047.i476.i to i32
  call void @__asan_store4_noabort(i32 %605)
  store i32 %604, ptr %data_ptr.047.i476.i, align 4
  %add17.i479.i = add i32 %r_addr.049.i.i, %599
  %inc.i480.i = add nuw i32 %i.048.i.i, 1
  %exitcond.not.i481.i = icmp eq i32 %inc.i480.i, %598
  br i1 %exitcond.not.i481.i, label %for.body.i482.i.do.body18.i.i_crit_edge, label %for.body.i482.i.for.body.i482.i_crit_edge

for.body.i482.i.for.body.i482.i_crit_edge:        ; preds = %for.body.i482.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i482.i

for.body.i482.i.do.body18.i.i_crit_edge:          ; preds = %for.body.i482.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18.i.i

do.body18.i.i:                                    ; preds = %for.body.i482.i.do.body18.i.i_crit_edge, %do.end14.i474.i.do.body18.i.i_crit_edge
  %data_ptr.0.lcssa.i483.i = phi ptr [ %data_ptr.0831.i, %do.end14.i474.i.do.body18.i.i_crit_edge ], [ %incdec.ptr.i478.i, %for.body.i482.i.do.body18.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %606 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %606)
  %cmp19.i.i = icmp eq i32 %606, 2
  br i1 %cmp19.i.i, label %do.end23.i.i, label %do.body18.i.i.sw.epilog.i_crit_edge

do.body18.i.i.sw.epilog.i_crit_edge:              ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end23.i.i:                                     ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %607 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %pdev6.i, align 8
  %dev25.i.i = getelementptr inbounds %struct.pci_dev, ptr %608, i32 0, i32 44
  %mul.i.i = shl i32 %598, 2
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev25.i.i, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.236, i32 noundef %mul.i.i) #13
  br label %sw.epilog.i

sw.bb105.i:                                       ; preds = %do.end66.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i484.i) #10
  %609 = ptrtoint ptr %r_value.i484.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 -1, ptr %r_value.i484.i, align 4, !annotation !641
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %610 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %610)
  %cmp.i485.i = icmp eq i32 %610, 2
  br i1 %cmp.i485.i, label %do.end.i488.i, label %sw.bb105.i.do.end3.i491.i_crit_edge

sw.bb105.i.do.end3.i491.i_crit_edge:              ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i491.i

do.end.i488.i:                                    ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #12
  %611 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %pdev6.i, align 8
  %dev.i487.i = getelementptr inbounds %struct.pci_dev, ptr %612, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i487.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.243) #13
  br label %do.end3.i491.i

do.end3.i491.i:                                   ; preds = %do.end.i488.i, %sw.bb105.i.do.end3.i491.i_crit_edge
  %read_addr.i489.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_mux, ptr %entry_hdr.0835.i, i32 0, i32 7
  %613 = ptrtoint ptr %read_addr.i489.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %read_addr.i489.i, align 4
  %select_addr.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_mux, ptr %entry_hdr.0835.i, i32 0, i32 1
  %615 = ptrtoint ptr %select_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %select_addr.i.i, align 4
  %select_value_stride.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_mux, ptr %entry_hdr.0835.i, i32 0, i32 6
  %617 = ptrtoint ptr %select_value_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %select_value_stride.i.i, align 4
  %op_count.i490.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_mux, ptr %entry_hdr.0835.i, i32 0, i32 4
  %619 = ptrtoint ptr %op_count.i490.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %op_count.i490.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %620)
  %cmp422.not.i.i = icmp eq i32 %620, 0
  br i1 %cmp422.not.i.i, label %do.end3.i491.i.qla4_8xxx_minidump_process_rdmux.exit.i_crit_edge, label %for.body.lr.ph.i493.i

do.end3.i491.i.qla4_8xxx_minidump_process_rdmux.exit.i_crit_edge: ; preds = %do.end3.i491.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_rdmux.exit.i

for.body.lr.ph.i493.i:                            ; preds = %do.end3.i491.i
  %select_value.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_mux, ptr %entry_hdr.0835.i, i32 0, i32 5
  %621 = ptrtoint ptr %select_value.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %select_value.i.i, align 4
  br label %for.body.i502.i

for.body.i502.i:                                  ; preds = %for.body.i502.i.for.body.i502.i_crit_edge, %for.body.lr.ph.i493.i
  %data_ptr.025.i.i = phi ptr [ %data_ptr.0831.i, %for.body.lr.ph.i493.i ], [ %incdec.ptr7.i.i, %for.body.i502.i.for.body.i502.i_crit_edge ]
  %i.024.i.i = phi i32 [ 0, %for.body.lr.ph.i493.i ], [ %inc.i500.i, %for.body.i502.i.for.body.i502.i_crit_edge ]
  %s_value.023.i.i = phi i32 [ %622, %for.body.lr.ph.i493.i ], [ %add.i499.i, %for.body.i502.i.for.body.i502.i_crit_edge ]
  %623 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i494.i = getelementptr inbounds %struct.isp_operations, ptr %624, i32 0, i32 19
  %625 = ptrtoint ptr %wr_reg_indirect.i494.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %wr_reg_indirect.i494.i, align 4
  %call.i495.i = call i32 %626(ptr noundef %ha, i32 noundef %616, i32 noundef %s_value.023.i.i) #10
  %627 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i496.i = getelementptr inbounds %struct.isp_operations, ptr %628, i32 0, i32 18
  %629 = ptrtoint ptr %rd_reg_indirect.i496.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %rd_reg_indirect.i496.i, align 4
  %call6.i497.i = call i32 %630(ptr noundef %ha, i32 noundef %614, ptr noundef nonnull %r_value.i484.i) #10
  %631 = call i32 @llvm.bswap.i32(i32 %s_value.023.i.i) #10
  %incdec.ptr.i498.i = getelementptr i32, ptr %data_ptr.025.i.i, i32 1
  %632 = ptrtoint ptr %data_ptr.025.i.i to i32
  call void @__asan_store4_noabort(i32 %632)
  store i32 %631, ptr %data_ptr.025.i.i, align 4
  %633 = ptrtoint ptr %r_value.i484.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %r_value.i484.i, align 4
  %635 = call i32 @llvm.bswap.i32(i32 %634) #10
  %incdec.ptr7.i.i = getelementptr i32, ptr %data_ptr.025.i.i, i32 2
  %636 = ptrtoint ptr %incdec.ptr.i498.i to i32
  call void @__asan_store4_noabort(i32 %636)
  store i32 %635, ptr %incdec.ptr.i498.i, align 4
  %add.i499.i = add i32 %s_value.023.i.i, %618
  %inc.i500.i = add nuw i32 %i.024.i.i, 1
  %exitcond.not.i501.i = icmp eq i32 %inc.i500.i, %620
  br i1 %exitcond.not.i501.i, label %for.body.i502.i.qla4_8xxx_minidump_process_rdmux.exit.i_crit_edge, label %for.body.i502.i.for.body.i502.i_crit_edge

for.body.i502.i.for.body.i502.i_crit_edge:        ; preds = %for.body.i502.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i502.i

for.body.i502.i.qla4_8xxx_minidump_process_rdmux.exit.i_crit_edge: ; preds = %for.body.i502.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_rdmux.exit.i

qla4_8xxx_minidump_process_rdmux.exit.i:          ; preds = %for.body.i502.i.qla4_8xxx_minidump_process_rdmux.exit.i_crit_edge, %do.end3.i491.i.qla4_8xxx_minidump_process_rdmux.exit.i_crit_edge
  %data_ptr.0.lcssa.i503.i = phi ptr [ %data_ptr.0831.i, %do.end3.i491.i.qla4_8xxx_minidump_process_rdmux.exit.i_crit_edge ], [ %incdec.ptr7.i.i, %for.body.i502.i.qla4_8xxx_minidump_process_rdmux.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i484.i) #10
  br label %sw.epilog.i

sw.bb106.i:                                       ; preds = %do.end66.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i505.i) #10
  %637 = ptrtoint ptr %r_value.i505.i to i32
  call void @__asan_store4_noabort(i32 %637)
  store i32 -1, ptr %r_value.i505.i, align 4, !annotation !641
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %638 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %638)
  %cmp.i506.i = icmp eq i32 %638, 2
  br i1 %cmp.i506.i, label %do.end.i509.i, label %sw.bb106.i.do.end3.i515.i_crit_edge

sw.bb106.i.do.end3.i515.i_crit_edge:              ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i515.i

do.end.i509.i:                                    ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #12
  %639 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %pdev6.i, align 8
  %dev.i508.i = getelementptr inbounds %struct.pci_dev, ptr %640, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i508.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.244) #13
  br label %do.end3.i515.i

do.end3.i515.i:                                   ; preds = %do.end.i509.i, %sw.bb106.i.do.end3.i515.i_crit_edge
  %select_addr.i510.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_queue, ptr %entry_hdr.0835.i, i32 0, i32 1
  %641 = ptrtoint ptr %select_addr.i510.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %select_addr.i510.i, align 4
  %rd_strd.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_queue, ptr %entry_hdr.0835.i, i32 0, i32 8
  %read_addr_cnt.i511.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_queue, ptr %entry_hdr.0835.i, i32 0, i32 8, i32 1
  %643 = ptrtoint ptr %read_addr_cnt.i511.i to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %read_addr_cnt.i511.i, align 1
  %conv.i512.i = zext i8 %644 to i32
  %645 = ptrtoint ptr %rd_strd.i.i to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %rd_strd.i.i, align 4
  %conv5.i513.i = zext i8 %646 to i32
  %op_count.i514.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_queue, ptr %entry_hdr.0835.i, i32 0, i32 4
  %647 = ptrtoint ptr %op_count.i514.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %op_count.i514.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %648)
  %cmp638.not.i.i = icmp eq i32 %648, 0
  br i1 %cmp638.not.i.i, label %do.end3.i515.i.qla4_8xxx_minidump_process_queue.exit.i_crit_edge, label %for.body.lr.ph.i518.i

do.end3.i515.i.qla4_8xxx_minidump_process_queue.exit.i_crit_edge: ; preds = %do.end3.i515.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_queue.exit.i

for.body.lr.ph.i518.i:                            ; preds = %do.end3.i515.i
  %read_addr.i517.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_queue, ptr %entry_hdr.0835.i, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %644)
  %cmp934.not.i.i = icmp eq i8 %644, 0
  %q_strd.i.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_queue, ptr %entry_hdr.0835.i, i32 0, i32 2
  br label %for.body.i521.i

for.body.i521.i:                                  ; preds = %for.end.i529.i.for.body.i521.i_crit_edge, %for.body.lr.ph.i518.i
  %data_ptr.041.i.i = phi ptr [ %data_ptr.0831.i, %for.body.lr.ph.i518.i ], [ %data_ptr.1.lcssa.i527.i, %for.end.i529.i.for.body.i521.i_crit_edge ]
  %i.040.i.i = phi i32 [ 0, %for.body.lr.ph.i518.i ], [ %inc17.i.i, %for.end.i529.i.for.body.i521.i_crit_edge ]
  %qid.039.i.i = phi i32 [ 0, %for.body.lr.ph.i518.i ], [ %add15.i.i, %for.end.i529.i.for.body.i521.i_crit_edge ]
  %649 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i519.i = getelementptr inbounds %struct.isp_operations, ptr %650, i32 0, i32 19
  %651 = ptrtoint ptr %wr_reg_indirect.i519.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %wr_reg_indirect.i519.i, align 4
  %call.i520.i = call i32 %652(ptr noundef %ha, i32 noundef %642, i32 noundef %qid.039.i.i) #10
  br i1 %cmp934.not.i.i, label %for.body.i521.i.for.end.i529.i_crit_edge, label %for.body11.preheader.i.i

for.body.i521.i.for.end.i529.i_crit_edge:         ; preds = %for.body.i521.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i529.i

for.body11.preheader.i.i:                         ; preds = %for.body.i521.i
  %653 = ptrtoint ptr %read_addr.i517.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %read_addr.i517.i, align 4
  br label %for.body11.i.i

for.body11.i.i:                                   ; preds = %for.body11.i.i.for.body11.i.i_crit_edge, %for.body11.preheader.i.i
  %data_ptr.137.i.i = phi ptr [ %incdec.ptr.i523.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ %data_ptr.041.i.i, %for.body11.preheader.i.i ]
  %k.036.i.i = phi i32 [ %inc.i525.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ 0, %for.body11.preheader.i.i ]
  %r_addr.035.i.i = phi i32 [ %add.i524.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ %654, %for.body11.preheader.i.i ]
  %655 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i522.i = getelementptr inbounds %struct.isp_operations, ptr %656, i32 0, i32 18
  %657 = ptrtoint ptr %rd_reg_indirect.i522.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %rd_reg_indirect.i522.i, align 4
  %call13.i.i = call i32 %658(ptr noundef %ha, i32 noundef %r_addr.035.i.i, ptr noundef nonnull %r_value.i505.i) #10
  %659 = ptrtoint ptr %r_value.i505.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %r_value.i505.i, align 4
  %661 = call i32 @llvm.bswap.i32(i32 %660) #10
  %incdec.ptr.i523.i = getelementptr i32, ptr %data_ptr.137.i.i, i32 1
  %662 = ptrtoint ptr %data_ptr.137.i.i to i32
  call void @__asan_store4_noabort(i32 %662)
  store i32 %661, ptr %data_ptr.137.i.i, align 4
  %add.i524.i = add i32 %r_addr.035.i.i, %conv5.i513.i
  %inc.i525.i = add nuw nsw i32 %k.036.i.i, 1
  %exitcond.not.i526.i = icmp eq i32 %inc.i525.i, %conv.i512.i
  br i1 %exitcond.not.i526.i, label %for.body11.i.i.for.end.i529.i_crit_edge, label %for.body11.i.i.for.body11.i.i_crit_edge

for.body11.i.i.for.body11.i.i_crit_edge:          ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i.i

for.body11.i.i.for.end.i529.i_crit_edge:          ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i529.i

for.end.i529.i:                                   ; preds = %for.body11.i.i.for.end.i529.i_crit_edge, %for.body.i521.i.for.end.i529.i_crit_edge
  %data_ptr.1.lcssa.i527.i = phi ptr [ %data_ptr.041.i.i, %for.body.i521.i.for.end.i529.i_crit_edge ], [ %incdec.ptr.i523.i, %for.body11.i.i.for.end.i529.i_crit_edge ]
  %663 = ptrtoint ptr %q_strd.i.i to i32
  call void @__asan_load2_noabort(i32 %663)
  %664 = load i16, ptr %q_strd.i.i, align 4
  %conv14.i528.i = zext i16 %664 to i32
  %add15.i.i = add i32 %qid.039.i.i, %conv14.i528.i
  %inc17.i.i = add nuw i32 %i.040.i.i, 1
  %exitcond43.not.i.i = icmp eq i32 %inc17.i.i, %648
  br i1 %exitcond43.not.i.i, label %for.end.i529.i.qla4_8xxx_minidump_process_queue.exit.i_crit_edge, label %for.end.i529.i.for.body.i521.i_crit_edge

for.end.i529.i.for.body.i521.i_crit_edge:         ; preds = %for.end.i529.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i521.i

for.end.i529.i.qla4_8xxx_minidump_process_queue.exit.i_crit_edge: ; preds = %for.end.i529.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_minidump_process_queue.exit.i

qla4_8xxx_minidump_process_queue.exit.i:          ; preds = %for.end.i529.i.qla4_8xxx_minidump_process_queue.exit.i_crit_edge, %do.end3.i515.i.qla4_8xxx_minidump_process_queue.exit.i_crit_edge
  %data_ptr.0.lcssa.i530.i = phi ptr [ %data_ptr.0831.i, %do.end3.i515.i.qla4_8xxx_minidump_process_queue.exit.i_crit_edge ], [ %data_ptr.1.lcssa.i527.i, %for.end.i529.i.qla4_8xxx_minidump_process_queue.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i505.i) #10
  br label %sw.epilog.i

sw.bb107.i:                                       ; preds = %do.end66.i
  %665 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %pdev6.i, align 8
  %device.i532.i = getelementptr inbounds %struct.pci_dev, ptr %666, i32 0, i32 8
  %667 = ptrtoint ptr %device.i532.i to i32
  call void @__asan_load2_noabort(i32 %667)
  %668 = load i16, ptr %device.i532.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %668)
  %cmp.i533.not.i = icmp eq i16 %668, -32734
  br i1 %cmp.i533.not.i, label %if.then110.i, label %if.end111.i

if.then110.i:                                     ; preds = %sw.bb107.i
  %driver_flags.i535.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %669 = ptrtoint ptr %driver_flags.i535.i to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %driver_flags.i535.i, align 1
  %671 = or i8 %670, -128
  store i8 %671, ptr %driver_flags.i535.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %672 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %672)
  %cmp.i536.i = icmp eq i32 %672, 2
  br i1 %cmp.i536.i, label %do.end.i542.i, label %if.then110.i.qla4_8xxx_mark_entry_skipped.exit546.i_crit_edge

if.then110.i.qla4_8xxx_mark_entry_skipped.exit546.i_crit_edge: ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_mark_entry_skipped.exit546.i

do.end.i542.i:                                    ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #12
  %673 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %pdev6.i, align 8
  %dev.i539.i = getelementptr inbounds %struct.pci_dev, ptr %674, i32 0, i32 44
  %675 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %host_no.i720.i, align 4
  %677 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %677)
  %678 = load i8, ptr %d_ctrl.i, align 4
  %conv5.i541.i = zext i8 %678 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i539.i, ptr noundef nonnull @.str.180, i32 noundef %676, i32 noundef %i.0852.i, i32 noundef 35, i32 noundef %conv5.i541.i) #13
  br label %qla4_8xxx_mark_entry_skipped.exit546.i

qla4_8xxx_mark_entry_skipped.exit546.i:           ; preds = %do.end.i542.i, %if.then110.i.qla4_8xxx_mark_entry_skipped.exit546.i_crit_edge
  %entry_capture_size.i543.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %679 = ptrtoint ptr %entry_capture_size.i543.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %entry_capture_size.i543.i, align 4
  %681 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add.i545.i = add i32 %682, %680
  store i32 %add.i545.i, ptr %fw_dump_skip_size.i, align 16
  br label %sw.epilog.i

if.end111.i:                                      ; preds = %sw.bb107.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i547.i) #10
  %683 = ptrtoint ptr %r_value.i547.i to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 -1, ptr %r_value.i547.i, align 4, !annotation !641
  %select_addr.i548.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrd, ptr %entry_hdr.0835.i, i32 0, i32 1
  %684 = ptrtoint ptr %select_addr.i548.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %select_addr.i548.i, align 4
  %686 = call i32 @llvm.bswap.i32(i32 %685) #10
  %read_addr.i549.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrd, ptr %entry_hdr.0835.i, i32 0, i32 2
  %687 = ptrtoint ptr %read_addr.i549.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %read_addr.i549.i, align 4
  %689 = call i32 @llvm.bswap.i32(i32 %688) #10
  %select_value.i550.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrd, ptr %entry_hdr.0835.i, i32 0, i32 3
  %690 = ptrtoint ptr %select_value.i550.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %select_value.i550.i, align 4
  %692 = call i32 @llvm.bswap.i32(i32 %691) #10
  %poll_wait2.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrd, ptr %entry_hdr.0835.i, i32 0, i32 6
  %poll_mask3.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrd, ptr %entry_hdr.0835.i, i32 0, i32 7
  %693 = ptrtoint ptr %poll_mask3.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %poll_mask3.i.i, align 4
  %695 = call i32 @llvm.bswap.i32(i32 %694) #10
  %op_count.i551.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrd, ptr %entry_hdr.0835.i, i32 0, i32 5
  %696 = ptrtoint ptr %op_count.i551.i to i32
  call void @__asan_load2_noabort(i32 %696)
  %697 = load i16, ptr %op_count.i551.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %697)
  %cmp43.not.i.i = icmp eq i16 %697, 0
  br i1 %cmp43.not.i.i, label %if.end111.i.qla83xx_minidump_process_pollrd.exit.thread.i_crit_edge, label %if.end111.i.for.body.i556.i_crit_edge

if.end111.i.for.body.i556.i_crit_edge:            ; preds = %if.end111.i
  br label %for.body.i556.i

if.end111.i.qla83xx_minidump_process_pollrd.exit.thread.i_crit_edge: ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla83xx_minidump_process_pollrd.exit.thread.i

for.body.i556.i:                                  ; preds = %while.end.i.i.for.body.i556.i_crit_edge, %if.end111.i.for.body.i556.i_crit_edge
  %data_ptr.045.i.i = phi ptr [ %incdec.ptr19.i.i, %while.end.i.i.for.body.i556.i_crit_edge ], [ %data_ptr.0831.i, %if.end111.i.for.body.i556.i_crit_edge ]
  %i.044.i.i = phi i16 [ %inc.i565.i, %while.end.i.i.for.body.i556.i_crit_edge ], [ 0, %if.end111.i.for.body.i556.i_crit_edge ]
  %698 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i554.i = getelementptr inbounds %struct.isp_operations, ptr %699, i32 0, i32 19
  %700 = ptrtoint ptr %wr_reg_indirect.i554.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %wr_reg_indirect.i554.i, align 4
  %call.i555.i = call i32 %701(ptr noundef %ha, i32 noundef %686, i32 noundef %692) #10
  %702 = ptrtoint ptr %poll_wait2.i.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %poll_wait2.i.i, align 4
  %704 = call i32 @llvm.bswap.i32(i32 %703) #10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.else.i559.i.while.cond.i.i_crit_edge, %for.body.i556.i
  %poll_wait.0.i.i = phi i32 [ %704, %for.body.i556.i ], [ %dec.i.i, %if.else.i559.i.while.cond.i.i_crit_edge ]
  %705 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i557.i = getelementptr inbounds %struct.isp_operations, ptr %706, i32 0, i32 18
  %707 = ptrtoint ptr %rd_reg_indirect.i557.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %rd_reg_indirect.i557.i, align 4
  %call9.i.i = call i32 %708(ptr noundef %ha, i32 noundef %686, ptr noundef nonnull %r_value.i547.i) #10
  %709 = ptrtoint ptr %r_value.i547.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %r_value.i547.i, align 4
  %and.i558.i = and i32 %710, %695
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i558.i)
  %cmp10.not.i.i = icmp eq i32 %and.i558.i, 0
  br i1 %cmp10.not.i.i, label %if.else.i559.i, label %while.end.i.i

if.else.i559.i:                                   ; preds = %while.cond.i.i
  call void @msleep(i32 noundef 1) #10
  %dec.i.i = add i32 %poll_wait.0.i.i, -1
  %cmp12.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp12.i.i, label %if.then115.i, label %if.else.i559.i.while.cond.i.i_crit_edge

if.else.i559.i.while.cond.i.i_crit_edge:          ; preds = %if.else.i559.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %711 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect17.i.i = getelementptr inbounds %struct.isp_operations, ptr %712, i32 0, i32 18
  %713 = ptrtoint ptr %rd_reg_indirect17.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %rd_reg_indirect17.i.i, align 4
  %call18.i563.i = call i32 %714(ptr noundef %ha, i32 noundef %689, ptr noundef nonnull %r_value.i547.i) #10
  %incdec.ptr.i564.i = getelementptr i32, ptr %data_ptr.045.i.i, i32 1
  %715 = ptrtoint ptr %data_ptr.045.i.i to i32
  call void @__asan_store4_noabort(i32 %715)
  store i32 %691, ptr %data_ptr.045.i.i, align 4
  %716 = ptrtoint ptr %r_value.i547.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %r_value.i547.i, align 4
  %718 = call i32 @llvm.bswap.i32(i32 %717) #10
  %incdec.ptr19.i.i = getelementptr i32, ptr %data_ptr.045.i.i, i32 2
  %719 = ptrtoint ptr %incdec.ptr.i564.i to i32
  call void @__asan_store4_noabort(i32 %719)
  store i32 %718, ptr %incdec.ptr.i564.i, align 4
  %inc.i565.i = add i16 %i.044.i.i, 1
  %conv4.i566.i = zext i16 %inc.i565.i to i32
  %720 = ptrtoint ptr %op_count.i551.i to i32
  call void @__asan_load2_noabort(i32 %720)
  %721 = load i16, ptr %op_count.i551.i, align 2
  %conv5.i567.i = zext i16 %721 to i32
  %722 = call i32 @llvm.bswap.i32(i32 %conv5.i567.i) #10
  %cmp.i568.i = icmp ugt i32 %722, %conv4.i566.i
  br i1 %cmp.i568.i, label %while.end.i.i.for.body.i556.i_crit_edge, label %while.end.i.i.qla83xx_minidump_process_pollrd.exit.thread.i_crit_edge

while.end.i.i.qla83xx_minidump_process_pollrd.exit.thread.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla83xx_minidump_process_pollrd.exit.thread.i

while.end.i.i.for.body.i556.i_crit_edge:          ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i556.i

qla83xx_minidump_process_pollrd.exit.thread.i:    ; preds = %while.end.i.i.qla83xx_minidump_process_pollrd.exit.thread.i_crit_edge, %if.end111.i.qla83xx_minidump_process_pollrd.exit.thread.i_crit_edge
  %data_ptr.3.ph.i = phi ptr [ %data_ptr.0831.i, %if.end111.i.qla83xx_minidump_process_pollrd.exit.thread.i_crit_edge ], [ %incdec.ptr19.i.i, %while.end.i.i.qla83xx_minidump_process_pollrd.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i547.i) #10
  br label %sw.epilog.i

if.then115.i:                                     ; preds = %if.else.i559.i
  %723 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %pdev6.i, align 8
  %dev.i561.i = getelementptr inbounds %struct.pci_dev, ptr %724, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i561.i, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.246) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i547.i) #10
  %driver_flags.i572.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %725 = ptrtoint ptr %driver_flags.i572.i to i32
  call void @__asan_load1_noabort(i32 %725)
  %726 = load i8, ptr %driver_flags.i572.i, align 1
  %727 = or i8 %726, -128
  store i8 %727, ptr %driver_flags.i572.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %728 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %728)
  %cmp.i573.i = icmp eq i32 %728, 2
  br i1 %cmp.i573.i, label %do.end.i579.i, label %if.then115.i.qla4_8xxx_mark_entry_skipped.exit583.i_crit_edge

if.then115.i.qla4_8xxx_mark_entry_skipped.exit583.i_crit_edge: ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_mark_entry_skipped.exit583.i

do.end.i579.i:                                    ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #12
  %729 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %pdev6.i, align 8
  %dev.i576.i = getelementptr inbounds %struct.pci_dev, ptr %730, i32 0, i32 44
  %731 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load i32, ptr %host_no.i720.i, align 4
  %733 = ptrtoint ptr %entry_hdr.0835.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %entry_hdr.0835.i, align 4
  %735 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %735)
  %736 = load i8, ptr %d_ctrl.i, align 4
  %conv5.i578.i = zext i8 %736 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i576.i, ptr noundef nonnull @.str.180, i32 noundef %732, i32 noundef %i.0852.i, i32 noundef %734, i32 noundef %conv5.i578.i) #13
  br label %qla4_8xxx_mark_entry_skipped.exit583.i

qla4_8xxx_mark_entry_skipped.exit583.i:           ; preds = %do.end.i579.i, %if.then115.i.qla4_8xxx_mark_entry_skipped.exit583.i_crit_edge
  %entry_capture_size.i580.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %737 = ptrtoint ptr %entry_capture_size.i580.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %entry_capture_size.i580.i, align 4
  %739 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add.i582.i = add i32 %740, %738
  store i32 %add.i582.i, ptr %fw_dump_skip_size.i, align 16
  br label %sw.epilog.i

sw.bb117.i:                                       ; preds = %do.end66.i
  %741 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %pdev6.i, align 8
  %device.i585.i = getelementptr inbounds %struct.pci_dev, ptr %742, i32 0, i32 8
  %743 = ptrtoint ptr %device.i585.i to i32
  call void @__asan_load2_noabort(i32 %743)
  %744 = load i16, ptr %device.i585.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %744)
  %cmp.i586.not.i = icmp eq i16 %744, -32734
  br i1 %cmp.i586.not.i, label %if.then120.i, label %if.end121.i

if.then120.i:                                     ; preds = %sw.bb117.i
  %driver_flags.i588.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %745 = ptrtoint ptr %driver_flags.i588.i to i32
  call void @__asan_load1_noabort(i32 %745)
  %746 = load i8, ptr %driver_flags.i588.i, align 1
  %747 = or i8 %746, -128
  store i8 %747, ptr %driver_flags.i588.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %748 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %748)
  %cmp.i589.i = icmp eq i32 %748, 2
  br i1 %cmp.i589.i, label %do.end.i595.i, label %if.then120.i.qla4_8xxx_mark_entry_skipped.exit599.i_crit_edge

if.then120.i.qla4_8xxx_mark_entry_skipped.exit599.i_crit_edge: ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_mark_entry_skipped.exit599.i

do.end.i595.i:                                    ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #12
  %749 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %pdev6.i, align 8
  %dev.i592.i = getelementptr inbounds %struct.pci_dev, ptr %750, i32 0, i32 44
  %751 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %host_no.i720.i, align 4
  %753 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %753)
  %754 = load i8, ptr %d_ctrl.i, align 4
  %conv5.i594.i = zext i8 %754 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i592.i, ptr noundef nonnull @.str.180, i32 noundef %752, i32 noundef %i.0852.i, i32 noundef 36, i32 noundef %conv5.i594.i) #13
  br label %qla4_8xxx_mark_entry_skipped.exit599.i

qla4_8xxx_mark_entry_skipped.exit599.i:           ; preds = %do.end.i595.i, %if.then120.i.qla4_8xxx_mark_entry_skipped.exit599.i_crit_edge
  %entry_capture_size.i596.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %755 = ptrtoint ptr %entry_capture_size.i596.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %entry_capture_size.i596.i, align 4
  %757 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add.i598.i = add i32 %758, %756
  store i32 %add.i598.i, ptr %fw_dump_skip_size.i, align 16
  br label %sw.epilog.i

if.end121.i:                                      ; preds = %sw.bb117.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #10
  %759 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %759)
  store i32 -1, ptr %data.i.i, align 4, !annotation !641
  %select_addr_1.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, ptr %entry_hdr.0835.i, i32 0, i32 1
  %760 = ptrtoint ptr %select_addr_1.i.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load i32, ptr %select_addr_1.i.i, align 4
  %762 = call i32 @llvm.bswap.i32(i32 %761) #10
  %select_addr_2.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, ptr %entry_hdr.0835.i, i32 0, i32 2
  %763 = ptrtoint ptr %select_addr_2.i.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %select_addr_2.i.i, align 4
  %765 = call i32 @llvm.bswap.i32(i32 %764) #10
  %select_value_mask.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, ptr %entry_hdr.0835.i, i32 0, i32 6
  %766 = ptrtoint ptr %select_value_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %select_value_mask.i.i, align 4
  %768 = call i32 @llvm.bswap.i32(i32 %767) #10
  %read_addr1.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, ptr %entry_hdr.0835.i, i32 0, i32 7
  %769 = ptrtoint ptr %read_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %read_addr1.i.i, align 4
  %771 = call i32 @llvm.bswap.i32(i32 %770) #10
  %op_count.i600.i = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, ptr %entry_hdr.0835.i, i32 0, i32 5
  %772 = ptrtoint ptr %op_count.i600.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %op_count.i600.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %773)
  %cmp59.not.i.i = icmp eq i32 %773, 0
  br i1 %cmp59.not.i.i, label %if.end121.i.qla83xx_minidump_process_rdmux2.exit.i_crit_edge, label %for.body.lr.ph.i603.i

if.end121.i.qla83xx_minidump_process_rdmux2.exit.i_crit_edge: ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla83xx_minidump_process_rdmux2.exit.i

for.body.lr.ph.i603.i:                            ; preds = %if.end121.i
  %select_value_2.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, ptr %entry_hdr.0835.i, i32 0, i32 4
  %774 = ptrtoint ptr %select_value_2.i.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load i32, ptr %select_value_2.i.i, align 4
  %776 = call i32 @llvm.bswap.i32(i32 %775) #10
  %select_value_1.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, ptr %entry_hdr.0835.i, i32 0, i32 3
  %777 = ptrtoint ptr %select_value_1.i.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %select_value_1.i.i, align 4
  %779 = call i32 @llvm.bswap.i32(i32 %778) #10
  %select_value_stride.i602.i = getelementptr inbounds %struct.qla83xx_minidump_entry_rdmux2, ptr %entry_hdr.0835.i, i32 0, i32 8
  br label %for.body.i620.i

for.body.i620.i:                                  ; preds = %for.body.i620.i.for.body.i620.i_crit_edge, %for.body.lr.ph.i603.i
  %data_ptr.063.i.i = phi ptr [ %data_ptr.0831.i, %for.body.lr.ph.i603.i ], [ %incdec.ptr19.i615.i, %for.body.i620.i.for.body.i620.i_crit_edge ]
  %i.062.i.i = phi i32 [ 0, %for.body.lr.ph.i603.i ], [ %inc.i618.i, %for.body.i620.i.for.body.i620.i_crit_edge ]
  %sel_val2.061.i.i = phi i32 [ %776, %for.body.lr.ph.i603.i ], [ %add22.i.i, %for.body.i620.i.for.body.i620.i_crit_edge ]
  %sel_val1.060.i.i = phi i32 [ %779, %for.body.lr.ph.i603.i ], [ %add.i617.i, %for.body.i620.i.for.body.i620.i_crit_edge ]
  %780 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i604.i = getelementptr inbounds %struct.isp_operations, ptr %781, i32 0, i32 19
  %782 = ptrtoint ptr %wr_reg_indirect.i604.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %wr_reg_indirect.i604.i, align 4
  %call.i605.i = call i32 %783(ptr noundef %ha, i32 noundef %762, i32 noundef %sel_val1.060.i.i) #10
  %and.i606.i = and i32 %sel_val1.060.i.i, %768
  %784 = call i32 @llvm.bswap.i32(i32 %and.i606.i) #10
  %incdec.ptr.i607.i = getelementptr i32, ptr %data_ptr.063.i.i, i32 1
  %785 = ptrtoint ptr %data_ptr.063.i.i to i32
  call void @__asan_store4_noabort(i32 %785)
  store i32 %784, ptr %data_ptr.063.i.i, align 4
  %786 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect3.i.i = getelementptr inbounds %struct.isp_operations, ptr %787, i32 0, i32 19
  %788 = ptrtoint ptr %wr_reg_indirect3.i.i to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %wr_reg_indirect3.i.i, align 4
  %call4.i.i = call i32 %789(ptr noundef %ha, i32 noundef %765, i32 noundef %and.i606.i) #10
  %790 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i608.i = getelementptr inbounds %struct.isp_operations, ptr %791, i32 0, i32 18
  %792 = ptrtoint ptr %rd_reg_indirect.i608.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %rd_reg_indirect.i608.i, align 4
  %call6.i609.i = call i32 %793(ptr noundef %ha, i32 noundef %771, ptr noundef nonnull %data.i.i) #10
  %794 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load i32, ptr %data.i.i, align 4
  %796 = call i32 @llvm.bswap.i32(i32 %795) #10
  %incdec.ptr7.i610.i = getelementptr i32, ptr %data_ptr.063.i.i, i32 2
  %797 = ptrtoint ptr %incdec.ptr.i607.i to i32
  call void @__asan_store4_noabort(i32 %797)
  store i32 %796, ptr %incdec.ptr.i607.i, align 4
  %798 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect9.i.i = getelementptr inbounds %struct.isp_operations, ptr %799, i32 0, i32 19
  %800 = ptrtoint ptr %wr_reg_indirect9.i.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %wr_reg_indirect9.i.i, align 4
  %call10.i.i = call i32 %801(ptr noundef %ha, i32 noundef %762, i32 noundef %sel_val2.061.i.i) #10
  %and11.i.i = and i32 %sel_val2.061.i.i, %768
  %802 = call i32 @llvm.bswap.i32(i32 %and11.i.i) #10
  %incdec.ptr12.i.i = getelementptr i32, ptr %data_ptr.063.i.i, i32 3
  %803 = ptrtoint ptr %incdec.ptr7.i610.i to i32
  call void @__asan_store4_noabort(i32 %803)
  store i32 %802, ptr %incdec.ptr7.i610.i, align 4
  %804 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect14.i611.i = getelementptr inbounds %struct.isp_operations, ptr %805, i32 0, i32 19
  %806 = ptrtoint ptr %wr_reg_indirect14.i611.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %wr_reg_indirect14.i611.i, align 4
  %call15.i612.i = call i32 %807(ptr noundef %ha, i32 noundef %765, i32 noundef %and11.i.i) #10
  %808 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect17.i613.i = getelementptr inbounds %struct.isp_operations, ptr %809, i32 0, i32 18
  %810 = ptrtoint ptr %rd_reg_indirect17.i613.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %rd_reg_indirect17.i613.i, align 4
  %call18.i614.i = call i32 %811(ptr noundef %ha, i32 noundef %771, ptr noundef nonnull %data.i.i) #10
  %812 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load i32, ptr %data.i.i, align 4
  %814 = call i32 @llvm.bswap.i32(i32 %813) #10
  %incdec.ptr19.i615.i = getelementptr i32, ptr %data_ptr.063.i.i, i32 4
  %815 = ptrtoint ptr %incdec.ptr12.i.i to i32
  call void @__asan_store4_noabort(i32 %815)
  store i32 %814, ptr %incdec.ptr12.i.i, align 4
  %816 = ptrtoint ptr %select_value_stride.i602.i to i32
  call void @__asan_load1_noabort(i32 %816)
  %817 = load i8, ptr %select_value_stride.i602.i, align 4
  %conv.i616.i = zext i8 %817 to i32
  %add.i617.i = add i32 %sel_val1.060.i.i, %conv.i616.i
  %add22.i.i = add i32 %sel_val2.061.i.i, %conv.i616.i
  %inc.i618.i = add nuw i32 %i.062.i.i, 1
  %818 = ptrtoint ptr %op_count.i600.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load i32, ptr %op_count.i600.i, align 4
  %cmp.i619.i = icmp ult i32 %inc.i618.i, %819
  br i1 %cmp.i619.i, label %for.body.i620.i.for.body.i620.i_crit_edge, label %for.body.i620.i.qla83xx_minidump_process_rdmux2.exit.i_crit_edge

for.body.i620.i.qla83xx_minidump_process_rdmux2.exit.i_crit_edge: ; preds = %for.body.i620.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla83xx_minidump_process_rdmux2.exit.i

for.body.i620.i.for.body.i620.i_crit_edge:        ; preds = %for.body.i620.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i620.i

qla83xx_minidump_process_rdmux2.exit.i:           ; preds = %for.body.i620.i.qla83xx_minidump_process_rdmux2.exit.i_crit_edge, %if.end121.i.qla83xx_minidump_process_rdmux2.exit.i_crit_edge
  %data_ptr.0.lcssa.i621.i = phi ptr [ %data_ptr.0831.i, %if.end121.i.qla83xx_minidump_process_rdmux2.exit.i_crit_edge ], [ %incdec.ptr19.i615.i, %for.body.i620.i.qla83xx_minidump_process_rdmux2.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #10
  br label %sw.epilog.i

sw.bb122.i:                                       ; preds = %do.end66.i
  %820 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %pdev6.i, align 8
  %device.i624.i = getelementptr inbounds %struct.pci_dev, ptr %821, i32 0, i32 8
  %822 = ptrtoint ptr %device.i624.i to i32
  call void @__asan_load2_noabort(i32 %822)
  %823 = load i16, ptr %device.i624.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %823)
  %cmp.i625.not.i = icmp eq i16 %823, -32734
  br i1 %cmp.i625.not.i, label %if.then125.i, label %if.end126.i

if.then125.i:                                     ; preds = %sw.bb122.i
  %driver_flags.i627.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %824 = ptrtoint ptr %driver_flags.i627.i to i32
  call void @__asan_load1_noabort(i32 %824)
  %825 = load i8, ptr %driver_flags.i627.i, align 1
  %826 = or i8 %825, -128
  store i8 %826, ptr %driver_flags.i627.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %827 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %827)
  %cmp.i628.i = icmp eq i32 %827, 2
  br i1 %cmp.i628.i, label %do.end.i634.i, label %if.then125.i.qla4_8xxx_mark_entry_skipped.exit638.i_crit_edge

if.then125.i.qla4_8xxx_mark_entry_skipped.exit638.i_crit_edge: ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_mark_entry_skipped.exit638.i

do.end.i634.i:                                    ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #12
  %828 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %pdev6.i, align 8
  %dev.i631.i = getelementptr inbounds %struct.pci_dev, ptr %829, i32 0, i32 44
  %830 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load i32, ptr %host_no.i720.i, align 4
  %832 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %832)
  %833 = load i8, ptr %d_ctrl.i, align 4
  %conv5.i633.i = zext i8 %833 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i631.i, ptr noundef nonnull @.str.180, i32 noundef %831, i32 noundef %i.0852.i, i32 noundef 37, i32 noundef %conv5.i633.i) #13
  br label %qla4_8xxx_mark_entry_skipped.exit638.i

qla4_8xxx_mark_entry_skipped.exit638.i:           ; preds = %do.end.i634.i, %if.then125.i.qla4_8xxx_mark_entry_skipped.exit638.i_crit_edge
  %entry_capture_size.i635.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %834 = ptrtoint ptr %entry_capture_size.i635.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load i32, ptr %entry_capture_size.i635.i, align 4
  %836 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add.i637.i = add i32 %837, %835
  store i32 %add.i637.i, ptr %fw_dump_skip_size.i, align 16
  br label %sw.epilog.i

if.end126.i:                                      ; preds = %sw.bb122.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i639.i) #10
  %838 = ptrtoint ptr %r_value.i639.i to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 -1, ptr %r_value.i639.i, align 4, !annotation !641
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i640.i) #10
  %839 = ptrtoint ptr %data.i640.i to i32
  call void @__asan_store4_noabort(i32 %839)
  store i32 -1, ptr %data.i640.i, align 4, !annotation !641
  %addr_11.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrdmwr, ptr %entry_hdr.0835.i, i32 0, i32 1
  %840 = ptrtoint ptr %addr_11.i.i to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load i32, ptr %addr_11.i.i, align 4
  %842 = call i32 @llvm.bswap.i32(i32 %841) #10
  %addr_22.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrdmwr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %843 = ptrtoint ptr %addr_22.i.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load i32, ptr %addr_22.i.i, align 4
  %845 = call i32 @llvm.bswap.i32(i32 %844) #10
  %value_13.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrdmwr, ptr %entry_hdr.0835.i, i32 0, i32 3
  %846 = ptrtoint ptr %value_13.i.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load i32, ptr %value_13.i.i, align 4
  %848 = call i32 @llvm.bswap.i32(i32 %847) #10
  %value_24.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrdmwr, ptr %entry_hdr.0835.i, i32 0, i32 4
  %849 = ptrtoint ptr %value_24.i.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %value_24.i.i, align 4
  %851 = call i32 @llvm.bswap.i32(i32 %850) #10
  %poll_mask5.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrdmwr, ptr %entry_hdr.0835.i, i32 0, i32 6
  %852 = ptrtoint ptr %poll_mask5.i.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load i32, ptr %poll_mask5.i.i, align 4
  %854 = call i32 @llvm.bswap.i32(i32 %853) #10
  %855 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i642.i = getelementptr inbounds %struct.isp_operations, ptr %856, i32 0, i32 19
  %857 = ptrtoint ptr %wr_reg_indirect.i642.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %wr_reg_indirect.i642.i, align 4
  %call.i643.i = call i32 %858(ptr noundef %ha, i32 noundef %842, i32 noundef %848) #10
  %poll_wait6.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrdmwr, ptr %entry_hdr.0835.i, i32 0, i32 5
  %859 = ptrtoint ptr %poll_wait6.i.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %poll_wait6.i.i, align 4
  %861 = call i32 @llvm.bswap.i32(i32 %860) #10
  br label %while.cond.i648.i

while.cond.i648.i:                                ; preds = %if.else.i650.i.while.cond.i648.i_crit_edge, %if.end126.i
  %poll_wait.0.i644.i = phi i32 [ %861, %if.end126.i ], [ %dec.i649.i, %if.else.i650.i.while.cond.i648.i_crit_edge ]
  %862 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i645.i = getelementptr inbounds %struct.isp_operations, ptr %863, i32 0, i32 18
  %864 = ptrtoint ptr %rd_reg_indirect.i645.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %rd_reg_indirect.i645.i, align 4
  %call8.i.i = call i32 %865(ptr noundef %ha, i32 noundef %842, ptr noundef nonnull %r_value.i639.i) #10
  %866 = ptrtoint ptr %r_value.i639.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load i32, ptr %r_value.i639.i, align 4
  %and.i646.i = and i32 %867, %854
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i646.i)
  %cmp.not.i647.i = icmp eq i32 %and.i646.i, 0
  br i1 %cmp.not.i647.i, label %if.else.i650.i, label %while.end.i657.i

if.else.i650.i:                                   ; preds = %while.cond.i648.i
  call void @msleep(i32 noundef 1) #10
  %dec.i649.i = add i32 %poll_wait.0.i644.i, -1
  %cmp9.i.i = icmp eq i32 %dec.i649.i, 0
  br i1 %cmp9.i.i, label %if.else.i650.i.if.then130.i_crit_edge, label %if.else.i650.i.while.cond.i648.i_crit_edge

if.else.i650.i.while.cond.i648.i_crit_edge:       ; preds = %if.else.i650.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i648.i

if.else.i650.i.if.then130.i_crit_edge:            ; preds = %if.else.i650.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then130.i

while.end.i657.i:                                 ; preds = %while.cond.i648.i
  %868 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect13.i.i = getelementptr inbounds %struct.isp_operations, ptr %869, i32 0, i32 18
  %870 = ptrtoint ptr %rd_reg_indirect13.i.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %rd_reg_indirect13.i.i, align 4
  %call14.i654.i = call i32 %871(ptr noundef %ha, i32 noundef %845, ptr noundef nonnull %data.i640.i) #10
  %modify_mask.i.i = getelementptr inbounds %struct.qla83xx_minidump_entry_pollrdmwr, ptr %entry_hdr.0835.i, i32 0, i32 7
  %872 = ptrtoint ptr %modify_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load i32, ptr %modify_mask.i.i, align 4
  %874 = call i32 @llvm.bswap.i32(i32 %873) #10
  %875 = ptrtoint ptr %data.i640.i to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load i32, ptr %data.i640.i, align 4
  %and15.i.i = and i32 %876, %874
  store i32 %and15.i.i, ptr %data.i640.i, align 4
  %877 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect17.i.i = getelementptr inbounds %struct.isp_operations, ptr %878, i32 0, i32 19
  %879 = ptrtoint ptr %wr_reg_indirect17.i.i to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %wr_reg_indirect17.i.i, align 4
  %call18.i655.i = call i32 %880(ptr noundef %ha, i32 noundef %845, i32 noundef %and15.i.i) #10
  %881 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect20.i.i = getelementptr inbounds %struct.isp_operations, ptr %882, i32 0, i32 19
  %883 = ptrtoint ptr %wr_reg_indirect20.i.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %wr_reg_indirect20.i.i, align 4
  %call21.i656.i = call i32 %884(ptr noundef %ha, i32 noundef %842, i32 noundef %851) #10
  %885 = ptrtoint ptr %poll_wait6.i.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load i32, ptr %poll_wait6.i.i, align 4
  %887 = call i32 @llvm.bswap.i32(i32 %886) #10
  br label %while.cond23.i.i

while.cond23.i.i:                                 ; preds = %if.else31.i.i.while.cond23.i.i_crit_edge, %while.end.i657.i
  %poll_wait.1.i.i = phi i32 [ %887, %while.end.i657.i ], [ %dec32.i.i, %if.else31.i.i.while.cond23.i.i_crit_edge ]
  %888 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect26.i.i = getelementptr inbounds %struct.isp_operations, ptr %889, i32 0, i32 18
  %890 = ptrtoint ptr %rd_reg_indirect26.i.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %rd_reg_indirect26.i.i, align 4
  %call27.i.i = call i32 %891(ptr noundef %ha, i32 noundef %842, ptr noundef nonnull %r_value.i639.i) #10
  %892 = ptrtoint ptr %r_value.i639.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load i32, ptr %r_value.i639.i, align 4
  %and28.i658.i = and i32 %893, %854
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i658.i)
  %cmp29.not.i.i = icmp eq i32 %and28.i658.i, 0
  br i1 %cmp29.not.i.i, label %if.else31.i.i, label %qla83xx_minidump_process_pollrdmwr.exit.i

if.else31.i.i:                                    ; preds = %while.cond23.i.i
  call void @msleep(i32 noundef 1) #10
  %dec32.i.i = add i32 %poll_wait.1.i.i, -1
  %cmp33.i.i = icmp eq i32 %dec32.i.i, 0
  br i1 %cmp33.i.i, label %if.else31.i.i.if.then130.i_crit_edge, label %if.else31.i.i.while.cond23.i.i_crit_edge

if.else31.i.i.while.cond23.i.i_crit_edge:         ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond23.i.i

if.else31.i.i.if.then130.i_crit_edge:             ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then130.i

qla83xx_minidump_process_pollrdmwr.exit.i:        ; preds = %while.cond23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i659.i = getelementptr i32, ptr %data_ptr.0831.i, i32 1
  %894 = ptrtoint ptr %data_ptr.0831.i to i32
  call void @__asan_store4_noabort(i32 %894)
  store i32 %844, ptr %data_ptr.0831.i, align 4
  %895 = ptrtoint ptr %data.i640.i to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load i32, ptr %data.i640.i, align 4
  %897 = call i32 @llvm.bswap.i32(i32 %896) #10
  %incdec.ptr43.i.i = getelementptr i32, ptr %data_ptr.0831.i, i32 2
  %898 = ptrtoint ptr %incdec.ptr.i659.i to i32
  call void @__asan_store4_noabort(i32 %898)
  store i32 %897, ptr %incdec.ptr.i659.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i640.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i639.i) #10
  br label %sw.epilog.i

if.then130.i:                                     ; preds = %if.else31.i.i.if.then130.i_crit_edge, %if.else.i650.i.if.then130.i_crit_edge
  %.str.250.sink.i = phi ptr [ @.str.250, %if.else31.i.i.if.then130.i_crit_edge ], [ @.str.247, %if.else.i650.i.if.then130.i_crit_edge ]
  %899 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %pdev6.i, align 8
  %dev39.i.i = getelementptr inbounds %struct.pci_dev, ptr %900, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev39.i.i, ptr noundef nonnull %.str.250.sink.i, ptr noundef nonnull @.str.248) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i640.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i639.i) #10
  %driver_flags.i661.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %901 = ptrtoint ptr %driver_flags.i661.i to i32
  call void @__asan_load1_noabort(i32 %901)
  %902 = load i8, ptr %driver_flags.i661.i, align 1
  %903 = or i8 %902, -128
  store i8 %903, ptr %driver_flags.i661.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %904 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %904)
  %cmp.i662.i = icmp eq i32 %904, 2
  br i1 %cmp.i662.i, label %do.end.i668.i, label %if.then130.i.qla4_8xxx_mark_entry_skipped.exit672.i_crit_edge

if.then130.i.qla4_8xxx_mark_entry_skipped.exit672.i_crit_edge: ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_mark_entry_skipped.exit672.i

do.end.i668.i:                                    ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #12
  %905 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %pdev6.i, align 8
  %dev.i665.i = getelementptr inbounds %struct.pci_dev, ptr %906, i32 0, i32 44
  %907 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load i32, ptr %host_no.i720.i, align 4
  %909 = ptrtoint ptr %entry_hdr.0835.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load i32, ptr %entry_hdr.0835.i, align 4
  %911 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %911)
  %912 = load i8, ptr %d_ctrl.i, align 4
  %conv5.i667.i = zext i8 %912 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i665.i, ptr noundef nonnull @.str.180, i32 noundef %908, i32 noundef %i.0852.i, i32 noundef %910, i32 noundef %conv5.i667.i) #13
  br label %qla4_8xxx_mark_entry_skipped.exit672.i

qla4_8xxx_mark_entry_skipped.exit672.i:           ; preds = %do.end.i668.i, %if.then130.i.qla4_8xxx_mark_entry_skipped.exit672.i_crit_edge
  %entry_capture_size.i669.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %913 = ptrtoint ptr %entry_capture_size.i669.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load i32, ptr %entry_capture_size.i669.i, align 4
  %915 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add.i671.i = add i32 %916, %914
  store i32 %add.i671.i, ptr %fw_dump_skip_size.i, align 16
  br label %sw.epilog.i

sw.bb144.i:                                       ; preds = %do.end66.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_value.i697.i) #10
  %917 = ptrtoint ptr %r_value.i697.i to i32
  call void @__asan_store4_noabort(i32 %917)
  store i32 -1, ptr %r_value.i697.i, align 4, !annotation !641
  %addr_1.i.i = getelementptr inbounds %struct.qla8044_minidump_entry_pollwr, ptr %entry_hdr.0835.i, i32 0, i32 1
  %918 = ptrtoint ptr %addr_1.i.i to i32
  call void @__asan_loadN_noabort(i32 %918, i32 4)
  %919 = load i32, ptr %addr_1.i.i, align 1
  %920 = call i32 @llvm.bswap.i32(i32 %919) #10
  %addr_2.i.i = getelementptr inbounds %struct.qla8044_minidump_entry_pollwr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %921 = ptrtoint ptr %addr_2.i.i to i32
  call void @__asan_loadN_noabort(i32 %921, i32 4)
  %922 = load i32, ptr %addr_2.i.i, align 1
  %923 = call i32 @llvm.bswap.i32(i32 %922) #10
  %value_1.i698.i = getelementptr inbounds %struct.qla8044_minidump_entry_pollwr, ptr %entry_hdr.0835.i, i32 0, i32 3
  %924 = ptrtoint ptr %value_1.i698.i to i32
  call void @__asan_loadN_noabort(i32 %924, i32 4)
  %925 = load i32, ptr %value_1.i698.i, align 1
  %926 = call i32 @llvm.bswap.i32(i32 %925) #10
  %value_2.i699.i = getelementptr inbounds %struct.qla8044_minidump_entry_pollwr, ptr %entry_hdr.0835.i, i32 0, i32 4
  %927 = ptrtoint ptr %value_2.i699.i to i32
  call void @__asan_loadN_noabort(i32 %927, i32 4)
  %928 = load i32, ptr %value_2.i699.i, align 1
  %929 = call i32 @llvm.bswap.i32(i32 %928) #10
  %poll1.i.i = getelementptr inbounds %struct.qla8044_minidump_entry_pollwr, ptr %entry_hdr.0835.i, i32 0, i32 5
  %930 = ptrtoint ptr %poll1.i.i to i32
  call void @__asan_loadN_noabort(i32 %930, i32 4)
  %931 = load i32, ptr %poll1.i.i, align 1
  %932 = call i32 @llvm.bswap.i32(i32 %931) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %931)
  %cmp1.not.i.i = icmp eq i32 %931, 0
  br i1 %cmp1.not.i.i, label %sw.bb144.i.while.end.i706.i_crit_edge, label %while.body.preheader.i.i

sw.bb144.i.while.end.i706.i_crit_edge:            ; preds = %sw.bb144.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i706.i

while.body.preheader.i.i:                         ; preds = %sw.bb144.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %932, i32 1) #10
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %wait_count.02.i.i = phi i32 [ %inc.i704.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %933 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect.i701.i = getelementptr inbounds %struct.isp_operations, ptr %934, i32 0, i32 18
  %935 = ptrtoint ptr %rd_reg_indirect.i701.i to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %rd_reg_indirect.i701.i, align 4
  %call.i702.i = call i32 %936(ptr noundef %ha, i32 noundef %920, ptr noundef nonnull %r_value.i697.i) #10
  %937 = ptrtoint ptr %r_value.i697.i to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load i32, ptr %r_value.i697.i, align 4
  %and.i703.i = and i32 %938, %932
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i703.i)
  %cmp2.not.i.i = icmp eq i32 %and.i703.i, 0
  br i1 %cmp2.not.i.i, label %if.end.i.i, label %while.body.i.i.while.end.i706.i_crit_edge

while.body.i.i.while.end.i706.i_crit_edge:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i706.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %inc.i704.i = add nuw i32 %wait_count.02.i.i, 1
  %exitcond.not.i705.i = icmp eq i32 %inc.i704.i, %umax.i.i
  br i1 %exitcond.not.i705.i, label %if.end.i.i.while.end.i706.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i.while.end.i706.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i706.i

while.end.i706.i:                                 ; preds = %if.end.i.i.while.end.i706.i_crit_edge, %while.body.i.i.while.end.i706.i_crit_edge, %sw.bb144.i.while.end.i706.i_crit_edge
  %wait_count.0.lcssa.i.i = phi i32 [ 0, %sw.bb144.i.while.end.i706.i_crit_edge ], [ %wait_count.02.i.i, %while.body.i.i.while.end.i706.i_crit_edge ], [ %umax.i.i, %if.end.i.i.while.end.i706.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wait_count.0.lcssa.i.i, i32 %932)
  %cmp3.i.i = icmp eq i32 %wait_count.0.lcssa.i.i, %932
  br i1 %cmp3.i.i, label %if.then148.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %while.end.i706.i
  %939 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect.i710.i = getelementptr inbounds %struct.isp_operations, ptr %940, i32 0, i32 19
  %941 = ptrtoint ptr %wr_reg_indirect.i710.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %wr_reg_indirect.i710.i, align 4
  %call7.i.i = call i32 %942(ptr noundef %ha, i32 noundef %923, i32 noundef %929) #10
  %943 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %isp_ops.i700.i, align 4
  %wr_reg_indirect9.i711.i = getelementptr inbounds %struct.isp_operations, ptr %944, i32 0, i32 19
  %945 = ptrtoint ptr %wr_reg_indirect9.i711.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %wr_reg_indirect9.i711.i, align 4
  %call10.i712.i = call i32 %946(ptr noundef %ha, i32 noundef %920, i32 noundef %926) #10
  br i1 %cmp1.not.i.i, label %if.end5.i.i.qla4_84xx_minidump_process_pollwr.exit.thread.i_crit_edge, label %while.body13.preheader.i.i

if.end5.i.i.qla4_84xx_minidump_process_pollwr.exit.thread.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_84xx_minidump_process_pollwr.exit.thread.i

while.body13.preheader.i.i:                       ; preds = %if.end5.i.i
  %umax6.i.i = call i32 @llvm.umax.i32(i32 %932, i32 1) #10
  br label %while.body13.i.i

while.body13.i.i:                                 ; preds = %while.body13.i.i.while.body13.i.i_crit_edge, %while.body13.preheader.i.i
  %wait_count.15.i.i = phi i32 [ 0, %while.body13.preheader.i.i ], [ %inc21.i.i, %while.body13.i.i.while.body13.i.i_crit_edge ]
  %947 = ptrtoint ptr %isp_ops.i700.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %isp_ops.i700.i, align 4
  %rd_reg_indirect15.i.i = getelementptr inbounds %struct.isp_operations, ptr %948, i32 0, i32 18
  %949 = ptrtoint ptr %rd_reg_indirect15.i.i to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %rd_reg_indirect15.i.i, align 4
  %call16.i.i = call i32 %950(ptr noundef %ha, i32 noundef %920, ptr noundef nonnull %r_value.i697.i) #10
  %951 = ptrtoint ptr %r_value.i697.i to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load i32, ptr %r_value.i697.i, align 4
  %and17.i713.i = and i32 %952, %932
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i713.i)
  %cmp18.not.i.i = icmp ne i32 %and17.i713.i, 0
  %inc21.i.i = add nuw i32 %wait_count.15.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.i.i, i32 %umax6.i.i)
  %exitcond7.not.i.i = icmp eq i32 %inc21.i.i, %umax6.i.i
  %or.cond.i.i = select i1 %cmp18.not.i.i, i1 true, i1 %exitcond7.not.i.i
  br i1 %or.cond.i.i, label %while.body13.i.i.qla4_84xx_minidump_process_pollwr.exit.thread.i_crit_edge, label %while.body13.i.i.while.body13.i.i_crit_edge

while.body13.i.i.while.body13.i.i_crit_edge:      ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body13.i.i

while.body13.i.i.qla4_84xx_minidump_process_pollwr.exit.thread.i_crit_edge: ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_84xx_minidump_process_pollwr.exit.thread.i

qla4_84xx_minidump_process_pollwr.exit.thread.i:  ; preds = %while.body13.i.i.qla4_84xx_minidump_process_pollwr.exit.thread.i_crit_edge, %if.end5.i.i.qla4_84xx_minidump_process_pollwr.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i697.i) #10
  br label %sw.epilog.i

if.then148.i:                                     ; preds = %while.end.i706.i
  %953 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %pdev6.i, align 8
  %dev.i708.i = getelementptr inbounds %struct.pci_dev, ptr %954, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i708.i, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.261) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_value.i697.i) #10
  %driver_flags.i715.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %955 = ptrtoint ptr %driver_flags.i715.i to i32
  call void @__asan_load1_noabort(i32 %955)
  %956 = load i8, ptr %driver_flags.i715.i, align 1
  %957 = or i8 %956, -128
  store i8 %957, ptr %driver_flags.i715.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %958 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %958)
  %cmp.i716.i = icmp eq i32 %958, 2
  br i1 %cmp.i716.i, label %do.end.i722.i, label %if.then148.i.qla4_8xxx_mark_entry_skipped.exit726.i_crit_edge

if.then148.i.qla4_8xxx_mark_entry_skipped.exit726.i_crit_edge: ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_mark_entry_skipped.exit726.i

do.end.i722.i:                                    ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  %959 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %pdev6.i, align 8
  %dev.i719.i = getelementptr inbounds %struct.pci_dev, ptr %960, i32 0, i32 44
  %961 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load i32, ptr %host_no.i720.i, align 4
  %963 = ptrtoint ptr %entry_hdr.0835.i to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load i32, ptr %entry_hdr.0835.i, align 4
  %965 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %965)
  %966 = load i8, ptr %d_ctrl.i, align 4
  %conv5.i721.i = zext i8 %966 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i719.i, ptr noundef nonnull @.str.180, i32 noundef %962, i32 noundef %i.0852.i, i32 noundef %964, i32 noundef %conv5.i721.i) #13
  br label %qla4_8xxx_mark_entry_skipped.exit726.i

qla4_8xxx_mark_entry_skipped.exit726.i:           ; preds = %do.end.i722.i, %if.then148.i.qla4_8xxx_mark_entry_skipped.exit726.i_crit_edge
  %entry_capture_size.i723.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %967 = ptrtoint ptr %entry_capture_size.i723.i to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load i32, ptr %entry_capture_size.i723.i, align 4
  %969 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add.i725.i = add i32 %970, %968
  store i32 %add.i725.i, ptr %fw_dump_skip_size.i, align 16
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %do.end66.i
  %driver_flags.i727.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 3, i32 3
  %971 = ptrtoint ptr %driver_flags.i727.i to i32
  call void @__asan_load1_noabort(i32 %971)
  %972 = load i8, ptr %driver_flags.i727.i, align 1
  %973 = or i8 %972, -128
  store i8 %973, ptr %driver_flags.i727.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %974 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %974)
  %cmp.i728.i = icmp eq i32 %974, 2
  br i1 %cmp.i728.i, label %do.end.i734.i, label %sw.default.i.qla4_8xxx_mark_entry_skipped.exit738.i_crit_edge

sw.default.i.qla4_8xxx_mark_entry_skipped.exit738.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_mark_entry_skipped.exit738.i

do.end.i734.i:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  %975 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %pdev6.i, align 8
  %dev.i731.i = getelementptr inbounds %struct.pci_dev, ptr %976, i32 0, i32 44
  %977 = ptrtoint ptr %host_no.i720.i to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load i32, ptr %host_no.i720.i, align 4
  %979 = ptrtoint ptr %d_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %979)
  %980 = load i8, ptr %d_ctrl.i, align 4
  %conv5.i733.i = zext i8 %980 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i731.i, ptr noundef nonnull @.str.180, i32 noundef %978, i32 noundef %i.0852.i, i32 noundef %63, i32 noundef %conv5.i733.i) #13
  br label %qla4_8xxx_mark_entry_skipped.exit738.i

qla4_8xxx_mark_entry_skipped.exit738.i:           ; preds = %do.end.i734.i, %sw.default.i.qla4_8xxx_mark_entry_skipped.exit738.i_crit_edge
  %entry_capture_size.i735.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 2
  %981 = ptrtoint ptr %entry_capture_size.i735.i to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load i32, ptr %entry_capture_size.i735.i, align 4
  %983 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add.i737.i = add i32 %984, %982
  store i32 %add.i737.i, ptr %fw_dump_skip_size.i, align 16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %qla4_8xxx_mark_entry_skipped.exit738.i, %qla4_8xxx_mark_entry_skipped.exit726.i, %qla4_84xx_minidump_process_pollwr.exit.thread.i, %qla4_8xxx_mark_entry_skipped.exit672.i, %qla83xx_minidump_process_pollrdmwr.exit.i, %qla4_8xxx_mark_entry_skipped.exit638.i, %qla83xx_minidump_process_rdmux2.exit.i, %qla4_8xxx_mark_entry_skipped.exit599.i, %qla4_8xxx_mark_entry_skipped.exit583.i, %qla83xx_minidump_process_pollrd.exit.thread.i, %qla4_8xxx_mark_entry_skipped.exit546.i, %qla4_8xxx_minidump_process_queue.exit.i, %qla4_8xxx_minidump_process_rdmux.exit.i, %do.end23.i.i, %do.body18.i.i.sw.epilog.i_crit_edge, %qla4_8xxx_minidump_process_l1cache.exit.i, %qla4_8xxx_minidump_process_l2tag.exit.thread.i, %qla4_8xxx_mark_entry_skipped.exit399.i, %qla4_83xx_minidump_process_rdrom.exit.i.sw.epilog.i_crit_edge, %qla4_82xx_minidump_process_rdrom.exit.i, %sw.bb80.i.sw.epilog.i_crit_edge, %qla4_8xxx_minidump_process_rdmem.exit.i, %qla4_8xxx_minidump_pex_dma_read.exit.i.i.sw.epilog.i_crit_edge, %qla4_8xxx_minidump_process_rdcrb.exit.i, %qla4_8xxx_minidump_process_control.exit.i.sw.epilog.i_crit_edge, %qla4_8xxx_mark_entry_skipped.exit.i, %do.end66.i.sw.epilog.i_crit_edge, %do.end66.i.sw.epilog.i_crit_edge359
  %data_ptr.5.i = phi ptr [ %data_ptr.0831.i, %qla4_8xxx_mark_entry_skipped.exit738.i ], [ %data_ptr.0831.i, %qla4_8xxx_mark_entry_skipped.exit726.i ], [ %incdec.ptr43.i.i, %qla83xx_minidump_process_pollrdmwr.exit.i ], [ %data_ptr.0831.i, %qla4_8xxx_mark_entry_skipped.exit672.i ], [ %data_ptr.0831.i, %qla4_8xxx_mark_entry_skipped.exit638.i ], [ %data_ptr.0.lcssa.i621.i, %qla83xx_minidump_process_rdmux2.exit.i ], [ %data_ptr.0831.i, %qla4_8xxx_mark_entry_skipped.exit599.i ], [ %data_ptr.0831.i, %qla4_8xxx_mark_entry_skipped.exit583.i ], [ %data_ptr.0831.i, %qla4_8xxx_mark_entry_skipped.exit546.i ], [ %data_ptr.0.lcssa.i530.i, %qla4_8xxx_minidump_process_queue.exit.i ], [ %data_ptr.0.lcssa.i503.i, %qla4_8xxx_minidump_process_rdmux.exit.i ], [ %data_ptr.0.lcssa.i462.i, %qla4_8xxx_minidump_process_l1cache.exit.i ], [ %add.ptr.i.i, %qla4_83xx_minidump_process_rdrom.exit.i.sw.epilog.i_crit_edge ], [ %data_ptr.1761.i, %qla4_8xxx_mark_entry_skipped.exit399.i ], [ %data_ptr.0.lcssa.i371.i, %qla4_82xx_minidump_process_rdrom.exit.i ], [ %data_ptr.2.i.i, %qla4_8xxx_minidump_process_rdmem.exit.i ], [ %data_ptr.0.lcssa.i.i, %qla4_8xxx_minidump_process_rdcrb.exit.i ], [ %data_ptr.0831.i, %qla4_8xxx_minidump_process_control.exit.i.sw.epilog.i_crit_edge ], [ %data_ptr.0831.i, %qla4_8xxx_mark_entry_skipped.exit.i ], [ %data_ptr.2.ph.i, %qla4_8xxx_minidump_process_l2tag.exit.thread.i ], [ %data_ptr.0.lcssa.i483.i, %do.body18.i.i.sw.epilog.i_crit_edge ], [ %data_ptr.0.lcssa.i483.i, %do.end23.i.i ], [ %data_ptr.3.ph.i, %qla83xx_minidump_process_pollrd.exit.thread.i ], [ %data_ptr.0831.i, %do.end66.i.sw.epilog.i_crit_edge ], [ %data_ptr.0831.i, %do.end66.i.sw.epilog.i_crit_edge359 ], [ %data_ptr.0831.i, %qla4_84xx_minidump_process_pollwr.exit.thread.i ], [ %data_ptr.0.i.i, %qla4_8xxx_minidump_pex_dma_read.exit.i.i.sw.epilog.i_crit_edge ], [ %data_ptr.0831.i, %sw.bb80.i.sw.epilog.i_crit_edge ]
  %rval.1.i = phi i32 [ %rval.0866.i, %qla4_8xxx_mark_entry_skipped.exit738.i ], [ 1, %qla4_8xxx_mark_entry_skipped.exit726.i ], [ 0, %qla83xx_minidump_process_pollrdmwr.exit.i ], [ 1, %qla4_8xxx_mark_entry_skipped.exit672.i ], [ %rval.0866.i, %qla4_8xxx_mark_entry_skipped.exit638.i ], [ %rval.0866.i, %qla83xx_minidump_process_rdmux2.exit.i ], [ %rval.0866.i, %qla4_8xxx_mark_entry_skipped.exit599.i ], [ 1, %qla4_8xxx_mark_entry_skipped.exit583.i ], [ %rval.0866.i, %qla4_8xxx_mark_entry_skipped.exit546.i ], [ %rval.0866.i, %qla4_8xxx_minidump_process_queue.exit.i ], [ %rval.0866.i, %qla4_8xxx_minidump_process_rdmux.exit.i ], [ %rval.0866.i, %qla4_8xxx_minidump_process_l1cache.exit.i ], [ 0, %qla4_83xx_minidump_process_rdrom.exit.i.sw.epilog.i_crit_edge ], [ %call.i386.i, %qla4_8xxx_mark_entry_skipped.exit399.i ], [ %rval.0866.i, %qla4_82xx_minidump_process_rdrom.exit.i ], [ 0, %qla4_8xxx_minidump_process_rdmem.exit.i ], [ %rval.0866.i, %qla4_8xxx_minidump_process_rdcrb.exit.i ], [ 0, %qla4_8xxx_minidump_process_control.exit.i.sw.epilog.i_crit_edge ], [ %rval.0866.i, %qla4_8xxx_mark_entry_skipped.exit.i ], [ 0, %qla4_8xxx_minidump_process_l2tag.exit.thread.i ], [ %rval.0866.i, %do.body18.i.i.sw.epilog.i_crit_edge ], [ %rval.0866.i, %do.end23.i.i ], [ 0, %qla83xx_minidump_process_pollrd.exit.thread.i ], [ 0, %do.end66.i.sw.epilog.i_crit_edge ], [ 0, %do.end66.i.sw.epilog.i_crit_edge359 ], [ 0, %qla4_84xx_minidump_process_pollwr.exit.thread.i ], [ 0, %qla4_8xxx_minidump_pex_dma_read.exit.i.i.sw.epilog.i_crit_edge ], [ %rval.0866.i, %sw.bb80.i.sw.epilog.i_crit_edge ]
  %985 = ptrtoint ptr %fw_dump.i to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %fw_dump.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %data_ptr.5.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %986 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skip_nxt_entry.i

skip_nxt_entry.i:                                 ; preds = %sw.epilog.i, %if.then49.i
  %data_ptr.6.i = phi ptr [ %data_ptr.0831.i, %if.then49.i ], [ %data_ptr.5.i, %sw.epilog.i ]
  %data_collected.1.i = phi i32 [ %data_collected.0851.i, %if.then49.i ], [ %sub.ptr.sub.i, %sw.epilog.i ]
  %rval.2.i = phi i32 [ %rval.0866.i, %if.then49.i ], [ %rval.1.i, %sw.epilog.i ]
  %entry_size.i = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr.0835.i, i32 0, i32 1
  %987 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load i32, ptr %entry_size.i, align 4
  %add.ptr152.i = getelementptr i8, ptr %entry_hdr.0835.i, i32 %988
  %inc.i = add nuw nsw i32 %i.0852.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %skip_nxt_entry.i.for.end.i_crit_edge, label %skip_nxt_entry.i.for.body.i_crit_edge

skip_nxt_entry.i.for.body.i_crit_edge:            ; preds = %skip_nxt_entry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

skip_nxt_entry.i.for.end.i_crit_edge:             ; preds = %skip_nxt_entry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %skip_nxt_entry.i.for.end.i_crit_edge, %if.end33.i.for.end.i_crit_edge
  %data_collected.0.lcssa.i = phi i32 [ %17, %if.end33.i.for.end.i_crit_edge ], [ %data_collected.1.i, %skip_nxt_entry.i.for.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %if.end33.i.for.end.i_crit_edge ], [ %19, %skip_nxt_entry.i.for.end.i_crit_edge ]
  %rval.0.lcssa.i = phi i32 [ 1, %if.end33.i.for.end.i_crit_edge ], [ %rval.2.i, %skip_nxt_entry.i.for.end.i_crit_edge ]
  %989 = ptrtoint ptr %fw_dump_skip_size.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load i32, ptr %fw_dump_skip_size.i, align 16
  %add154.i = add i32 %990, %data_collected.0.lcssa.i
  %991 = ptrtoint ptr %fw_dump_size.i to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load i32, ptr %fw_dump_size.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add154.i, i32 %992)
  %cmp156.not.i = icmp eq i32 %add154.i, %992
  br i1 %cmp156.not.i, label %do.body166.i, label %do.end161.i

do.end161.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %993 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %pdev6.i, align 8
  %dev163.i = getelementptr inbounds %struct.pci_dev, ptr %994, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev163.i, ptr noundef nonnull @.str.175, i32 noundef %data_collected.0.lcssa.i, i32 noundef %992) #13
  br label %do.end

do.body166.i:                                     ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %995 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %995)
  %cmp167.i = icmp eq i32 %995, 2
  br i1 %cmp167.i, label %do.end172.i, label %do.body166.i.qla4_8xxx_collect_md_data.exit_crit_edge

do.body166.i.qla4_8xxx_collect_md_data.exit_crit_edge: ; preds = %do.body166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_collect_md_data.exit

do.end172.i:                                      ; preds = %do.body166.i
  call void @__sanitizer_cov_trace_pc() #12
  %996 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load ptr, ptr %pdev6.i, align 8
  %dev174.i = getelementptr inbounds %struct.pci_dev, ptr %997, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev174.i, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.155, i32 noundef %i.0.lcssa.i) #13
  br label %qla4_8xxx_collect_md_data.exit

qla4_8xxx_collect_md_data.exit:                   ; preds = %do.end172.i, %do.body166.i.qla4_8xxx_collect_md_data.exit_crit_edge, %do.end41.i
  %retval.0.i = phi i32 [ %rval.0866.i, %do.end41.i ], [ %rval.0.lcssa.i, %do.end172.i ], [ %rval.0.lcssa.i, %do.body166.i.qla4_8xxx_collect_md_data.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %if.then8, label %qla4_8xxx_collect_md_data.exit.do.end_crit_edge

qla4_8xxx_collect_md_data.exit.do.end_crit_edge:  ; preds = %qla4_8xxx_collect_md_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then8:                                         ; preds = %qla4_8xxx_collect_md_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %event_string.i) #10
  %998 = call ptr @memset(ptr %event_string.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %envp.i) #10
  %999 = getelementptr inbounds [2 x ptr], ptr %envp.i, i32 0, i32 1
  %1000 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %1000)
  store ptr %event_string.i, ptr %envp.i, align 4
  %1001 = ptrtoint ptr %999 to i32
  call void @__asan_store4_noabort(i32 %1001)
  store ptr null, ptr %999, align 4
  %host_no.i18 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %1002 = ptrtoint ptr %host_no.i18 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load i32, ptr %host_no.i18, align 4
  %call.i19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %event_string.i, i32 noundef 40, ptr noundef nonnull @.str.262, i32 noundef %1003) #10
  %1004 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %pdev6.i, align 8
  %dev.i21 = getelementptr inbounds %struct.pci_dev, ptr %1005, i32 0, i32 44
  %call3.i = call i32 @kobject_uevent_env(ptr noundef %dev.i21, i32 noundef 2, ptr noundef nonnull %envp.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %envp.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %event_string.i) #10
  call void @_set_bit(i32 noundef 24, ptr noundef %ha) #10
  br label %if.end10

do.end:                                           ; preds = %qla4_8xxx_collect_md_data.exit.do.end_crit_edge, %do.end161.i, %qla4_8xxx_mark_entry_skipped.exit437.i, %if.then78.i, %if.then71.i, %do.end.i
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1006 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1007, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then8, %land.lhs.true2.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_device_bootstrap(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops, align 4
  %need_reset1 = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %need_reset1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %need_reset1, align 4
  %call = tail call i32 %3(ptr noundef %ha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ha, align 4
  %6 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then.do.end_crit_edge, label %if.then.do.end.sink.split_crit_edge

if.then.do.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %11 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %10(ptr noundef %ha, i32 noundef %14) #10
  tail call void @msleep(i32 noundef 200) #10
  %15 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i67 = getelementptr inbounds %struct.isp_operations, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %rd_reg_direct.i67 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rd_reg_direct.i67, align 4
  %19 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69 = getelementptr i32, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i69, align 4
  %call.i70 = tail call i32 %18(ptr noundef %ha, i32 noundef %22) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70, i32 %call.i)
  %cmp8.not = icmp eq i32 %call.i70, %call.i
  br i1 %cmp8.not, label %for.cond, label %if.else.do.end33_crit_edge

if.else.do.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond:                                         ; preds = %if.else
  tail call void @msleep(i32 noundef 200) #10
  %23 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i67.1 = getelementptr inbounds %struct.isp_operations, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %rd_reg_direct.i67.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rd_reg_direct.i67.1, align 4
  %27 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69.1 = getelementptr i32, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx.i69.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i69.1, align 4
  %call.i70.1 = tail call i32 %26(ptr noundef %ha, i32 noundef %30) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70.1, i32 %call.i)
  %cmp8.not.1 = icmp eq i32 %call.i70.1, %call.i
  br i1 %cmp8.not.1, label %for.cond.1, label %for.cond.do.end33_crit_edge

for.cond.do.end33_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond.1:                                       ; preds = %for.cond
  tail call void @msleep(i32 noundef 200) #10
  %31 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i67.2 = getelementptr inbounds %struct.isp_operations, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %rd_reg_direct.i67.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rd_reg_direct.i67.2, align 4
  %35 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69.2 = getelementptr i32, ptr %36, i32 2
  %37 = ptrtoint ptr %arrayidx.i69.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i69.2, align 4
  %call.i70.2 = tail call i32 %34(ptr noundef %ha, i32 noundef %38) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70.2, i32 %call.i)
  %cmp8.not.2 = icmp eq i32 %call.i70.2, %call.i
  br i1 %cmp8.not.2, label %for.cond.2, label %for.cond.1.do.end33_crit_edge

for.cond.1.do.end33_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond.2:                                       ; preds = %for.cond.1
  tail call void @msleep(i32 noundef 200) #10
  %39 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i67.3 = getelementptr inbounds %struct.isp_operations, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %rd_reg_direct.i67.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rd_reg_direct.i67.3, align 4
  %43 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69.3 = getelementptr i32, ptr %44, i32 2
  %45 = ptrtoint ptr %arrayidx.i69.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i69.3, align 4
  %call.i70.3 = tail call i32 %42(ptr noundef %ha, i32 noundef %46) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70.3, i32 %call.i)
  %cmp8.not.3 = icmp eq i32 %call.i70.3, %call.i
  br i1 %cmp8.not.3, label %for.cond.3, label %for.cond.2.do.end33_crit_edge

for.cond.2.do.end33_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond.3:                                       ; preds = %for.cond.2
  tail call void @msleep(i32 noundef 200) #10
  %47 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i67.4 = getelementptr inbounds %struct.isp_operations, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %rd_reg_direct.i67.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rd_reg_direct.i67.4, align 4
  %51 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69.4 = getelementptr i32, ptr %52, i32 2
  %53 = ptrtoint ptr %arrayidx.i69.4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i69.4, align 4
  %call.i70.4 = tail call i32 %50(ptr noundef %ha, i32 noundef %54) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70.4, i32 %call.i)
  %cmp8.not.4 = icmp eq i32 %call.i70.4, %call.i
  br i1 %cmp8.not.4, label %for.cond.4, label %for.cond.3.do.end33_crit_edge

for.cond.3.do.end33_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond.4:                                       ; preds = %for.cond.3
  tail call void @msleep(i32 noundef 200) #10
  %55 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i67.5 = getelementptr inbounds %struct.isp_operations, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %rd_reg_direct.i67.5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rd_reg_direct.i67.5, align 4
  %59 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69.5 = getelementptr i32, ptr %60, i32 2
  %61 = ptrtoint ptr %arrayidx.i69.5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i69.5, align 4
  %call.i70.5 = tail call i32 %58(ptr noundef %ha, i32 noundef %62) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70.5, i32 %call.i)
  %cmp8.not.5 = icmp eq i32 %call.i70.5, %call.i
  br i1 %cmp8.not.5, label %for.cond.5, label %for.cond.4.do.end33_crit_edge

for.cond.4.do.end33_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond.5:                                       ; preds = %for.cond.4
  tail call void @msleep(i32 noundef 200) #10
  %63 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i67.6 = getelementptr inbounds %struct.isp_operations, ptr %64, i32 0, i32 16
  %65 = ptrtoint ptr %rd_reg_direct.i67.6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rd_reg_direct.i67.6, align 4
  %67 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69.6 = getelementptr i32, ptr %68, i32 2
  %69 = ptrtoint ptr %arrayidx.i69.6 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i69.6, align 4
  %call.i70.6 = tail call i32 %66(ptr noundef %ha, i32 noundef %70) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70.6, i32 %call.i)
  %cmp8.not.6 = icmp eq i32 %call.i70.6, %call.i
  br i1 %cmp8.not.6, label %for.cond.6, label %for.cond.5.do.end33_crit_edge

for.cond.5.do.end33_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond.6:                                       ; preds = %for.cond.5
  tail call void @msleep(i32 noundef 200) #10
  %71 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i67.7 = getelementptr inbounds %struct.isp_operations, ptr %72, i32 0, i32 16
  %73 = ptrtoint ptr %rd_reg_direct.i67.7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rd_reg_direct.i67.7, align 4
  %75 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69.7 = getelementptr i32, ptr %76, i32 2
  %77 = ptrtoint ptr %arrayidx.i69.7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i69.7, align 4
  %call.i70.7 = tail call i32 %74(ptr noundef %ha, i32 noundef %78) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70.7, i32 %call.i)
  %cmp8.not.7 = icmp eq i32 %call.i70.7, %call.i
  br i1 %cmp8.not.7, label %for.cond.7, label %for.cond.6.do.end33_crit_edge

for.cond.6.do.end33_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond.7:                                       ; preds = %for.cond.6
  tail call void @msleep(i32 noundef 200) #10
  %79 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i67.8 = getelementptr inbounds %struct.isp_operations, ptr %80, i32 0, i32 16
  %81 = ptrtoint ptr %rd_reg_direct.i67.8 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rd_reg_direct.i67.8, align 4
  %83 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69.8 = getelementptr i32, ptr %84, i32 2
  %85 = ptrtoint ptr %arrayidx.i69.8 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i69.8, align 4
  %call.i70.8 = tail call i32 %82(ptr noundef %ha, i32 noundef %86) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70.8, i32 %call.i)
  %cmp8.not.8 = icmp eq i32 %call.i70.8, %call.i
  br i1 %cmp8.not.8, label %for.cond.8, label %for.cond.7.do.end33_crit_edge

for.cond.7.do.end33_crit_edge:                    ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond.8:                                       ; preds = %for.cond.7
  tail call void @msleep(i32 noundef 200) #10
  %87 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i67.9 = getelementptr inbounds %struct.isp_operations, ptr %88, i32 0, i32 16
  %89 = ptrtoint ptr %rd_reg_direct.i67.9 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rd_reg_direct.i67.9, align 4
  %91 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69.9 = getelementptr i32, ptr %92, i32 2
  %93 = ptrtoint ptr %arrayidx.i69.9 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i69.9, align 4
  %call.i70.9 = tail call i32 %90(ptr noundef %ha, i32 noundef %94) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i70.9, i32 %call.i)
  %cmp8.not.9 = icmp eq i32 %call.i70.9, %call.i
  br i1 %cmp8.not.9, label %for.cond.8.do.end.sink.split_crit_edge, label %for.cond.8.do.end33_crit_edge

for.cond.8.do.end33_crit_edge:                    ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond.8.do.end.sink.split_crit_edge:           ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %for.cond.8.do.end.sink.split_crit_edge, %if.then.do.end.sink.split_crit_edge
  %95 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %isp_ops, align 4
  %rom_lock_recovery12 = getelementptr inbounds %struct.isp_operations, ptr %96, i32 0, i32 22
  %97 = ptrtoint ptr %rom_lock_recovery12 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rom_lock_recovery12, align 4
  tail call void %98(ptr noundef %ha) #10
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.then.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %99 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.42) #13
  %101 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %isp_ops, align 4
  %wr_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %102, i32 0, i32 17
  %103 = ptrtoint ptr %wr_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wr_reg_direct.i, align 4
  %reg_tbl.i72 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %105 = ptrtoint ptr %reg_tbl.i72 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reg_tbl.i72, align 8
  %arrayidx.i73 = getelementptr i32, ptr %106, i32 4
  %107 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i73, align 4
  tail call void %104(ptr noundef %ha, i32 noundef %108, i32 noundef 2) #10
  %109 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %isp_ops, align 4
  %idc_unlock = getelementptr inbounds %struct.isp_operations, ptr %110, i32 0, i32 21
  %111 = ptrtoint ptr %idc_unlock to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %idc_unlock, align 4
  tail call void %112(ptr noundef %ha) #10
  %113 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 8
  %115 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %116)
  %cmp.i.not = icmp eq i16 %116, -32734
  br i1 %cmp.i.not, label %if.then17, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla4_8xxx_get_minidump(ptr noundef %ha)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.end.if.end18_crit_edge
  %117 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %isp_ops, align 4
  %restart_firmware = getelementptr inbounds %struct.isp_operations, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %restart_firmware to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %restart_firmware, align 4
  %call20 = tail call i32 %120(ptr noundef %ha) #10
  %121 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %isp_ops, align 4
  %idc_lock = getelementptr inbounds %struct.isp_operations, ptr %122, i32 0, i32 20
  %123 = ptrtoint ptr %idc_lock to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %idc_lock, align 4
  %call22 = tail call i32 %124(ptr noundef %ha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp23.not = icmp eq i32 %call20, 0
  br i1 %cmp23.not, label %if.end18.do.end33_crit_edge, label %do.end27

if.end18.do.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

do.end27:                                         ; preds = %if.end18
  %125 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdev, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev29, ptr noundef nonnull @.str.45) #13
  %127 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i.i = getelementptr inbounds %struct.isp_operations, ptr %128, i32 0, i32 16
  %129 = ptrtoint ptr %rd_reg_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rd_reg_direct.i.i, align 4
  %131 = ptrtoint ptr %reg_tbl.i72 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg_tbl.i72, align 8
  %arrayidx.i.i = getelementptr i32, ptr %132, i32 3
  %133 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 %130(ptr noundef %ha, i32 noundef %134) #10
  %135 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 8
  %137 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %device.i.i, align 2
  %139 = zext i16 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.345)
  switch i16 %138, label %if.else.i [
    i16 -32718, label %do.end27.if.then.i_crit_edge
    i16 -32702, label %do.end27.if.then.i_crit_edge83
  ]

do.end27.if.then.i_crit_edge83:                   ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end27.if.then.i_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %do.end27.if.then.i_crit_edge, %do.end27.if.then.i_crit_edge83
  %func_num.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %140 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %func_num.i, align 8
  %conv.i = zext i16 %141 to i32
  br label %qla4_8xxx_clear_drv_active.exit

if.else.i:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %func_num4.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %142 = ptrtoint ptr %func_num4.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %func_num4.i, align 8
  %conv5.i = zext i16 %143 to i32
  %mul.i = shl nuw nsw i32 %conv5.i, 2
  br label %qla4_8xxx_clear_drv_active.exit

qla4_8xxx_clear_drv_active.exit:                  ; preds = %if.else.i, %if.then.i
  %conv.pn.i = phi i32 [ %conv.i, %if.then.i ], [ %mul.i, %if.else.i ]
  %neg.pn.in.i = shl nuw i32 1, %conv.pn.i
  %neg.pn.i = xor i32 %neg.pn.in.i, -1
  %drv_active.0.i = and i32 %call.i.i, %neg.pn.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %144 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %host_no.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef %145, i32 noundef %drv_active.0.i) #13
  %146 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %isp_ops, align 4
  %wr_reg_direct.i.i = getelementptr inbounds %struct.isp_operations, ptr %147, i32 0, i32 17
  %148 = ptrtoint ptr %wr_reg_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %wr_reg_direct.i.i, align 4
  %150 = ptrtoint ptr %reg_tbl.i72 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reg_tbl.i72, align 8
  %arrayidx.i25.i = getelementptr i32, ptr %151, i32 3
  %152 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i25.i, align 4
  tail call void %149(ptr noundef %ha, i32 noundef %153, i32 noundef %drv_active.0.i) #10
  %154 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %isp_ops, align 4
  %wr_reg_direct.i75 = getelementptr inbounds %struct.isp_operations, ptr %155, i32 0, i32 17
  %156 = ptrtoint ptr %wr_reg_direct.i75 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wr_reg_direct.i75, align 4
  %158 = ptrtoint ptr %reg_tbl.i72 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg_tbl.i72, align 8
  %arrayidx.i77 = getelementptr i32, ptr %159, i32 4
  %160 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.i77, align 4
  tail call void %157(ptr noundef %ha, i32 noundef %161, i32 noundef 6) #10
  br label %cleanup

do.end33:                                         ; preds = %if.end18.do.end33_crit_edge, %for.cond.8.do.end33_crit_edge, %for.cond.7.do.end33_crit_edge, %for.cond.6.do.end33_crit_edge, %for.cond.5.do.end33_crit_edge, %for.cond.4.do.end33_crit_edge, %for.cond.3.do.end33_crit_edge, %for.cond.2.do.end33_crit_edge, %for.cond.1.do.end33_crit_edge, %for.cond.do.end33_crit_edge, %if.else.do.end33_crit_edge
  %pdev34 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %162 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pdev34, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev35, ptr noundef nonnull @.str.48) #13
  %164 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %isp_ops, align 4
  %wr_reg_direct.i79 = getelementptr inbounds %struct.isp_operations, ptr %165, i32 0, i32 17
  %166 = ptrtoint ptr %wr_reg_direct.i79 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wr_reg_direct.i79, align 4
  %reg_tbl.i80 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %168 = ptrtoint ptr %reg_tbl.i80 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg_tbl.i80, align 8
  %arrayidx.i81 = getelementptr i32, ptr %169, i32 4
  %170 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx.i81, align 4
  tail call void %167(ptr noundef %ha, i32 noundef %171, i32 noundef 3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %qla4_8xxx_clear_drv_active.exit
  %retval.0 = phi i32 [ %call20, %qla4_8xxx_clear_drv_active.exit ], [ 0, %do.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_8xxx_need_qsnt_handler(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops, align 4
  %idc_lock = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %idc_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idc_lock, align 4
  %call = tail call i32 %3(ptr noundef %ha) #10
  %4 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i.i = getelementptr inbounds %struct.isp_operations, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %rd_reg_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rd_reg_direct.i.i, align 4
  %reg_tbl.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %8 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %ha, i32 noundef %11) #10
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %12 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device.i.i, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.346)
  switch i16 %15, label %if.else.i [
    i16 -32718, label %entry.if.then.i_crit_edge
    i16 -32702, label %entry.if.then.i_crit_edge6
  ]

entry.if.then.i_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge6
  %func_num.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %17 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %func_num.i, align 8
  %conv.i = zext i16 %18 to i32
  %shl.i = shl nuw i32 1, %conv.i
  br label %qla4_8xxx_set_qsnt_ready.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %func_num4.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %19 = ptrtoint ptr %func_num4.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %func_num4.i, align 8
  %conv5.i = zext i16 %20 to i32
  %mul.i = shl nuw nsw i32 %conv5.i, 2
  %shl6.i = shl i32 2, %mul.i
  br label %qla4_8xxx_set_qsnt_ready.exit

qla4_8xxx_set_qsnt_ready.exit:                    ; preds = %if.else.i, %if.then.i
  %shl.pn.i = phi i32 [ %shl.i, %if.then.i ], [ %shl6.i, %if.else.i ]
  %qsnt_state.0.i = or i32 %shl.pn.i, %call.i.i
  %21 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %isp_ops, align 4
  %wr_reg_direct.i.i = getelementptr inbounds %struct.isp_operations, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %wr_reg_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr_reg_direct.i.i, align 4
  %25 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i21.i = getelementptr i32, ptr %26, i32 5
  %27 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i21.i, align 4
  tail call void %24(ptr noundef %ha, i32 noundef %28, i32 noundef %qsnt_state.0.i) #10
  %29 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %isp_ops, align 4
  %idc_unlock = getelementptr inbounds %struct.isp_operations, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %idc_unlock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %idc_unlock, align 4
  tail call void %32(ptr noundef %ha) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_update_idc_reg(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ha, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_update_idc_reg_crit_edge

entry.exit_update_idc_reg_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_update_idc_reg

if.end:                                           ; preds = %entry
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %3 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %isp_ops, align 4
  %idc_lock = getelementptr inbounds %struct.isp_operations, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %idc_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idc_lock, align 4
  %call1 = tail call i32 %6(ptr noundef %ha) #10
  %7 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i.i = getelementptr inbounds %struct.isp_operations, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %rd_reg_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rd_reg_direct.i.i, align 4
  %reg_tbl.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %11 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 %10(ptr noundef %ha, i32 noundef %14) #10
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %15 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device.i.i, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.347)
  switch i16 %18, label %if.else.i [
    i16 -32718, label %if.end.if.then.i_crit_edge
    i16 -32702, label %if.end.if.then.i_crit_edge114
  ]

if.end.if.then.i_crit_edge114:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge114
  %func_num.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %20 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %func_num.i, align 8
  %conv.i = zext i16 %21 to i32
  br label %qla4_8xxx_set_drv_active.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %func_num4.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %22 = ptrtoint ptr %func_num4.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %func_num4.i, align 8
  %conv5.i = zext i16 %23 to i32
  %mul.i = shl nuw nsw i32 %conv5.i, 2
  br label %qla4_8xxx_set_drv_active.exit

qla4_8xxx_set_drv_active.exit:                    ; preds = %if.else.i, %if.then.i
  %conv.pn.i = phi i32 [ %conv.i, %if.then.i ], [ %mul.i, %if.else.i ]
  %shl.pn.i = shl nuw i32 1, %conv.pn.i
  %drv_active.0.i = or i32 %shl.pn.i, %call.i.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %24 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %host_no.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %25, i32 noundef %drv_active.0.i) #13
  %26 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %isp_ops, align 4
  %wr_reg_direct.i.i = getelementptr inbounds %struct.isp_operations, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %wr_reg_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr_reg_direct.i.i, align 4
  %30 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i24.i = getelementptr i32, ptr %31, i32 3
  %32 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i24.i, align 4
  tail call void %29(ptr noundef %ha, i32 noundef %33, i32 noundef %drv_active.0.i) #10
  %34 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %device.i, align 2
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.348)
  switch i16 %37, label %qla4_8xxx_set_drv_active.exit.if.end12_crit_edge [
    i16 -32718, label %qla4_8xxx_set_drv_active.exit.if.then6_crit_edge
    i16 -32702, label %qla4_8xxx_set_drv_active.exit.if.then6_crit_edge115
  ]

qla4_8xxx_set_drv_active.exit.if.then6_crit_edge115: ; preds = %qla4_8xxx_set_drv_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

qla4_8xxx_set_drv_active.exit.if.then6_crit_edge: ; preds = %qla4_8xxx_set_drv_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

qla4_8xxx_set_drv_active.exit.if.end12_crit_edge: ; preds = %qla4_8xxx_set_drv_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %qla4_8xxx_set_drv_active.exit.if.then6_crit_edge, %qla4_8xxx_set_drv_active.exit.if.then6_crit_edge115
  %39 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rd_reg_direct.i, align 4
  %43 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i = getelementptr i32, ptr %44, i32 3
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %42(ptr noundef %ha, i32 noundef %46) #10
  %func_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %47 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %func_num, align 8
  %conv = zext i16 %48 to i32
  %shl = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %shl)
  %cmp = icmp eq i32 %call.i, %shl
  br i1 %cmp, label %land.lhs.true, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xdontresethba to i32))
  %49 = load i32, ptr @ql4xdontresethba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool9.not = icmp eq i32 %49, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla4_83xx_clear_idc_dontreset(ptr noundef %ha) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %if.then6.if.end12_crit_edge, %qla4_8xxx_set_drv_active.exit.if.end12_crit_edge
  %50 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev.i.i, align 8
  %device.i52 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %device.i52 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %device.i52, align 2
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.349)
  switch i16 %53, label %if.end12.if.end28_crit_edge [
    i16 -32734, label %if.then15
    i16 -32718, label %if.end12.if.then21_crit_edge
    i16 -32702, label %if.end12.if.then21_crit_edge116
  ]

if.end12.if.then21_crit_edge116:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.end12.if.then21_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then15:                                        ; preds = %if.end12
  %55 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i.i56 = getelementptr inbounds %struct.isp_operations, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %rd_reg_direct.i.i56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rd_reg_direct.i.i56, align 4
  %59 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i.i58 = getelementptr i32, ptr %60, i32 3
  %61 = ptrtoint ptr %arrayidx.i.i58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i58, align 4
  %call.i.i59 = tail call i32 %58(ptr noundef %ha, i32 noundef %62) #10
  %func_num.i60 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %63 = ptrtoint ptr %func_num.i60 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %func_num.i60, align 8
  %conv.i61 = zext i16 %64 to i32
  %mul.i62 = shl nuw nsw i32 %conv.i61, 2
  %shl.i = shl nuw i32 1, %mul.i62
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i59, i32 %shl.i)
  %cmp.i63 = icmp eq i32 %call.i.i59, %shl.i
  %65 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %isp_ops, align 4
  br i1 %cmp.i63, label %if.then.i67, label %if.else.i69

if.then.i67:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %wr_reg_direct.i.i64 = getelementptr inbounds %struct.isp_operations, ptr %66, i32 0, i32 17
  %67 = ptrtoint ptr %wr_reg_direct.i.i64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wr_reg_direct.i.i64, align 4
  %69 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i20.i = getelementptr i32, ptr %70, i32 8
  %71 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i20.i, align 4
  tail call void %68(ptr noundef %ha, i32 noundef %72, i32 noundef 1) #10
  %73 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev.i.i, align 8
  %dev.i66 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i66, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264, i32 noundef 1) #13
  br label %if.end28

if.else.i69:                                      ; preds = %if.then15
  %rd_reg_direct.i22.i = getelementptr inbounds %struct.isp_operations, ptr %66, i32 0, i32 16
  %75 = ptrtoint ptr %rd_reg_direct.i22.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rd_reg_direct.i22.i, align 4
  %77 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i24.i68 = getelementptr i32, ptr %78, i32 8
  %79 = ptrtoint ptr %arrayidx.i24.i68 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i24.i68, align 4
  %call.i25.i = tail call i32 %76(ptr noundef %ha, i32 noundef %80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i25.i)
  %cmp3.not.i = icmp eq i32 %call.i25.i, 1
  br i1 %cmp3.not.i, label %if.else.i69.if.end28_crit_edge, label %do.end8.i

if.else.i69.if.end28_crit_edge:                   ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end8.i:                                        ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev.i.i, align 8
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev10.i, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.264, i32 noundef 1, i32 noundef %call.i25.i) #13
  br label %if.end28

if.then21:                                        ; preds = %if.end12.if.then21_crit_edge, %if.end12.if.then21_crit_edge116
  %83 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i.i79 = getelementptr inbounds %struct.isp_operations, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %rd_reg_direct.i.i79 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rd_reg_direct.i.i79, align 4
  %87 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i.i81 = getelementptr i32, ptr %88, i32 3
  %89 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i.i81, align 4
  %call.i.i82 = tail call i32 %86(ptr noundef %ha, i32 noundef %90) #10
  %func_num.i83 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %91 = ptrtoint ptr %func_num.i83 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %func_num.i83, align 8
  %conv.i84 = zext i16 %92 to i32
  %shl.i85 = shl nuw i32 1, %conv.i84
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i82, i32 %shl.i85)
  %cmp.i86 = icmp eq i32 %call.i.i82, %shl.i85
  %93 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i44.i = getelementptr inbounds %struct.isp_operations, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %rd_reg_direct.i44.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rd_reg_direct.i44.i, align 4
  %97 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i46.i = getelementptr i32, ptr %98, i32 8
  %99 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i46.i, align 4
  %call.i47.i = tail call i32 %96(ptr noundef %ha, i32 noundef %100) #10
  br i1 %cmp.i86, label %if.then.i90, label %if.else.i91

if.then.i90:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %call.i47.i, -256
  %or.i = or i32 %and.i, 1
  %101 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %isp_ops, align 4
  %wr_reg_direct.i.i87 = getelementptr inbounds %struct.isp_operations, ptr %102, i32 0, i32 17
  %103 = ptrtoint ptr %wr_reg_direct.i.i87 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wr_reg_direct.i.i87, align 4
  %105 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i50.i = getelementptr i32, ptr %106, i32 8
  %107 = ptrtoint ptr %arrayidx.i50.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i50.i, align 4
  tail call void %104(ptr noundef %ha, i32 noundef %108, i32 noundef %or.i) #10
  %109 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pdev.i.i, align 8
  %dev.i89 = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i89, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.268, i32 noundef %or.i) #13
  br label %qla4_83xx_set_idc_ver.exit

if.else.i91:                                      ; preds = %if.then21
  %and4.i = and i32 %call.i47.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4.i)
  %cmp5.not.i = icmp eq i32 %and4.i, 1
  br i1 %cmp5.not.i, label %if.else.i91.qla4_83xx_set_idc_ver.exit_crit_edge, label %if.then25

if.else.i91.qla4_83xx_set_idc_ver.exit_crit_edge: ; preds = %if.else.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_83xx_set_idc_ver.exit

qla4_83xx_set_idc_ver.exit:                       ; preds = %if.else.i91.qla4_83xx_set_idc_ver.exit_crit_edge, %if.then.i90
  %call14.i = tail call i32 @qla4_83xx_rd_reg(ptr noundef %ha, i32 noundef 14232) #10
  %111 = ptrtoint ptr %func_num.i83 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %func_num.i83, align 8
  %conv16.i = zext i16 %112 to i32
  %mul.i92 = shl nuw nsw i32 %conv16.i, 1
  %shl17.i = shl i32 3, %mul.i92
  %neg.i = xor i32 %shl17.i, -1
  %and18.i = and i32 %call14.i, %neg.i
  tail call void @qla4_83xx_wr_reg(ptr noundef %ha, i32 noundef 14232, i32 noundef %and18.i) #10
  br label %if.end28

if.then25:                                        ; preds = %if.else.i91
  %113 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev.i.i, align 8
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev12.i, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.268, i32 noundef 1, i32 noundef %and4.i) #13
  %115 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i.i94 = getelementptr inbounds %struct.isp_operations, ptr %116, i32 0, i32 16
  %117 = ptrtoint ptr %rd_reg_direct.i.i94 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rd_reg_direct.i.i94, align 4
  %119 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i.i96 = getelementptr i32, ptr %120, i32 3
  %121 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i.i96, align 4
  %call.i.i97 = tail call i32 %118(ptr noundef %ha, i32 noundef %122) #10
  %123 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i99 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %device.i.i99 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %device.i.i99, align 2
  %127 = zext i16 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.350)
  switch i16 %126, label %if.else.i106 [
    i16 -32718, label %if.then25.if.then.i102_crit_edge
    i16 -32702, label %if.then25.if.then.i102_crit_edge117
  ]

if.then25.if.then.i102_crit_edge117:              ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i102

if.then25.if.then.i102_crit_edge:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i102

if.then.i102:                                     ; preds = %if.then25.if.then.i102_crit_edge, %if.then25.if.then.i102_crit_edge117
  %128 = ptrtoint ptr %func_num.i83 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %func_num.i83, align 8
  %conv.i101 = zext i16 %129 to i32
  br label %qla4_8xxx_clear_drv_active.exit

if.else.i106:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %func_num.i83 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %func_num.i83, align 8
  %conv5.i104 = zext i16 %131 to i32
  %mul.i105 = shl nuw nsw i32 %conv5.i104, 2
  br label %qla4_8xxx_clear_drv_active.exit

qla4_8xxx_clear_drv_active.exit:                  ; preds = %if.else.i106, %if.then.i102
  %conv.pn.i107 = phi i32 [ %conv.i101, %if.then.i102 ], [ %mul.i105, %if.else.i106 ]
  %neg.pn.in.i = shl nuw i32 1, %conv.pn.i107
  %neg.pn.i = xor i32 %neg.pn.in.i, -1
  %drv_active.0.i108 = and i32 %call.i.i97, %neg.pn.i
  %dev.i109 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  %132 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %host_no.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i109, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef %133, i32 noundef %drv_active.0.i108) #13
  %134 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %isp_ops, align 4
  %wr_reg_direct.i.i111 = getelementptr inbounds %struct.isp_operations, ptr %135, i32 0, i32 17
  %136 = ptrtoint ptr %wr_reg_direct.i.i111 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wr_reg_direct.i.i111, align 4
  %138 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i25.i = getelementptr i32, ptr %139, i32 3
  %140 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i25.i, align 4
  tail call void %137(ptr noundef %ha, i32 noundef %141, i32 noundef %drv_active.0.i108) #10
  br label %if.end28

if.end28:                                         ; preds = %qla4_8xxx_clear_drv_active.exit, %qla4_83xx_set_idc_ver.exit, %do.end8.i, %if.else.i69.if.end28_crit_edge, %if.then.i67, %if.end12.if.end28_crit_edge
  %rval.0 = phi i32 [ 1, %qla4_8xxx_clear_drv_active.exit ], [ 0, %qla4_83xx_set_idc_ver.exit ], [ 0, %if.then.i67 ], [ 0, %if.else.i69.if.end28_crit_edge ], [ 0, %do.end8.i ], [ 0, %if.end12.if.end28_crit_edge ]
  %142 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %isp_ops, align 4
  %idc_unlock = getelementptr inbounds %struct.isp_operations, ptr %143, i32 0, i32 21
  %144 = ptrtoint ptr %idc_unlock to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %idc_unlock, align 4
  tail call void %145(ptr noundef %ha) #10
  br label %exit_update_idc_reg

exit_update_idc_reg:                              ; preds = %if.end28, %entry.exit_update_idc_reg_crit_edge
  %rval.1 = phi i32 [ 0, %entry.exit_update_idc_reg_crit_edge ], [ %rval.0, %if.end28 ]
  ret i32 %rval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_83xx_clear_idc_dontreset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_device_state_handler(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qla4_8xxx_update_idc_reg(ptr noundef %ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.exit_state_handler_crit_edge, label %if.end

entry.exit_state_handler_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_state_handler

if.end:                                           ; preds = %entry
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %4 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ha, i32 noundef %7) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %8 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp2 = icmp eq i32 %8, 2
  br i1 %cmp2, label %do.end, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %if.end
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp5 = icmp ult i32 %call.i, 8
  br i1 %cmp5, label %cond.true, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [8 x ptr], ptr @qdev_state, i32 0, i32 %call.i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %12, %cond.true ], [ @.str.52, %do.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %call.i, ptr noundef %cond) #13
  br label %do.end8

do.end8:                                          ; preds = %cond.end, %if.end.do.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %nx_dev_init_timeout = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 104
  %14 = ptrtoint ptr %nx_dev_init_timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nx_dev_init_timeout, align 4
  %mul = mul i32 %15, 100
  %add = add i32 %mul, %13
  %16 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %isp_ops.i, align 4
  %idc_lock = getelementptr inbounds %struct.isp_operations, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %idc_lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %idc_lock, align 4
  %call9 = tail call i32 %19(ptr noundef %ha) #10
  %pdev15 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %func_num.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then52, %do.end8
  %dev_state.0.ph = phi i32 [ %call.i143, %if.then52 ], [ %call.i, %do.end8 ]
  %dev_init_timeout.0.ph = phi i32 [ %add55, %if.then52 ], [ %add, %do.end8 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %dev_state.0 = phi i32 [ %dev_state.0.ph, %while.cond.outer ], [ %call.i143, %while.cond.backedge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %20, %dev_init_timeout.0.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp10 = icmp sgt i32 %sub, -1
  br i1 %cmp10, label %do.end14, label %while.cond.if.end23_crit_edge

while.cond.if.end23_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end14:                                         ; preds = %while.cond
  %21 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dev_state.0)
  %cmp17 = icmp ult i32 %dev_state.0, 8
  br i1 %cmp17, label %cond.true18, label %do.end14.cond.end21_crit_edge

do.end14.cond.end21_crit_edge:                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end21

cond.true18:                                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19 = getelementptr [8 x ptr], ptr @qdev_state, i32 0, i32 %dev_state.0
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx19, align 4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true18, %do.end14.cond.end21_crit_edge
  %cond22 = phi ptr [ %24, %cond.true18 ], [ @.str.52, %do.end14.cond.end21_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev16, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.57, i32 noundef %dev_state.0, ptr noundef %cond22) #13
  %25 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %wr_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr_reg_direct.i, align 4
  %29 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i138 = getelementptr i32, ptr %30, i32 4
  %31 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i138, align 4
  tail call void %28(ptr noundef %ha, i32 noundef %32, i32 noundef 6) #10
  br label %if.end23

if.end23:                                         ; preds = %cond.end21, %while.cond.if.end23_crit_edge
  %33 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i140 = getelementptr inbounds %struct.isp_operations, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %rd_reg_direct.i140 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rd_reg_direct.i140, align 4
  %37 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i142 = getelementptr i32, ptr %38, i32 4
  %39 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i142, align 4
  %call.i143 = tail call i32 %36(ptr noundef %ha, i32 noundef %40) #10
  %41 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev15, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i143)
  %cmp30 = icmp ult i32 %call.i143, 8
  br i1 %cmp30, label %cond.true31, label %if.end23.cond.end34_crit_edge

if.end23.cond.end34_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end34

cond.true31:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx32 = getelementptr [8 x ptr], ptr @qdev_state, i32 0, i32 %call.i143
  %43 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx32, align 4
  br label %cond.end34

cond.end34:                                       ; preds = %cond.true31, %if.end23.cond.end34_crit_edge
  %cond35 = phi ptr [ %44, %cond.true31 ], [ @.str.52, %if.end23.cond.end34_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev29, ptr noundef nonnull @.str.50, i32 noundef %call.i143, ptr noundef %cond35) #13
  %45 = zext i32 %call.i143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.351)
  switch i32 %call.i143, label %sw.default [
    i32 3, label %cond.end34.exit_crit_edge
    i32 1, label %sw.bb36
    i32 2, label %sw.bb38
    i32 4, label %sw.bb43
    i32 5, label %sw.bb65
    i32 7, label %sw.bb66
    i32 6, label %sw.bb72
  ]

cond.end34.exit_crit_edge:                        ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

sw.bb36:                                          ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 @qla4_8xxx_device_bootstrap(ptr noundef %ha)
  br label %exit

sw.bb38:                                          ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %isp_ops.i, align 4
  %idc_unlock = getelementptr inbounds %struct.isp_operations, ptr %47, i32 0, i32 21
  %48 = ptrtoint ptr %idc_unlock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %idc_unlock, align 4
  tail call void %49(ptr noundef %ha) #10
  tail call void @msleep(i32 noundef 1000) #10
  %50 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %isp_ops.i, align 4
  %idc_lock41 = getelementptr inbounds %struct.isp_operations, ptr %51, i32 0, i32 20
  %52 = ptrtoint ptr %idc_lock41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %idc_lock41, align 4
  %call42 = tail call i32 %53(ptr noundef %ha) #10
  br label %while.cond.backedge

sw.bb43:                                          ; preds = %cond.end34
  %54 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev15, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %device.i, align 2
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.352)
  switch i16 %57, label %sw.bb43.while.cond.backedge_crit_edge [
    i16 -32718, label %sw.bb43.if.then47_crit_edge
    i16 -32702, label %sw.bb43.if.then47_crit_edge162
    i16 -32734, label %if.then50
  ]

sw.bb43.if.then47_crit_edge162:                   ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

sw.bb43.if.then47_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

sw.bb43.while.cond.backedge_crit_edge:            ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb66, %qla4_8xxx_need_qsnt_handler.exit, %if.else56, %if.then47, %sw.bb43.while.cond.backedge_crit_edge, %sw.bb38
  br label %while.cond

if.then47:                                        ; preds = %sw.bb43.if.then47_crit_edge, %sw.bb43.if.then47_crit_edge162
  tail call void @qla4_83xx_need_reset_handler(ptr noundef %ha) #10
  br label %while.cond.backedge

if.then50:                                        ; preds = %sw.bb43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xdontresethba to i32))
  %59 = load i32, ptr @ql4xdontresethba, align 4
  %tobool51.not = icmp eq i32 %59, 0
  br i1 %tobool51.not, label %if.then52, label %if.else56

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qla4_82xx_need_reset_handler(ptr noundef %ha)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %61 = ptrtoint ptr %nx_dev_init_timeout to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nx_dev_init_timeout, align 4
  %mul54 = mul i32 %62, 100
  %add55 = add i32 %mul54, %60
  br label %while.cond.outer

if.else56:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %isp_ops.i, align 4
  %idc_unlock58 = getelementptr inbounds %struct.isp_operations, ptr %64, i32 0, i32 21
  %65 = ptrtoint ptr %idc_unlock58 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %idc_unlock58, align 4
  tail call void %66(ptr noundef %ha) #10
  tail call void @msleep(i32 noundef 1000) #10
  %67 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %isp_ops.i, align 4
  %idc_lock60 = getelementptr inbounds %struct.isp_operations, ptr %68, i32 0, i32 20
  %69 = ptrtoint ptr %idc_lock60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %idc_lock60, align 4
  %call61 = tail call i32 %70(ptr noundef %ha) #10
  br label %while.cond.backedge

sw.bb65:                                          ; preds = %cond.end34
  %71 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %isp_ops.i, align 4
  %idc_lock.i = getelementptr inbounds %struct.isp_operations, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %idc_lock.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %idc_lock.i, align 4
  %call.i153 = tail call i32 %74(ptr noundef %ha) #10
  %75 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %rd_reg_direct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rd_reg_direct.i.i.i, align 4
  %79 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i.i.i = getelementptr i32, ptr %80, i32 5
  %81 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = tail call i32 %78(ptr noundef %ha, i32 noundef %82) #10
  %83 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev15, align 8
  %device.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %device.i.i.i, align 2
  %87 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.353)
  switch i16 %86, label %if.else.i.i [
    i16 -32718, label %sw.bb65.if.then.i.i_crit_edge
    i16 -32702, label %sw.bb65.if.then.i.i_crit_edge163
  ]

sw.bb65.if.then.i.i_crit_edge163:                 ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

sw.bb65.if.then.i.i_crit_edge:                    ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb65.if.then.i.i_crit_edge, %sw.bb65.if.then.i.i_crit_edge163
  %88 = ptrtoint ptr %func_num.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %func_num.i.i, align 8
  %conv.i.i = zext i16 %89 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  br label %qla4_8xxx_need_qsnt_handler.exit

if.else.i.i:                                      ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %func_num.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %func_num.i.i, align 8
  %conv5.i.i = zext i16 %91 to i32
  %mul.i.i = shl nuw nsw i32 %conv5.i.i, 2
  %shl6.i.i = shl i32 2, %mul.i.i
  br label %qla4_8xxx_need_qsnt_handler.exit

qla4_8xxx_need_qsnt_handler.exit:                 ; preds = %if.else.i.i, %if.then.i.i
  %shl.pn.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ %shl6.i.i, %if.else.i.i ]
  %qsnt_state.0.i.i = or i32 %shl.pn.i.i, %call.i.i.i
  %92 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct.i.i.i = getelementptr inbounds %struct.isp_operations, ptr %93, i32 0, i32 17
  %94 = ptrtoint ptr %wr_reg_direct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wr_reg_direct.i.i.i, align 4
  %96 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i21.i.i = getelementptr i32, ptr %97, i32 5
  %98 = ptrtoint ptr %arrayidx.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i21.i.i, align 4
  tail call void %95(ptr noundef %ha, i32 noundef %99, i32 noundef %qsnt_state.0.i.i) #10
  %100 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %isp_ops.i, align 4
  %idc_unlock.i = getelementptr inbounds %struct.isp_operations, ptr %101, i32 0, i32 21
  %102 = ptrtoint ptr %idc_unlock.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %idc_unlock.i, align 4
  tail call void %103(ptr noundef %ha) #10
  br label %while.cond.backedge

sw.bb66:                                          ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %isp_ops.i, align 4
  %idc_unlock68 = getelementptr inbounds %struct.isp_operations, ptr %105, i32 0, i32 21
  %106 = ptrtoint ptr %idc_unlock68 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %idc_unlock68, align 4
  tail call void %107(ptr noundef %ha) #10
  tail call void @msleep(i32 noundef 1000) #10
  %108 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %isp_ops.i, align 4
  %idc_lock70 = getelementptr inbounds %struct.isp_operations, ptr %109, i32 0, i32 20
  %110 = ptrtoint ptr %idc_lock70 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %idc_lock70, align 4
  %call71 = tail call i32 %111(ptr noundef %ha) #10
  br label %while.cond.backedge

sw.bb72:                                          ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %isp_ops.i, align 4
  %idc_unlock74 = getelementptr inbounds %struct.isp_operations, ptr %113, i32 0, i32 21
  %114 = ptrtoint ptr %idc_unlock74 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %idc_unlock74, align 4
  tail call void %115(ptr noundef %ha) #10
  tail call void @qla4xxx_dead_adapter_cleanup(ptr noundef %ha) #10
  %116 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %isp_ops.i, align 4
  %idc_lock76 = getelementptr inbounds %struct.isp_operations, ptr %117, i32 0, i32 20
  %118 = ptrtoint ptr %idc_lock76 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %idc_lock76, align 4
  %call77 = tail call i32 %119(ptr noundef %ha) #10
  br label %exit

sw.default:                                       ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %isp_ops.i, align 4
  %idc_unlock79 = getelementptr inbounds %struct.isp_operations, ptr %121, i32 0, i32 21
  %122 = ptrtoint ptr %idc_unlock79 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %idc_unlock79, align 4
  tail call void %123(ptr noundef %ha) #10
  tail call void @qla4xxx_dead_adapter_cleanup(ptr noundef %ha) #10
  %124 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %isp_ops.i, align 4
  %idc_lock81 = getelementptr inbounds %struct.isp_operations, ptr %125, i32 0, i32 20
  %126 = ptrtoint ptr %idc_lock81 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %idc_lock81, align 4
  %call82 = tail call i32 %127(ptr noundef %ha) #10
  br label %exit

exit:                                             ; preds = %sw.default, %sw.bb72, %sw.bb36, %cond.end34.exit_crit_edge
  %rval.0 = phi i32 [ 1, %sw.default ], [ 1, %sw.bb72 ], [ %call37, %sw.bb36 ], [ %call, %cond.end34.exit_crit_edge ]
  %128 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %isp_ops.i, align 4
  %idc_unlock84 = getelementptr inbounds %struct.isp_operations, ptr %129, i32 0, i32 21
  %130 = ptrtoint ptr %idc_unlock84 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %idc_unlock84, align 4
  tail call void %131(ptr noundef %ha) #10
  br label %exit_state_handler

exit_state_handler:                               ; preds = %exit, %entry.exit_state_handler_crit_edge
  %rval.1 = phi i32 [ 1, %entry.exit_state_handler_crit_edge ], [ %rval.0, %exit ]
  ret i32 %rval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_83xx_need_reset_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla4_82xx_need_reset_handler(ptr noundef %ha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.278) #13
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %ha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826604) #10
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %2 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp_ops, align 4
  %disable_intrs = getelementptr inbounds %struct.isp_operations, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %disable_intrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_intrs, align 4
  tail call void %5(ptr noundef %ha) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 522) #10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.then
  %timeout.010.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end6.i.while.body.i_crit_edge ]
  %call.i109 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i109)
  %cmp.i = icmp eq i32 %call.i109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %timeout.010.i)
  %exitcond.i = icmp eq i32 %timeout.010.i, 100000000
  %or.cond = select i1 %cmp.i, i1 true, i1 %exitcond.i
  br i1 %or.cond, label %while.body.i.if.end_crit_edge, label %if.end6.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end6.i:                                        ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %timeout.010.i, 1
  tail call void @msleep(i32 noundef 100) #10
  %tobool.not.i = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i, label %if.end6.i.while.body.i_crit_edge, label %if.end6.i.if.end_crit_edge

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end:                                           ; preds = %if.end6.i.if.end_crit_edge, %while.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ha, align 4
  %8 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %do.body6, label %if.else

do.body6:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %9 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %do.end10, label %do.body6.do.end15_crit_edge

do.body6.do.end15_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end10:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %12 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev12, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.279, i32 noundef %13) #13
  br label %do.end15

do.end15:                                         ; preds = %do.end10, %do.body6.do.end15_crit_edge
  %isp_ops.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %14 = ptrtoint ptr %isp_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isp_ops.i.i, align 4
  %rd_reg_direct.i.i = getelementptr inbounds %struct.isp_operations, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %rd_reg_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rd_reg_direct.i.i, align 4
  %reg_tbl.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %18 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %19, i32 5
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 %17(ptr noundef %ha, i32 noundef %21) #10
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device.i.i, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.354)
  switch i16 %25, label %if.else.i [
    i16 -32718, label %do.end15.if.then.i_crit_edge
    i16 -32702, label %do.end15.if.then.i_crit_edge163
  ]

do.end15.if.then.i_crit_edge163:                  ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end15.if.then.i_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %do.end15.if.then.i_crit_edge, %do.end15.if.then.i_crit_edge163
  %func_num.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %27 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %func_num.i, align 8
  %conv.i = zext i16 %28 to i32
  br label %qla4_8xxx_set_rst_ready.exit

if.else.i:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %func_num4.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %29 = ptrtoint ptr %func_num4.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %func_num4.i, align 8
  %conv5.i = zext i16 %30 to i32
  %mul.i = shl nuw nsw i32 %conv5.i, 2
  br label %qla4_8xxx_set_rst_ready.exit

qla4_8xxx_set_rst_ready.exit:                     ; preds = %if.else.i, %if.then.i
  %conv.pn.i = phi i32 [ %conv.i, %if.then.i ], [ %mul.i, %if.else.i ]
  %shl.pn.i = shl nuw i32 1, %conv.pn.i
  %drv_state.0.i = or i32 %shl.pn.i, %call.i.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %31 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %host_no.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %32, i32 noundef %drv_state.0.i) #13
  %33 = ptrtoint ptr %isp_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %isp_ops.i.i, align 4
  %wr_reg_direct.i.i = getelementptr inbounds %struct.isp_operations, ptr %34, i32 0, i32 17
  %35 = ptrtoint ptr %wr_reg_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr_reg_direct.i.i, align 4
  %37 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i24.i = getelementptr i32, ptr %38, i32 5
  %39 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i24.i, align 4
  tail call void %36(ptr noundef %ha, i32 noundef %40, i32 noundef %drv_state.0.i) #10
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %func_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %41 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %func_num, align 8
  %conv = zext i16 %42 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %shl = shl nuw i32 1, %mul
  %neg = xor i32 %shl, -1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %qla4_8xxx_set_rst_ready.exit
  %active_mask.0 = phi i32 [ %neg, %if.else ], [ -1, %qla4_8xxx_set_rst_ready.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %nx_reset_timeout = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 105
  %44 = ptrtoint ptr %nx_reset_timeout to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nx_reset_timeout, align 8
  %call18 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 136323396)
  %call19 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 136323384)
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %host_no25 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %48 = ptrtoint ptr %host_no25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %host_no25, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev24, ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.279, i32 noundef %49, i32 noundef %call18, i32 noundef %call19) #13
  %and149 = and i32 %call19, %active_mask.0
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %and149)
  %cmp26.not150 = icmp eq i32 %call18, %and149
  br i1 %cmp26.not150, label %if.end16.while.end_crit_edge, label %while.body.lr.ph

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end16
  %mul17.neg = mul i32 %45, -100
  %add.neg = sub i32 %mul17.neg, %43
  br label %while.body

while.body:                                       ; preds = %qla4_82xx_idc_lock.exit121.while.body_crit_edge, %while.body.lr.ph
  %drv_active.0152 = phi i32 [ %call19, %while.body.lr.ph ], [ %call50, %qla4_82xx_idc_lock.exit121.while.body_crit_edge ]
  %drv_state.0151 = phi i32 [ %call18, %while.body.lr.ph ], [ %call49, %qla4_82xx_idc_lock.exit121.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp28 = icmp sgt i32 %sub, -1
  br i1 %cmp28, label %do.end33, label %if.end36

do.end33:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev35, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.57, i32 noundef %drv_state.0151, i32 noundef %drv_active.0152) #13
  br label %while.end

if.end36:                                         ; preds = %while.body
  %53 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %ha, align 4
  %55 = and i32 %54, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool39.not = icmp eq i32 %55, 0
  br i1 %tobool39.not, label %if.end36.if.end47_crit_edge, label %do.end43

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %host_no25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %host_no25, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev45, ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.279, i32 noundef %59, i32 noundef %drv_state.0151, i32 noundef %drv_active.0152) #13
  br label %if.end47

if.end47:                                         ; preds = %do.end43, %if.end36.if.end47_crit_edge
  %call.i110 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826604) #10
  tail call void @msleep(i32 noundef 1000) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 522) #10
  br label %while.body.i114

while.body.i114:                                  ; preds = %if.end6.i119.while.body.i114_crit_edge, %if.end47
  %timeout.010.i111 = phi i32 [ 0, %if.end47 ], [ %inc.i117, %if.end6.i119.while.body.i114_crit_edge ]
  %call.i112 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i112)
  %cmp.i113 = icmp eq i32 %call.i112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %timeout.010.i111)
  %exitcond.i115 = icmp eq i32 %timeout.010.i111, 100000000
  %or.cond146 = select i1 %cmp.i113, i1 true, i1 %exitcond.i115
  br i1 %or.cond146, label %while.body.i114.qla4_82xx_idc_lock.exit121_crit_edge, label %if.end6.i119

while.body.i114.qla4_82xx_idc_lock.exit121_crit_edge: ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_idc_lock.exit121

if.end6.i119:                                     ; preds = %while.body.i114
  %inc.i117 = add nuw nsw i32 %timeout.010.i111, 1
  tail call void @msleep(i32 noundef 100) #10
  %tobool.not.i118 = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i118, label %if.end6.i119.while.body.i114_crit_edge, label %if.end6.i119.qla4_82xx_idc_lock.exit121_crit_edge

if.end6.i119.qla4_82xx_idc_lock.exit121_crit_edge: ; preds = %if.end6.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_idc_lock.exit121

if.end6.i119.while.body.i114_crit_edge:           ; preds = %if.end6.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i114

qla4_82xx_idc_lock.exit121:                       ; preds = %if.end6.i119.qla4_82xx_idc_lock.exit121_crit_edge, %while.body.i114.qla4_82xx_idc_lock.exit121_crit_edge
  %call49 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 136323396)
  %call50 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 136323384)
  %and = and i32 %call50, %active_mask.0
  %cmp26.not = icmp eq i32 %call49, %and
  br i1 %cmp26.not, label %qla4_82xx_idc_lock.exit121.while.end_crit_edge, label %qla4_82xx_idc_lock.exit121.while.body_crit_edge

qla4_82xx_idc_lock.exit121.while.body_crit_edge:  ; preds = %qla4_82xx_idc_lock.exit121
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

qla4_82xx_idc_lock.exit121.while.end_crit_edge:   ; preds = %qla4_82xx_idc_lock.exit121
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %qla4_82xx_idc_lock.exit121.while.end_crit_edge, %do.end33, %if.end16.while.end_crit_edge
  tail call void @_clear_bit(i32 noundef 25, ptr noundef %ha) #10
  %call52 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 136323392)
  %60 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev, align 8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call52)
  %cmp58 = icmp ult i32 %call52, 8
  br i1 %cmp58, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev57, ptr noundef nonnull @.str.50, i32 noundef %call52, ptr noundef nonnull @.str.52) #13
  br label %do.end65

cond.end:                                         ; preds = %while.end
  %arrayidx = getelementptr [8 x ptr], ptr @qdev_state, i32 0, i32 %call52
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev57, ptr noundef nonnull @.str.50, i32 noundef %call52, ptr noundef %63) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call52)
  %cmp60.not = icmp eq i32 %call52, 2
  br i1 %cmp60.not, label %cond.end.if.end68_crit_edge, label %cond.end.do.end65_crit_edge

cond.end.do.end65_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

cond.end.if.end68_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

do.end65:                                         ; preds = %cond.end.do.end65_crit_edge, %cond.end.thread
  %64 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev, align 8
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev67, ptr noundef nonnull @.str.294) #13
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323392, i32 noundef 1)
  %isp_ops.i.i122 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %66 = ptrtoint ptr %isp_ops.i.i122 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %isp_ops.i.i122, align 4
  %rd_reg_direct.i.i123 = getelementptr inbounds %struct.isp_operations, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %rd_reg_direct.i.i123 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rd_reg_direct.i.i123, align 4
  %reg_tbl.i.i124 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %70 = ptrtoint ptr %reg_tbl.i.i124 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_tbl.i.i124, align 8
  %arrayidx.i.i125 = getelementptr i32, ptr %71, i32 5
  %72 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i125, align 4
  %call.i.i126 = tail call i32 %69(ptr noundef %ha, i32 noundef %73) #10
  %74 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev, align 8
  %device.i.i128 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %device.i.i128 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %device.i.i128, align 2
  %78 = zext i16 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.355)
  switch i16 %77, label %if.else.i135 [
    i16 -32718, label %do.end65.if.then.i131_crit_edge
    i16 -32702, label %do.end65.if.then.i131_crit_edge164
  ]

do.end65.if.then.i131_crit_edge164:               ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i131

do.end65.if.then.i131_crit_edge:                  ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i131

if.then.i131:                                     ; preds = %do.end65.if.then.i131_crit_edge, %do.end65.if.then.i131_crit_edge164
  %func_num.i129 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %79 = ptrtoint ptr %func_num.i129 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %func_num.i129, align 8
  %conv.i130 = zext i16 %80 to i32
  br label %qla4_8xxx_set_rst_ready.exit143

if.else.i135:                                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #12
  %func_num4.i132 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %81 = ptrtoint ptr %func_num4.i132 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %func_num4.i132, align 8
  %conv5.i133 = zext i16 %82 to i32
  %mul.i134 = shl nuw nsw i32 %conv5.i133, 2
  br label %qla4_8xxx_set_rst_ready.exit143

qla4_8xxx_set_rst_ready.exit143:                  ; preds = %if.else.i135, %if.then.i131
  %conv.pn.i136 = phi i32 [ %conv.i130, %if.then.i131 ], [ %mul.i134, %if.else.i135 ]
  %shl.pn.i137 = shl nuw i32 1, %conv.pn.i136
  %drv_state.0.i138 = or i32 %shl.pn.i137, %call.i.i126
  %dev.i139 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %83 = ptrtoint ptr %host_no25 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %host_no25, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i139, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %84, i32 noundef %drv_state.0.i138) #13
  %85 = ptrtoint ptr %isp_ops.i.i122 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %isp_ops.i.i122, align 4
  %wr_reg_direct.i.i141 = getelementptr inbounds %struct.isp_operations, ptr %86, i32 0, i32 17
  %87 = ptrtoint ptr %wr_reg_direct.i.i141 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wr_reg_direct.i.i141, align 4
  %89 = ptrtoint ptr %reg_tbl.i.i124 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg_tbl.i.i124, align 8
  %arrayidx.i24.i142 = getelementptr i32, ptr %90, i32 5
  %91 = ptrtoint ptr %arrayidx.i24.i142 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i24.i142, align 4
  tail call void %88(ptr noundef %ha, i32 noundef %92, i32 noundef %drv_state.0.i138) #10
  br label %if.end68

if.end68:                                         ; preds = %qla4_8xxx_set_rst_ready.exit143, %cond.end.if.end68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_dead_adapter_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_load_risc(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.356)
  switch i16 %3, label %entry.if.end21_crit_edge [
    i16 -32718, label %entry.do.body_crit_edge
    i16 -32702, label %entry.do.body_crit_edge52
    i16 -32734, label %do.body11
  ]

entry.do.body_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !658
  tail call void @arm_heavy_mb() #10
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %5 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qla4_83xx_reg, align 16
  %risc_intr = getelementptr inbounds %struct.device_reg_83xx, ptr %6, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %risc_intr, i32 0) #10, !srcloc !632
  %7 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qla4_83xx_reg, align 16
  %risc_intr5 = getelementptr inbounds %struct.device_reg_83xx, ptr %8, i32 0, i32 19
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %risc_intr5) #10, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !659
  br label %if.end21

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !660
  tail call void @arm_heavy_mb() #10
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 83
  %10 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_int = getelementptr inbounds %struct.device_reg_82xx, ptr %11, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int, i32 0) #10, !srcloc !632
  %12 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_int17 = getelementptr inbounds %struct.device_reg_82xx, ptr %13, i32 0, i32 13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_int17) #10, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !661
  br label %if.end21

if.end21:                                         ; preds = %do.body11, %do.body, %entry.if.end21_crit_edge
  %call22 = tail call i32 @qla4_8xxx_device_state_handler(ptr noundef %ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp eq i32 %call22, 0
  br i1 %cmp, label %if.then23, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then23:                                        ; preds = %if.end21
  %call24 = tail call i32 @qla4xxx_init_rings(ptr noundef %ha) #10
  %15 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %ha, align 4
  %17 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28.not = icmp eq i32 %17, 0
  br i1 %tobool28.not, label %if.then29, label %if.then23.if.end31_crit_edge

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 @qla4xxx_request_irqs(ptr noundef %ha) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then23.if.end31_crit_edge, %if.end21.if.end31_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then23.if.end31_crit_edge ], [ %call30, %if.then29 ], [ %call22, %if.end21.if.end31_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_init_rings(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_request_irqs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_queue_mbox_cmd(ptr nocapture noundef readonly %ha, ptr nocapture noundef readonly %mbx_cmd, i32 noundef %in_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %in_count)
  %cmp32 = icmp sgt i32 %in_count, 1
  br i1 %cmp32, label %do.body.lr.ph, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body.lr.ph:                                    ; preds = %entry
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 83
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.033 = phi i32 [ 1, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !662
  tail call void @arm_heavy_mb() #10
  %arrayidx = getelementptr i32, ptr %mbx_cmd, i32 %i.033
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qla4_82xx_reg, align 4
  %arrayidx1 = getelementptr %struct.device_reg_82xx, ptr %4, i32 0, i32 6, i32 %i.033
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1, i32 %2) #10, !srcloc !632
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %in_count
  br i1 %exitcond.not, label %do.body.do.body2_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body.do.body2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2:                                         ; preds = %do.body.do.body2_crit_edge, %entry.do.body2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !663
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %mbx_cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbx_cmd, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %qla4_82xx_reg6 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 83
  %8 = ptrtoint ptr %qla4_82xx_reg6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qla4_82xx_reg6, align 4
  %mailbox_in7 = getelementptr inbounds %struct.device_reg_82xx, ptr %9, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mailbox_in7, i32 %7) #10, !srcloc !632
  %10 = ptrtoint ptr %qla4_82xx_reg6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qla4_82xx_reg6, align 4
  %mailbox_in10 = getelementptr inbounds %struct.device_reg_82xx, ptr %11, i32 0, i32 6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mailbox_in10) #10, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !664
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !665
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %qla4_82xx_reg6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qla4_82xx_reg6, align 4
  %hint = getelementptr inbounds %struct.device_reg_82xx, ptr %14, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hint, i32 16777216) #10, !srcloc !632
  %15 = ptrtoint ptr %qla4_82xx_reg6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qla4_82xx_reg6, align 4
  %hint20 = getelementptr inbounds %struct.device_reg_82xx, ptr %16, i32 0, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hint20) #10, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !666
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_process_mbox_intr(ptr noundef %ha, i32 noundef %out_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 83
  %0 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_int = getelementptr inbounds %struct.device_reg_82xx, ptr %1, i32 0, i32 13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_int) #10, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !667
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %entry
  %conv = trunc i32 %out_count to i8
  %mbox_status_count = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 78
  %4 = ptrtoint ptr %mbox_status_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 %conv, ptr %mbox_status_count, align 128
  %5 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_status = getelementptr inbounds %struct.device_reg_82xx, ptr %6, i32 0, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_status) #10, !srcloc !628
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !668
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %9 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %isp_ops, align 4
  %interrupt_service_routine = getelementptr inbounds %struct.isp_operations, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %interrupt_service_routine to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interrupt_service_routine, align 4
  tail call void %12(ptr noundef %ha, i32 noundef %8) #10
  %13 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %ha, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.then.if.end19_crit_edge, label %land.lhs.true

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %msi_enabled = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 49
  %18 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %18, i32 5)
  %bf.load = load i40, ptr %msi_enabled, align 1
  %19 = and i40 %bf.load, 201326592
  %20 = icmp eq i40 %19, 0
  br i1 %20, label %if.then18, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %tgt_mask_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 98, i32 2
  %21 = ptrtoint ptr %tgt_mask_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tgt_mask_reg, align 8
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %22, i32 noundef 64511)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true.if.end19_crit_edge, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_83xx_get_idc_param(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_stop_firmware(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #10
  %0 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %3 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 20, ptr %mbox_cmd, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %4 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %6, ptr noundef nonnull @.str.61, i32 noundef %call) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_mailbox_command(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_82xx_isp_reset(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 522) #10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry
  %timeout.010.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end6.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %timeout.010.i)
  %exitcond.i = icmp eq i32 %timeout.010.i, 100000000
  %or.cond = select i1 %cmp.i, i1 true, i1 %exitcond.i
  br i1 %or.cond, label %while.body.i.qla4_82xx_idc_lock.exit_crit_edge, label %if.end6.i

while.body.i.qla4_82xx_idc_lock.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_idc_lock.exit

if.end6.i:                                        ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %timeout.010.i, 1
  tail call void @msleep(i32 noundef 100) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i.while.body.i_crit_edge, label %if.end6.i.qla4_82xx_idc_lock.exit_crit_edge

if.end6.i.qla4_82xx_idc_lock.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_idc_lock.exit

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

qla4_82xx_idc_lock.exit:                          ; preds = %if.end6.i.qla4_82xx_idc_lock.exit_crit_edge, %while.body.i.qla4_82xx_idc_lock.exit_crit_edge
  %call1 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 136323392)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp = icmp eq i32 %call1, 3
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br i1 %cmp, label %do.end, label %do.end4

do.end:                                           ; preds = %qla4_82xx_idc_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.62) #13
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323392, i32 noundef 4)
  tail call void @_set_bit(i32 noundef 25, ptr noundef %ha) #10
  br label %if.end

do.end4:                                          ; preds = %qla4_82xx_idc_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.65) #13
  br label %if.end

if.end:                                           ; preds = %do.end4, %do.end
  %call.i31 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826604) #10
  %call7 = tail call i32 @qla4_8xxx_device_state_handler(ptr noundef %ha)
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 522) #10
  br label %while.body.i35

while.body.i35:                                   ; preds = %if.end6.i40.while.body.i35_crit_edge, %if.end
  %timeout.010.i32 = phi i32 [ 0, %if.end ], [ %inc.i38, %if.end6.i40.while.body.i35_crit_edge ]
  %call.i33 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i33)
  %cmp.i34 = icmp eq i32 %call.i33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %timeout.010.i32)
  %exitcond.i36 = icmp eq i32 %timeout.010.i32, 100000000
  %or.cond44 = select i1 %cmp.i34, i1 true, i1 %exitcond.i36
  br i1 %or.cond44, label %while.body.i35.qla4_82xx_idc_lock.exit42_crit_edge, label %if.end6.i40

while.body.i35.qla4_82xx_idc_lock.exit42_crit_edge: ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_idc_lock.exit42

if.end6.i40:                                      ; preds = %while.body.i35
  %inc.i38 = add nuw nsw i32 %timeout.010.i32, 1
  tail call void @msleep(i32 noundef 100) #10
  %tobool.not.i39 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i39, label %if.end6.i40.while.body.i35_crit_edge, label %if.end6.i40.qla4_82xx_idc_lock.exit42_crit_edge

if.end6.i40.qla4_82xx_idc_lock.exit42_crit_edge:  ; preds = %if.end6.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_82xx_idc_lock.exit42

if.end6.i40.while.body.i35_crit_edge:             ; preds = %if.end6.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i35

qla4_82xx_idc_lock.exit42:                        ; preds = %if.end6.i40.qla4_82xx_idc_lock.exit42_crit_edge, %while.body.i35.qla4_82xx_idc_lock.exit42_crit_edge
  %isp_ops.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %2 = ptrtoint ptr %isp_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp_ops.i.i, align 4
  %rd_reg_direct.i.i = getelementptr inbounds %struct.isp_operations, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %rd_reg_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd_reg_direct.i.i, align 4
  %reg_tbl.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %6 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 5
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %ha, i32 noundef %9) #10
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device.i.i, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.357)
  switch i16 %13, label %if.else.i [
    i16 -32718, label %qla4_82xx_idc_lock.exit42.if.then.i_crit_edge
    i16 -32702, label %qla4_82xx_idc_lock.exit42.if.then.i_crit_edge45
  ]

qla4_82xx_idc_lock.exit42.if.then.i_crit_edge45:  ; preds = %qla4_82xx_idc_lock.exit42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

qla4_82xx_idc_lock.exit42.if.then.i_crit_edge:    ; preds = %qla4_82xx_idc_lock.exit42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %qla4_82xx_idc_lock.exit42.if.then.i_crit_edge, %qla4_82xx_idc_lock.exit42.if.then.i_crit_edge45
  %func_num.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %15 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %func_num.i, align 8
  %conv.i = zext i16 %16 to i32
  br label %qla4_8xxx_clear_rst_ready.exit

if.else.i:                                        ; preds = %qla4_82xx_idc_lock.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %func_num4.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %17 = ptrtoint ptr %func_num4.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %func_num4.i, align 8
  %conv5.i = zext i16 %18 to i32
  %mul.i = shl nuw nsw i32 %conv5.i, 2
  br label %qla4_8xxx_clear_rst_ready.exit

qla4_8xxx_clear_rst_ready.exit:                   ; preds = %if.else.i, %if.then.i
  %conv.pn.i = phi i32 [ %conv.i, %if.then.i ], [ %mul.i, %if.else.i ]
  %neg.pn.in.i = shl nuw i32 1, %conv.pn.i
  %neg.pn.i = xor i32 %neg.pn.in.i, -1
  %drv_state.0.i = and i32 %call.i.i, %neg.pn.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %19 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %host_no.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef %20, i32 noundef %drv_state.0.i) #13
  %21 = ptrtoint ptr %isp_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %isp_ops.i.i, align 4
  %wr_reg_direct.i.i = getelementptr inbounds %struct.isp_operations, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %wr_reg_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr_reg_direct.i.i, align 4
  %25 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_tbl.i.i, align 8
  %arrayidx.i25.i = getelementptr i32, ptr %26, i32 5
  %27 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i25.i, align 4
  tail call void %24(ptr noundef %ha, i32 noundef %28, i32 noundef %drv_state.0.i) #10
  %call.i43 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826604) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp9 = icmp eq i32 %call7, 0
  br i1 %cmp9, label %do.end13, label %qla4_8xxx_clear_rst_ready.exit.if.end17_crit_edge

qla4_8xxx_clear_rst_ready.exit.if.end17_crit_edge: ; preds = %qla4_8xxx_clear_rst_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end13:                                         ; preds = %qla4_8xxx_clear_rst_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i.i, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev15, ptr noundef nonnull @.str.68) #13
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %ha) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end13, %qla4_8xxx_clear_rst_ready.exit.if.end17_crit_edge
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_get_sys_info(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  %sys_info_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #10
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 3
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sys_info_dma) #10
  %2 = ptrtoint ptr %sys_info_dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sys_info_dma, align 4, !annotation !641
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %sys_info_dma, i32 noundef 3264, i32 noundef 0) #10
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %5 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %6 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_no, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %7, ptr noundef nonnull @.str.71) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %8 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %10 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %mbox_cmd, i32 12
  %12 = call ptr @memset(ptr %11, i32 0, i32 20)
  %13 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %14 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 120, ptr %mbox_cmd, align 4
  %15 = ptrtoint ptr %sys_info_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sys_info_dma, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %10, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %9, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %8, align 4
  %call17 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 6, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end34, label %do.body21

do.body21:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %20 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp22 = icmp eq i32 %20, 2
  br i1 %cmp22, label %do.end27, label %do.body21.exit_validate_mac82_crit_edge

do.body21.exit_validate_mac82_crit_edge:          ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_validate_mac82

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %host_no29 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %21 = ptrtoint ptr %host_no29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_no29, align 4
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %22, ptr noundef nonnull @.str.71) #13
  br label %exit_validate_mac82

if.end34:                                         ; preds = %if.end7
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device.i, align 2
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.358)
  switch i16 %26, label %cond.false [
    i16 -32718, label %if.end34.cond.end_crit_edge
    i16 -32702, label %if.end34.cond.end_crit_edge119
  ]

if.end34.cond.end_crit_edge119:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end34.cond.end_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end34.cond.end_crit_edge, %if.end34.cond.end_crit_edge119
  %.sink = phi ptr [ %1, %cond.false ], [ %0, %if.end34.cond.end_crit_edge ], [ %0, %if.end34.cond.end_crit_edge119 ]
  %28 = ptrtoint ptr %.sink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %29)
  %cmp40 = icmp ult i32 %29, 52
  br i1 %cmp40, label %do.body43, label %if.end57

do.body43:                                        ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %30 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp44 = icmp eq i32 %30, 2
  br i1 %cmp44, label %do.end49, label %do.body43.exit_validate_mac82_crit_edge

do.body43.exit_validate_mac82_crit_edge:          ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_validate_mac82

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %host_no51 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %31 = ptrtoint ptr %host_no51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %host_no51, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %32, ptr noundef nonnull @.str.71, i32 noundef %34) #13
  br label %exit_validate_mac82

if.end57:                                         ; preds = %cond.end
  %port_num = getelementptr inbounds %struct.mbx_sys_info, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %port_num to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %port_num, align 4
  %port_num58 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 42
  %37 = ptrtoint ptr %port_num58 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %port_num58, align 2
  %my_mac = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 40
  %mac_addr = getelementptr inbounds %struct.mbx_sys_info, ptr %call.i, i32 0, i32 4
  %38 = call ptr @memcpy(ptr %my_mac, ptr %mac_addr, i32 6)
  %serial_number = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 41
  %serial_number61 = getelementptr inbounds %struct.mbx_sys_info, ptr %call.i, i32 0, i32 7
  %39 = call ptr @memcpy(ptr %serial_number, ptr %serial_number61, i32 16)
  %model_name = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 132
  %40 = call ptr @memcpy(ptr %model_name, ptr %call.i, i32 16)
  %phys_port_cnt = getelementptr inbounds %struct.mbx_sys_info, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %phys_port_cnt, align 2
  %phy_port_cnt = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 130
  %43 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %phy_port_cnt, align 2
  %44 = load i16, ptr %port_num, align 4
  %phy_port_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 129
  %45 = ptrtoint ptr %phy_port_num to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %phy_port_num, align 16
  %iscsi_pci_func_cnt = getelementptr inbounds %struct.mbx_sys_info, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %iscsi_pci_func_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iscsi_pci_func_cnt, align 4
  %conv64 = trunc i32 %47 to i16
  %iscsi_pci_func_cnt65 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 131
  %48 = ptrtoint ptr %iscsi_pci_func_cnt65 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv64, ptr %iscsi_pci_func_cnt65, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %49 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp67 = icmp eq i32 %49, 2
  br i1 %cmp67, label %do.end72, label %if.end57.exit_validate_mac82_crit_edge

if.end57.exit_validate_mac82_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_validate_mac82

do.end72:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %host_no74 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %50 = ptrtoint ptr %host_no74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %host_no74, align 4
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %51, ptr noundef nonnull @.str.71, ptr noundef %my_mac, ptr noundef %serial_number) #13
  br label %exit_validate_mac82

exit_validate_mac82:                              ; preds = %do.end72, %if.end57.exit_validate_mac82_crit_edge, %do.end49, %do.body43.exit_validate_mac82_crit_edge, %do.end27, %do.body21.exit_validate_mac82_crit_edge
  %status.0 = phi i32 [ 1, %do.end27 ], [ 1, %do.body21.exit_validate_mac82_crit_edge ], [ 1, %do.end49 ], [ 1, %do.body43.exit_validate_mac82_crit_edge ], [ 0, %do.end72 ], [ 0, %if.end57.exit_validate_mac82_crit_edge ]
  %52 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev, align 8
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %54 = ptrtoint ptr %sys_info_dma to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sys_info_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev84, i32 noundef 64, ptr noundef nonnull %call.i, i32 noundef %55, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %exit_validate_mac82, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %exit_validate_mac82 ], [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sys_info_dma) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_intr_enable(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #10
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %1 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %4 = getelementptr inbounds i8, ptr %mbox_cmd, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %6 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %7 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %mbox_cmd, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %0, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7.not = icmp eq i32 %call, 0
  br i1 %cmp7.not, label %do.end3.cleanup_crit_edge, label %do.body9

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body9:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %9 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp10 = icmp eq i32 %9, 2
  br i1 %cmp10, label %do.end14, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %pdev15 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev16, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82, i32 noundef %13) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.body9.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end14 ], [ 1, %do.body9.cleanup_crit_edge ], [ 0, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_intr_disable(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #10
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %1 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.86) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %4 = getelementptr inbounds i8, ptr %mbox_cmd, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %6 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %7 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %mbox_cmd, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %0, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7.not = icmp eq i32 %call, 0
  br i1 %cmp7.not, label %do.end3.cleanup_crit_edge, label %do.body9

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body9:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %9 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp10 = icmp eq i32 %9, 2
  br i1 %cmp10, label %do.end14, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %pdev15 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev16, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.86, i32 noundef %13) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.body9.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end14 ], [ 1, %do.body9.cleanup_crit_edge ], [ 0, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_enable_intrs(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd.i = alloca [8 x i32], align 4
  %mbox_sts.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i) #10
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %1 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %do.end.i, label %entry.do.end3.i_crit_edge

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %4 = getelementptr inbounds i8, ptr %mbox_cmd.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %6 = call ptr @memset(ptr %mbox_sts.i, i32 0, i32 32)
  %7 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %mbox_cmd.i, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %0, align 4
  %call.i = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd.i, ptr noundef nonnull %mbox_sts.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp7.not.i, label %do.end3.i.qla4_8xxx_intr_enable.exit_crit_edge, label %do.body9.i

do.end3.i.qla4_8xxx_intr_enable.exit_crit_edge:   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_intr_enable.exit

do.body9.i:                                       ; preds = %do.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %9 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp10.i = icmp eq i32 %9, 2
  br i1 %cmp10.i, label %do.end14.i, label %do.body9.i.qla4_8xxx_intr_enable.exit_crit_edge

do.body9.i.qla4_8xxx_intr_enable.exit_crit_edge:  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_intr_enable.exit

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev15.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev15.i, align 8
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %mbox_sts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbox_sts.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev16.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82, i32 noundef %13) #13
  br label %qla4_8xxx_intr_enable.exit

qla4_8xxx_intr_enable.exit:                       ; preds = %do.end14.i, %do.body9.i.qla4_8xxx_intr_enable.exit_crit_edge, %do.end3.i.qla4_8xxx_intr_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #10
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  call void @_raw_spin_lock_irq(ptr noundef %hardware_lock) #10
  %tgt_mask_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 98, i32 2
  %14 = ptrtoint ptr %tgt_mask_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tgt_mask_reg, align 8
  call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %15, i32 noundef 64511)
  call void @_raw_spin_unlock_irq(ptr noundef %hardware_lock) #10
  call void @_set_bit(i32 noundef 6, ptr noundef %ha) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_disable_intrs(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd.i = alloca [8 x i32], align 4
  %mbox_sts.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %ha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i) #10
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %1 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %do.end.i, label %if.then.do.end3.i_crit_edge

if.then.do.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.86) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then.do.end3.i_crit_edge
  %4 = getelementptr inbounds i8, ptr %mbox_cmd.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %6 = call ptr @memset(ptr %mbox_sts.i, i32 0, i32 32)
  %7 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %mbox_cmd.i, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %0, align 4
  %call.i = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd.i, ptr noundef nonnull %mbox_sts.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp7.not.i, label %do.end3.i.qla4_8xxx_intr_disable.exit_crit_edge, label %do.body9.i

do.end3.i.qla4_8xxx_intr_disable.exit_crit_edge:  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_intr_disable.exit

do.body9.i:                                       ; preds = %do.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %9 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp10.i = icmp eq i32 %9, 2
  br i1 %cmp10.i, label %do.end14.i, label %do.body9.i.qla4_8xxx_intr_disable.exit_crit_edge

do.body9.i.qla4_8xxx_intr_disable.exit_crit_edge: ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qla4_8xxx_intr_disable.exit

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev15.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev15.i, align 8
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %mbox_sts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbox_sts.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev16.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.86, i32 noundef %13) #13
  br label %qla4_8xxx_intr_disable.exit

qla4_8xxx_intr_disable.exit:                      ; preds = %do.end14.i, %do.body9.i.qla4_8xxx_intr_disable.exit_crit_edge, %do.end3.i.qla4_8xxx_intr_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #10
  br label %if.end

if.end:                                           ; preds = %qla4_8xxx_intr_disable.exit, %entry.if.end_crit_edge
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  call void @_raw_spin_lock_irq(ptr noundef %hardware_lock) #10
  %tgt_mask_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 98, i32 2
  %14 = ptrtoint ptr %tgt_mask_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tgt_mask_reg, align 8
  call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %15, i32 noundef 1024)
  call void @_raw_spin_unlock_irq(ptr noundef %hardware_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_enable_msix(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 2, i32 noundef 2, i32 noundef 4, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef 2, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_irq_vector(ptr noundef %3, i32 noundef 0) #10
  %call.i30 = tail call i32 @request_threaded_irq(i32 noundef %call3, ptr noundef nonnull @qla4_8xxx_default_intr_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.91, ptr noundef %ha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not = icmp eq i32 %call.i30, 0
  br i1 %tobool.not, label %if.end6, label %if.end.out_free_vectors_crit_edge

if.end.out_free_vectors_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_vectors

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call8 = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef 1) #10
  %call.i31 = tail call i32 @request_threaded_irq(i32 noundef %call8, ptr noundef nonnull @qla4_8xxx_msix_rsp_q, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.92, ptr noundef %ha) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool10.not = icmp eq i32 %call.i31, 0
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %out_free_default_irq

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_free_default_irq:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %call14 = tail call i32 @pci_irq_vector(ptr noundef %7, i32 noundef 0) #10
  %call15 = tail call ptr @free_irq(i32 noundef %call14, ptr noundef %ha) #10
  br label %out_free_vectors

out_free_vectors:                                 ; preds = %out_free_default_irq, %if.end.out_free_vectors_crit_edge
  %ret.0 = phi i32 [ %call.i30, %if.end.out_free_vectors_crit_edge ], [ %call.i31, %out_free_default_irq ]
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free_vectors, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.0, %out_free_vectors ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_8xxx_default_intr_handler(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_8xxx_msix_rsp_q(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_check_init_adapter_retry(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ha, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #13
  br label %exit_init_adapter_failure

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla4xxx_free_irqs(ptr noundef %ha) #10
  br label %exit_init_adapter_failure

exit_init_adapter_failure:                        ; preds = %if.end, %do.end
  %status.0 = phi i32 [ 0, %if.end ], [ 1, %do.end ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_free_irqs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla4_82xx_pci_set_window(ptr noundef %ha, i64 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %addr)
  %cmp = icmp ult i64 %addr, 268435456
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and = lshr i64 %addr, 1
  %shr = and i64 %and, 16646144
  %shr2 = lshr i64 %addr, 25
  %or = or i64 %shr, %shr2
  %conv = trunc i64 %or to i32
  %ddr_mn_window = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 91
  %0 = ptrtoint ptr %ddr_mn_window to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %ddr_mn_window, align 4
  %mn_win_crb = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 92
  %1 = ptrtoint ptr %mn_win_crb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mn_win_crb, align 16
  %or4 = or i32 %2, 100663296
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %or4, i32 noundef %conv)
  %3 = ptrtoint ptr %mn_win_crb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mn_win_crb, align 16
  %or6 = or i32 %4, 100663296
  %call = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef %or6)
  %shl = shl i32 %call, 17
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv)
  %cmp7.not = icmp eq i32 %shl, %conv
  br i1 %cmp7.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef %conv, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %7 = trunc i64 %addr to i32
  %extract.t = and i32 %7, 262143
  br label %if.end92

if.else:                                          ; preds = %entry
  %8 = and i64 %addr, -1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934592, i64 %8)
  %9 = icmp eq i64 %8, 8589934592
  br i1 %9, label %if.then16, label %if.else54

if.then16:                                        ; preds = %if.else
  %and17 = and i64 %addr, 1046528
  call void @__sanitizer_cov_trace_const_cmp8(i64 1046528, i64 %and17)
  %cmp18 = icmp eq i64 %and17, 1046528
  br i1 %cmp18, label %do.end23, label %if.then16.if.end25_crit_edge

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101) #13
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.then16.if.end25_crit_edge
  %addr.addr.0 = phi i64 [ 4294967295, %do.end23 ], [ %addr, %if.then16.if.end25_crit_edge ]
  %and26 = lshr i64 %addr.addr.0, 1
  %shr27 = and i64 %and26, 16744448
  %shr28 = lshr i64 %addr.addr.0, 25
  %or30 = or i64 %shr27, %shr28
  %conv31 = trunc i64 %or30 to i32
  %ddr_mn_window32 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 91
  %10 = ptrtoint ptr %ddr_mn_window32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv31, ptr %ddr_mn_window32, align 4
  %mn_win_crb33 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 92
  %11 = ptrtoint ptr %mn_win_crb33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mn_win_crb33, align 16
  %or34 = or i32 %12, 100663296
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %or34, i32 noundef %conv31)
  %13 = ptrtoint ptr %mn_win_crb33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mn_win_crb33, align 16
  %or36 = or i32 %14, 100663296
  %call37 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef %or36)
  %and38 = shl nuw nsw i32 %conv31, 7
  %shl39 = and i32 %and38, 65408
  %shr41 = lshr i32 %conv31, 17
  %or42 = or i32 %shl39, %shr41
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %or42)
  %cmp43.not = icmp eq i32 %call37, %or42
  br i1 %cmp43.not, label %if.end25.if.end51_crit_edge, label %do.end48

if.end25.if.end51_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.end48:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.101, i32 noundef %or42, i32 noundef %call37) #13
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end25.if.end51_crit_edge
  %15 = trunc i64 %addr.addr.0 to i32
  %16 = and i32 %15, 262143
  %extract.t141 = or i32 %16, 786432
  br label %if.end92

if.else54:                                        ; preds = %if.else
  %17 = and i64 %addr, -67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 12884901888, i64 %17)
  %18 = icmp eq i64 %17, 12884901888
  br i1 %18, label %if.then60, label %if.else78

if.then60:                                        ; preds = %if.else54
  %19 = trunc i64 %addr to i32
  %conv62 = and i32 %19, 268173312
  %qdr_sn_window = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 94
  %20 = ptrtoint ptr %qdr_sn_window to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv62, ptr %qdr_sn_window, align 8
  %ms_win_crb = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 93
  %21 = ptrtoint ptr %ms_win_crb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ms_win_crb, align 4
  %or63 = or i32 %22, 100663296
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %or63, i32 noundef %conv62)
  %23 = ptrtoint ptr %ms_win_crb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ms_win_crb, align 4
  %or65 = or i32 %24, 100663296
  %call66 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef %or65)
  call void @__sanitizer_cov_trace_cmp4(i32 %call66, i32 %conv62)
  %cmp67.not = icmp eq i32 %call66, %conv62
  br i1 %cmp67.not, label %if.then60.if.end75_crit_edge, label %do.end72

if.then60.if.end75_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

do.end72:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.101, i32 noundef %conv62, i32 noundef %call66) #13
  br label %if.end75

if.end75:                                         ; preds = %do.end72, %if.then60.if.end75_crit_edge
  %25 = and i32 %19, 262143
  %extract.t142 = or i32 %25, 67108864
  br label %if.end92

if.else78:                                        ; preds = %if.else54
  %26 = load i32, ptr @qla4_82xx_pci_set_window_warning_count, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr @qla4_82xx_pci_set_window_warning_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %cmp79 = icmp slt i32 %26, 8
  %27 = and i32 %inc, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp81 = icmp eq i32 %27, 0
  %or.cond144 = select i1 %cmp79, i1 true, i1 %cmp81
  br i1 %or.cond144, label %do.end86, label %if.else78.if.end92_crit_edge

if.else78.if.end92_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

do.end86:                                         ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.57) #13
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %if.else78.if.end92_crit_edge, %if.end75, %if.end51, %if.end
  %addr.addr.1.off0 = phi i32 [ %extract.t, %if.end ], [ %extract.t141, %if.end51 ], [ %extract.t142, %if.end75 ], [ -1, %if.else78.if.end92_crit_edge ], [ -1, %do.end86 ]
  ret i32 %addr.addr.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla4_82xx_cmdpeg_ready(ptr noundef %ha, i32 noundef %pegtune_val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %__here.do.body_crit_edge, %entry
  %retries.0 = phi i32 [ 60, %entry ], [ %dec, %__here.do.body_crit_edge ]
  %call = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 136323664)
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.359)
  switch i32 %call, label %__here [
    i32 65281, label %do.body.cleanup_crit_edge
    i32 61455, label %do.body.cleanup_crit_edge88
  ]

do.body.cleanup_crit_edge88:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__here:                                           ; preds = %do.body
  %1 = tail call i32 @llvm.read_register.i32(metadata !617) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 212
  %5 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 ptrtoint (ptr blockaddress(@qla4_82xx_cmdpeg_ready, %__here) to i32), ptr %task_state_change, align 4
  %6 = load ptr, ptr %task, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 2, ptr %6, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !669
  %call67 = tail call i32 @schedule_timeout(i32 noundef 500) #10
  %dec = add nsw i32 %retries.0, -1
  %tobool69.not = icmp eq i32 %dec, 0
  br i1 %tobool69.not, label %if.then72, label %__here.do.body_crit_edge

__here.do.body_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then72:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 154140764)
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, i32 noundef %call73) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body.cleanup_crit_edge, %do.body.cleanup_crit_edge88
  %retval.0 = phi i32 [ -1, %if.then72 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge88 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla4_82xx_rom_fast_read(ptr noundef %ha, i32 noundef %addr, ptr nocapture noundef writeonly %valp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %loops.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 882) #10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %while.cond
  %timeout.011.i = phi i32 [ 0, %while.cond ], [ %inc.i, %if.end6.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %while.body.i.while.end_crit_edge, label %if.end.i

while.body.i.while.end_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout.011.i)
  %exitcond.i = icmp eq i32 %timeout.011.i, 100
  br i1 %exitcond.i, label %qla4_82xx_rom_lock.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %timeout.011.i, 1
  tail call void @msleep(i32 noundef 20) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i.while.body.i_crit_edge, label %if.end6.i.while.end_crit_edge

if.end6.i.while.end_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

qla4_82xx_rom_lock.exit:                          ; preds = %if.end.i
  %exitcond.not = icmp eq i32 %loops.0, 50000
  br i1 %exitcond.not, label %qla4_82xx_rom_lock.exit.do.end_crit_edge, label %while.body

qla4_82xx_rom_lock.exit.do.end_crit_edge:         ; preds = %qla4_82xx_rom_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.body:                                       ; preds = %qla4_82xx_rom_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 21474800) #10
  %inc = add nuw nsw i32 %loops.0, 1
  br label %while.cond

while.end:                                        ; preds = %if.end6.i.while.end_crit_edge, %while.body.i.while.end_crit_edge
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323328, i32 noundef 222393152) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999, i32 %loops.0)
  %cmp2 = icmp ugt i32 %loops.0, 49999
  br i1 %cmp2, label %while.end.do.end_crit_edge, label %if.end

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %qla4_82xx_rom_lock.exit.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.57) #13
  br label %cleanup

if.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call fastcc i32 @qla4_82xx_do_rom_fast_read(ptr noundef %ha, i32 noundef %addr, ptr noundef %valp)
  %call.i10 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826580) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla4_82xx_do_rom_fast_read(ptr noundef %ha, i32 noundef %addr, ptr nocapture noundef writeonly %valp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 154206216, i32 noundef %addr)
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 154206228, i32 noundef 0)
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 154206224, i32 noundef 3)
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 154206212, i32 noundef 11)
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %done.0.i = phi i32 [ 0, %entry ], [ %and.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.i)
  %cmp.i = icmp eq i32 %done.0.i, 0
  br i1 %cmp.i, label %while.body.i, label %if.end

while.body.i:                                     ; preds = %while.cond.i
  %call.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 154140676) #10
  %and.i = and i32 %call.i, 2
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.i, label %do.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

do.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.57) #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.57) #13
  br label %return

if.end:                                           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 154206228, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #10
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 154206224, i32 noundef 0)
  %call2 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 154206232)
  %1 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %valp, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla4_8xxx_mark_entry_skipped(ptr nocapture noundef %ha, ptr nocapture noundef %entry_hdr, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_flags = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_flags, align 1
  %2 = or i8 %1, -128
  store i8 %2, ptr %driver_flags, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %3 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %d_ctrl = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr, i32 0, i32 3
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %6 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_no, align 4
  %8 = ptrtoint ptr %entry_hdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry_hdr, align 4
  %10 = ptrtoint ptr %d_ctrl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %d_ctrl, align 4
  %conv5 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.180, i32 noundef %7, i32 noundef %index, i32 noundef %9, i32 noundef %conv5) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %entry_capture_size = getelementptr inbounds %struct.qla8xxx_minidump_entry_hdr, ptr %entry_hdr, i32 0, i32 2
  %12 = ptrtoint ptr %entry_capture_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entry_capture_size, align 4
  %fw_dump_skip_size = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 111
  %14 = ptrtoint ptr %fw_dump_skip_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_dump_skip_size, align 16
  %add = add i32 %15, %13
  store i32 %add, ptr %fw_dump_skip_size, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_83xx_lockless_flash_read_u32(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_83xx_rd_reg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_83xx_wr_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla4_82xx_read_optrom_data(ptr noundef %ha, ptr nocapture noundef writeonly %buf, i32 noundef %offset, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !641
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %entry
  %loops.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.body.i ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 882) #10
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %while.cond.i
  %timeout.011.i.i = phi i32 [ 0, %while.cond.i ], [ %inc.i.i, %if.end6.i.i.while.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.i, label %while.body.i.i.while.end.i_crit_edge, label %if.end.i.i

while.body.i.i.while.end.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout.011.i.i)
  %exitcond.i.i = icmp eq i32 %timeout.011.i.i, 100
  br i1 %exitcond.i.i, label %qla4_82xx_rom_lock.exit.i, label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %inc.i.i = add nuw nsw i32 %timeout.011.i.i, 1
  tail call void @msleep(i32 noundef 20) #10
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end6.i.i.while.body.i.i_crit_edge, label %if.end6.i.i.while.end.i_crit_edge

if.end6.i.i.while.end.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

qla4_82xx_rom_lock.exit.i:                        ; preds = %if.end.i.i
  %exitcond.not.i = icmp eq i32 %loops.0.i, 50000
  br i1 %exitcond.not.i, label %qla4_82xx_rom_lock.exit.i.do.end.i_crit_edge, label %while.body.i

qla4_82xx_rom_lock.exit.i.do.end.i_crit_edge:     ; preds = %qla4_82xx_rom_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

while.body.i:                                     ; preds = %qla4_82xx_rom_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 21474800) #10
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 3646, i32 noundef 0) #10
  %call.i2.i = tail call i32 @__cond_resched() #10
  %inc.i = add nuw nsw i32 %loops.0.i, 1
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end6.i.i.while.end.i_crit_edge, %while.body.i.i.while.end.i_crit_edge
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 136323328, i32 noundef 222393152) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999, i32 %loops.0.i)
  %cmp3.i = icmp ugt i32 %loops.0.i, 49999
  br i1 %cmp3.i, label %while.end.i.do.end.i_crit_edge, label %for.cond.preheader.i

while.end.i.do.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.cond.preheader.i:                             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp410.not.i = icmp ult i32 %length, 4
  br i1 %cmp410.not.i, label %for.cond.preheader.i.done_read.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.done_read.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done_read.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %div1.i = lshr i32 %length, 2
  br label %for.body.i

do.end.i:                                         ; preds = %while.end.i.do.end.i_crit_edge, %qla4_82xx_rom_lock.exit.i.do.end.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev.i, ptr noundef nonnull @.str.309) #13
  br label %qla4_82xx_read_flash_data.exit

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.012.i = phi i32 [ %inc13.i, %if.end12.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %faddr.addr.011.i = phi i32 [ %add.i, %if.end12.i.for.body.i_crit_edge ], [ %offset, %for.body.preheader.i ]
  %call5.i = call fastcc i32 @qla4_82xx_do_rom_fast_read(ptr noundef %ha, i32 noundef %faddr.addr.011.i, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %do.end9.i

do.end9.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev10.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %4 = ptrtoint ptr %pdev10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev10.i, align 8
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %dev11.i, ptr noundef nonnull @.str.312) #13
  br label %done_read.i

if.end12.i:                                       ; preds = %for.body.i
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %arrayidx.i = getelementptr i32, ptr %buf, i32 %i.012.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx.i, align 4
  %inc13.i = add nuw nsw i32 %i.012.i, 1
  %add.i = add i32 %faddr.addr.011.i, 4
  %exitcond15.not.i = icmp eq i32 %inc13.i, %div1.i
  br i1 %exitcond15.not.i, label %if.end12.i.done_read.i_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end12.i.done_read.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done_read.i

done_read.i:                                      ; preds = %if.end12.i.done_read.i_crit_edge, %do.end9.i, %for.cond.preheader.i.done_read.i_crit_edge
  %call.i3.i = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 101826580) #10
  br label %qla4_82xx_read_flash_data.exit

qla4_82xx_read_flash_data.exit:                   ; preds = %done_read.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_83xx_flash_read_u32(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 316)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 316)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !172, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !281, !283, !285, !287, !289, !290, !291, !292, !294, !296, !297, !298, !299, !301, !302, !303, !304, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !393, !394, !395, !397, !398, !399, !401, !402, !403, !405, !406, !407, !409, !410, !411, !413, !414, !415, !417, !418, !419, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462, !464, !465, !466, !467, !469, !470, !471, !472, !474, !475, !476, !478, !479, !480, !482, !483, !485, !486, !488, !489, !490, !491, !493, !494, !495, !496, !498, !499, !500, !502, !504, !505, !506, !507, !509, !510, !511, !513, !514, !515, !517, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !537, !538, !539, !541, !542, !543, !545, !546, !547, !549, !550, !551, !553, !554, !556, !557, !559, !560, !561, !563, !565, !567, !568, !569, !570, !572, !574, !575, !576, !577, !579, !580, !581, !583, !584, !585, !587, !588, !589, !590, !592, !593, !594, !596, !598, !600, !601, !602, !603, !605, !606, !607, !609, !610, !611, !612, !613, !615, !616}
!llvm.named.register.sp = !{!617}
!llvm.module.flags = !{!618, !619, !620, !621, !622, !623, !624, !625}
!llvm.ident = !{!626}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 470, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qla4_82xx_md_rd_32._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qla4_82xx_md_rd_32._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 495, i32 3}
!10 = !{ptr @qla4_82xx_md_wr_32._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @qla4_82xx_md_wr_32._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1197, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @qla4_8xxx_ms_mem_write_128b._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @qla4_8xxx_ms_mem_write_128b._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1228, i32 4}
!20 = !{ptr @qla4_8xxx_ms_mem_write_128b._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qla4_8xxx_ms_mem_write_128b._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1240, i32 4}
!24 = !{ptr @qla4_8xxx_ms_mem_write_128b._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qla4_8xxx_ms_mem_write_128b._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1250, i32 5}
!28 = !{ptr @qla4_8xxx_ms_mem_write_128b._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qla4_8xxx_ms_mem_write_128b._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1260, i32 4}
!32 = !{ptr @qla4_8xxx_ms_mem_write_128b._rs, !31, !"_rs", i1 false, i1 false}
!33 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qla4_8xxx_ms_mem_write_128b._entry.19, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @qla4_8xxx_ms_mem_write_128b._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @qla4_82xx_pci_mem_read_2M._rs, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1400, i32 4}
!38 = !{ptr @__func__.qla4_82xx_pci_mem_read_2M, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @qla4_82xx_pci_mem_read_2M._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @qla4_82xx_pci_mem_read_2M._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__func__.qla4_82xx_pci_mem_write_2M, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1536, i32 8}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1537, i32 5}
!46 = !{ptr @qla4_82xx_pci_mem_write_2M._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @qla4_82xx_pci_mem_write_2M._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1621, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @qla4_8xxx_set_drv_active._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @qla4_8xxx_set_drv_active._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1643, i32 2}
!55 = !{ptr @qla4_8xxx_clear_drv_active._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @qla4_8xxx_clear_drv_active._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1688, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @qla4_8xxx_set_rst_ready._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @qla4_8xxx_set_rst_ready._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1709, i32 2}
!64 = !{ptr @qla4_8xxx_clear_rst_ready._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qla4_8xxx_clear_rst_ready._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1778, i32 2}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @qla4_82xx_try_start_fw._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @qla4_82xx_try_start_fw._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1784, i32 2}
!73 = !{ptr @qla4_82xx_try_start_fw._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @qla4_82xx_try_start_fw._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1789, i32 3}
!77 = !{ptr @qla4_82xx_try_start_fw._entry.35, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @qla4_82xx_try_start_fw._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1801, i32 3}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @qla4_82xx_rom_lock_recovery._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @qla4_82xx_rom_lock_recovery._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3234, i32 4}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @qla4_8xxx_get_minidump._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @qla4_8xxx_get_minidump._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3274, i32 2}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qla4_8xxx_device_bootstrap._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qla4_8xxx_device_bootstrap._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3287, i32 3}
!96 = !{ptr @qla4_8xxx_device_bootstrap._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qla4_8xxx_device_bootstrap._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3295, i32 2}
!100 = !{ptr @qla4_8xxx_device_bootstrap._entry.47, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qla4_8xxx_device_bootstrap._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3507, i32 2}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @qla4_8xxx_device_state_handler._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @qla4_8xxx_device_state_handler._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3518, i32 4}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @qla4_8xxx_device_state_handler._entry.53, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @qla4_8xxx_device_state_handler._entry_ptr.56, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qla4_8xxx_device_state_handler._entry.58, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3528, i32 3}
!116 = !{ptr @qla4_8xxx_device_state_handler._entry_ptr.59, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3978, i32 2}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @qla4_8xxx_stop_firmware._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @qla4_8xxx_stop_firmware._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3997, i32 3}
!124 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @qla4_82xx_isp_reset._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @qla4_82xx_isp_reset._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4002, i32 3}
!129 = !{ptr @qla4_82xx_isp_reset._entry.64, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @qla4_82xx_isp_reset._entry_ptr.66, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4013, i32 3}
!133 = !{ptr @qla4_82xx_isp_reset._entry.67, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @qla4_82xx_isp_reset._entry_ptr.69, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4036, i32 3}
!137 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @qla4_8xxx_get_sys_info._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @qla4_8xxx_get_sys_info._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4051, i32 3}
!142 = !{ptr @qla4_8xxx_get_sys_info._entry.72, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @qla4_8xxx_get_sys_info._entry_ptr.74, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4059, i32 3}
!146 = !{ptr @qla4_8xxx_get_sys_info._entry.75, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @qla4_8xxx_get_sys_info._entry_ptr.77, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4076, i32 2}
!150 = !{ptr @qla4_8xxx_get_sys_info._entry.78, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @qla4_8xxx_get_sys_info._entry_ptr.80, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4094, i32 2}
!154 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @qla4_8xxx_intr_enable._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @qla4_8xxx_intr_enable._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4102, i32 3}
!159 = !{ptr @qla4_8xxx_intr_enable._entry.83, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @qla4_8xxx_intr_enable._entry_ptr.85, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4115, i32 2}
!163 = !{ptr @qla4_8xxx_intr_disable._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @qla4_8xxx_intr_disable._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @qla4_8xxx_intr_disable._entry.87, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4123, i32 3}
!167 = !{ptr @qla4_8xxx_intr_disable._entry_ptr.88, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4164, i32 3}
!170 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @qla4_8xxx_enable_msix._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @qla4_8xxx_enable_msix._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4171, i32 39}
!175 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4177, i32 29}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 4196, i32 3}
!179 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qla4_8xxx_check_init_adapter_retry._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @qla4_8xxx_check_init_adapter_retry._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.95, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 371, i32 3}
!184 = !{ptr @.str.96, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @qla4_82xx_pci_set_crbwindow_2M._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @qla4_82xx_pci_set_crbwindow_2M._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @qla4_82xx_crb_hub_agt, !188, !"qla4_82xx_crb_hub_agt", i1 false, i1 false}
!188 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 274, i32 17}
!189 = !{ptr @crb_128M_2M_map, !190, !"crb_128M_2M_map", i1 false, i1 false}
!190 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 114, i32 37}
!191 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 723, i32 3}
!193 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @qla4_82xx_pci_mem_read_direct._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @qla4_82xx_pci_mem_read_direct._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 614, i32 4}
!198 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @qla4_82xx_pci_set_window._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @qla4_82xx_pci_set_window._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.103, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 624, i32 4}
!203 = !{ptr @qla4_82xx_pci_set_window._entry.102, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @qla4_82xx_pci_set_window._entry_ptr.104, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.106, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 637, i32 4}
!207 = !{ptr @qla4_82xx_pci_set_window._entry.105, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @qla4_82xx_pci_set_window._entry_ptr.107, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.109, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 652, i32 4}
!211 = !{ptr @qla4_82xx_pci_set_window._entry.108, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @qla4_82xx_pci_set_window._entry_ptr.110, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.112, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 664, i32 4}
!215 = !{ptr @qla4_82xx_pci_set_window._entry.111, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @qla4_82xx_pci_set_window._entry_ptr.113, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @qla4_82xx_pci_set_window_warning_count, !218, !"qla4_82xx_pci_set_window_warning_count", i1 false, i1 false}
!218 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 596, i32 12}
!219 = !{ptr @.str.114, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 796, i32 3}
!221 = !{ptr @qla4_82xx_pci_mem_write_direct._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @qla4_82xx_pci_mem_write_direct._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.115, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1750, i32 3}
!225 = !{ptr @.str.116, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @qla4_82xx_start_firmware._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @qla4_82xx_start_firmware._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.118, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1756, i32 3}
!230 = !{ptr @qla4_82xx_start_firmware._entry.117, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @qla4_82xx_start_firmware._entry_ptr.119, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.120, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1326, i32 3}
!234 = !{ptr @.str.121, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @qla4_82xx_load_fw._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @qla4_82xx_load_fw._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1344, i32 3}
!239 = !{ptr @qla4_82xx_load_fw._entry.122, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @qla4_82xx_load_fw._entry_ptr.124, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1044, i32 3}
!243 = !{ptr @.str.126, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @qla4_82xx_pinit_from_rom._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @qla4_82xx_pinit_from_rom._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.128, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1057, i32 3}
!248 = !{ptr @qla4_82xx_pinit_from_rom._entry.127, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @qla4_82xx_pinit_from_rom._entry_ptr.129, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.131, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1063, i32 2}
!252 = !{ptr @qla4_82xx_pinit_from_rom._entry.130, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @qla4_82xx_pinit_from_rom._entry_ptr.132, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.134, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1068, i32 3}
!256 = !{ptr @qla4_82xx_pinit_from_rom._entry.133, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @qla4_82xx_pinit_from_rom._entry_ptr.135, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.137, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1097, i32 4}
!260 = !{ptr @qla4_82xx_pinit_from_rom._entry.136, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @qla4_82xx_pinit_from_rom._entry_ptr.138, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.140, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1128, i32 4}
!264 = !{ptr @qla4_82xx_pinit_from_rom._entry.139, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @qla4_82xx_pinit_from_rom._entry_ptr.141, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.142, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 954, i32 3}
!268 = !{ptr @.str.143, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @qla4_82xx_rom_fast_read._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @qla4_82xx_rom_fast_read._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.144, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 932, i32 3}
!273 = !{ptr @.str.145, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @qla4_82xx_do_rom_fast_read._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @qla4_82xx_do_rom_fast_read._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.146, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 916, i32 4}
!278 = !{ptr @.str.147, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @qla4_82xx_wait_rom_done._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @qla4_82xx_wait_rom_done._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = distinct !{null, !282, !"rom_max_timeout", i1 false, i1 false}
!282 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 871, i32 13}
!283 = distinct !{null, !284, !"qla4_8xxx_crb_table_initialized", i1 false, i1 false}
!284 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 51, i32 12}
!285 = !{ptr @crb_addr_xform, !286, !"crb_addr_xform", i1 false, i1 false}
!286 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 50, i32 22}
!287 = !{ptr @.str.148, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1286, i32 2}
!289 = !{ptr @.str.149, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @qla4_82xx_load_from_flash._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @qla4_82xx_load_from_flash._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = distinct !{null, !293, !"__already_done", i1 false, i1 false}
!293 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1559, i32 4}
!294 = !{ptr @.str.150, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1567, i32 4}
!296 = !{ptr @.str.151, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @qla4_82xx_cmdpeg_ready._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @qla4_82xx_cmdpeg_ready._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.152, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1596, i32 3}
!301 = !{ptr @.str.153, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @qla4_82xx_rcvpeg_ready._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @qla4_82xx_rcvpeg_ready._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = distinct !{null, !305, !"qla4_82xx_rom_lock_timeout", i1 false, i1 false}
!305 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 872, i32 13}
!306 = !{ptr @.str.154, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3001, i32 3}
!308 = !{ptr @.str.155, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @qla4_8xxx_collect_md_data._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @qla4_8xxx_collect_md_data._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.157, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3013, i32 2}
!313 = !{ptr @qla4_8xxx_collect_md_data._entry.156, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @qla4_8xxx_collect_md_data._entry_ptr.158, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.160, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3015, i32 2}
!317 = !{ptr @qla4_8xxx_collect_md_data._entry.159, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @qla4_8xxx_collect_md_data._entry_ptr.161, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.163, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3018, i32 2}
!321 = !{ptr @qla4_8xxx_collect_md_data._entry.162, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @qla4_8xxx_collect_md_data._entry_ptr.164, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.166, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3020, i32 2}
!325 = !{ptr @qla4_8xxx_collect_md_data._entry.165, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @qla4_8xxx_collect_md_data._entry_ptr.167, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.169, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3039, i32 4}
!329 = !{ptr @qla4_8xxx_collect_md_data._entry.168, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @qla4_8xxx_collect_md_data._entry_ptr.170, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.172, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3052, i32 3}
!333 = !{ptr @qla4_8xxx_collect_md_data._entry.171, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @qla4_8xxx_collect_md_data._entry_ptr.173, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.175, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3190, i32 3}
!337 = !{ptr @qla4_8xxx_collect_md_data._entry.174, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @qla4_8xxx_collect_md_data._entry_ptr.176, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.178, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3197, i32 2}
!341 = !{ptr @qla4_8xxx_collect_md_data._entry.177, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @qla4_8xxx_collect_md_data._entry_ptr.179, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.180, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2565, i32 2}
!345 = !{ptr @.str.181, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @qla4_8xxx_mark_entry_skipped._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @qla4_8xxx_mark_entry_skipped._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.182, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2201, i32 2}
!350 = !{ptr @.str.183, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @qla4_8xxx_minidump_process_control._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @qla4_8xxx_minidump_process_control._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.185, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2304, i32 2}
!355 = !{ptr @qla4_8xxx_minidump_process_control._entry.184, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @qla4_8xxx_minidump_process_control._entry_ptr.186, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.187, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1915, i32 2}
!359 = !{ptr @qla4_8xxx_minidump_process_rdcrb._entry, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @qla4_8xxx_minidump_process_rdcrb._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.188, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2027, i32 2}
!363 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.190, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2031, i32 3}
!367 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry.189, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.191, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.193, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2042, i32 3}
!371 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry.192, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.194, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry.195, !374, !"_entry", i1 false, i1 false}
!374 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2080, i32 5}
!375 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.196, !374, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.198, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2097, i32 4}
!378 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry.197, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.199, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.201, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2103, i32 3}
!382 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry.200, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.202, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.204, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2109, i32 4}
!386 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry.203, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.205, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry.206, !389, !"_entry", i1 false, i1 false}
!389 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2120, i32 2}
!390 = !{ptr @qla4_8xxx_minidump_pex_dma_read._entry_ptr.207, !389, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.208, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2473, i32 2}
!393 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.210, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2478, i32 2}
!397 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry.209, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.211, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.213, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2483, i32 3}
!401 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry.212, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.214, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.216, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2490, i32 3}
!405 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry.215, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.217, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.219, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2496, i32 2}
!409 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry.218, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.220, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @__qla4_8xxx_minidump_process_rdmem._rs, !412, !"_rs", i1 false, i1 false}
!412 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2520, i32 4}
!413 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry.221, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.222, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.224, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2538, i32 2}
!417 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry.223, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @__qla4_8xxx_minidump_process_rdmem._entry_ptr.225, !416, !"_entry_ptr", i1 false, i1 false}
!419 = distinct !{null, !420, !"MD_MIU_TEST_AGT_RDDATA", i1 false, i1 false}
!420 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 47, i32 18}
!421 = !{ptr @.str.226, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2438, i32 2}
!423 = !{ptr @qla4_82xx_minidump_process_rdrom._entry, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @qla4_82xx_minidump_process_rdrom._entry_ptr, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.228, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2443, i32 2}
!427 = !{ptr @qla4_82xx_minidump_process_rdrom._entry.227, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @qla4_82xx_minidump_process_rdrom._entry_ptr.229, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.230, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2965, i32 2}
!431 = !{ptr @.str.231, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @qla4_83xx_minidump_process_rdrom._entry, !430, !"_entry", i1 false, i1 false}
!433 = !{ptr @qla4_83xx_minidump_process_rdrom._entry_ptr, !430, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.233, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2972, i32 3}
!436 = !{ptr @qla4_83xx_minidump_process_rdrom._entry.232, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @qla4_83xx_minidump_process_rdrom._entry_ptr.234, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.235, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2144, i32 2}
!440 = !{ptr @qla4_8xxx_minidump_process_l2tag._entry, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @qla4_8xxx_minidump_process_l2tag._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.236, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2316, i32 2}
!444 = !{ptr @qla4_8xxx_minidump_process_rdocm._entry, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @qla4_8xxx_minidump_process_rdocm._entry_ptr, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.238, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2322, i32 2}
!448 = !{ptr @qla4_8xxx_minidump_process_rdocm._entry.237, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @qla4_8xxx_minidump_process_rdocm._entry_ptr.239, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.241, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2331, i32 2}
!452 = !{ptr @qla4_8xxx_minidump_process_rdocm._entry.240, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @qla4_8xxx_minidump_process_rdocm._entry_ptr.242, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.243, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2344, i32 2}
!456 = !{ptr @qla4_8xxx_minidump_process_rdmux._entry, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @qla4_8xxx_minidump_process_rdmux._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.244, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2406, i32 2}
!460 = !{ptr @qla4_8xxx_minidump_process_queue._entry, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @qla4_8xxx_minidump_process_queue._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.245, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2607, i32 6}
!464 = !{ptr @.str.246, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @qla83xx_minidump_process_pollrd._entry, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @qla83xx_minidump_process_pollrd._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.247, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2915, i32 5}
!469 = !{ptr @.str.248, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @qla83xx_minidump_process_pollrdmwr._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @qla83xx_minidump_process_pollrdmwr._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.250, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2937, i32 5}
!474 = !{ptr @qla83xx_minidump_process_pollrdmwr._entry.249, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @qla83xx_minidump_process_pollrdmwr._entry_ptr.251, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.252, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2665, i32 4}
!478 = !{ptr @qla4_84xx_minidump_process_rddfe._entry, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @qla4_84xx_minidump_process_rddfe._entry_ptr, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @qla4_84xx_minidump_process_rddfe._entry.253, !481, !"_entry", i1 false, i1 false}
!481 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2685, i32 5}
!482 = !{ptr @qla4_84xx_minidump_process_rddfe._entry_ptr.254, !481, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @qla4_84xx_minidump_process_rddfe._entry.255, !484, !"_entry", i1 false, i1 false}
!484 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2703, i32 5}
!485 = !{ptr @qla4_84xx_minidump_process_rddfe._entry_ptr.256, !484, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.257, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1877, i32 4}
!488 = !{ptr @.str.258, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @ql4_84xx_poll_wait_ipmdio_bus_idle._entry, !487, !"_entry", i1 false, i1 false}
!490 = !{ptr @ql4_84xx_poll_wait_ipmdio_bus_idle._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.259, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 1826, i32 4}
!493 = !{ptr @.str.260, !492, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @ql4_84xx_poll_wait_for_ready._entry, !492, !"_entry", i1 false, i1 false}
!495 = !{ptr @ql4_84xx_poll_wait_for_ready._entry_ptr, !492, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @.str.261, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 2823, i32 3}
!498 = !{ptr @qla4_84xx_minidump_process_pollwr._entry, !497, !"_entry", i1 false, i1 false}
!499 = !{ptr @qla4_84xx_minidump_process_pollwr._entry_ptr, !497, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.262, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3215, i32 48}
!502 = !{ptr @.str.263, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3404, i32 3}
!504 = !{ptr @.str.264, !503, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @qla4_82xx_set_idc_ver._entry, !503, !"_entry", i1 false, i1 false}
!506 = !{ptr @qla4_82xx_set_idc_ver._entry_ptr, !503, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.266, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3410, i32 4}
!509 = !{ptr @qla4_82xx_set_idc_ver._entry.265, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @qla4_82xx_set_idc_ver._entry_ptr.267, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.268, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3429, i32 3}
!513 = !{ptr @qla4_83xx_set_idc_ver._entry, !512, !"_entry", i1 false, i1 false}
!514 = !{ptr @qla4_83xx_set_idc_ver._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @qla4_83xx_set_idc_ver._entry.269, !516, !"_entry", i1 false, i1 false}
!516 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3436, i32 4}
!517 = !{ptr @qla4_83xx_set_idc_ver._entry_ptr.270, !516, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.271, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 344, i32 2}
!520 = !{ptr @.str.272, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 345, i32 2}
!522 = !{ptr @.str.273, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 346, i32 2}
!524 = !{ptr @.str.274, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 347, i32 2}
!526 = !{ptr @.str.275, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 348, i32 2}
!528 = !{ptr @.str.276, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 349, i32 2}
!530 = !{ptr @.str.277, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 350, i32 2}
!532 = !{ptr @qdev_state, !533, !"qdev_state", i1 false, i1 false}
!533 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 342, i32 14}
!534 = !{ptr @.str.278, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3314, i32 2}
!536 = !{ptr @.str.279, !535, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @qla4_82xx_need_reset_handler._entry, !535, !"_entry", i1 false, i1 false}
!538 = !{ptr @qla4_82xx_need_reset_handler._entry_ptr, !535, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @.str.281, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3324, i32 3}
!541 = !{ptr @qla4_82xx_need_reset_handler._entry.280, !540, !"_entry", i1 false, i1 false}
!542 = !{ptr @qla4_82xx_need_reset_handler._entry_ptr.282, !540, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @.str.284, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3338, i32 2}
!545 = !{ptr @qla4_82xx_need_reset_handler._entry.283, !544, !"_entry", i1 false, i1 false}
!546 = !{ptr @qla4_82xx_need_reset_handler._entry_ptr.285, !544, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.287, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3344, i32 4}
!549 = !{ptr @qla4_82xx_need_reset_handler._entry.286, !548, !"_entry", i1 false, i1 false}
!550 = !{ptr @qla4_82xx_need_reset_handler._entry_ptr.288, !548, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @qla4_82xx_need_reset_handler._entry.289, !552, !"_entry", i1 false, i1 false}
!552 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3355, i32 4}
!553 = !{ptr @qla4_82xx_need_reset_handler._entry_ptr.290, !552, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @qla4_82xx_need_reset_handler._entry.291, !555, !"_entry", i1 false, i1 false}
!555 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3372, i32 2}
!556 = !{ptr @qla4_82xx_need_reset_handler._entry_ptr.292, !555, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @.str.294, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3377, i32 3}
!559 = !{ptr @qla4_82xx_need_reset_handler._entry.293, !558, !"_entry", i1 false, i1 false}
!560 = !{ptr @qla4_82xx_need_reset_handler._entry_ptr.295, !558, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @.str.296, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3683, i32 36}
!563 = distinct !{null, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3683, i32 43}
!565 = !{ptr @.str.298, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3693, i32 2}
!567 = !{ptr @.str.299, !566, !"<string literal>", i1 false, i1 false}
!568 = !{ptr @qla4_8xxx_find_flt_start._entry, !566, !"_entry", i1 false, i1 false}
!569 = !{ptr @qla4_8xxx_find_flt_start._entry_ptr, !566, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @.str.300, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3700, i32 43}
!572 = !{ptr @.str.301, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3727, i32 3}
!574 = !{ptr @.str.302, !573, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @qla4_8xxx_get_flt_info._entry, !573, !"_entry", i1 false, i1 false}
!576 = !{ptr @qla4_8xxx_get_flt_info._entry_ptr, !573, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.304, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3738, i32 3}
!579 = !{ptr @qla4_8xxx_get_flt_info._entry.303, !578, !"_entry", i1 false, i1 false}
!580 = !{ptr @qla4_8xxx_get_flt_info._entry_ptr.305, !578, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.307, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3798, i32 2}
!583 = !{ptr @qla4_8xxx_get_flt_info._entry.306, !582, !"_entry", i1 false, i1 false}
!584 = !{ptr @qla4_8xxx_get_flt_info._entry_ptr.308, !582, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @.str.309, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3650, i32 3}
!587 = !{ptr @.str.310, !586, !"<string literal>", i1 false, i1 false}
!588 = !{ptr @qla4_82xx_read_flash_data._entry, !586, !"_entry", i1 false, i1 false}
!589 = !{ptr @qla4_82xx_read_flash_data._entry_ptr, !586, !"_entry_ptr", i1 false, i1 false}
!590 = !{ptr @.str.312, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3657, i32 4}
!592 = !{ptr @qla4_82xx_read_flash_data._entry.311, !591, !"_entry", i1 false, i1 false}
!593 = !{ptr @qla4_82xx_read_flash_data._entry_ptr.313, !591, !"_entry_ptr", i1 false, i1 false}
!594 = !{ptr @.str.314, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3813, i32 36}
!596 = !{ptr @.str.315, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3813, i32 43}
!598 = !{ptr @.str.316, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3841, i32 3}
!600 = !{ptr @.str.317, !599, !"<string literal>", i1 false, i1 false}
!601 = !{ptr @qla4_82xx_get_fdt_info._entry, !599, !"_entry", i1 false, i1 false}
!602 = !{ptr @qla4_82xx_get_fdt_info._entry_ptr, !599, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @.str.319, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3867, i32 2}
!605 = !{ptr @qla4_82xx_get_fdt_info._entry.318, !604, !"_entry", i1 false, i1 false}
!606 = !{ptr @qla4_82xx_get_fdt_info._entry_ptr.320, !604, !"_entry_ptr", i1 false, i1 false}
!607 = !{ptr @.str.321, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3894, i32 2}
!609 = !{ptr @.str.322, !608, !"<string literal>", i1 false, i1 false}
!610 = !{ptr @.str.323, !608, !"<string literal>", i1 false, i1 false}
!611 = !{ptr @qla4_82xx_get_idc_param._entry, !608, !"_entry", i1 false, i1 false}
!612 = !{ptr @qla4_82xx_get_idc_param._entry_ptr, !608, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @.str.325, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/scsi/qla4xxx/ql4_nx.c", i32 3896, i32 2}
!615 = !{ptr @qla4_82xx_get_idc_param._entry.324, !614, !"_entry", i1 false, i1 false}
!616 = !{ptr @qla4_82xx_get_idc_param._entry_ptr.326, !614, !"_entry_ptr", i1 false, i1 false}
!617 = !{!"sp"}
!618 = !{i32 1, !"wchar_size", i32 2}
!619 = !{i32 1, !"min_enum_size", i32 4}
!620 = !{i32 8, !"branch-target-enforcement", i32 0}
!621 = !{i32 8, !"sign-return-address", i32 0}
!622 = !{i32 8, !"sign-return-address-all", i32 0}
!623 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!624 = !{i32 7, !"uwtable", i32 1}
!625 = !{i32 7, !"frame-pointer", i32 2}
!626 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!627 = !{i64 2159668063, i64 2159668557, i64 2159668100, i64 2159668156, i64 2159668190, i64 2159668214, i64 2159668255, i64 2159668276, i64 2159668304, i64 2159668338}
!628 = !{i64 3091635}
!629 = !{i64 2159670048}
!630 = !{i64 2159665586, i64 2159666080, i64 2159665623, i64 2159665679, i64 2159665713, i64 2159665737, i64 2159665778, i64 2159665799, i64 2159665827, i64 2159665861}
!631 = !{i64 2159667294}
!632 = !{i64 3091217}
!633 = !{i64 2159660088}
!634 = !{i64 2159660929}
!635 = !{i64 2159670551}
!636 = !{i64 2159671386}
!637 = !{i64 2159674871}
!638 = !{i64 2159675133}
!639 = !{i64 2159675968}
!640 = !{i64 2159679019}
!641 = !{!"auto-init"}
!642 = !{i64 2159689780, i64 2159690274, i64 2159689817, i64 2159689873, i64 2159689907, i64 2159689931, i64 2159689972, i64 2159689993, i64 2159690021, i64 2159690055}
!643 = !{i64 3091415}
!644 = !{i64 2159694620}
!645 = !{i64 3090797}
!646 = !{i64 2159695054}
!647 = !{i64 2159695488}
!648 = !{i64 2159634061}
!649 = !{i64 2159634499}
!650 = !{i64 2159698910}
!651 = !{i64 3091020}
!652 = !{i64 2159699168}
!653 = !{i64 3090597}
!654 = !{i64 2159699567}
!655 = !{i64 2159634869}
!656 = !{i64 2159635242}
!657 = !{i64 2159821114}
!658 = !{i64 2159938609}
!659 = !{i64 2159939324}
!660 = !{i64 2159939547}
!661 = !{i64 2159940257}
!662 = !{i64 2159972547}
!663 = !{i64 2159972996}
!664 = !{i64 2159973758}
!665 = !{i64 2159973989}
!666 = !{i64 2159974685}
!667 = !{i64 2159975215}
!668 = !{i64 2159975767}
!669 = !{i64 2159755719}
