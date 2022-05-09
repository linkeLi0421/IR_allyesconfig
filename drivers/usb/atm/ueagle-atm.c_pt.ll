; ModuleID = '/llk/IR_all_yes/drivers/usb/atm/ueagle-atm.c_pt.bc'
source_filename = "../drivers/usb/atm/ueagle-atm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usbatm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usbatm_data = type { ptr, ptr, [16 x i8], i32, ptr, ptr, [64 x i8], ptr, %struct.kref, %struct.mutex, i32, ptr, %struct.completion, %struct.completion, %struct.list_head, %struct.usbatm_channel, %struct.usbatm_channel, %struct.sk_buff_head, ptr, ptr, i32, i16, ptr, i32, [0 x ptr] }
%struct.usbatm_channel = type { i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.timer_list, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.153, i32 }
%union.anon.153 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.uea_softc = type { ptr, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, %union.cmv_dsc, %struct.work_struct, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.uea_stats }
%union.cmv_dsc = type { %struct.cmv_dsc_e1 }
%struct.cmv_dsc_e1 = type { i8, i16, i32, i16 }
%struct.uea_stats = type { %struct.anon.159 }
%struct.anon.159 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.intr_pkt = type { i8, i8, i16, i16, i16, i16, %union.anon.154 }
%union.anon.154 = type { %union.intr_data_e1, [16 x i8] }
%union.intr_data_e1 = type { %struct.anon.156 }
%struct.anon.156 = type { %struct.cmv_e1, i16 }
%struct.cmv_e1 = type <{ i16, i8, i8, i16, i32, i16, i32 }>
%struct.cmv_e4 = type { i16, i16, i16, i16, [6 x i32] }
%struct.cmv_dsc_e4 = type { i16, i16, i16, i16 }
%struct.uea_cmvs_v2 = type { i32, i32, i32, i32 }
%struct.block_info_e4 = type <{ i16, i8, i8, i32, i32, i16 }>
%struct.l1_code = type { [16 x i8], [88 x i8], [49 x %struct.block_index], [0 x i8] }
%struct.block_index = type { i32, i32, i32, i32, i32, i16, i16 }
%struct.swap_info_e1 = type { i8, i8 }
%struct.uea_cmvs_v1 = type <{ i32, i16, i32 }>
%struct.block_info_e1 = type { i16, i16, i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.108 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_debug = internal constant [17 x i8] c"ueagle_atm.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype462 = internal constant [31 x i8] c"ueagle_atm.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug463 = internal constant [64 x i8] c"ueagle_atm.parm=debug:module debug level (0=off,1=on,2=verbose)\00", section ".modinfo", align 1
@__param_str_altsetting = internal constant [22 x i8] c"ueagle_atm.altsetting\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_altsetting = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_uint, ptr @altsetting }, align 4
@__param_altsetting = internal constant %struct.kernel_param { ptr @__param_str_altsetting, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_altsetting } }, section "__param", align 4
@__UNIQUE_ID_altsettingtype464 = internal constant [45 x i8] c"ueagle_atm.parmtype=altsetting:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_altsetting465 = internal constant [122 x i8] c"ueagle_atm.parm=altsetting:alternate setting for incoming traffic: 0=bulk, 1=isoc slowest, ... , 8=isoc fastest (default)\00", section ".modinfo", align 1
@__param_str_sync_wait = internal constant [21 x i8] c"ueagle_atm.sync_wait\00", align 1
@__param_arr_sync_wait = internal constant %struct.kparam_array { i32 4, i32 1, ptr null, ptr @param_ops_bool, ptr @sync_wait }, align 4
@__param_sync_wait = internal constant %struct.kernel_param { ptr @__param_str_sync_wait, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_sync_wait } }, section "__param", align 4
@__UNIQUE_ID_sync_waittype466 = internal constant [44 x i8] c"ueagle_atm.parmtype=sync_wait:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_sync_wait467 = internal constant [71 x i8] c"ueagle_atm.parm=sync_wait:wait the synchronisation before starting ATM\00", section ".modinfo", align 1
@__param_str_cmv_file = internal constant [20 x i8] c"ueagle_atm.cmv_file\00", align 1
@__param_arr_cmv_file = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_charp, ptr @cmv_file }, align 4
@__param_cmv_file = internal constant %struct.kernel_param { ptr @__param_str_cmv_file, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_cmv_file } }, section "__param", align 4
@__UNIQUE_ID_cmv_filetype468 = internal constant [44 x i8] c"ueagle_atm.parmtype=cmv_file:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_cmv_file469 = internal constant [79 x i8] c"ueagle_atm.parm=cmv_file:file name with configuration and management variables\00", section ".modinfo", align 1
@__param_str_annex = internal constant [17 x i8] c"ueagle_atm.annex\00", align 1
@__param_arr_annex = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_uint, ptr @annex }, align 4
@__param_annex = internal constant %struct.kernel_param { ptr @__param_str_annex, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_annex } }, section "__param", align 4
@__UNIQUE_ID_annextype470 = internal constant [40 x i8] c"ueagle_atm.parmtype=annex:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_annex471 = internal constant [76 x i8] c"ueagle_atm.parm=annex:manually set annex a/b (0=auto, 1=annex a, 2=annex b)\00", section ".modinfo", align 1
@__initcall__kmod_ueagle_atm__530_2726_uea_driver_init6 = internal global ptr @uea_driver_init, section ".initcall6.init", align 4
@uea_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @uea_probe, ptr @uea_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uea_ids, ptr @uea_groups, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_uea_driver_exit = internal global ptr @uea_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author531 = internal constant [72 x i8] c"ueagle_atm.author=Damien Bergamini/Matthieu Castet/Stanislaw W. Gruszka\00", section ".modinfo", align 1
@__UNIQUE_ID_description532 = internal constant [59 x i8] c"ueagle_atm.description=ADI 930/Eagle USB ADSL Modem driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file533 = internal constant [43 x i8] c"ueagle_atm.file=drivers/usb/atm/ueagle-atm\00", section ".modinfo", align 1
@__UNIQUE_ID_license534 = internal constant [32 x i8] c"ueagle_atm.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware535 = internal constant [40 x i8] c"ueagle_atm.firmware=ueagle-atm/eagle.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware536 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/adi930.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware537 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/eagleI.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware538 = internal constant [42 x i8] c"ueagle_atm.firmware=ueagle-atm/eagleII.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware539 = internal constant [43 x i8] c"ueagle_atm.firmware=ueagle-atm/eagleIII.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware540 = internal constant [42 x i8] c"ueagle_atm.firmware=ueagle-atm/eagleIV.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware541 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/DSP4i.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware542 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/DSP4p.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware543 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/DSP9i.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware544 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/DSP9p.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware545 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/DSPei.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware546 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/DSPep.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware547 = internal constant [44 x i8] c"ueagle_atm.firmware=ueagle-atm/930-fpga.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware548 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/CMV4p.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware549 = internal constant [44 x i8] c"ueagle_atm.firmware=ueagle-atm/CMV4p.bin.v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware550 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/CMV4i.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware551 = internal constant [44 x i8] c"ueagle_atm.firmware=ueagle-atm/CMV4i.bin.v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware552 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/CMV9p.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware553 = internal constant [44 x i8] c"ueagle_atm.firmware=ueagle-atm/CMV9p.bin.v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware554 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/CMV9i.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware555 = internal constant [44 x i8] c"ueagle_atm.firmware=ueagle-atm/CMV9i.bin.v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware556 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/CMVep.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware557 = internal constant [44 x i8] c"ueagle_atm.firmware=ueagle-atm/CMVep.bin.v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware558 = internal constant [41 x i8] c"ueagle_atm.firmware=ueagle-atm/CMVei.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware559 = internal constant [44 x i8] c"ueagle_atm.firmware=ueagle-atm/CMVei.bin.v2\00", section ".modinfo", align 1
@altsetting = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 8, i32 8, i32 8], [16 x i8] zeroinitializer }, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@sync_wait = internal global { [4 x i8], [28 x i8] } zeroinitializer, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@cmv_file = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@annex = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ueagle_atm\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ueagle-atm\00", [21 x i8] zeroinitializer }, align 32
@uea_ids = internal constant { [35 x %struct.usb_device_id], [216 x i8] } { [35 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4368, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28657, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 129 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28638, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28639, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 130 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28636, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28637, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 130 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28606, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 4368, i16 -28607, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 132 }, %struct.usb_device_id { i16 3, i16 4153, i16 8465, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4153, i16 8464, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 385 }, %struct.usb_device_id { i16 3, i16 4153, i16 8449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4153, i16 8448, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 641 }, %struct.usb_device_id { i16 3, i16 4153, i16 8497, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4153, i16 8496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 386 }, %struct.usb_device_id { i16 3, i16 4153, i16 8481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4153, i16 8480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 642 }, %struct.usb_device_id { i16 3, i16 1484, i16 13137, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1484, i16 13136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 1484, i16 13138, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1484, i16 13139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 384 }, %struct.usb_device_id { i16 3, i16 1484, i16 13154, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1484, i16 13155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 640 }, %struct.usb_device_id { i16 3, i16 2991, i16 242, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2991, i16 241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 385 }, %struct.usb_device_id { i16 3, i16 2991, i16 250, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2991, i16 249, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 641 }, %struct.usb_device_id { i16 3, i16 2991, i16 246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2991, i16 245, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 385 }, %struct.usb_device_id { i16 3, i16 2991, i16 248, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2991, i16 247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 641 }, %struct.usb_device_id zeroinitializer], [216 x i8] zeroinitializer }, align 32
@uea_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @uea_group, ptr null], [24 x i8] zeroinitializer }, align 32
@uea_probe.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 2, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uea_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/atm/ueagle-atm.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[ueagle-atm vdbg]  entering %s\0A\00", [32 x i8] zeroinitializer }, align 32
@uea_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 2597, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[ueagle-atm] ADSL device founded vid (%#X) pid (%#X) Rev (%#X): %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uea_probe._entry_ptr = internal global ptr @uea_probe._entry, section ".printk_index", align 4
@chip_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [44 x i8] zeroinitializer }, align 32
@uea_usbatm_driver = internal global { %struct.usbatm_driver, [52 x i8] } { %struct.usbatm_driver { ptr @.str.1, ptr @uea_bind, ptr @uea_heavy, ptr @uea_unbind, ptr @uea_atm_open, ptr null, i32 2, i32 8, i32 2, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADI930\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Eagle I\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Eagle II\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Eagle III\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Eagle IV\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ueagle-atm/eagle.fw\00", [44 x i8] zeroinitializer }, align 32
@uea_load_firmware.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.4, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uea_load_firmware\00", [46 x i8] zeroinitializer }, align 32
@uea_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.14, ptr @.str.3, i32 684, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[ueagle-atm] pre-firmware device, uploading firmware\0A\00", [42 x i8] zeroinitializer }, align 32
@uea_load_firmware._entry_ptr = internal global ptr @uea_load_firmware._entry, section ".printk_index", align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ueagle-atm/adi930.fw\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ueagle-atm/eagleI.fw\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ueagle-atm/eagleII.fw\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ueagle-atm/eagleIII.fw\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ueagle-atm/eagleIV.fw\00", [42 x i8] zeroinitializer }, align 32
@uea_load_firmware._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.3, i32 708, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[UEAGLE-ATM] firmware %s is not available\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@uea_load_firmware._entry_ptr.24 = internal global ptr @uea_load_firmware._entry.21, section ".printk_index", align 4
@uea_load_firmware._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.14, ptr @.str.3, i32 710, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[ueagle-atm] loading firmware %s\0A\00", [62 x i8] zeroinitializer }, align 32
@uea_load_firmware._entry_ptr.27 = internal global ptr @uea_load_firmware._entry.25, section ".printk_index", align 4
@uea_load_firmware.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.28, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[ueagle-atm vdbg]  leaving  %s\0A\00", [32 x i8] zeroinitializer }, align 32
@uea_upload_pre_firmware.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.4, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uea_upload_pre_firmware\00", [40 x i8] zeroinitializer }, align 32
@uea_upload_pre_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.29, ptr @.str.3, i32 610, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[UEAGLE-ATM] firmware is not available\0A\00", [56 x i8] zeroinitializer }, align 32
@uea_upload_pre_firmware._entry_ptr = internal global ptr @uea_upload_pre_firmware._entry, section ".printk_index", align 4
@uea_upload_pre_firmware._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.3, i32 632, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[UEAGLE-ATM] modem reset failed with error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@uea_upload_pre_firmware._entry_ptr.33 = internal global ptr @uea_upload_pre_firmware._entry.31, section ".printk_index", align 4
@uea_upload_pre_firmware._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.3, i32 647, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[UEAGLE-ATM] uploading firmware data failed with error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@uea_upload_pre_firmware._entry_ptr.36 = internal global ptr @uea_upload_pre_firmware._entry.34, section ".printk_index", align 4
@uea_upload_pre_firmware._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.3, i32 662, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[UEAGLE-ATM] modem de-assert failed with error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@uea_upload_pre_firmware._entry_ptr.39 = internal global ptr @uea_upload_pre_firmware._entry.37, section ".printk_index", align 4
@uea_upload_pre_firmware._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.3, i32 664, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[ueagle-atm] firmware uploaded\0A\00", [32 x i8] zeroinitializer }, align 32
@uea_upload_pre_firmware._entry_ptr.42 = internal global ptr @uea_upload_pre_firmware._entry.40, section ".printk_index", align 4
@uea_upload_pre_firmware._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.29, ptr @.str.3, i32 669, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[UEAGLE-ATM] firmware is corrupted\0A\00", [60 x i8] zeroinitializer }, align 32
@uea_upload_pre_firmware._entry_ptr.45 = internal global ptr @uea_upload_pre_firmware._entry.43, section ".printk_index", align 4
@uea_upload_pre_firmware.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.28, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_bind.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.4, i8 2, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uea_bind\00", [23 x i8] zeroinitializer }, align 32
@modem_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@uea_bind.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 2, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[ueagle-atm dbg] %s: set alternate %u for 2 interface\0A\00", [41 x i8] zeroinitializer }, align 32
@uea_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 2549, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[ueagle-atm] using iso mode\0A\00", [35 x i8] zeroinitializer }, align 32
@uea_bind._entry_ptr = internal global ptr @uea_bind._entry, section ".printk_index", align 4
@uea_bind._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.46, ptr @.str.3, i32 2553, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[UEAGLE-ATM] setting alternate %u failed for 2 interface, using bulk mode\0A\00", [53 x i8] zeroinitializer }, align 32
@uea_bind._entry_ptr.51 = internal global ptr @uea_bind._entry.49, section ".printk_index", align 4
@claim_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 2456, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[UEAGLE-ATM] interface %d not found\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"claim_interface\00", [16 x i8] zeroinitializer }, align 32
@claim_interface._entry_ptr = internal global ptr @claim_interface._entry, section ".printk_index", align 4
@claim_interface._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 2463, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[UEAGLE-ATM] can't claim interface %d, error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@claim_interface._entry_ptr.56 = internal global ptr @claim_interface._entry.54, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uea_boot.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.4, i8 2, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uea_boot\00", [23 x i8] zeroinitializer }, align 32
@uea_boot.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&sc->task)\00", [35 x i8] zeroinitializer }, align 32
@uea_boot.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@uea_boot.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&sc->sync_q\00", [20 x i8] zeroinitializer }, align 32
@uea_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.3, i32 2177, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[UEAGLE-ATM] urb submission failed with error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@uea_boot._entry_ptr = internal global ptr @uea_boot._entry, section ".printk_index", align 4
@uea_boot._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.57, ptr @.str.3, i32 2186, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[UEAGLE-ATM] failed to create thread\0A\00", [58 x i8] zeroinitializer }, align 32
@uea_boot._entry_ptr.65 = internal global ptr @uea_boot._entry.63, section ".printk_index", align 4
@uea_boot.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.28, i8 2, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_boot.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.28, i8 2, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.4, i8 1, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uea_dispatch_cmv_e4\00", [44 x i8] zeroinitializer }, align 32
@uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 1, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[ueagle-atm dbg] %s: cmv %x %x %x %x %x %x\0A\00", [52 x i8] zeroinitializer }, align 32
@uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.28, i8 1, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.28, i8 2, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_dispatch_cmv_e4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 2063, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[UEAGLE-ATM] unexpected cmv received, Function : %d, Subfunction : %d\0A\00", [57 x i8] zeroinitializer }, align 32
@uea_dispatch_cmv_e4._entry_ptr = internal global ptr @uea_dispatch_cmv_e4._entry, section ".printk_index", align 4
@uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.28, i8 2, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@uea_stat_e4.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.4, i8 1, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uea_stat_e4\00", [20 x i8] zeroinitializer }, align 32
@uea_stat_e4.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 1, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[ueagle-atm dbg] %s: modem not yet synchronized\0A\00", [47 x i8] zeroinitializer }, align 32
@uea_stat_e4.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.71, i8 1, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[ueagle-atm dbg] %s: modem initializing\0A\00", [55 x i8] zeroinitializer }, align 32
@uea_stat_e4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.69, ptr @.str.3, i32 1464, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[ueagle-atm] modem synchronization failed (may be try other cmv/dsp)\0A\00", [58 x i8] zeroinitializer }, align 32
@uea_stat_e4._entry_ptr = internal global ptr @uea_stat_e4._entry, section ".printk_index", align 4
@uea_stat_e4._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.3, i32 1470, ptr @.str.75, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[Ueagle-atm] unknown state: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@uea_stat_e4._entry_ptr.76 = internal global ptr @uea_stat_e4._entry.73, section ".printk_index", align 4
@uea_stat_e4._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.69, ptr @.str.3, i32 1476, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[ueagle-atm] modem operational\0A\00", [32 x i8] zeroinitializer }, align 32
@uea_stat_e4._entry_ptr.79 = internal global ptr @uea_stat_e4._entry.77, section ".printk_index", align 4
@uea_stat_e4.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.80, i8 1, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[ueagle-atm dbg] %s: Stat flag = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@uea_read_cmv_e4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 1228, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[UEAGLE-ATM] reading cmv failed with error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uea_read_cmv_e4\00", [16 x i8] zeroinitializer }, align 32
@uea_read_cmv_e4._entry_ptr = internal global ptr @uea_read_cmv_e4._entry, section ".printk_index", align 4
@uea_cmv_e4.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.3, ptr @.str.4, i8 1, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uea_cmv_e4\00", [21 x i8] zeroinitializer }, align 32
@uea_cmv_e4.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 1, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"[ueagle-atm vdbg]  Function : %d-%d, Group : 0x%04x, Address : 0x%04x, offset : 0x%04x, data : 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@uea_cmv_e4.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.3, ptr @.str.28, i8 1, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wait_cmv_ack.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 1, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wait_cmv_ack\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[ueagle-atm dbg] %s: wait_event_timeout : %d ms\0A\00", [47 x i8] zeroinitializer }, align 32
@uea_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 1108, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[UEAGLE-ATM] can't allocate xfer_buff\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uea_request\00", [20 x i8] zeroinitializer }, align 32
@uea_request._entry_ptr = internal global ptr @uea_request._entry, section ".printk_index", align 4
@uea_request._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 1119, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[UEAGLE-ATM] usb_control_msg error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@uea_request._entry_ptr.91 = internal global ptr @uea_request._entry.89, section ".printk_index", align 4
@uea_request._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.3, i32 1126, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[UEAGLE-ATM] usb_control_msg send only %d bytes (instead of %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@uea_request._entry_ptr.94 = internal global ptr @uea_request._entry.92, section ".printk_index", align 4
@uea_set_bulk_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 1283, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[ueagle-atm] setting new timeout %d%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uea_set_bulk_timeout\00", [43 x i8] zeroinitializer }, align 32
@uea_set_bulk_timeout._entry_ptr = internal global ptr @uea_set_bulk_timeout._entry, section ".printk_index", align 4
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" failed\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@uea_send_cmvs_e4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 1759, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[ueagle-atm] ATU-R firmware version : %x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uea_send_cmvs_e4\00", [47 x i8] zeroinitializer }, align 32
@uea_send_cmvs_e4._entry_ptr = internal global ptr @uea_send_cmvs_e4._entry, section ".printk_index", align 4
@uea_send_cmvs_e4._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.3, i32 1782, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[UEAGLE-ATM] bad cmvs version %d\0A\00", [62 x i8] zeroinitializer }, align 32
@uea_send_cmvs_e4._entry_ptr.103 = internal global ptr @uea_send_cmvs_e4._entry.101, section ".printk_index", align 4
@uea_send_cmvs_e4.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.104, i8 1, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[ueagle-atm vdbg]  Entering in R-ACT-REQ state\0A\00", [48 x i8] zeroinitializer }, align 32
@uea_send_cmvs_e4._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.100, ptr @.str.3, i32 1790, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[ueagle-atm] modem started, waiting synchronization...\0A\00", [40 x i8] zeroinitializer }, align 32
@uea_send_cmvs_e4._entry_ptr.107 = internal global ptr @uea_send_cmvs_e4._entry.105, section ".printk_index", align 4
@uea_write_cmv_e4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 1258, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[UEAGLE-ATM] writing cmv failed with error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uea_write_cmv_e4\00", [47 x i8] zeroinitializer }, align 32
@uea_write_cmv_e4._entry_ptr = internal global ptr @uea_write_cmv_e4._entry, section ".printk_index", align 4
@request_cmvs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.3, i32 1629, ptr @.str.75, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[Ueagle-atm] requesting firmware %s failed, try to get older cmvs\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"request_cmvs\00", [19 x i8] zeroinitializer }, align 32
@request_cmvs._entry_ptr = internal global ptr @request_cmvs._entry, section ".printk_index", align 4
@request_cmvs._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.3, i32 1634, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[UEAGLE-ATM] requesting firmware %s failed with error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@request_cmvs._entry_ptr.114 = internal global ptr @request_cmvs._entry.112, section ".printk_index", align 4
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cmv2\00", [27 x i8] zeroinitializer }, align 32
@request_cmvs._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.111, ptr @.str.3, i32 1643, ptr @.str.75, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[Ueagle-atm] firmware %s is corrupted, try to get older cmvs\0A\00", [34 x i8] zeroinitializer }, align 32
@request_cmvs._entry_ptr.118 = internal global ptr @request_cmvs._entry.116, section ".printk_index", align 4
@request_cmvs._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.111, ptr @.str.3, i32 1670, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[UEAGLE-ATM] firmware %s is corrupted\0A\00", [57 x i8] zeroinitializer }, align 32
@request_cmvs._entry_ptr.121 = internal global ptr @request_cmvs._entry.119, section ".printk_index", align 4
@__const.cmvs_file_name.file_arr = private unnamed_addr constant [10 x i8] c"CMVxy.bin\00", align 1
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ueagle-atm/\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c".v2\00", [28 x i8] zeroinitializer }, align 32
@request_cmvs_old._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.124, ptr @.str.3, i32 1593, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"request_cmvs_old\00", [47 x i8] zeroinitializer }, align 32
@request_cmvs_old._entry_ptr = internal global ptr @request_cmvs_old._entry, section ".printk_index", align 4
@request_cmvs_old._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.124, ptr @.str.3, i32 1609, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@request_cmvs_old._entry_ptr.126 = internal global ptr @request_cmvs_old._entry.125, section ".printk_index", align 4
@uea_load_page_e4.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.3, ptr @.str.128, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uea_load_page_e4\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[ueagle-atm dbg] %s: sending DSP page %u\0A\00", [54 x i8] zeroinitializer }, align 32
@uea_load_page_e4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 1045, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[UEAGLE-ATM] invalid DSP page %u requested\0A\00", [52 x i8] zeroinitializer }, align 32
@uea_load_page_e4._entry_ptr = internal global ptr @uea_load_page_e4._entry, section ".printk_index", align 4
@uea_load_page_e4.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.3, ptr @.str.130, i8 1, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[ueagle-atm dbg] %s: sending Main DSP page %u\0A\00", [49 x i8] zeroinitializer }, align 32
@uea_load_page_e4.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.3, ptr @.str.131, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[ueagle-atm dbg] %s: sending start bi\0A\00", [57 x i8] zeroinitializer }, align 32
@uea_load_page_e4._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.127, ptr @.str.3, i32 1073, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[UEAGLE-ATM] sending DSP start bi failed\0A\00", [54 x i8] zeroinitializer }, align 32
@uea_load_page_e4._entry_ptr.134 = internal global ptr @uea_load_page_e4._entry.132, section ".printk_index", align 4
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ueagle-atm/DSP4i.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ueagle-atm/DSP4p.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ueagle-atm/DSP9i.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ueagle-atm/DSP9p.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ueagle-atm/DSPei.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ueagle-atm/DSPep.bin\00", [43 x i8] zeroinitializer }, align 32
@request_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.141, ptr @.str.3, i32 875, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"request_dsp\00", [20 x i8] zeroinitializer }, align 32
@request_dsp._entry_ptr = internal global ptr @request_dsp._entry, section ".printk_index", align 4
@request_dsp._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.141, ptr @.str.3, i32 886, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@request_dsp._entry_ptr.143 = internal global ptr @request_dsp._entry.142, section ".printk_index", align 4
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STRATIPHY ANEXA\00", [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STRATIPHY ANEXB\00", [16 x i8] zeroinitializer }, align 32
@__uea_load_page_e4.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.3, ptr @.str.147, i8 0, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__uea_load_page_e4\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"[ueagle-atm dbg] %s: sending block %u for DSP page %u size %u address %x\0A\00", [54 x i8] zeroinitializer }, align 32
@__uea_load_page_e4._entry = internal constant %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.3, i32 1019, ptr @.str.23, ptr @.str.7 }, align 1
@.str.148 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[UEAGLE-ATM] sending DSP block %u failed\0A\00", [54 x i8] zeroinitializer }, align 32
@__uea_load_page_e4._entry_ptr = internal global ptr @__uea_load_page_e4._entry, section ".printk_index", align 4
@uea_idma_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.149, ptr @.str.3, i32 829, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uea_idma_write\00", [17 x i8] zeroinitializer }, align 32
@uea_idma_write._entry_ptr = internal global ptr @uea_idma_write._entry, section ".printk_index", align 4
@uea_idma_write._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.3, i32 842, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[UEAGLE-ATM] size != bytes_read %d %d\0A\00", [57 x i8] zeroinitializer }, align 32
@uea_idma_write._entry_ptr.152 = internal global ptr @uea_idma_write._entry.150, section ".printk_index", align 4
@uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.3, ptr @.str.4, i8 1, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uea_dispatch_cmv_e1\00", [44 x i8] zeroinitializer }, align 32
@uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.3, ptr @.str.28, i8 1, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.3, ptr @.str.28, i8 1, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_dispatch_cmv_e1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.153, ptr @.str.3, i32 2014, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uea_dispatch_cmv_e1._entry_ptr = internal global ptr @uea_dispatch_cmv_e1._entry, section ".printk_index", align 4
@uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.3, ptr @.str.28, i8 1, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_dispatch_cmv_e1._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.3, i32 2021, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[UEAGLE-ATM] invalid cmv received, wPreamble %d, bDirection %d\0A\00", [32 x i8] zeroinitializer }, align 32
@uea_dispatch_cmv_e1._entry_ptr.156 = internal global ptr @uea_dispatch_cmv_e1._entry.154, section ".printk_index", align 4
@uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.3, ptr @.str.28, i8 1, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_stat_e1.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.3, ptr @.str.4, i8 1, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uea_stat_e1\00", [20 x i8] zeroinitializer }, align 32
@uea_stat_e1.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.3, ptr @.str.70, i8 1, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_stat_e1.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.3, ptr @.str.71, i8 1, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_stat_e1.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.3, ptr @.str.158, i8 1, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[ueagle-atm vdbg]  modem operational\0A\00", [58 x i8] zeroinitializer }, align 32
@uea_stat_e1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.157, ptr @.str.3, i32 1320, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uea_stat_e1._entry_ptr = internal global ptr @uea_stat_e1._entry, section ".printk_index", align 4
@uea_stat_e1._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.157, ptr @.str.3, i32 1325, ptr @.str.75, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[Ueagle-atm] modem in test mode - not supported\0A\00", [47 x i8] zeroinitializer }, align 32
@uea_stat_e1._entry_ptr.161 = internal global ptr @uea_stat_e1._entry.159, section ".printk_index", align 4
@uea_stat_e1._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.157, ptr @.str.3, i32 1329, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[ueagle-atm] modem in fast-retain mode\0A\00", [56 x i8] zeroinitializer }, align 32
@uea_stat_e1._entry_ptr.164 = internal global ptr @uea_stat_e1._entry.162, section ".printk_index", align 4
@uea_stat_e1._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.157, ptr @.str.3, i32 1333, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[UEAGLE-ATM] modem invalid SW mode %d\0A\00", [57 x i8] zeroinitializer }, align 32
@uea_stat_e1._entry_ptr.167 = internal global ptr @uea_stat_e1._entry.165, section ".printk_index", align 4
@uea_stat_e1._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.157, ptr @.str.3, i32 1339, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uea_stat_e1._entry_ptr.169 = internal global ptr @uea_stat_e1._entry.168, section ".printk_index", align 4
@uea_stat_e1.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.3, ptr @.str.80, i8 1, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_read_cmv_e1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.170, ptr @.str.3, i32 1213, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uea_read_cmv_e1\00", [16 x i8] zeroinitializer }, align 32
@uea_read_cmv_e1._entry_ptr = internal global ptr @uea_read_cmv_e1._entry, section ".printk_index", align 4
@uea_cmv_e1.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.171, ptr @.str.3, ptr @.str.4, i8 1, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uea_cmv_e1\00", [21 x i8] zeroinitializer }, align 32
@uea_cmv_e1.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.171, ptr @.str.3, ptr @.str.172, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"[ueagle-atm vdbg]  Function : %d-%d, Address : %c%c%c%c, offset : 0x%04x, data : 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@uea_cmv_e1.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.171, ptr @.str.3, ptr @.str.28, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_send_cmvs_e1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.173, ptr @.str.3, i32 1692, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uea_send_cmvs_e1\00", [47 x i8] zeroinitializer }, align 32
@uea_send_cmvs_e1._entry_ptr = internal global ptr @uea_send_cmvs_e1._entry, section ".printk_index", align 4
@uea_send_cmvs_e1._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.3, i32 1704, ptr @.str.75, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[Ueagle-atm] use deprecated cmvs version, please update your firmware\0A\00", [57 x i8] zeroinitializer }, align 32
@uea_send_cmvs_e1._entry_ptr.176 = internal global ptr @uea_send_cmvs_e1._entry.174, section ".printk_index", align 4
@uea_send_cmvs_e1._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.173, ptr @.str.3, i32 1727, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uea_send_cmvs_e1._entry_ptr.178 = internal global ptr @uea_send_cmvs_e1._entry.177, section ".printk_index", align 4
@uea_send_cmvs_e1.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.173, ptr @.str.3, ptr @.str.104, i8 1, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_send_cmvs_e1._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.173, ptr @.str.3, i32 1735, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uea_send_cmvs_e1._entry_ptr.180 = internal global ptr @uea_send_cmvs_e1._entry.179, section ".printk_index", align 4
@uea_write_cmv_e1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.181, ptr @.str.3, i32 1245, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uea_write_cmv_e1\00", [47 x i8] zeroinitializer }, align 32
@uea_write_cmv_e1._entry_ptr = internal global ptr @uea_write_cmv_e1._entry, section ".printk_index", align 4
@uea_load_page_e1.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.182, ptr @.str.3, ptr @.str.183, i8 0, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uea_load_page_e1\00", [47 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[ueagle-atm dbg] %s: sending %u blocks for DSP page %u\0A\00", [40 x i8] zeroinitializer }, align 32
@uea_load_page_e1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.182, ptr @.str.3, i32 969, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uea_load_page_e1._entry_ptr = internal global ptr @uea_load_page_e1._entry, section ".printk_index", align 4
@uea_load_page_e1._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.182, ptr @.str.3, i32 972, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uea_load_page_e1._entry_ptr.185 = internal global ptr @uea_load_page_e1._entry.184, section ".printk_index", align 4
@.str.186 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ueagle-atm/930-fpga.bin\00", [40 x i8] zeroinitializer }, align 32
@load_XILINX_firmware.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.187, ptr @.str.3, ptr @.str.4, i8 1, i8 -34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"load_XILINX_firmware\00", [43 x i8] zeroinitializer }, align 32
@load_XILINX_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.187, ptr @.str.3, i32 1919, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@load_XILINX_firmware._entry_ptr = internal global ptr @load_XILINX_firmware._entry, section ".printk_index", align 4
@load_XILINX_firmware._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.187, ptr @.str.3, i32 1927, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@load_XILINX_firmware._entry_ptr.189 = internal global ptr @load_XILINX_firmware._entry.188, section ".printk_index", align 4
@load_XILINX_firmware._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.187, ptr @.str.3, i32 1936, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[UEAGLE-ATM] elsa download data failed (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@load_XILINX_firmware._entry_ptr.192 = internal global ptr @load_XILINX_firmware._entry.190, section ".printk_index", align 4
@load_XILINX_firmware._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.187, ptr @.str.3, i32 1945, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@load_XILINX_firmware._entry_ptr.194 = internal global ptr @load_XILINX_firmware._entry.193, section ".printk_index", align 4
@load_XILINX_firmware._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.187, ptr @.str.3, i32 1954, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[UEAGLE-ATM] elsa de-assert failed with error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@load_XILINX_firmware._entry_ptr.197 = internal global ptr @load_XILINX_firmware._entry.195, section ".printk_index", align 4
@load_XILINX_firmware.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.187, ptr @.str.3, ptr @.str.28, i8 1, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_intr.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.198, ptr @.str.3, ptr @.str.4, i8 2, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.198 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uea_intr\00", [23 x i8] zeroinitializer }, align 32
@uea_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.198, ptr @.str.3, i32 2096, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[UEAGLE-ATM] uea_intr() failed with %d\0A\00", [56 x i8] zeroinitializer }, align 32
@uea_intr._entry_ptr = internal global ptr @uea_intr._entry, section ".printk_index", align 4
@uea_intr._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.198, ptr @.str.3, i32 2102, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[UEAGLE-ATM] wrong interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@uea_intr._entry_ptr.202 = internal global ptr @uea_intr._entry.200, section ".printk_index", align 4
@uea_intr._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.198, ptr @.str.3, i32 2117, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[UEAGLE-ATM] unknown interrupt %u\0A\00", [61 x i8] zeroinitializer }, align 32
@uea_intr._entry_ptr.205 = internal global ptr @uea_intr._entry.203, section ".printk_index", align 4
@uea_kthread.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.206, ptr @.str.3, ptr @.str.4, i8 1, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uea_kthread\00", [20 x i8] zeroinitializer }, align 32
@uea_kthread.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.206, ptr @.str.3, ptr @.str.28, i8 1, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_start_reset.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.207, ptr @.str.3, ptr @.str.4, i8 1, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.207 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uea_start_reset\00", [16 x i8] zeroinitializer }, align 32
@uea_start_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.207, ptr @.str.3, i32 1808, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[ueagle-atm] (re)booting started\0A\00", [62 x i8] zeroinitializer }, align 32
@uea_start_reset._entry_ptr = internal global ptr @uea_start_reset._entry, section ".printk_index", align 4
@uea_start_reset.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.207, ptr @.str.3, ptr @.str.209, i8 1, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.209 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[ueagle-atm vdbg]  Ready CMV received\0A\00", [57 x i8] zeroinitializer }, align 32
@uea_start_reset.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.207, ptr @.str.3, ptr @.str.28, i8 1, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.210 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@uea_stop.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.211, ptr @.str.3, ptr @.str.4, i8 2, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.211 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uea_stop\00", [23 x i8] zeroinitializer }, align 32
@uea_stop.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.211, ptr @.str.3, ptr @.str.212, i8 2, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.212 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[ueagle-atm dbg] %s: kthread finish with status %d\0A\00", [44 x i8] zeroinitializer }, align 32
@uea_stop.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.211, ptr @.str.3, ptr @.str.28, i8 2, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uea_disconnect.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.213, ptr @.str.3, ptr @.str.4, i8 2, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uea_disconnect\00", [17 x i8] zeroinitializer }, align 32
@uea_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.215, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @uea_mutex, i64 52), ptr getelementptr (i8, ptr @uea_mutex, i64 52) }, ptr @uea_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.216, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@uea_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.213, ptr @.str.3, i32 2632, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[ueagle-atm] ADSL device removed\0A\00", [62 x i8] zeroinitializer }, align 32
@uea_disconnect._entry_ptr = internal global ptr @uea_disconnect._entry, section ".printk_index", align 4
@uea_disconnect.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.213, ptr @.str.3, ptr @.str.28, i8 2, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.215 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uea_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uea_mutex\00", [22 x i8] zeroinitializer }, align 32
@uea_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @uea_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@uea_attrs = internal global { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @dev_attr_stat_status, ptr @dev_attr_stat_mflags, ptr @dev_attr_stat_human_status, ptr @dev_attr_stat_delin, ptr @dev_attr_stat_vidcpe, ptr @dev_attr_stat_usrate, ptr @dev_attr_stat_dsrate, ptr @dev_attr_stat_usattenuation, ptr @dev_attr_stat_dsattenuation, ptr @dev_attr_stat_usmargin, ptr @dev_attr_stat_dsmargin, ptr @dev_attr_stat_txflow, ptr @dev_attr_stat_rxflow, ptr @dev_attr_stat_uscorr, ptr @dev_attr_stat_dscorr, ptr @dev_attr_stat_usunc, ptr @dev_attr_stat_dsunc, ptr @dev_attr_stat_firmid, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_stat_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.217, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_status_show, ptr @stat_status_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_mflags = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.219, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_mflags_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_human_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.220, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_human_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_delin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.226, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_delin_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_vidcpe = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.232, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_vidcpe_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_usrate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.233, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_usrate_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_dsrate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.234, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_dsrate_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_usattenuation = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.235, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_usattenuation_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_dsattenuation = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.236, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_dsattenuation_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_usmargin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.237, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_usmargin_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_dsmargin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.238, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_dsmargin_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_txflow = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.239, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_txflow_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_rxflow = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.240, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_rxflow_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_uscorr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.241, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_uscorr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_dscorr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.242, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_dscorr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_usunc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.243, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_usunc_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_dsunc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.244, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_dsunc_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_firmid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.245, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stat_firmid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stat_status\00", [20 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stat_mflags\00", [20 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stat_human_status\00", [46 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Modem is booting\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Modem is initializing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Modem is operational\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Modem synchronization failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Modem state is unknown\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stat_delin\00", [21 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GOOD\00", [27 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RESET\00", [26 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOSS\00", [27 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stat_vidcpe\00", [20 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stat_usrate\00", [20 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stat_dsrate\00", [20 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stat_usattenuation\00", [45 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stat_dsattenuation\00", [45 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stat_usmargin\00", [18 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stat_dsmargin\00", [18 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stat_txflow\00", [20 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stat_rxflow\00", [20 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stat_uscorr\00", [20 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stat_dscorr\00", [20 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stat_usunc\00", [21 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stat_dsunc\00", [21 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stat_firmid\00", [20 x i8] zeroinitializer }, align 32
@switch.table.uea_load_firmware = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.246 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10]
@__sancov_gen_cov_switch_values.247 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.251 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10]
@__sancov_gen_cov_switch_values.252 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.253 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 526, i32 21 }
@___asan_gen_.256 = private unnamed_addr constant [11 x i8] c"uea_driver\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2716, i32 26 }
@___asan_gen_.259 = private unnamed_addr constant [11 x i8] c"altsetting\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 527, i32 21 }
@___asan_gen_.262 = private unnamed_addr constant [10 x i8] c"sync_wait\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 529, i32 13 }
@___asan_gen_.265 = private unnamed_addr constant [9 x i8] c"cmv_file\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 530, i32 14 }
@___asan_gen_.268 = private unnamed_addr constant [6 x i8] c"annex\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 531, i32 12 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2726, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2717, i32 10 }
@___asan_gen_.277 = private unnamed_addr constant [8 x i8] c"uea_ids\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2641, i32 35 }
@___asan_gen_.280 = private unnamed_addr constant [11 x i8] c"uea_groups\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2592, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2593, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [10 x i8] c"chip_name\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 522, i32 27 }
@___asan_gen_.307 = private unnamed_addr constant [18 x i8] c"uea_usbatm_driver\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2576, i32 29 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 523, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 523, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 523, i32 23 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 523, i32 35 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 523, i32 48 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 681, i32 18 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 683, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 684, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 688, i32 13 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 691, i32 13 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 694, i32 13 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 697, i32 13 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 700, i32 13 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 708, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 710, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 712, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 608, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 610, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 632, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 646, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 662, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 664, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 669, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2498, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [12 x i8] c"modem_index\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 525, i32 12 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2548, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2549, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2552, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2456, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2462, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2133, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2141, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2148, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2151, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2176, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2186, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2031, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2032, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2060, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1440, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1453, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1460, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1463, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1469, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1476, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1507, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1227, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1177, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1180, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1089, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1108, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1119, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1124, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1282, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1758, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1782, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1788, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1789, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1257, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1627, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1632, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1640, i32 32 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1642, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1670, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1574, i32 19 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1577, i32 21 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1591, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1609, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1031, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1044, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1054, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1062, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1073, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 856, i32 15 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 858, i32 15 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 861, i32 15 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 863, i32 15 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 866, i32 15 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 868, i32 15 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 873, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 885, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 782, i32 13 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 783, i32 13 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 999, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1019, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 829, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 841, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1969, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2011, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2019, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1297, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1315, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1319, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1324, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1329, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1332, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1339, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1212, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1139, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1140, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1691, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1703, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1727, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1734, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1244, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 937, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 969, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 972, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1912, i32 18 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1914, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1918, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1926, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1935, i32 4 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1944, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1953, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2092, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2095, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2102, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2116, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1891, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1807, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1808, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 1868, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.887, i32 57, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2211, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2213, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2623, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant [10 x i8] c"uea_mutex\00", align 1
@___asan_gen_.901 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2632, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 521, i32 8 }
@___asan_gen_.913 = private unnamed_addr constant [10 x i8] c"uea_group\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2488, i32 1 }
@___asan_gen_.916 = private unnamed_addr constant [10 x i8] c"uea_attrs\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2467, i32 26 }
@___asan_gen_.919 = private unnamed_addr constant [21 x i8] c"dev_attr_stat_status\00", align 1
@___asan_gen_.922 = private unnamed_addr constant [21 x i8] c"dev_attr_stat_mflags\00", align 1
@___asan_gen_.925 = private unnamed_addr constant [27 x i8] c"dev_attr_stat_human_status\00", align 1
@___asan_gen_.928 = private unnamed_addr constant [20 x i8] c"dev_attr_stat_delin\00", align 1
@___asan_gen_.931 = private unnamed_addr constant [21 x i8] c"dev_attr_stat_vidcpe\00", align 1
@___asan_gen_.934 = private unnamed_addr constant [21 x i8] c"dev_attr_stat_usrate\00", align 1
@___asan_gen_.937 = private unnamed_addr constant [21 x i8] c"dev_attr_stat_dsrate\00", align 1
@___asan_gen_.940 = private unnamed_addr constant [28 x i8] c"dev_attr_stat_usattenuation\00", align 1
@___asan_gen_.943 = private unnamed_addr constant [28 x i8] c"dev_attr_stat_dsattenuation\00", align 1
@___asan_gen_.946 = private unnamed_addr constant [23 x i8] c"dev_attr_stat_usmargin\00", align 1
@___asan_gen_.949 = private unnamed_addr constant [23 x i8] c"dev_attr_stat_dsmargin\00", align 1
@___asan_gen_.952 = private unnamed_addr constant [21 x i8] c"dev_attr_stat_txflow\00", align 1
@___asan_gen_.955 = private unnamed_addr constant [21 x i8] c"dev_attr_stat_rxflow\00", align 1
@___asan_gen_.958 = private unnamed_addr constant [21 x i8] c"dev_attr_stat_uscorr\00", align 1
@___asan_gen_.961 = private unnamed_addr constant [21 x i8] c"dev_attr_stat_dscorr\00", align 1
@___asan_gen_.964 = private unnamed_addr constant [20 x i8] c"dev_attr_stat_usunc\00", align 1
@___asan_gen_.967 = private unnamed_addr constant [20 x i8] c"dev_attr_stat_dsunc\00", align 1
@___asan_gen_.970 = private unnamed_addr constant [21 x i8] c"dev_attr_stat_firmid\00", align 1
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2278, i32 8 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2255, i32 26 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2397, i32 1 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2341, i32 8 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2321, i32 22 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2324, i32 22 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2327, i32 22 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2330, i32 22 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2333, i32 22 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2373, i32 8 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2348, i32 16 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2357, i32 12 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2359, i32 12 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2362, i32 12 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2367, i32 21 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2398, i32 1 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2399, i32 1 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2400, i32 1 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2401, i32 1 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2402, i32 1 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2403, i32 1 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2404, i32 1 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2405, i32 1 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2406, i32 1 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2407, i32 1 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2408, i32 1 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2409, i32 1 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2410, i32 1 }
@___asan_gen_.1057 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1058 = private constant [32 x i8] c"../drivers/usb/atm/ueagle-atm.c\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 2411, i32 1 }
@___asan_gen_.1060 = private unnamed_addr constant [31 x i8] c"switch.table.uea_load_firmware\00", align 1
@llvm.compiler.used = appending global [385 x ptr] [ptr @__UNIQUE_ID_altsetting465, ptr @__UNIQUE_ID_altsettingtype464, ptr @__UNIQUE_ID_annex471, ptr @__UNIQUE_ID_annextype470, ptr @__UNIQUE_ID_author531, ptr @__UNIQUE_ID_cmv_file469, ptr @__UNIQUE_ID_cmv_filetype468, ptr @__UNIQUE_ID_debug463, ptr @__UNIQUE_ID_debugtype462, ptr @__UNIQUE_ID_description532, ptr @__UNIQUE_ID_file533, ptr @__UNIQUE_ID_firmware535, ptr @__UNIQUE_ID_firmware536, ptr @__UNIQUE_ID_firmware537, ptr @__UNIQUE_ID_firmware538, ptr @__UNIQUE_ID_firmware539, ptr @__UNIQUE_ID_firmware540, ptr @__UNIQUE_ID_firmware541, ptr @__UNIQUE_ID_firmware542, ptr @__UNIQUE_ID_firmware543, ptr @__UNIQUE_ID_firmware544, ptr @__UNIQUE_ID_firmware545, ptr @__UNIQUE_ID_firmware546, ptr @__UNIQUE_ID_firmware547, ptr @__UNIQUE_ID_firmware548, ptr @__UNIQUE_ID_firmware549, ptr @__UNIQUE_ID_firmware550, ptr @__UNIQUE_ID_firmware551, ptr @__UNIQUE_ID_firmware552, ptr @__UNIQUE_ID_firmware553, ptr @__UNIQUE_ID_firmware554, ptr @__UNIQUE_ID_firmware555, ptr @__UNIQUE_ID_firmware556, ptr @__UNIQUE_ID_firmware557, ptr @__UNIQUE_ID_firmware558, ptr @__UNIQUE_ID_firmware559, ptr @__UNIQUE_ID_license534, ptr @__UNIQUE_ID_sync_wait467, ptr @__UNIQUE_ID_sync_waittype466, ptr @__exitcall_uea_driver_exit, ptr @__initcall__kmod_ueagle_atm__530_2726_uea_driver_init6, ptr @__param_altsetting, ptr @__param_annex, ptr @__param_cmv_file, ptr @__param_debug, ptr @__param_sync_wait, ptr @__uea_load_page_e4._entry, ptr @__uea_load_page_e4._entry_ptr, ptr @claim_interface._entry, ptr @claim_interface._entry.54, ptr @claim_interface._entry_ptr, ptr @claim_interface._entry_ptr.56, ptr @load_XILINX_firmware._entry, ptr @load_XILINX_firmware._entry.188, ptr @load_XILINX_firmware._entry.190, ptr @load_XILINX_firmware._entry.193, ptr @load_XILINX_firmware._entry.195, ptr @load_XILINX_firmware._entry_ptr, ptr @load_XILINX_firmware._entry_ptr.189, ptr @load_XILINX_firmware._entry_ptr.192, ptr @load_XILINX_firmware._entry_ptr.194, ptr @load_XILINX_firmware._entry_ptr.197, ptr @request_cmvs._entry, ptr @request_cmvs._entry.112, ptr @request_cmvs._entry.116, ptr @request_cmvs._entry.119, ptr @request_cmvs._entry_ptr, ptr @request_cmvs._entry_ptr.114, ptr @request_cmvs._entry_ptr.118, ptr @request_cmvs._entry_ptr.121, ptr @request_cmvs_old._entry, ptr @request_cmvs_old._entry.125, ptr @request_cmvs_old._entry_ptr, ptr @request_cmvs_old._entry_ptr.126, ptr @request_dsp._entry, ptr @request_dsp._entry.142, ptr @request_dsp._entry_ptr, ptr @request_dsp._entry_ptr.143, ptr @uea_bind._entry, ptr @uea_bind._entry.49, ptr @uea_bind._entry_ptr, ptr @uea_bind._entry_ptr.51, ptr @uea_boot._entry, ptr @uea_boot._entry.63, ptr @uea_boot._entry_ptr, ptr @uea_boot._entry_ptr.65, ptr @uea_disconnect._entry, ptr @uea_disconnect._entry_ptr, ptr @uea_dispatch_cmv_e1._entry, ptr @uea_dispatch_cmv_e1._entry.154, ptr @uea_dispatch_cmv_e1._entry_ptr, ptr @uea_dispatch_cmv_e1._entry_ptr.156, ptr @uea_dispatch_cmv_e4._entry, ptr @uea_dispatch_cmv_e4._entry_ptr, ptr @uea_driver_exit, ptr @uea_idma_write._entry, ptr @uea_idma_write._entry.150, ptr @uea_idma_write._entry_ptr, ptr @uea_idma_write._entry_ptr.152, ptr @uea_intr._entry, ptr @uea_intr._entry.200, ptr @uea_intr._entry.203, ptr @uea_intr._entry_ptr, ptr @uea_intr._entry_ptr.202, ptr @uea_intr._entry_ptr.205, ptr @uea_load_firmware._entry, ptr @uea_load_firmware._entry.21, ptr @uea_load_firmware._entry.25, ptr @uea_load_firmware._entry_ptr, ptr @uea_load_firmware._entry_ptr.24, ptr @uea_load_firmware._entry_ptr.27, ptr @uea_load_page_e1._entry, ptr @uea_load_page_e1._entry.184, ptr @uea_load_page_e1._entry_ptr, ptr @uea_load_page_e1._entry_ptr.185, ptr @uea_load_page_e4._entry, ptr @uea_load_page_e4._entry.132, ptr @uea_load_page_e4._entry_ptr, ptr @uea_load_page_e4._entry_ptr.134, ptr @uea_probe._entry, ptr @uea_probe._entry_ptr, ptr @uea_read_cmv_e1._entry, ptr @uea_read_cmv_e1._entry_ptr, ptr @uea_read_cmv_e4._entry, ptr @uea_read_cmv_e4._entry_ptr, ptr @uea_request._entry, ptr @uea_request._entry.89, ptr @uea_request._entry.92, ptr @uea_request._entry_ptr, ptr @uea_request._entry_ptr.91, ptr @uea_request._entry_ptr.94, ptr @uea_send_cmvs_e1._entry, ptr @uea_send_cmvs_e1._entry.174, ptr @uea_send_cmvs_e1._entry.177, ptr @uea_send_cmvs_e1._entry.179, ptr @uea_send_cmvs_e1._entry_ptr, ptr @uea_send_cmvs_e1._entry_ptr.176, ptr @uea_send_cmvs_e1._entry_ptr.178, ptr @uea_send_cmvs_e1._entry_ptr.180, ptr @uea_send_cmvs_e4._entry, ptr @uea_send_cmvs_e4._entry.101, ptr @uea_send_cmvs_e4._entry.105, ptr @uea_send_cmvs_e4._entry_ptr, ptr @uea_send_cmvs_e4._entry_ptr.103, ptr @uea_send_cmvs_e4._entry_ptr.107, ptr @uea_set_bulk_timeout._entry, ptr @uea_set_bulk_timeout._entry_ptr, ptr @uea_start_reset._entry, ptr @uea_start_reset._entry_ptr, ptr @uea_stat_e1._entry, ptr @uea_stat_e1._entry.159, ptr @uea_stat_e1._entry.162, ptr @uea_stat_e1._entry.165, ptr @uea_stat_e1._entry.168, ptr @uea_stat_e1._entry_ptr, ptr @uea_stat_e1._entry_ptr.161, ptr @uea_stat_e1._entry_ptr.164, ptr @uea_stat_e1._entry_ptr.167, ptr @uea_stat_e1._entry_ptr.169, ptr @uea_stat_e4._entry, ptr @uea_stat_e4._entry.73, ptr @uea_stat_e4._entry.77, ptr @uea_stat_e4._entry_ptr, ptr @uea_stat_e4._entry_ptr.76, ptr @uea_stat_e4._entry_ptr.79, ptr @uea_upload_pre_firmware._entry, ptr @uea_upload_pre_firmware._entry.31, ptr @uea_upload_pre_firmware._entry.34, ptr @uea_upload_pre_firmware._entry.37, ptr @uea_upload_pre_firmware._entry.40, ptr @uea_upload_pre_firmware._entry.43, ptr @uea_upload_pre_firmware._entry_ptr, ptr @uea_upload_pre_firmware._entry_ptr.33, ptr @uea_upload_pre_firmware._entry_ptr.36, ptr @uea_upload_pre_firmware._entry_ptr.39, ptr @uea_upload_pre_firmware._entry_ptr.42, ptr @uea_upload_pre_firmware._entry_ptr.45, ptr @uea_write_cmv_e1._entry, ptr @uea_write_cmv_e1._entry_ptr, ptr @uea_write_cmv_e4._entry, ptr @uea_write_cmv_e4._entry_ptr, ptr @debug, ptr @uea_driver, ptr @altsetting, ptr @sync_wait, ptr @cmv_file, ptr @annex, ptr @.str, ptr @.str.1, ptr @uea_ids, ptr @uea_groups, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @chip_name, ptr @uea_usbatm_driver, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @modem_index, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @uea_boot.__key, ptr @.str.58, ptr @uea_boot.__key.59, ptr @uea_boot.__key.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.186, ptr @.str.187, ptr @.str.191, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @uea_mutex, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @uea_group, ptr @uea_attrs, ptr @dev_attr_stat_status, ptr @dev_attr_stat_mflags, ptr @dev_attr_stat_human_status, ptr @dev_attr_stat_delin, ptr @dev_attr_stat_vidcpe, ptr @dev_attr_stat_usrate, ptr @dev_attr_stat_dsrate, ptr @dev_attr_stat_usattenuation, ptr @dev_attr_stat_dsattenuation, ptr @dev_attr_stat_usmargin, ptr @dev_attr_stat_dsmargin, ptr @dev_attr_stat_txflow, ptr @dev_attr_stat_rxflow, ptr @dev_attr_stat_uscorr, ptr @dev_attr_stat_dscorr, ptr @dev_attr_stat_usunc, ptr @dev_attr_stat_dsunc, ptr @dev_attr_stat_firmid, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @switch.table.uea_load_firmware], section "llvm.metadata"
@0 = internal global [270 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altsetting to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmv_file to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @annex to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_ids to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_usbatm_driver to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_load_firmware._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_load_firmware._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_upload_pre_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_upload_pre_firmware._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_upload_pre_firmware._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_upload_pre_firmware._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_upload_pre_firmware._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_upload_pre_firmware._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modem_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_bind._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @claim_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @claim_interface._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_boot.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_boot.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_boot.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_boot._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_dispatch_cmv_e4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_stat_e4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_stat_e4._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_stat_e4._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_read_cmv_e4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_request._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_request._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_set_bulk_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_send_cmvs_e4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_send_cmvs_e4._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_send_cmvs_e4._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_write_cmv_e4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_cmvs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_cmvs._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_cmvs._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_cmvs._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_cmvs_old._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_cmvs_old._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_load_page_e4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_load_page_e4._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_dsp._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_idma_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_idma_write._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_dispatch_cmv_e1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_dispatch_cmv_e1._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_stat_e1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_stat_e1._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_stat_e1._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_stat_e1._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_stat_e1._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_read_cmv_e1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_send_cmvs_e1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_send_cmvs_e1._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_send_cmvs_e1._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_send_cmvs_e1._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_write_cmv_e1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_load_page_e1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_load_page_e1._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_XILINX_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_XILINX_firmware._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_XILINX_firmware._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_XILINX_firmware._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_XILINX_firmware._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_intr._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_intr._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_start_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uea_attrs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_mflags to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_human_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_delin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_vidcpe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_usrate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_dsrate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_usattenuation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_dsattenuation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_usmargin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_dsmargin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_txflow to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_rxflow to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_uscorr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_dscorr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_usunc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_dsunc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_firmid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uea_load_firmware to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uea_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @uea_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uea_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_deregister(ptr noundef nonnull @uea_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uea_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.body1, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_probe.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_probe, %if.then5)) #14
          to label %do.end11 [label %if.then5], !srcloc !690

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_probe.__UNIQUE_ID_ddebug527, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #14
  br label %do.end11

do.end11:                                         ; preds = %if.then5, %do.body1, %entry.do.end11_crit_edge
  %idVendor = getelementptr i8, ptr %1, i32 936
  %3 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idVendor, align 8
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %6 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idProduct, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv14 = zext i16 %8 to i32
  %bcdDevice = getelementptr i8, ptr %1, i32 940
  %9 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bcdDevice, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv16 = zext i16 %11 to i32
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %12 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_info, align 4
  %and = and i32 %13, 15
  %arrayidx = getelementptr [5 x ptr], ptr @chip_name, i32 0, i32 %and
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv14, i32 noundef %conv16, ptr noundef %15) #17
  %call17 = tail call i32 @usb_reset_device(ptr noundef %add.ptr.i) #14
  %16 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_info, align 4
  %and19 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end25

if.then21:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  %and23 = and i32 %17, 15
  %call24 = tail call fastcc i32 @uea_load_firmware(ptr noundef %add.ptr.i, i32 noundef %and23)
  br label %cleanup

if.end25:                                         ; preds = %do.end11
  %call26 = tail call i32 @usbatm_usb_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @uea_usbatm_driver) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data, align 4
  %usbatm32 = getelementptr inbounds %struct.uea_softc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %usbatm32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usbatm32, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %atm_dev, align 4
  %tobool33.not = icmp eq ptr %25, null
  br i1 %tobool33.not, label %if.then29.do.end39_crit_edge, label %if.then34

if.then29.do.end39_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end39

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @atm_dev_signal_change(ptr noundef nonnull %25, i8 noundef zeroext 0) #14
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %if.then29.do.end39_crit_edge
  %kthread = getelementptr inbounds %struct.uea_softc, ptr %21, i32 0, i32 8
  %26 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kthread, align 4
  %call40 = tail call i32 @wake_up_process(ptr noundef %27) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end25.cleanup_crit_edge, %if.then21
  %retval.0 = phi i32 [ %call24, %if.then21 ], [ 0, %do.end39 ], [ %call26, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uea_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %do.body2, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_disconnect.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_disconnect, %if.then6)) #14
          to label %do.end9 [label %if.then6], !srcloc !690

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_disconnect.__UNIQUE_ID_ddebug528, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.213) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %config = getelementptr i8, ptr %1, i32 952
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 8
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bNumInterfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp12.not = icmp ne i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp14 = icmp eq i8 %5, 0
  %or.cond = select i1 %cmp12.not, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.then16, label %do.end9.do.body22_crit_edge

do.end9.do.body22_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body22

if.then16:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  tail call void @usbatm_usb_disconnect(ptr noundef %intf) #14
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.214) #17
  br label %do.body22

do.body22:                                        ; preds = %if.then16, %do.end9.do.body22_crit_edge
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp23 = icmp ugt i32 %11, 1
  br i1 %cmp23, label %do.body26, label %do.body22.do.end45_crit_edge

do.body22.do.end45_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end45

do.body26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_disconnect.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_disconnect, %if.then38)) #14
          to label %do.end45 [label %if.then38], !srcloc !690

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_disconnect.__UNIQUE_ID_ddebug529, ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.213) #14
  br label %do.end45

do.end45:                                         ; preds = %if.then38, %do.body26, %do.body22.do.end45_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_load_firmware(ptr noundef %usb, i32 noundef %ver) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.body1, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_load_firmware.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_load_firmware, %if.then4)) #14
          to label %do.end10 [label %if.then4], !srcloc !690

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_device, ptr %usb, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_load_firmware.__UNIQUE_ID_ddebug474, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14) #14
  br label %do.end10

do.end10:                                         ; preds = %if.then4, %do.body1, %entry.do.end10_crit_edge
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %usb, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ver)
  %1 = icmp ult i32 %ver, 5
  br i1 %1, label %switch.lookup, label %do.end10.sw.epilog_crit_edge

do.end10.sw.epilog_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.uea_load_firmware, i32 0, i32 %ver
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end10.sw.epilog_crit_edge
  %fw_name.0 = phi ptr [ @.str.13, %do.end10.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %call17 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %fw_name.0, ptr noundef %dev11, i32 noundef 3264, ptr noundef %usb, ptr noundef nonnull @uea_upload_pre_firmware) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end26, label %do.end22

do.end22:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.22, ptr noundef nonnull %fw_name.0) #17
  br label %do.body29

do.end26:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.26, ptr noundef nonnull %fw_name.0) #17
  br label %do.body29

do.body29:                                        ; preds = %do.end26, %do.end22
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp30 = icmp ugt i32 %3, 1
  br i1 %cmp30, label %do.body32, label %do.body29.do.end51_crit_edge

do.body29.do.end51_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end51

do.body32:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_load_firmware.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_load_firmware, %if.then44)) #14
          to label %do.end51 [label %if.then44], !srcloc !690

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_load_firmware.__UNIQUE_ID_ddebug475, ptr noundef %dev11, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.14) #14
  br label %do.end51

do.end51:                                         ; preds = %if.then44, %do.body32, %do.body29.do.end51_crit_edge
  ret i32 %call17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbatm_usb_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_signal_change(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uea_upload_pre_firmware(ptr noundef %fw_entry, ptr noundef %context) #2 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #14
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !691
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %do.body1, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_upload_pre_firmware.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_upload_pre_firmware, %if.then4)) #14
          to label %do.end7 [label %if.then4], !srcloc !690

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_device, ptr %context, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_upload_pre_firmware.__UNIQUE_ID_ddebug472, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.29) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.body1, %entry.do.end7_crit_edge
  %tobool8.not = icmp eq ptr %fw_entry, null
  br i1 %tobool8.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %context, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.30) #17
  br label %err

if.end14:                                         ; preds = %do.end7
  %2 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_entry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp16 = icmp slt i32 %3, 4
  br i1 %cmp16, label %if.end14.do.end75_crit_edge, label %if.end18

if.end14.do.end75_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75

if.end18:                                         ; preds = %if.end14
  %data = getelementptr inbounds %struct.firmware, ptr %fw_entry, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %sub = add nsw i32 %3, -4
  %call20 = tail call i32 @crc32_be(i32 noundef 0, ptr noundef %add.ptr, i32 noundef %sub) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %8)
  %cmp21.not = icmp eq i32 %call20, %8
  br i1 %cmp21.not, label %if.end23, label %if.end18.do.end75_crit_edge

if.end18.do.end75_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75

if.end23:                                         ; preds = %if.end18
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %value, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %value, i32 noundef 1, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end23.do.end29_crit_edge, label %if.end.i

if.end23.do.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

if.end.i:                                         ; preds = %if.end23
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %context, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @usb_control_msg(ptr noundef %context, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 1, i32 noundef 1000) #14
  call void @kfree(ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.do.end29_crit_edge, label %uea_send_modem_cmd.exit

if.end.i.do.end29_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

uea_send_modem_cmd.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp7.i = icmp eq i32 %call2.i, 1
  br i1 %cmp7.i, label %while.cond.preheader, label %uea_send_modem_cmd.exit.do.end29_crit_edge

uea_send_modem_cmd.exit.do.end29_crit_edge:       ; preds = %uea_send_modem_cmd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

while.cond.preheader:                             ; preds = %uea_send_modem_cmd.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp32176 = icmp ugt i32 %sub, 3
  br i1 %cmp32176, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

do.end29:                                         ; preds = %uea_send_modem_cmd.exit.do.end29_crit_edge, %if.end.i.do.end29_crit_edge, %if.end23.do.end29_crit_edge
  %12 = phi i32 [ -5, %uea_send_modem_cmd.exit.do.end29_crit_edge ], [ %call2.i, %if.end.i.do.end29_crit_edge ], [ -12, %if.end23.do.end29_crit_edge ]
  %dev30 = getelementptr inbounds %struct.usb_device, ptr %context, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.32, i32 noundef %12) #17
  br label %err

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %pfw.0178 = phi ptr [ %add.ptr54, %cleanup.while.body_crit_edge ], [ %add.ptr, %while.cond.preheader.while.body_crit_edge ]
  %size.0177 = phi i32 [ %sub36, %cleanup.while.body_crit_edge ], [ %sub, %while.cond.preheader.while.body_crit_edge ]
  %13 = ptrtoint ptr %pfw.0178 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pfw.0178, align 1
  %add.ptr33 = getelementptr i8, ptr %pfw.0178, i32 1
  %15 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr33, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16) #14
  %conv = zext i8 %14 to i32
  %add35 = add nuw nsw i32 %conv, 3
  %sub36 = sub nsw i32 %size.0177, %add35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36)
  %cmp37 = icmp slt i32 %sub36, 0
  br i1 %cmp37, label %while.body.do.end75_crit_edge, label %if.end40

while.body.do.end75_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75

if.end40:                                         ; preds = %while.body
  %add.ptr42 = getelementptr i8, ptr %pfw.0178, i32 3
  %call.i136 = call ptr @kmemdup(ptr noundef %add.ptr42, i32 noundef %conv, i32 noundef 3264) #14
  %tobool.not.i137 = icmp eq ptr %call.i136, null
  br i1 %tobool.not.i137, label %if.end40.cleanup.thread165_crit_edge, label %if.end.i144

if.end40.cleanup.thread165_crit_edge:             ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread165

if.end.i144:                                      ; preds = %if.end40
  %conv41 = zext i8 %14 to i16
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %context, align 8
  %shl.i.i138 = shl i32 %19, 8
  %or.i139 = or i32 %shl.i.i138, -2147483648
  %call2.i140 = call i32 @usb_control_msg(ptr noundef %context, i32 noundef %or.i139, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %17, i16 noundef zeroext 0, ptr noundef nonnull %call.i136, i16 noundef zeroext %conv41, i32 noundef 1000) #14
  call void @kfree(ptr noundef nonnull %call.i136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i140)
  %cmp.i141 = icmp slt i32 %call2.i140, 0
  br i1 %cmp.i141, label %if.end.i144.cleanup.thread165_crit_edge, label %uea_send_modem_cmd.exit147

if.end.i144.cleanup.thread165_crit_edge:          ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread165

uea_send_modem_cmd.exit147:                       ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i140, i32 %conv)
  %cmp7.i142 = icmp eq i32 %call2.i140, %conv
  br i1 %cmp7.i142, label %cleanup, label %uea_send_modem_cmd.exit147.cleanup.thread165_crit_edge

uea_send_modem_cmd.exit147.cleanup.thread165_crit_edge: ; preds = %uea_send_modem_cmd.exit147
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread165

cleanup.thread165:                                ; preds = %uea_send_modem_cmd.exit147.cleanup.thread165_crit_edge, %if.end.i144.cleanup.thread165_crit_edge, %if.end40.cleanup.thread165_crit_edge
  %20 = phi i32 [ -5, %uea_send_modem_cmd.exit147.cleanup.thread165_crit_edge ], [ %call2.i140, %if.end.i144.cleanup.thread165_crit_edge ], [ -12, %if.end40.cleanup.thread165_crit_edge ]
  %dev50 = getelementptr inbounds %struct.usb_device, ptr %context, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.35, i32 noundef %20) #17
  br label %err

cleanup:                                          ; preds = %uea_send_modem_cmd.exit147
  %add.ptr54 = getelementptr i8, ptr %pfw.0178, i32 %add35
  %cmp32 = icmp ugt i32 %sub36, 3
  br i1 %cmp32, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %size.0.lcssa = phi i32 [ %sub, %while.cond.preheader.while.end_crit_edge ], [ %sub36, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.lcssa)
  %cmp56.not = icmp eq i32 %size.0.lcssa, 0
  br i1 %cmp56.not, label %if.end59, label %while.end.do.end75_crit_edge

while.end.do.end75_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75

if.end59:                                         ; preds = %while.end
  %21 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %value, align 1
  %call.i148 = call ptr @kmemdup(ptr noundef nonnull %value, i32 noundef 1, i32 noundef 3264) #14
  %tobool.not.i149 = icmp eq ptr %call.i148, null
  br i1 %tobool.not.i149, label %if.end59.do.end66_crit_edge, label %if.end.i156

if.end59.do.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66

if.end.i156:                                      ; preds = %if.end59
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %context, align 8
  %shl.i.i150 = shl i32 %23, 8
  %or.i151 = or i32 %shl.i.i150, -2147483648
  %call2.i152 = call i32 @usb_control_msg(ptr noundef %context, i32 noundef %or.i151, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call.i148, i16 noundef zeroext 1, i32 noundef 1000) #14
  call void @kfree(ptr noundef nonnull %call.i148) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i152)
  %cmp.i153 = icmp slt i32 %call2.i152, 0
  br i1 %cmp.i153, label %if.end.i156.do.end66_crit_edge, label %uea_send_modem_cmd.exit159

if.end.i156.do.end66_crit_edge:                   ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66

uea_send_modem_cmd.exit159:                       ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i152)
  %cmp7.i154 = icmp eq i32 %call2.i152, 1
  br i1 %cmp7.i154, label %do.end70, label %uea_send_modem_cmd.exit159.do.end66_crit_edge

uea_send_modem_cmd.exit159.do.end66_crit_edge:    ; preds = %uea_send_modem_cmd.exit159
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66

do.end66:                                         ; preds = %uea_send_modem_cmd.exit159.do.end66_crit_edge, %if.end.i156.do.end66_crit_edge, %if.end59.do.end66_crit_edge
  %24 = phi i32 [ -5, %uea_send_modem_cmd.exit159.do.end66_crit_edge ], [ %call2.i152, %if.end.i156.do.end66_crit_edge ], [ -12, %if.end59.do.end66_crit_edge ]
  %dev67 = getelementptr inbounds %struct.usb_device, ptr %context, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.38, i32 noundef %24) #17
  br label %err

do.end70:                                         ; preds = %uea_send_modem_cmd.exit159
  call void @__sanitizer_cov_trace_pc() #16
  %dev71 = getelementptr inbounds %struct.usb_device, ptr %context, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef nonnull @.str.41) #17
  br label %err

do.end75:                                         ; preds = %while.end.do.end75_crit_edge, %while.body.do.end75_crit_edge, %if.end18.do.end75_crit_edge, %if.end14.do.end75_crit_edge
  %dev76 = getelementptr inbounds %struct.usb_device, ptr %context, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.44) #17
  br label %err

err:                                              ; preds = %do.end75, %do.end70, %do.end66, %cleanup.thread165, %do.end29, %do.end12
  call void @release_firmware(ptr noundef %fw_entry) #14
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp78 = icmp ugt i32 %25, 1
  br i1 %cmp78, label %do.body81, label %err.do.end100_crit_edge

err.do.end100_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end100

do.body81:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_upload_pre_firmware.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_upload_pre_firmware, %if.then93)) #14
          to label %do.end100 [label %if.then93], !srcloc !690

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #16
  %dev94 = getelementptr inbounds %struct.usb_device, ptr %context, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_upload_pre_firmware.__UNIQUE_ID_ddebug473, ptr noundef %dev94, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #14
  br label %do.end100

do.end100:                                        ; preds = %if.then93, %do.body81, %err.do.end100_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uea_bind(ptr noundef %usbatm, ptr nocapture noundef readonly %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %do.body2, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_bind.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_bind, %if.then6)) #14
          to label %do.end9 [label %if.then6], !srcloc !690

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_bind.__UNIQUE_ID_ddebug525, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.46) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp10.not = icmp eq i8 %5, 0
  br i1 %cmp10.not, label %if.end13, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %7 = load i32, ptr @modem_index, align 4
  %arrayidx = getelementptr [4 x i8], ptr @sync_wait, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1, !range !692
  %10 = xor i8 %9, 1
  %11 = zext i8 %10 to i32
  %flags = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flags, align 4
  %call.i = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i, i32 noundef 1) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %claim_interface.exit.thread, label %if.end.i

claim_interface.exit.thread:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef 1) #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  %call1.i = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @uea_driver, ptr noundef nonnull %call.i, ptr noundef %usbatm) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end20_crit_edge, label %claim_interface.exit

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

claim_interface.exit:                             ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef %call1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp17 = icmp slt i32 %call1.i, 0
  br i1 %cmp17, label %claim_interface.exit.cleanup_crit_edge, label %claim_interface.exit.if.end20_crit_edge

claim_interface.exit.if.end20_crit_edge:          ; preds = %claim_interface.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

claim_interface.exit.cleanup_crit_edge:           ; preds = %claim_interface.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %claim_interface.exit.if.end20_crit_edge, %if.end.i.if.end20_crit_edge
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %13 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_info, align 4
  %and = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp21.not = icmp eq i32 %and, 0
  br i1 %cmp21.not, label %if.end20.if.end29_crit_edge, label %if.then23

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then23:                                        ; preds = %if.end20
  %call.i184 = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i, i32 noundef 2) #14
  %tobool.not.i185 = icmp eq ptr %call.i184, null
  br i1 %tobool.not.i185, label %claim_interface.exit194.thread, label %if.end.i190

claim_interface.exit194.thread:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef 2) #17
  br label %cleanup

if.end.i190:                                      ; preds = %if.then23
  %call1.i188 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @uea_driver, ptr noundef nonnull %call.i184, ptr noundef %usbatm) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i188)
  %cmp.not.i189 = icmp eq i32 %call1.i188, 0
  br i1 %cmp.not.i189, label %if.end.i190.if.end29_crit_edge, label %claim_interface.exit194

if.end.i190.if.end29_crit_edge:                   ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

claim_interface.exit194:                          ; preds = %if.end.i190
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef 2, i32 noundef %call1.i188) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i188)
  %cmp25 = icmp slt i32 %call1.i188, 0
  br i1 %cmp25, label %claim_interface.exit194.cleanup_crit_edge, label %claim_interface.exit194.if.end29_crit_edge

claim_interface.exit194.if.end29_crit_edge:       ; preds = %claim_interface.exit194
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

claim_interface.exit194.cleanup_crit_edge:        ; preds = %claim_interface.exit194
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %claim_interface.exit194.if.end29_crit_edge, %if.end.i190.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 252) #19
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 1
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_data, align 4
  %usbatm34 = getelementptr inbounds %struct.uea_softc, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %usbatm34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %usbatm, ptr %usbatm34, align 4
  %19 = load i32, ptr @modem_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp35 = icmp slt i32 %19, 4
  br i1 %cmp35, label %cond.true, label %if.end33.cond.end_crit_edge

if.end33.cond.end_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr @modem_index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end33.cond.end_crit_edge
  %cond37 = phi i32 [ %19, %cond.true ], [ 0, %if.end33.cond.end_crit_edge ]
  %modem_index = getelementptr inbounds %struct.uea_softc, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %modem_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond37, ptr %modem_index, align 8
  %21 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_info, align 4
  %driver_info39 = getelementptr inbounds %struct.uea_softc, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %driver_info39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %driver_info39, align 4
  %arrayidx41 = getelementptr [4 x i32], ptr @annex, i32 0, i32 %cond37
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx41, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.else51 [
    i32 1, label %cond.end.if.end73_crit_edge
    i32 2, label %if.then49
  ]

cond.end.if.end73_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then49:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.else51:                                        ; preds = %cond.end
  %and53 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else57, label %if.else51.if.end73_crit_edge

if.else51.if.end73_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.else57:                                        ; preds = %if.else51
  %and59 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else63, label %if.else57.if.end73_crit_edge

if.else57.if.end73_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.else63:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %bcdDevice = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 16, i32 9
  %29 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bcdDevice, align 4
  %.lobit = lshr i16 %30, 15
  %31 = zext i16 %.lobit to i32
  br label %if.end73

if.end73:                                         ; preds = %if.else63, %if.else57.if.end73_crit_edge, %if.else51.if.end73_crit_edge, %if.then49, %cond.end.if.end73_crit_edge
  %.sink = phi i32 [ 1, %if.then49 ], [ %31, %if.else63 ], [ 0, %cond.end.if.end73_crit_edge ], [ 0, %if.else51.if.end73_crit_edge ], [ 1, %if.else57.if.end73_crit_edge ]
  %annex50 = getelementptr inbounds %struct.uea_softc, ptr %call7.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %annex50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %annex50, align 8
  %33 = ptrtoint ptr %modem_index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %modem_index, align 8
  %arrayidx75 = getelementptr [4 x i32], ptr @altsetting, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx75, align 4
  %and77 = and i32 %22, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %cmp78.not = icmp eq i32 %and77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp80.not = icmp eq i32 %36, 0
  %or.cond = select i1 %cmp78.not, i1 true, i1 %cmp80.not
  br i1 %or.cond, label %if.end73.if.end125_crit_edge, label %if.then82

if.end73.if.end125_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end125

if.then82:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %36)
  %cmp83 = icmp ult i32 %36, 9
  br i1 %cmp83, label %land.lhs.true85, label %if.then82.do.end122_crit_edge

if.then82.do.end122_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end122

land.lhs.true85:                                  ; preds = %if.then82
  %call86 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef %36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %do.body90, label %land.lhs.true85.do.end122_crit_edge

land.lhs.true85.do.end122_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end122

do.body90:                                        ; preds = %land.lhs.true85
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp91.not = icmp eq i32 %37, 0
  br i1 %cmp91.not, label %do.body90.do.end116_crit_edge, label %do.body94

do.body90.do.end116_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end116

do.body94:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_bind.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_bind, %if.then106)) #14
          to label %do.end116 [label %if.then106], !srcloc !690

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_bind.__UNIQUE_ID_ddebug526, ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %36) #14
  br label %do.end116

do.end116:                                        ; preds = %if.then106, %do.body94, %do.body90.do.end116_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.48) #17
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %or = or i32 %39, 6
  store i32 %or, ptr %flags, align 4
  br label %if.end125

do.end122:                                        ; preds = %land.lhs.true85.do.end122_crit_edge, %if.then82.do.end122_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %36) #17
  br label %if.end125

if.end125:                                        ; preds = %do.end122, %do.end116, %if.end73.if.end125_crit_edge
  %call126 = tail call fastcc i32 @uea_boot(ptr noundef nonnull %call7.i.i, ptr noundef %intf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %error, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

error:                                            ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end125.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %claim_interface.exit194.cleanup_crit_edge, %claim_interface.exit194.thread, %claim_interface.exit.cleanup_crit_edge, %claim_interface.exit.thread, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call126, %error ], [ -19, %do.end9.cleanup_crit_edge ], [ %call1.i, %claim_interface.exit.cleanup_crit_edge ], [ %call1.i188, %claim_interface.exit194.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ 0, %if.end125.cleanup_crit_edge ], [ -19, %claim_interface.exit.thread ], [ -19, %claim_interface.exit194.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uea_heavy(ptr nocapture noundef readonly %usbatm, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2443) #14
  %driver_info = getelementptr inbounds %struct.uea_softc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  %and = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp.not = icmp eq i32 %and, 4
  %stats6 = getelementptr inbounds %struct.uea_softc, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %stats6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats6, align 4
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %6 = and i32 %5, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %6)
  %cmp5 = icmp eq i32 %6, 512
  br i1 %cmp5, label %cond.true.if.end30_crit_edge, label %cond.true.if.then_crit_edge

cond.true.if.then_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

cond.true.if.end30_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp9 = icmp eq i32 %5, 7
  br i1 %cmp9, label %cond.false.if.end30_crit_edge, label %cond.false.if.then_crit_edge

cond.false.if.then_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

cond.false.if.end30_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then:                                          ; preds = %cond.false.if.then_crit_edge, %cond.true.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %sync_q = getelementptr inbounds %struct.uea_softc, ptr %1, i32 0, i32 7
  %stats15 = getelementptr inbounds %struct.uea_softc, ptr %1, i32 0, i32 22
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then
  %call = call i32 @prepare_to_wait_event(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %8 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_info, align 4
  %and12 = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 4
  %10 = ptrtoint ptr %stats15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stats15, align 4
  br i1 %cmp13.not, label %cond.false21, label %cond.true14

cond.true14:                                      ; preds = %for.cond
  %12 = and i32 %11, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %12)
  %cmp20 = icmp eq i32 %12, 512
  br i1 %cmp20, label %cond.true14.for.end_crit_edge, label %cond.true14.if.end_crit_edge

cond.true14.if.end_crit_edge:                     ; preds = %cond.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cond.true14.for.end_crit_edge:                    ; preds = %cond.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cond.false21:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp25 = icmp eq i32 %11, 7
  br i1 %cmp25, label %cond.false21.for.end_crit_edge, label %cond.false21.if.end_crit_edge

cond.false21.if.end_crit_edge:                    ; preds = %cond.false21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cond.false21.for.end_crit_edge:                   ; preds = %cond.false21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %cond.false21.if.end_crit_edge, %cond.true14.if.end_crit_edge
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @schedule() #14
  br label %for.cond

for.end:                                          ; preds = %cond.false21.for.end_crit_edge, %cond.true14.for.end_crit_edge
  call void @finish_wait(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end30

if.end30:                                         ; preds = %__out, %cond.false.if.end30_crit_edge, %cond.true.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uea_unbind(ptr nocapture noundef readonly %usbatm, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call fastcc void @uea_stop(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uea_atm_open(ptr nocapture noundef readonly %usbatm, ptr nocapture noundef writeonly %atm_dev) #2 align 64 {
entry:
  %mac_str.i = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %mac_str.i) #14
  %2 = call ptr @memset(ptr %mac_str.i, i32 255, i32 13)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %iSerialNumber.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 12
  %5 = ptrtoint ptr %iSerialNumber.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iSerialNumber.i, align 8
  %conv.i = zext i8 %6 to i32
  %call.i = call i32 @usb_string(ptr noundef %4, i32 noundef %conv.i, ptr noundef nonnull %mac_str.i, i32 noundef 13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 12
  br i1 %cmp.not.i, label %for.body.preheader.i, label %entry.uea_getesi.exit_crit_edge

entry.uea_getesi.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %uea_getesi.exit

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %esi = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 9
  %7 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 11
  %8 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 10
  %9 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 9
  %10 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 8
  %11 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 7
  %12 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 6
  %13 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 5
  %14 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 4
  %15 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 3
  %16 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 2
  %17 = getelementptr inbounds [13 x i8], ptr %mac_str.i, i32 0, i32 1
  %18 = ptrtoint ptr %mac_str.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mac_str.i, align 1
  %call5.i = call i32 @hex_to_bin(i8 noundef zeroext %19) #14
  %mul6.i = shl i32 %call5.i, 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %17, align 1
  %call9.i = call i32 @hex_to_bin(i8 noundef zeroext %21) #14
  %add10.i = add i32 %call9.i, %mul6.i
  %conv11.i = trunc i32 %add10.i to i8
  %22 = ptrtoint ptr %esi to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv11.i, ptr %esi, align 1
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %16, align 1
  %call5.1.i = call i32 @hex_to_bin(i8 noundef zeroext %24) #14
  %mul6.1.i = shl i32 %call5.1.i, 4
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %15, align 1
  %call9.1.i = call i32 @hex_to_bin(i8 noundef zeroext %26) #14
  %add10.1.i = add i32 %call9.1.i, %mul6.1.i
  %conv11.1.i = trunc i32 %add10.1.i to i8
  %arrayidx12.1.i = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv11.1.i, ptr %arrayidx12.1.i, align 1
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %14, align 1
  %call5.2.i = call i32 @hex_to_bin(i8 noundef zeroext %29) #14
  %mul6.2.i = shl i32 %call5.2.i, 4
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %13, align 1
  %call9.2.i = call i32 @hex_to_bin(i8 noundef zeroext %31) #14
  %add10.2.i = add i32 %call9.2.i, %mul6.2.i
  %conv11.2.i = trunc i32 %add10.2.i to i8
  %arrayidx12.2.i = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9, i32 2
  %32 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv11.2.i, ptr %arrayidx12.2.i, align 1
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %12, align 1
  %call5.3.i = call i32 @hex_to_bin(i8 noundef zeroext %34) #14
  %mul6.3.i = shl i32 %call5.3.i, 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %11, align 1
  %call9.3.i = call i32 @hex_to_bin(i8 noundef zeroext %36) #14
  %add10.3.i = add i32 %call9.3.i, %mul6.3.i
  %conv11.3.i = trunc i32 %add10.3.i to i8
  %arrayidx12.3.i = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %arrayidx12.3.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv11.3.i, ptr %arrayidx12.3.i, align 1
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %10, align 1
  %call5.4.i = call i32 @hex_to_bin(i8 noundef zeroext %39) #14
  %mul6.4.i = shl i32 %call5.4.i, 4
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %9, align 1
  %call9.4.i = call i32 @hex_to_bin(i8 noundef zeroext %41) #14
  %add10.4.i = add i32 %call9.4.i, %mul6.4.i
  %conv11.4.i = trunc i32 %add10.4.i to i8
  %arrayidx12.4.i = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9, i32 4
  %42 = ptrtoint ptr %arrayidx12.4.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv11.4.i, ptr %arrayidx12.4.i, align 1
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %8, align 1
  %call5.5.i = call i32 @hex_to_bin(i8 noundef zeroext %44) #14
  %mul6.5.i = shl i32 %call5.5.i, 4
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %7, align 1
  %call9.5.i = call i32 @hex_to_bin(i8 noundef zeroext %46) #14
  %add10.5.i = add i32 %call9.5.i, %mul6.5.i
  %conv11.5.i = trunc i32 %add10.5.i to i8
  %arrayidx12.5.i = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9, i32 5
  %47 = ptrtoint ptr %arrayidx12.5.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv11.5.i, ptr %arrayidx12.5.i, align 1
  br label %uea_getesi.exit

uea_getesi.exit:                                  ; preds = %for.body.preheader.i, %entry.uea_getesi.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.uea_getesi.exit_crit_edge ], [ 0, %for.body.preheader.i ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %mac_str.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_boot(ptr noundef %sc, ptr nocapture noundef readonly %intf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.body1, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_boot.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_boot, %if.then4)) #14
          to label %do.end7 [label %if.then4], !srcloc !690

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_boot.__UNIQUE_ID_ddebug519, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.57) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.body1, %entry.do.end7_crit_edge
  %driver_info = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 3
  %3 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_info, align 4
  %and = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp8 = icmp eq i32 %and, 4
  %dispatch_cmv = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 18
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %dispatch_cmv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @uea_dispatch_cmv_e4, ptr %dispatch_cmv, align 4
  %schedule_load_page = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 19
  %6 = ptrtoint ptr %schedule_load_page to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @uea_schedule_load_page_e4, ptr %schedule_load_page, align 4
  %stat = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 20
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @uea_stat_e4, ptr %stat, align 4
  %send_cmvs = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 21
  %8 = ptrtoint ptr %send_cmvs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @uea_send_cmvs_e4, ptr %send_cmvs, align 4
  %task = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13
  tail call void @__init_work(ptr noundef %task, i32 noundef 0) #14
  %9 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %task, align 4
  %lockdep_map = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.58, ptr noundef nonnull @uea_boot.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry14 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry14, ptr %entry14, align 4
  br label %do.body37

if.else:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %dispatch_cmv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @uea_dispatch_cmv_e1, ptr %dispatch_cmv, align 4
  %schedule_load_page19 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 19
  %12 = ptrtoint ptr %schedule_load_page19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @uea_schedule_load_page_e1, ptr %schedule_load_page19, align 4
  %stat20 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 20
  %13 = ptrtoint ptr %stat20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @uea_stat_e1, ptr %stat20, align 4
  %send_cmvs21 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 21
  %14 = ptrtoint ptr %send_cmvs21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @uea_send_cmvs_e1, ptr %send_cmvs21, align 4
  %task23 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13
  tail call void @__init_work(ptr noundef %task23, i32 noundef 0) #14
  %15 = ptrtoint ptr %task23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %task23, align 4
  %lockdep_map29 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map29, ptr noundef nonnull @.str.58, ptr noundef nonnull @uea_boot.__key.59, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry31 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry31, ptr %entry31, align 4
  br label %do.body37

do.body37:                                        ; preds = %if.else, %if.then9
  %entry31.sink = phi ptr [ %entry14, %if.then9 ], [ %entry31, %if.else ]
  %uea_load_page_e1.sink = phi ptr [ @uea_load_page_e4, %if.then9 ], [ @uea_load_page_e1, %if.else ]
  %size.0 = phi i32 [ 64, %if.then9 ], [ 28, %if.else ]
  %17 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13, i32 1, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry31.sink, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %uea_load_page_e1.sink, ptr %19, align 4
  %sync_q = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %sync_q, ptr noundef nonnull @.str.61, ptr noundef nonnull @uea_boot.__key.60) #14
  %21 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_info, align 4
  %and41 = and i32 %22, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %cmp42 = icmp eq i32 %and41, 0
  br i1 %cmp42, label %if.then43, label %do.body37.if.end45_crit_edge

do.body37.if.end45_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @load_XILINX_firmware(ptr noundef %sc)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %do.body37.if.end45_crit_edge
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %23 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp46 = icmp eq i8 %26, 0
  br i1 %cmp46, label %if.end45.do.body118_crit_edge, label %if.end8.i

if.end45.do.body118_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body118

if.end8.i:                                        ; preds = %if.end45
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.0, i32 noundef 3264) #20
  %tobool51.not = icmp eq ptr %call9.i, null
  br i1 %tobool51.not, label %if.end8.i.do.body118_crit_edge, label %if.end53

if.end8.i.do.body118_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body118

if.end53:                                         ; preds = %if.end8.i
  %call54 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %urb_int = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 17
  %27 = ptrtoint ptr %urb_int to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call54, ptr %urb_int, align 4
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %if.end53.err1_crit_edge, label %if.end58

if.end53.err1_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

if.end58:                                         ; preds = %if.end53
  %28 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i = shl i32 %31, 8
  %or63 = or i32 %shl.i, 1073873024
  %32 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur_altsetting, align 4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %endpoint, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bInterval, align 2
  %conv66 = zext i8 %37 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 8
  %38 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %29, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 10
  %39 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or63, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %size.0, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @uea_intr, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %sc, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 4
  %44 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i = icmp eq i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp6.i = icmp ugt i32 %45, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end58.usb_fill_int_urb.exit_crit_edge

if.end58.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %46 = tail call i32 @llvm.smax.i32(i32 %conv66, i32 1) #14
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 16) #14
  %sub.i = add nsw i32 %47, -1
  %shl.i198 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end58.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i198, %if.then.i ], [ %conv66, %if.end58.usb_fill_int_urb.exit_crit_edge ]
  %48 = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 25
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %interval.sink.i, ptr %48, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 23
  %50 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %start_frame.i, align 4
  %51 = ptrtoint ptr %urb_int to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %urb_int, align 4
  %call68 = tail call i32 @usb_submit_urb(ptr noundef %52, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end74, label %if.end77

do.end74:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sc, align 4
  %dev76 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.62, i32 noundef %call68) #17
  br label %err1

if.end77:                                         ; preds = %usb_fill_int_urb.exit
  %call78 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @uea_kthread, ptr noundef %sc, i32 noundef -1, ptr noundef nonnull @.str.1) #14
  %kthread = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 8
  %55 = ptrtoint ptr %kthread to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call78, ptr %kthread, align 4
  %cmp.i200 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %do.end84, label %do.body90

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sc, align 4
  %dev86 = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.64) #17
  %58 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %kthread, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = ptrtoint ptr %urb_int to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %urb_int, align 4
  tail call void @usb_kill_urb(ptr noundef %62) #14
  br label %err1

do.body90:                                        ; preds = %if.end77
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp91 = icmp ugt i32 %63, 1
  br i1 %cmp91, label %do.body94, label %do.body90.cleanup_crit_edge

do.body90.cleanup_crit_edge:                      ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body94:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_boot.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_boot, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !690

err1:                                             ; preds = %do.end84, %do.end74, %if.end53.err1_crit_edge
  %ret.0 = phi i32 [ %call68, %do.end74 ], [ %60, %do.end84 ], [ -12, %if.end53.err1_crit_edge ]
  %64 = ptrtoint ptr %urb_int to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %urb_int, align 4
  tail call void @usb_free_urb(ptr noundef %65) #14
  %66 = ptrtoint ptr %urb_int to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %urb_int, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %do.body118

do.body118:                                       ; preds = %err1, %if.end8.i.do.body118_crit_edge, %if.end45.do.body118_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err1 ], [ -12, %if.end8.i.do.body118_crit_edge ], [ -19, %if.end45.do.body118_crit_edge ]
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp119 = icmp ugt i32 %67, 1
  br i1 %cmp119, label %do.body122, label %do.body118.cleanup_crit_edge

do.body118.cleanup_crit_edge:                     ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body122:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_boot.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_boot, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !690

cleanup.sink.split:                               ; preds = %do.body122, %do.body94
  %uea_boot.__UNIQUE_ID_ddebug521.sink = phi ptr [ @uea_boot.__UNIQUE_ID_ddebug520, %do.body94 ], [ @uea_boot.__UNIQUE_ID_ddebug521, %do.body122 ]
  %retval.0.ph = phi i32 [ 0, %do.body94 ], [ %ret.1, %do.body122 ]
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sc, align 4
  %dev136 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %uea_boot.__UNIQUE_ID_ddebug521.sink, ptr noundef %dev136, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.57) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body122, %do.body118.cleanup_crit_edge, %do.body94, %do.body90.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body90.cleanup_crit_edge ], [ %ret.1, %do.body118.cleanup_crit_edge ], [ 0, %do.body94 ], [ %ret.1, %do.body122 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uea_dispatch_cmv_e4(ptr noundef %sc, ptr nocapture noundef readonly %intr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmv_dsc = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12
  %u = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.body2, label %entry.do.body9_crit_edge

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_dispatch_cmv_e4, %if.then5)) #14
          to label %do.body9 [label %if.then5], !srcloc !690

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug513, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.66) #14
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %do.body2, %entry.do.body9_crit_edge
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %do.body9.do.end37_crit_edge, label %do.body12

do.body9.do.end37_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37

do.body12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_dispatch_cmv_e4, %if.then24)) #14
          to label %do.end37 [label %if.then24], !srcloc !690

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %u, align 1
  %conv = zext i16 %7 to i32
  %wFunction = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %wFunction to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wFunction, align 1
  %conv27 = zext i16 %9 to i32
  %wOffset = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %wOffset to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wOffset, align 1
  %conv28 = zext i16 %11 to i32
  %wAddress = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %wAddress to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wAddress, align 1
  %conv29 = zext i16 %13 to i32
  %dwData = getelementptr inbounds %struct.cmv_e4, ptr %u, i32 0, i32 4
  %14 = ptrtoint ptr %dwData to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %dwData, align 1
  %arrayidx31 = getelementptr %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 6
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx31, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug514, ptr noundef %dev26, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %conv, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %15, i32 noundef %17) #14
  br label %do.end37

do.end37:                                         ; preds = %if.then24, %do.body12, %do.body9.do.end37_crit_edge
  %wFunction38 = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %wFunction38 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %wFunction38, align 1
  %20 = ptrtoint ptr %cmv_dsc to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cmv_dsc, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp41.not = icmp eq i16 %19, %21
  br i1 %cmp41.not, label %if.end44, label %do.end37.do.end125_crit_edge

do.end37.do.end125_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end125

if.end44:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_const_cmp2(i16 3857, i16 %19)
  %cmp47 = icmp eq i16 %19, 3857
  br i1 %cmp47, label %if.then49, label %if.end75

if.then49:                                        ; preds = %if.end44
  %cmv_ack.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 11
  %22 = ptrtoint ptr %cmv_ack.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmv_ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %wake_up_cmv_ack.exit, label %do.body3.i, !prof !693

do.body3.i:                                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/atm/ueagle-atm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #14, !srcloc !694
  unreachable

wake_up_cmv_ack.exit:                             ; preds = %if.then49
  %24 = ptrtoint ptr %cmv_ack.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %cmv_ack.i, align 4
  %sync_q.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %sync_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp51 = icmp ugt i32 %25, 1
  br i1 %cmp51, label %do.body54, label %wake_up_cmv_ack.exit.cleanup_crit_edge

wake_up_cmv_ack.exit.cleanup_crit_edge:           ; preds = %wake_up_cmv_ack.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body54:                                        ; preds = %wake_up_cmv_ack.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_dispatch_cmv_e4, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !690

if.end75:                                         ; preds = %if.end44
  %wOffset76 = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 3
  %26 = ptrtoint ptr %wOffset76 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %wOffset76, align 1
  %offset = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 1
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %offset, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp79.not = icmp eq i16 %27, %29
  br i1 %cmp79.not, label %lor.lhs.false, label %if.end75.do.end125_crit_edge

if.end75.do.end125_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end125

lor.lhs.false:                                    ; preds = %if.end75
  %30 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %u, align 1
  %group = getelementptr inbounds %struct.cmv_dsc_e4, ptr %cmv_dsc, i32 0, i32 3
  %32 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %group, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp84.not = icmp eq i16 %31, %33
  br i1 %cmp84.not, label %lor.lhs.false86, label %lor.lhs.false.do.end125_crit_edge

lor.lhs.false.do.end125_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end125

lor.lhs.false86:                                  ; preds = %lor.lhs.false
  %wAddress87 = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4
  %34 = ptrtoint ptr %wAddress87 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %wAddress87, align 1
  %address = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 2
  %36 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %address, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp90.not = icmp eq i16 %35, %37
  br i1 %cmp90.not, label %if.end93, label %lor.lhs.false86.do.end125_crit_edge

lor.lhs.false86.do.end125_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end125

if.end93:                                         ; preds = %lor.lhs.false86
  %dwData94 = getelementptr inbounds %struct.cmv_e4, ptr %u, i32 0, i32 4
  %38 = ptrtoint ptr %dwData94 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %dwData94, align 1
  %data = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 9
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %data, align 4
  %arrayidx97 = getelementptr %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 6
  %41 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %arrayidx97, align 1
  %data1 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 10
  %43 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %data1, align 4
  %cmv_ack.i198 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 11
  %44 = ptrtoint ptr %cmv_ack.i198 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cmv_ack.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i199 = icmp eq i32 %45, 0
  br i1 %tobool.not.i199, label %wake_up_cmv_ack.exit202, label %do.body3.i200, !prof !693

do.body3.i200:                                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/atm/ueagle-atm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #14, !srcloc !694
  unreachable

wake_up_cmv_ack.exit202:                          ; preds = %if.end93
  %46 = ptrtoint ptr %cmv_ack.i198 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %cmv_ack.i198, align 4
  %sync_q.i201 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %sync_q.i201, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp99 = icmp ugt i32 %47, 1
  br i1 %cmp99, label %do.body102, label %wake_up_cmv_ack.exit202.cleanup_crit_edge

wake_up_cmv_ack.exit202.cleanup_crit_edge:        ; preds = %wake_up_cmv_ack.exit202
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body102:                                       ; preds = %wake_up_cmv_ack.exit202
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_dispatch_cmv_e4, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !690

do.end125:                                        ; preds = %lor.lhs.false86.do.end125_crit_edge, %lor.lhs.false.do.end125_crit_edge, %if.end75.do.end125_crit_edge, %do.end37.do.end125_crit_edge
  %48 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sc, align 4
  %dev127 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  %conv129 = zext i16 %19 to i32
  %50 = lshr i32 %conv129, 8
  %51 = lshr i32 %conv129, 4
  %and = and i32 %51, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev127, ptr noundef nonnull @.str.68, i32 noundef %50, i32 noundef %and) #17
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp134 = icmp ugt i32 %52, 1
  br i1 %cmp134, label %do.body137, label %do.end125.cleanup_crit_edge

do.end125.cleanup_crit_edge:                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body137:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_dispatch_cmv_e4, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !690

cleanup.sink.split:                               ; preds = %do.body137, %do.body102, %do.body54
  %uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug517.sink = phi ptr [ @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug515, %do.body54 ], [ @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug516, %do.body102 ], [ @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug517, %do.body137 ]
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sc, align 4
  %dev151 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug517.sink, ptr noundef %dev151, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.66) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body137, %do.end125.cleanup_crit_edge, %do.body102, %wake_up_cmv_ack.exit202.cleanup_crit_edge, %do.body54, %wake_up_cmv_ack.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uea_schedule_load_page_e4(ptr noundef %sc, ptr nocapture noundef readonly %intr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %u, align 1
  %conv = zext i8 %1 to i16
  %pageno = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 14
  %2 = ptrtoint ptr %pageno to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %pageno, align 4
  %task = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %task) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uea_stat_e4(ptr noundef %sc) #2 align 64 {
entry:
  %data = alloca i32, align 4
  %tmp_arr = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #14
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !691
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_arr) #14
  %1 = ptrtoint ptr %tmp_arr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmp_arr, align 4, !annotation !691
  %2 = getelementptr inbounds [2 x i32], ptr %tmp_arr, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !691
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %do.body1, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stat_e4.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stat_e4, %if.then4)) #14
          to label %do.end7 [label %if.then4], !srcloc !690

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stat_e4.__UNIQUE_ID_ddebug493, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.69) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.body1, %entry.do.end7_crit_edge
  %stats = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stats, align 4
  %call.i = tail call fastcc i32 @uea_cmv_e4(ptr noundef %sc, i16 noundef zeroext 1, i16 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %uea_read_cmv_e4.exit.thread, label %if.end14

uea_read_cmv_e4.exit.thread:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81, i32 noundef %call.i) #17
  br label %cleanup

if.end14:                                         ; preds = %do.end7
  %data3.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 9
  %11 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data3.i, align 4
  %13 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %stats, align 4
  %14 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %12, label %do.end75 [
    i32 0, label %if.end14.do.body18_crit_edge
    i32 1, label %if.end14.do.body18_crit_edge306
    i32 3, label %if.end14.do.body18_crit_edge307
    i32 4, label %if.end14.do.body18_crit_edge308
    i32 5, label %if.end14.do.body43_crit_edge
    i32 6, label %if.end14.do.body43_crit_edge309
    i32 9, label %if.end14.do.body43_crit_edge310
    i32 10, label %if.end14.do.body43_crit_edge311
    i32 2, label %do.end70
    i32 7, label %sw.epilog
  ]

if.end14.do.body43_crit_edge311:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43

if.end14.do.body43_crit_edge310:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43

if.end14.do.body43_crit_edge309:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43

if.end14.do.body43_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43

if.end14.do.body18_crit_edge308:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body18

if.end14.do.body18_crit_edge307:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body18

if.end14.do.body18_crit_edge306:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body18

if.end14.do.body18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body18

do.body18:                                        ; preds = %if.end14.do.body18_crit_edge, %if.end14.do.body18_crit_edge306, %if.end14.do.body18_crit_edge307, %if.end14.do.body18_crit_edge308
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp19.not = icmp eq i32 %15, 0
  br i1 %cmp19.not, label %do.body18.cleanup_crit_edge, label %do.body21

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stat_e4.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stat_e4, %if.then33)) #14
          to label %cleanup [label %if.then33], !srcloc !690

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc, align 4
  %dev35 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stat_e4.__UNIQUE_ID_ddebug494, ptr noundef %dev35, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69) #14
  br label %cleanup

do.body43:                                        ; preds = %if.end14.do.body43_crit_edge, %if.end14.do.body43_crit_edge309, %if.end14.do.body43_crit_edge310, %if.end14.do.body43_crit_edge311
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp44.not = icmp eq i32 %18, 0
  br i1 %cmp44.not, label %do.body43.cleanup_crit_edge, label %do.body46

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body46:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stat_e4.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stat_e4, %if.then58)) #14
          to label %cleanup [label %if.then58], !srcloc !690

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc, align 4
  %dev60 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stat_e4.__UNIQUE_ID_ddebug495, ptr noundef %dev60, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69) #14
  br label %cleanup

do.end70:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sc, align 4
  %dev72 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev72, ptr noundef nonnull @.str.72) #17
  br label %cleanup

do.end75:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sc, align 4
  %dev77 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev77, ptr noundef nonnull @.str.74, i32 noundef %12) #17
  br label %cleanup

sw.epilog:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp81.not = icmp eq i32 %8, 7
  br i1 %cmp81.not, label %sw.epilog.do.body91_crit_edge, label %if.then82

sw.epilog.do.body91_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body91

if.then82:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %call83 = tail call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 3, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef null)
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  %dev88 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev88, ptr noundef nonnull @.str.78) #17
  %dsp_firm = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 16
  %27 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dsp_firm, align 4
  tail call void @release_firmware(ptr noundef %28) #14
  %29 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dsp_firm, align 4
  br label %do.body91

do.body91:                                        ; preds = %if.then82, %sw.epilog.do.body91_crit_edge
  %usbatm = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 1
  %30 = ptrtoint ptr %usbatm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usbatm, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %atm_dev, align 4
  %tobool92.not = icmp eq ptr %33, null
  br i1 %tobool92.not, label %do.body91.do.end98_crit_edge, label %if.then93

do.body91.do.end98_crit_edge:                     ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end98

if.then93:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @atm_dev_signal_change(ptr noundef nonnull %33, i8 noundef zeroext 2) #14
  br label %do.end98

do.end98:                                         ; preds = %if.then93, %do.body91.do.end98_crit_edge
  %sync_q = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %sync_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %flags = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 1
  %call.i295 = tail call fastcc i32 @uea_cmv_e4(ptr noundef %sc, i16 noundef zeroext 1, i16 noundef zeroext 7, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %cmp.i296 = icmp slt i32 %call.i295, 0
  br i1 %cmp.i296, label %uea_read_cmv_e4.exit301.thread, label %if.end104

uea_read_cmv_e4.exit301.thread:                   ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sc, align 4
  %dev.i297 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i297, ptr noundef nonnull @.str.81, i32 noundef %call.i295) #17
  br label %cleanup

if.end104:                                        ; preds = %do.end98
  %36 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data3.i, align 4
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %flags, align 4
  %mflags = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2
  %39 = ptrtoint ptr %mflags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mflags, align 4
  %or = or i32 %40, %37
  store i32 %or, ptr %mflags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool113.not = icmp eq i32 %37, 0
  br i1 %tobool113.not, label %if.end155, label %do.body115

do.body115:                                       ; preds = %if.end104
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp116.not = icmp eq i32 %41, 0
  br i1 %cmp116.not, label %do.body115.do.end141_crit_edge, label %do.body118

do.body115.do.end141_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end141

do.body118:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stat_e4.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stat_e4, %if.then130)) #14
          to label %do.end141 [label %if.then130], !srcloc !690

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sc, align 4
  %dev132 = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stat_e4.__UNIQUE_ID_ddebug496, ptr noundef %dev132, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.69, i32 noundef %45) #14
  br label %do.end141

do.end141:                                        ; preds = %if.then130, %do.body118, %do.body115.do.end141_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool145.not = icmp eq i32 %and, 0
  br i1 %tobool145.not, label %if.end147, label %do.end141.cleanup_crit_edge

do.end141.cleanup_crit_edge:                      ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end147:                                        ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #16
  %and151 = and i32 %47, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  %. = select i1 %tobool152.not, i32 0, i32 -11
  br label %cleanup

if.end155:                                        ; preds = %if.end104
  %call156 = call fastcc i32 @uea_read_cmv_e4(ptr noundef %sc, i8 noundef zeroext 4, i16 noundef zeroext 6, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %tmp_arr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.end155.cleanup_crit_edge, label %if.end159

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end159:                                        ; preds = %if.end155
  %48 = ptrtoint ptr %tmp_arr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tmp_arr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool160.not = icmp eq i32 %49, 0
  br i1 %tobool160.not, label %cond.false, label %if.end159.cond.end_crit_edge

if.end159.cond.end_crit_edge:                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end159.cond.end_crit_edge
  %cond = phi i32 [ %51, %cond.false ], [ %49, %if.end159.cond.end_crit_edge ]
  %div = udiv i32 %cond, 1000
  %usrate = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 6
  %52 = ptrtoint ptr %usrate to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div, ptr %usrate, align 4
  %call166 = call fastcc i32 @uea_read_cmv_e4(ptr noundef %sc, i8 noundef zeroext 4, i16 noundef zeroext 6, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %tmp_arr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %cmp167 = icmp slt i32 %call166, 0
  br i1 %cmp167, label %cond.end.cleanup_crit_edge, label %if.end169

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end169:                                        ; preds = %cond.end
  %53 = ptrtoint ptr %tmp_arr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tmp_arr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool171.not = icmp eq i32 %54, 0
  br i1 %tobool171.not, label %cond.false174, label %if.end169.cond.end176_crit_edge

if.end169.cond.end176_crit_edge:                  ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end176

cond.false174:                                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %2, align 4
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false174, %if.end169.cond.end176_crit_edge
  %cond177 = phi i32 [ %56, %cond.false174 ], [ %54, %if.end169.cond.end176_crit_edge ]
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond177, ptr %data, align 4
  %div178 = udiv i32 %cond177, 1000
  tail call fastcc void @uea_set_bulk_timeout(ptr noundef %sc, i32 noundef %div178)
  %dsrate = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 5
  %58 = ptrtoint ptr %dsrate to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div178, ptr %dsrate, align 4
  %59 = ptrtoint ptr %usbatm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %usbatm, align 4
  %atm_dev184 = getelementptr inbounds %struct.usbatm_data, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %atm_dev184 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %atm_dev184, align 4
  %tobool185.not = icmp eq ptr %62, null
  br i1 %tobool185.not, label %cond.end176.do.end195_crit_edge, label %if.then186

cond.end176.do.end195_crit_edge:                  ; preds = %cond.end176
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end195

if.then186:                                       ; preds = %cond.end176
  call void @__sanitizer_cov_trace_pc() #16
  %mul = mul nuw i32 %div178, 1000
  %div190 = udiv i32 %mul, 424
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div190, ptr %link_rate, align 4
  br label %do.end195

do.end195:                                        ; preds = %if.then186, %cond.end176.do.end195_crit_edge
  %call196 = call fastcc i32 @uea_read_cmv_e4(ptr noundef %sc, i8 noundef zeroext 1, i16 noundef zeroext 3, i16 noundef zeroext 68, i16 noundef zeroext 1, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %do.end195.cleanup_crit_edge, label %if.end199

do.end195.cleanup_crit_edge:                      ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end199:                                        ; preds = %do.end195
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data, align 4
  %div200 = udiv i32 %65, 10
  %dsattenuation = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 14
  %66 = ptrtoint ptr %dsattenuation to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div200, ptr %dsattenuation, align 4
  %call203 = call fastcc i32 @uea_read_cmv_e4(ptr noundef %sc, i8 noundef zeroext 1, i16 noundef zeroext 3, i16 noundef zeroext 69, i16 noundef zeroext 1, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp204 = icmp slt i32 %call203, 0
  br i1 %cmp204, label %if.end199.cleanup_crit_edge, label %if.end206

if.end199.cleanup_crit_edge:                      ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end206:                                        ; preds = %if.end199
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data, align 4
  %div207 = udiv i32 %68, 10
  %usattenuation = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 13
  %69 = ptrtoint ptr %usattenuation to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div207, ptr %usattenuation, align 4
  %call210 = call fastcc i32 @uea_read_cmv_e4(ptr noundef %sc, i8 noundef zeroext 1, i16 noundef zeroext 3, i16 noundef zeroext 68, i16 noundef zeroext 3, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp211 = icmp slt i32 %call210, 0
  br i1 %cmp211, label %if.end206.cleanup_crit_edge, label %if.end213

if.end206.cleanup_crit_edge:                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end213:                                        ; preds = %if.end206
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data, align 4
  %div214285 = lshr i32 %71, 1
  %dsmargin = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 15
  %72 = ptrtoint ptr %dsmargin to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div214285, ptr %dsmargin, align 4
  %call217 = call fastcc i32 @uea_read_cmv_e4(ptr noundef %sc, i8 noundef zeroext 1, i16 noundef zeroext 3, i16 noundef zeroext 69, i16 noundef zeroext 3, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %if.end213.cleanup_crit_edge, label %if.end220

if.end213.cleanup_crit_edge:                      ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end220:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data, align 4
  %div221 = udiv i32 %74, 10
  %usmargin = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 16
  %75 = ptrtoint ptr %usmargin to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %div221, ptr %usmargin, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end220, %if.end213.cleanup_crit_edge, %if.end206.cleanup_crit_edge, %if.end199.cleanup_crit_edge, %do.end195.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end155.cleanup_crit_edge, %if.end147, %do.end141.cleanup_crit_edge, %uea_read_cmv_e4.exit301.thread, %do.end75, %do.end70, %if.then58, %do.body46, %do.body43.cleanup_crit_edge, %if.then33, %do.body21, %do.body18.cleanup_crit_edge, %uea_read_cmv_e4.exit.thread
  %retval.0 = phi i32 [ 0, %do.end75 ], [ 0, %if.end220 ], [ -11, %do.end70 ], [ 0, %if.then33 ], [ 0, %do.body18.cleanup_crit_edge ], [ 0, %if.then58 ], [ 0, %do.body43.cleanup_crit_edge ], [ -11, %do.end141.cleanup_crit_edge ], [ %., %if.end147 ], [ %call156, %if.end155.cleanup_crit_edge ], [ %call166, %cond.end.cleanup_crit_edge ], [ %call196, %do.end195.cleanup_crit_edge ], [ %call203, %if.end199.cleanup_crit_edge ], [ %call210, %if.end206.cleanup_crit_edge ], [ %call217, %if.end213.cleanup_crit_edge ], [ %call.i, %uea_read_cmv_e4.exit.thread ], [ 0, %do.body21 ], [ 0, %do.body46 ], [ %call.i295, %uea_read_cmv_e4.exit301.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_arr) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uea_send_cmvs_e4(ptr noundef %sc) #2 align 64 {
entry:
  %cmvs_ptr = alloca ptr, align 4
  %cmvs_fw = alloca ptr, align 4
  %ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmvs_ptr) #14
  %0 = ptrtoint ptr %cmvs_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cmvs_ptr, align 4, !annotation !691
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmvs_fw) #14
  %1 = ptrtoint ptr %cmvs_fw to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %cmvs_fw, align 4, !annotation !691
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #14
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %ver, align 4
  %call.i = tail call fastcc i32 @uea_cmv_e4(ptr noundef %sc, i16 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %uea_write_cmv_e4.exit.thread, label %if.end

uea_write_cmv_e4.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.108, i32 noundef %call.i) #17
  br label %cleanup58

if.end:                                           ; preds = %entry
  %call.i89 = tail call fastcc i32 @uea_cmv_e4(ptr noundef %sc, i16 noundef zeroext 2, i16 noundef zeroext 3, i16 noundef zeroext 55, i16 noundef zeroext 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i90 = icmp slt i32 %call.i89, 0
  br i1 %cmp.i90, label %uea_read_cmv_e4.exit.thread, label %do.end

uea_read_cmv_e4.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 4
  %dev.i91 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i91, ptr noundef nonnull @.str.81, i32 noundef %call.i89) #17
  br label %cleanup58

do.end:                                           ; preds = %if.end
  %firmid = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 17
  %data3.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 9
  %7 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data3.i, align 4
  %9 = ptrtoint ptr %firmid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %firmid, align 4
  %10 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.99, i32 noundef %8) #17
  %call8 = call fastcc i32 @request_cmvs(ptr noundef %sc, ptr noundef nonnull %cmvs_ptr, ptr noundef nonnull %cmvs_fw, ptr noundef nonnull %ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end.cleanup58_crit_edge, label %if.end11

do.end.cleanup58_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup58

if.end11:                                         ; preds = %do.end
  %12 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp12 = icmp eq i32 %13, 2
  br i1 %cmp12, label %if.then13, label %do.end31

if.then13:                                        ; preds = %if.end11
  %14 = ptrtoint ptr %cmvs_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmvs_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp14101.not = icmp eq i32 %call8, 0
  br i1 %cmp14101.not, label %if.then13.if.end34_crit_edge, label %if.then13.for.body_crit_edge

if.then13.for.body_crit_edge:                     ; preds = %if.then13
  br label %for.body

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %call8
  br i1 %exitcond.not, label %for.cond.if.end34_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.if.end34_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then13.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then13.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uea_cmvs_v2, ptr %15, i32 %i.0102
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx, align 1
  %18 = call i32 @llvm.bswap.i32(i32 %17) #14
  %conv = trunc i32 %18 to i16
  %address = getelementptr %struct.uea_cmvs_v2, ptr %15, i32 %i.0102, i32 1
  %19 = ptrtoint ptr %address to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %address, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %20) #14
  %conv18 = trunc i32 %21 to i16
  %offset = getelementptr %struct.uea_cmvs_v2, ptr %15, i32 %i.0102, i32 2
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %offset, align 1
  %24 = call i32 @llvm.bswap.i32(i32 %23) #14
  %conv21 = trunc i32 %24 to i16
  %data = getelementptr %struct.uea_cmvs_v2, ptr %15, i32 %i.0102, i32 3
  %25 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %data, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26) #14
  %call.i93 = call fastcc i32 @uea_cmv_e4(ptr noundef %sc, i16 noundef zeroext 65, i16 noundef zeroext %conv, i16 noundef zeroext %conv18, i16 noundef zeroext %conv21, i32 noundef %27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp.i94 = icmp slt i32 %call.i93, 0
  br i1 %cmp.i94, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc, align 4
  %dev.i95 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i95, ptr noundef nonnull @.str.108, i32 noundef %call.i93) #17
  br label %out

do.end31:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc, align 4
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.102, i32 noundef %13) #17
  br label %out

if.end34:                                         ; preds = %for.cond.if.end34_crit_edge, %if.then13.if.end34_crit_edge
  %call35 = call fastcc i32 @uea_write_cmv_e4(ptr noundef %sc, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 2)
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp37 = icmp ugt i32 %32, 1
  br i1 %cmp37, label %do.body40, label %if.end34.do.end55_crit_edge

if.end34.do.end55_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end55

do.body40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_send_cmvs_e4.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_send_cmvs_e4, %if.then44)) #14
          to label %do.end55 [label %if.then44], !srcloc !690

if.then44:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sc, align 4
  %dev46 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_send_cmvs_e4.__UNIQUE_ID_ddebug498, ptr noundef %dev46, ptr noundef nonnull @.str.104) #14
  br label %do.end55

do.end55:                                         ; preds = %if.then44, %do.body40, %if.end34.do.end55_crit_edge
  %35 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sc, align 4
  %dev57 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev57, ptr noundef nonnull @.str.106) #17
  br label %out

out:                                              ; preds = %do.end55, %do.end31, %cleanup
  %ret.2 = phi i32 [ %call.i93, %cleanup ], [ %call35, %do.end55 ], [ %call8, %do.end31 ]
  %37 = ptrtoint ptr %cmvs_fw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cmvs_fw, align 4
  call void @release_firmware(ptr noundef %38) #14
  br label %cleanup58

cleanup58:                                        ; preds = %out, %do.end.cleanup58_crit_edge, %uea_read_cmv_e4.exit.thread, %uea_write_cmv_e4.exit.thread
  %retval.0 = phi i32 [ %ret.2, %out ], [ %call8, %do.end.cleanup58_crit_edge ], [ %call.i, %uea_write_cmv_e4.exit.thread ], [ %call.i89, %uea_read_cmv_e4.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmvs_fw) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmvs_ptr) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uea_load_page_e4(ptr noundef %work) #2 align 64 {
entry:
  %bi = alloca %struct.block_info_e4, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  %pageno1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %pageno1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pageno1, align 4
  %conv = trunc i16 %1 to i8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %bi) #14
  %2 = getelementptr inbounds %struct.block_info_e4, ptr %bi, i32 0, i32 1
  %3 = getelementptr inbounds %struct.block_info_e4, ptr %bi, i32 0, i32 2
  %4 = getelementptr inbounds %struct.block_info_e4, ptr %bi, i32 0, i32 3
  %5 = getelementptr inbounds %struct.block_info_e4, ptr %bi, i32 0, i32 4
  %6 = getelementptr inbounds %struct.block_info_e4, ptr %bi, i32 0, i32 5
  %7 = call ptr @memset(ptr %bi, i32 255, i32 14)
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %entry.do.end11_crit_edge, label %do.body3

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_load_page_e4.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_load_page_e4, %if.then7)) #14
          to label %do.end11 [label %if.then7], !srcloc !690

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  %conv.mask155 = and i16 %1, 255
  %conv8 = zext i16 %conv.mask155 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_load_page_e4.__UNIQUE_ID_ddebug478, ptr noundef %dev, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, i32 noundef %conv8) #14
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body3, %entry.do.end11_crit_edge
  %conv.mask = and i16 %1, 255
  %conv12 = zext i16 %conv.mask to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.mask)
  %cmp13 = icmp eq i16 %conv.mask, 0
  br i1 %cmp13, label %if.then15, label %do.end11.if.end17_crit_edge

do.end11.if.end17_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  %dsp_firm = getelementptr i8, ptr %work, i32 48
  %11 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsp_firm, align 4
  tail call void @release_firmware(ptr noundef %12) #14
  %13 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dsp_firm, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end11.if.end17_crit_edge
  %dsp_firm18 = getelementptr i8, ptr %work, i32 48
  %14 = ptrtoint ptr %dsp_firm18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsp_firm18, align 4
  %cmp19 = icmp eq ptr %15, null
  br i1 %cmp19, label %land.lhs.true, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end17
  %call21 = tail call fastcc i32 @request_dsp(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %16 = ptrtoint ptr %dsp_firm18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_firm18, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %PageNumber = getelementptr inbounds %struct.l1_code, ptr %19, i32 0, i32 2, i32 0, i32 6
  %20 = ptrtoint ptr %PageNumber to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %PageNumber, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.mask, i16 %22)
  %cmp29.not = icmp ult i16 %conv.mask, %22
  br i1 %cmp29.not, label %if.end38, label %do.end34

do.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.129, i32 noundef %conv12) #17
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  br i1 %cmp13, label %do.body44, label %if.then42

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__uea_load_page_e4(ptr noundef %add.ptr, i8 noundef zeroext %conv, i32 noundef 0)
  br label %cleanup

do.body44:                                        ; preds = %if.end38
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp45.not = icmp eq i32 %25, 0
  br i1 %cmp45.not, label %do.body44.do.end72_crit_edge, label %do.body48

do.body44.do.end72_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end72

do.body48:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_load_page_e4.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_load_page_e4, %if.then60)) #14
          to label %do.end72 [label %if.then60], !srcloc !690

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %dev62 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %PageNumber to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %PageNumber, align 1
  %conv66 = zext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_load_page_e4.__UNIQUE_ID_ddebug479, ptr noundef %dev62, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.127, i32 noundef %conv66) #14
  br label %do.end72

do.end72:                                         ; preds = %if.then60, %do.body48, %do.body44.do.end72_crit_edge
  %30 = ptrtoint ptr %PageNumber to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %PageNumber, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp77166.not = icmp eq i16 %31, 0
  br i1 %cmp77166.not, label %do.end72.do.body85_crit_edge, label %do.end72.for.body_crit_edge

do.end72.for.body_crit_edge:                      ; preds = %do.end72
  br label %for.body

do.end72.do.body85_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body85

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end72.for.body_crit_edge
  %i.0167 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end72.for.body_crit_edge ]
  %PageSize = getelementptr %struct.l1_code, ptr %19, i32 0, i32 2, i32 %i.0167, i32 3
  %32 = ptrtoint ptr %PageSize to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %PageSize, align 1
  %.mask = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool81.not = icmp eq i32 %.mask, 0
  br i1 %tobool81.not, label %for.body.for.inc_crit_edge, label %if.then82

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then82:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv83 = trunc i32 %i.0167 to i8
  tail call fastcc void @__uea_load_page_e4(ptr noundef %add.ptr, i8 noundef zeroext %conv83, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %if.then82, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0167, 1
  %34 = ptrtoint ptr %PageNumber to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %PageNumber, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %conv76 = zext i16 %36 to i32
  %cmp77 = icmp ult i32 %inc, %conv76
  br i1 %cmp77, label %for.inc.for.body_crit_edge, label %for.inc.do.body85_crit_edge

for.inc.do.body85_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body85

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body85:                                        ; preds = %for.inc.do.body85_crit_edge, %do.end72.do.body85_crit_edge
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp86.not = icmp eq i32 %37, 0
  br i1 %cmp86.not, label %do.body85.do.end109_crit_edge, label %do.body89

do.body85.do.end109_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end109

do.body89:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_load_page_e4.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_load_page_e4, %if.then101)) #14
          to label %do.end109 [label %if.then101], !srcloc !690

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 4
  %dev103 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_load_page_e4.__UNIQUE_ID_ddebug480, ptr noundef %dev103, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.127) #14
  br label %do.end109

do.end109:                                        ; preds = %if.then101, %do.body89, %do.body85.do.end109_crit_edge
  %40 = ptrtoint ptr %bi to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -21555, ptr %bi, align 2
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %2, align 2
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %3, align 1
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %6, align 2
  %PageSize112 = getelementptr inbounds %struct.l1_code, ptr %19, i32 0, i32 2, i32 0, i32 3
  %44 = ptrtoint ptr %PageSize112 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %PageSize112, align 1
  %46 = and i32 %45, -129
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %mul = shl i32 %47, 2
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %mul, ptr %4, align 2
  %PageAddress = getelementptr inbounds %struct.l1_code, ptr %19, i32 0, i32 2, i32 0, i32 4
  %49 = ptrtoint ptr %PageAddress to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %PageAddress, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %5, align 2
  %call116 = call fastcc i32 @uea_idma_write(ptr noundef %add.ptr, ptr noundef nonnull %bi, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %do.end109.cleanup_crit_edge, label %do.end121

do.end109.cleanup_crit_edge:                      ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end121:                                        ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  %dev123 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev123, ptr noundef nonnull @.str.133) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %do.end109.cleanup_crit_edge, %if.then42, %do.end34, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %bi) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uea_dispatch_cmv_e1(ptr noundef %sc, ptr nocapture noundef %intr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmv_dsc = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12
  %u = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.body2, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_dispatch_cmv_e1, %if.then5)) #14
          to label %do.end8 [label %if.then5], !srcloc !690

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug508, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.153) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body2, %entry.do.end8_crit_edge
  %3 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %u, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 23635, i16 %4)
  %cmp9.not = icmp eq i16 %4, 23635
  br i1 %cmp9.not, label %if.end12, label %do.end8.do.end150_crit_edge

do.end8.do.end150_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end150

if.end12:                                         ; preds = %do.end8
  %bDirection = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %bDirection to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bDirection, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp14.not = icmp eq i8 %6, 1
  br i1 %cmp14.not, label %if.end17, label %if.end12.do.end150_crit_edge

if.end12.do.end150_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end150

if.end17:                                         ; preds = %if.end12
  %bFunction = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %bFunction to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bFunction, align 1
  %9 = ptrtoint ptr %cmv_dsc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cmv_dsc, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp20.not = icmp eq i8 %8, %10
  br i1 %cmp20.not, label %if.end31, label %if.then22

if.then22:                                        ; preds = %if.end17
  %driver_info = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 3
  %11 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_info, align 4
  %and = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp23 = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %8)
  %cmp27 = icmp eq i8 %8, 34
  %or.cond = select i1 %cmp23, i1 %cmp27, i1 false
  br i1 %or.cond, label %if.end31.thread, label %if.then22.do.end114_crit_edge

if.then22.do.end114_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end114

if.end31.thread:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  %idx = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 1
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idx, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %wIndex = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %wIndex, align 1
  %address = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 2
  %17 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %address, align 4
  %dwSymbolicAddress = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #14
  %20 = ptrtoint ptr %dwSymbolicAddress to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %dwSymbolicAddress, align 1
  %offset = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 3
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %offset, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %wOffsetAddress = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 5
  %24 = ptrtoint ptr %wOffsetAddress to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %wOffsetAddress, align 1
  br label %if.end62

if.end31:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 113, i8 %8)
  %cmp34 = icmp eq i8 %8, 113
  br i1 %cmp34, label %if.then36, label %if.end31.if.end62_crit_edge

if.end31.if.end62_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then36:                                        ; preds = %if.end31
  %cmv_ack.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 11
  %25 = ptrtoint ptr %cmv_ack.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmv_ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %wake_up_cmv_ack.exit, label %do.body3.i, !prof !693

do.body3.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/atm/ueagle-atm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #14, !srcloc !694
  unreachable

wake_up_cmv_ack.exit:                             ; preds = %if.then36
  %27 = ptrtoint ptr %cmv_ack.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %cmv_ack.i, align 4
  %sync_q.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %sync_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp38 = icmp ugt i32 %28, 1
  br i1 %cmp38, label %do.body41, label %wake_up_cmv_ack.exit.cleanup_crit_edge

wake_up_cmv_ack.exit.cleanup_crit_edge:           ; preds = %wake_up_cmv_ack.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body41:                                        ; preds = %wake_up_cmv_ack.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_dispatch_cmv_e1, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !690

if.end62:                                         ; preds = %if.end31.if.end62_crit_edge, %if.end31.thread
  %wIndex63 = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %wIndex63 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %wIndex63, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %idx65 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 1
  %32 = ptrtoint ptr %idx65 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %idx65, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp67.not = icmp eq i16 %31, %33
  br i1 %cmp67.not, label %lor.lhs.false, label %if.end62.do.end114_crit_edge

if.end62.do.end114_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end114

lor.lhs.false:                                    ; preds = %if.end62
  %dwSymbolicAddress69 = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 4
  %34 = ptrtoint ptr %dwSymbolicAddress69 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %dwSymbolicAddress69, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #14
  %address71 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 2
  %37 = ptrtoint ptr %address71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %address71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp72.not = icmp eq i32 %36, %38
  br i1 %cmp72.not, label %lor.lhs.false74, label %lor.lhs.false.do.end114_crit_edge

lor.lhs.false.do.end114_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end114

lor.lhs.false74:                                  ; preds = %lor.lhs.false
  %wOffsetAddress75 = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 5
  %39 = ptrtoint ptr %wOffsetAddress75 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %wOffsetAddress75, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %offset77 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 3
  %42 = ptrtoint ptr %offset77 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %offset77, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp79.not = icmp eq i16 %41, %43
  br i1 %cmp79.not, label %if.end82, label %lor.lhs.false74.do.end114_crit_edge

lor.lhs.false74.do.end114_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end114

if.end82:                                         ; preds = %lor.lhs.false74
  %dwData = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 6
  %44 = ptrtoint ptr %dwData to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %dwData, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #14
  %data = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 9
  %or = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 16)
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or, ptr %data, align 4
  %cmv_ack.i230 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 11
  %48 = ptrtoint ptr %cmv_ack.i230 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmv_ack.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i231 = icmp eq i32 %49, 0
  br i1 %tobool.not.i231, label %wake_up_cmv_ack.exit234, label %do.body3.i232, !prof !693

do.body3.i232:                                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/atm/ueagle-atm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #14, !srcloc !694
  unreachable

wake_up_cmv_ack.exit234:                          ; preds = %if.end82
  %50 = ptrtoint ptr %cmv_ack.i230 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %cmv_ack.i230, align 4
  %sync_q.i233 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %sync_q.i233, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp88 = icmp ugt i32 %51, 1
  br i1 %cmp88, label %do.body91, label %wake_up_cmv_ack.exit234.cleanup_crit_edge

wake_up_cmv_ack.exit234.cleanup_crit_edge:        ; preds = %wake_up_cmv_ack.exit234
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body91:                                        ; preds = %wake_up_cmv_ack.exit234
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_dispatch_cmv_e1, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !690

do.end114:                                        ; preds = %lor.lhs.false74.do.end114_crit_edge, %lor.lhs.false.do.end114_crit_edge, %if.end62.do.end114_crit_edge, %if.then22.do.end114_crit_edge
  %52 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sc, align 4
  %dev116 = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 15
  %conv118 = zext i8 %8 to i32
  %54 = lshr i32 %conv118, 4
  %and122 = and i32 %conv118, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev116, ptr noundef nonnull @.str.68, i32 noundef %54, i32 noundef %and122) #17
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp124 = icmp ugt i32 %55, 1
  br i1 %cmp124, label %do.body127, label %do.end114.cleanup_crit_edge

do.end114.cleanup_crit_edge:                      ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body127:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_dispatch_cmv_e1, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !690

do.end150:                                        ; preds = %if.end12.do.end150_crit_edge, %do.end8.do.end150_crit_edge
  %56 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sc, align 4
  %dev152 = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 15
  %58 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv154 = zext i16 %58 to i32
  %bDirection155 = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %bDirection155 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bDirection155, align 1
  %conv156 = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev152, ptr noundef nonnull @.str.155, i32 noundef %conv154, i32 noundef %conv156) #17
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp158 = icmp ugt i32 %61, 1
  br i1 %cmp158, label %do.body161, label %do.end150.cleanup_crit_edge

do.end150.cleanup_crit_edge:                      ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body161:                                       ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_dispatch_cmv_e1, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !690

cleanup.sink.split:                               ; preds = %do.body161, %do.body127, %do.body91, %do.body41
  %uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug512.sink = phi ptr [ @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug509, %do.body41 ], [ @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug510, %do.body91 ], [ @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug511, %do.body127 ], [ @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug512, %do.body161 ]
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sc, align 4
  %dev175 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug512.sink, ptr noundef %dev175, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.153) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body161, %do.end150.cleanup_crit_edge, %do.body127, %do.end114.cleanup_crit_edge, %do.body91, %wake_up_cmv_ack.exit234.cleanup_crit_edge, %do.body41, %wake_up_cmv_ack.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uea_schedule_load_page_e1(ptr noundef %sc, ptr nocapture noundef readonly %intr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.intr_pkt, ptr %intr, i32 0, i32 6
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %u, align 1
  %conv = zext i8 %1 to i16
  %pageno = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 14
  %2 = ptrtoint ptr %pageno to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %pageno, align 4
  %bOvl = getelementptr inbounds %struct.swap_info_e1, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %bOvl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bOvl, align 1
  %conv3 = zext i8 %4 to i32
  %5 = lshr i32 %conv3, 4
  %shl = shl nuw nsw i32 %conv3, 4
  %or = or i32 %5, %shl
  %conv8 = trunc i32 %or to i16
  %ovl = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 15
  %6 = ptrtoint ptr %ovl to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv8, ptr %ovl, align 2
  %task = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %task) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uea_stat_e1(ptr noundef %sc) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #14
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !691
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %do.body1, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stat_e1.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stat_e1, %if.then4)) #14
          to label %do.end7 [label %if.then4], !srcloc !690

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stat_e1.__UNIQUE_ID_ddebug488, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.157) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.body1, %entry.do.end7_crit_edge
  %stats = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats, align 4
  %call.i = tail call fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext 16, i32 noundef 1096045396, i16 noundef zeroext 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %uea_read_cmv_e1.exit.thread, label %if.end14

uea_read_cmv_e1.exit.thread:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81, i32 noundef %call.i) #17
  br label %cleanup

if.end14:                                         ; preds = %do.end7
  %data1.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 9
  %8 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data1.i, align 4
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %stats, align 4
  %shr = lshr i32 %9, 8
  %and = and i32 %shr, 15
  %11 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %and, label %do.end112 [
    i32 0, label %do.body18
    i32 1, label %do.body43
    i32 2, label %do.body68
    i32 3, label %do.end95
    i32 4, label %if.end14.do.end101_crit_edge
    i32 5, label %if.end14.do.end101_crit_edge419
    i32 6, label %if.end14.do.end101_crit_edge420
    i32 7, label %do.end107
  ]

if.end14.do.end101_crit_edge420:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end101

if.end14.do.end101_crit_edge419:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end101

if.end14.do.end101_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end101

do.body18:                                        ; preds = %if.end14
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19.not = icmp eq i32 %12, 0
  br i1 %cmp19.not, label %do.body18.cleanup_crit_edge, label %do.body21

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stat_e1.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stat_e1, %if.then33)) #14
          to label %cleanup [label %if.then33], !srcloc !690

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc, align 4
  %dev35 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stat_e1.__UNIQUE_ID_ddebug489, ptr noundef %dev35, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.157) #14
  br label %cleanup

do.body43:                                        ; preds = %if.end14
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp44.not = icmp eq i32 %15, 0
  br i1 %cmp44.not, label %do.body43.cleanup_crit_edge, label %do.body46

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body46:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stat_e1.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stat_e1, %if.then58)) #14
          to label %cleanup [label %if.then58], !srcloc !690

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc, align 4
  %dev60 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stat_e1.__UNIQUE_ID_ddebug490, ptr noundef %dev60, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.157) #14
  br label %cleanup

do.body68:                                        ; preds = %if.end14
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp69 = icmp ugt i32 %18, 1
  br i1 %cmp69, label %do.body71, label %do.body68.sw.epilog_crit_edge

do.body68.sw.epilog_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body71:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stat_e1.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stat_e1, %if.then83)) #14
          to label %sw.epilog [label %if.then83], !srcloc !690

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc, align 4
  %dev85 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stat_e1.__UNIQUE_ID_ddebug491, ptr noundef %dev85, ptr noundef nonnull @.str.158) #14
  br label %sw.epilog

do.end95:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sc, align 4
  %dev97 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev97, ptr noundef nonnull @.str.72) #17
  br label %cleanup

do.end101:                                        ; preds = %if.end14.do.end101_crit_edge, %if.end14.do.end101_crit_edge419, %if.end14.do.end101_crit_edge420
  %23 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sc, align 4
  %dev103 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev103, ptr noundef nonnull @.str.160) #17
  br label %cleanup

do.end107:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  %dev109 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev109, ptr noundef nonnull @.str.163) #17
  br label %cleanup

do.end112:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sc, align 4
  %dev114 = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev114, ptr noundef nonnull @.str.166, i32 noundef %and) #17
  br label %cleanup

sw.epilog:                                        ; preds = %if.then83, %do.body71, %do.body68.sw.epilog_crit_edge
  %29 = and i32 %5, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %29)
  %cmp122.not = icmp eq i32 %29, 512
  br i1 %cmp122.not, label %sw.epilog.do.body132_crit_edge, label %if.then123

sw.epilog.do.body132_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body132

if.then123:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %call124 = tail call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 3, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef null)
  %30 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc, align 4
  %dev129 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev129, ptr noundef nonnull @.str.78) #17
  %dsp_firm = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 16
  %32 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dsp_firm, align 4
  tail call void @release_firmware(ptr noundef %33) #14
  %34 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %dsp_firm, align 4
  br label %do.body132

do.body132:                                       ; preds = %if.then123, %sw.epilog.do.body132_crit_edge
  %usbatm = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 1
  %35 = ptrtoint ptr %usbatm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usbatm, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %atm_dev, align 4
  %tobool133.not = icmp eq ptr %38, null
  br i1 %tobool133.not, label %do.body132.do.end139_crit_edge, label %if.then134

do.body132.do.end139_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end139

if.then134:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @atm_dev_signal_change(ptr noundef nonnull %38, i8 noundef zeroext 2) #14
  br label %do.end139

do.end139:                                        ; preds = %if.then134, %do.body132.do.end139_crit_edge
  %sync_q = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %sync_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %flags = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 1
  %call.i389 = tail call fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext 16, i32 noundef 1095189577, i16 noundef zeroext 2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i389)
  %cmp.i390 = icmp slt i32 %call.i389, 0
  br i1 %cmp.i390, label %uea_read_cmv_e1.exit395.thread, label %if.end145

uea_read_cmv_e1.exit395.thread:                   ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sc, align 4
  %dev.i391 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i391, ptr noundef nonnull @.str.81, i32 noundef %call.i389) #17
  br label %cleanup

if.end145:                                        ; preds = %do.end139
  %41 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data1.i, align 4
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %flags, align 4
  %mflags = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2
  %44 = ptrtoint ptr %mflags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mflags, align 4
  %or = or i32 %45, %42
  store i32 %or, ptr %mflags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool154.not = icmp eq i32 %42, 0
  br i1 %tobool154.not, label %if.end183, label %do.body156

do.body156:                                       ; preds = %if.end145
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp157.not = icmp eq i32 %46, 0
  br i1 %cmp157.not, label %do.body156.cleanup_crit_edge, label %do.body159

do.body156.cleanup_crit_edge:                     ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body159:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stat_e1.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stat_e1, %if.then171)) #14
          to label %cleanup [label %if.then171], !srcloc !690

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sc, align 4
  %dev173 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stat_e1.__UNIQUE_ID_ddebug492, ptr noundef %dev173, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.157, i32 noundef %50) #14
  br label %cleanup

if.end183:                                        ; preds = %if.end145
  %call.i396 = tail call fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext 16, i32 noundef 1413829185, i16 noundef zeroext 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i396)
  %cmp.i397 = icmp slt i32 %call.i396, 0
  br i1 %cmp.i397, label %uea_read_cmv_e1.exit402.thread, label %if.end187

uea_read_cmv_e1.exit402.thread:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sc, align 4
  %dev.i398 = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i398, ptr noundef nonnull @.str.81, i32 noundef %call.i396) #17
  br label %cleanup

if.end187:                                        ; preds = %if.end183
  %53 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data1.i, align 4
  %55 = lshr i32 %54, 11
  %mul = and i32 %55, 2097120
  %driver_info.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 3
  %56 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %driver_info.i, align 4
  %and.i = and i32 %57, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i403 = icmp eq i32 %and.i, 0
  br i1 %cmp.i403, label %if.end187.uea_set_bulk_timeout.exit_crit_edge, label %lor.lhs.false.i

if.end187.uea_set_bulk_timeout.exit_crit_edge:    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #16
  br label %uea_set_bulk_timeout.exit

lor.lhs.false.i:                                  ; preds = %if.end187
  %modem_index.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 2
  %58 = ptrtoint ptr %modem_index.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %modem_index.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @altsetting, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp1.not.i = icmp eq i32 %61, 0
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.uea_set_bulk_timeout.exit_crit_edge

lor.lhs.false.i.uea_set_bulk_timeout.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %uea_set_bulk_timeout.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %dsrate3.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 5
  %62 = ptrtoint ptr %dsrate3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dsrate3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %mul)
  %cmp4.i = icmp eq i32 %63, %mul
  br i1 %cmp4.i, label %lor.lhs.false2.i.uea_set_bulk_timeout.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.uea_set_bulk_timeout.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %uea_set_bulk_timeout.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %mul)
  %cmp5.i = icmp ugt i32 %mul, 1048576
  %conv.i = zext i1 %cmp5.i to i16
  %call.i404 = tail call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 17, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef null) #14
  %64 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sc, align 4
  %dev.i405 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 15
  %conv6.i = zext i1 %cmp5.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i404)
  %cmp7.i = icmp slt i32 %call.i404, 0
  %cond9.i = select i1 %cmp7.i, ptr @.str.97, ptr @.str.98
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i405, ptr noundef nonnull @.str.95, i32 noundef %conv6.i, ptr noundef nonnull %cond9.i) #17
  br label %uea_set_bulk_timeout.exit

uea_set_bulk_timeout.exit:                        ; preds = %if.end.i, %lor.lhs.false2.i.uea_set_bulk_timeout.exit_crit_edge, %lor.lhs.false.i.uea_set_bulk_timeout.exit_crit_edge, %if.end187.uea_set_bulk_timeout.exit_crit_edge
  %dsrate = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 5
  %66 = ptrtoint ptr %dsrate to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul, ptr %dsrate, align 4
  %and193 = shl i32 %54, 5
  %mul194 = and i32 %and193, 2097120
  %usrate = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 6
  %67 = ptrtoint ptr %usrate to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mul194, ptr %usrate, align 4
  %68 = ptrtoint ptr %usbatm to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %usbatm, align 4
  %atm_dev199 = getelementptr inbounds %struct.usbatm_data, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %atm_dev199 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %atm_dev199, align 4
  %tobool200.not = icmp eq ptr %71, null
  br i1 %tobool200.not, label %uea_set_bulk_timeout.exit.do.end210_crit_edge, label %if.then201

uea_set_bulk_timeout.exit.do.end210_crit_edge:    ; preds = %uea_set_bulk_timeout.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end210

if.then201:                                       ; preds = %uea_set_bulk_timeout.exit
  call void @__sanitizer_cov_trace_pc() #16
  %mul205 = mul nuw nsw i32 %mul, 1000
  %div = udiv i32 %mul205, 424
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %71, i32 0, i32 13
  %72 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div, ptr %link_rate, align 4
  br label %do.end210

do.end210:                                        ; preds = %if.then201, %uea_set_bulk_timeout.exit.do.end210_crit_edge
  %call.i406 = tail call fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext 16, i32 noundef 1095189577, i16 noundef zeroext 23, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i406)
  %cmp.i407 = icmp slt i32 %call.i406, 0
  br i1 %cmp.i407, label %uea_read_cmv_e1.exit413.thread, label %if.end214

uea_read_cmv_e1.exit413.thread:                   ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sc, align 4
  %dev.i408 = getelementptr inbounds %struct.usb_device, ptr %74, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i408, ptr noundef nonnull @.str.81, i32 noundef %call.i406) #17
  br label %cleanup

if.end214:                                        ; preds = %do.end210
  %75 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %data1.i, align 4
  %77 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %data, align 4
  %and215 = lshr i32 %76, 1
  %div216375 = and i32 %and215, 127
  %dsattenuation = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 14
  %78 = ptrtoint ptr %dsattenuation to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %div216375, ptr %dsattenuation, align 4
  %call219 = call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1095189577, i16 noundef zeroext 47, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %cmp220 = icmp slt i32 %call219, 0
  br i1 %cmp220, label %if.end214.cleanup_crit_edge, label %if.end222

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end222:                                        ; preds = %if.end214
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data, align 4
  %and223 = lshr i32 %80, 1
  %div224376 = and i32 %and223, 127
  %usattenuation = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 13
  %81 = ptrtoint ptr %usattenuation to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div224376, ptr %usattenuation, align 4
  %dsmargin = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 15
  %call229 = tail call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1095189577, i16 noundef zeroext 25, ptr noundef %dsmargin)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp230 = icmp slt i32 %call229, 0
  br i1 %cmp230, label %if.end222.cleanup_crit_edge, label %if.end232

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end232:                                        ; preds = %if.end222
  %usmargin = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 16
  %call235 = tail call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1095189577, i16 noundef zeroext 49, ptr noundef %usmargin)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %cmp236 = icmp slt i32 %call235, 0
  br i1 %cmp236, label %if.end232.cleanup_crit_edge, label %if.end238

if.end232.cleanup_crit_edge:                      ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end238:                                        ; preds = %if.end232
  %rxflow = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 12
  %call241 = tail call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1095189577, i16 noundef zeroext 51, ptr noundef %rxflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %cmp242 = icmp slt i32 %call241, 0
  br i1 %cmp242, label %if.end238.cleanup_crit_edge, label %if.end244

if.end238.cleanup_crit_edge:                      ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end244:                                        ; preds = %if.end238
  %txflow = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 11
  %call247 = tail call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1095189577, i16 noundef zeroext 52, ptr noundef %txflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %cmp248 = icmp slt i32 %call247, 0
  br i1 %cmp248, label %if.end244.cleanup_crit_edge, label %if.end250

if.end244.cleanup_crit_edge:                      ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end250:                                        ; preds = %if.end244
  %dsunc = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 7
  %call253 = tail call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1095189577, i16 noundef zeroext 54, ptr noundef %dsunc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254 = icmp slt i32 %call253, 0
  br i1 %cmp254, label %if.end250.cleanup_crit_edge, label %if.end256

if.end250.cleanup_crit_edge:                      ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end256:                                        ; preds = %if.end250
  %usunc = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 8
  %call259 = tail call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1095189577, i16 noundef zeroext 58, ptr noundef %usunc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %cmp260 = icmp slt i32 %call259, 0
  br i1 %cmp260, label %if.end256.cleanup_crit_edge, label %if.end262

if.end256.cleanup_crit_edge:                      ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end262:                                        ; preds = %if.end256
  %dscorr = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 9
  %call265 = tail call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1095189577, i16 noundef zeroext 53, ptr noundef %dscorr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %cmp266 = icmp slt i32 %call265, 0
  br i1 %cmp266, label %if.end262.cleanup_crit_edge, label %if.end268

if.end262.cleanup_crit_edge:                      ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end268:                                        ; preds = %if.end262
  %uscorr = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 10
  %call271 = tail call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1095189577, i16 noundef zeroext 57, ptr noundef %uscorr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %cmp272 = icmp slt i32 %call271, 0
  br i1 %cmp272, label %if.end268.cleanup_crit_edge, label %if.end274

if.end268.cleanup_crit_edge:                      ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end274:                                        ; preds = %if.end268
  %vidco = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 4
  %call277 = tail call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1179601230, i16 noundef zeroext 8, ptr noundef %vidco)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %cmp278 = icmp slt i32 %call277, 0
  br i1 %cmp278, label %if.end274.cleanup_crit_edge, label %if.end280

if.end274.cleanup_crit_edge:                      ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end280:                                        ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #16
  %vidcpe = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 3
  %call283 = tail call fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef 1179601230, i16 noundef zeroext 13, ptr noundef %vidcpe)
  %82 = tail call i32 @llvm.smin.i32(i32 %call283, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end280, %if.end274.cleanup_crit_edge, %if.end268.cleanup_crit_edge, %if.end262.cleanup_crit_edge, %if.end256.cleanup_crit_edge, %if.end250.cleanup_crit_edge, %if.end244.cleanup_crit_edge, %if.end238.cleanup_crit_edge, %if.end232.cleanup_crit_edge, %if.end222.cleanup_crit_edge, %if.end214.cleanup_crit_edge, %uea_read_cmv_e1.exit413.thread, %uea_read_cmv_e1.exit402.thread, %if.then171, %do.body159, %do.body156.cleanup_crit_edge, %uea_read_cmv_e1.exit395.thread, %do.end112, %do.end107, %do.end101, %do.end95, %if.then58, %do.body46, %do.body43.cleanup_crit_edge, %if.then33, %do.body21, %do.body18.cleanup_crit_edge, %uea_read_cmv_e1.exit.thread
  %retval.0 = phi i32 [ -11, %do.end112 ], [ 0, %do.end107 ], [ -11, %do.end101 ], [ -11, %do.end95 ], [ 0, %if.then33 ], [ 0, %do.body18.cleanup_crit_edge ], [ 0, %if.then58 ], [ 0, %do.body43.cleanup_crit_edge ], [ 0, %if.then171 ], [ 0, %do.body156.cleanup_crit_edge ], [ %call219, %if.end214.cleanup_crit_edge ], [ %call229, %if.end222.cleanup_crit_edge ], [ %call235, %if.end232.cleanup_crit_edge ], [ %call241, %if.end238.cleanup_crit_edge ], [ %call247, %if.end244.cleanup_crit_edge ], [ %call253, %if.end250.cleanup_crit_edge ], [ %call259, %if.end256.cleanup_crit_edge ], [ %call265, %if.end262.cleanup_crit_edge ], [ %call271, %if.end268.cleanup_crit_edge ], [ %call277, %if.end274.cleanup_crit_edge ], [ %82, %if.end280 ], [ %call.i, %uea_read_cmv_e1.exit.thread ], [ 0, %do.body21 ], [ 0, %do.body46 ], [ %call.i389, %uea_read_cmv_e1.exit395.thread ], [ 0, %do.body159 ], [ %call.i396, %uea_read_cmv_e1.exit402.thread ], [ %call.i406, %uea_read_cmv_e1.exit413.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uea_send_cmvs_e1(ptr noundef %sc) #2 align 64 {
entry:
  %cmvs_ptr = alloca ptr, align 4
  %cmvs_fw = alloca ptr, align 4
  %ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmvs_ptr) #14
  %0 = ptrtoint ptr %cmvs_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cmvs_ptr, align 4, !annotation !691
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmvs_fw) #14
  %1 = ptrtoint ptr %cmvs_fw to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %cmvs_fw, align 4, !annotation !691
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #14
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ver, align 4
  %call.i = tail call fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext 17, i32 noundef 1414284110, i16 noundef zeroext 0, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %uea_write_cmv_e1.exit.thread, label %if.end

uea_write_cmv_e1.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.108, i32 noundef %call.i) #17
  br label %cleanup85

if.end:                                           ; preds = %entry
  %call.i126 = tail call fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext 16, i32 noundef 1179601230, i16 noundef zeroext 10, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %cmp.i127 = icmp slt i32 %call.i126, 0
  br i1 %cmp.i127, label %uea_read_cmv_e1.exit.thread, label %do.end

uea_read_cmv_e1.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 4
  %dev.i128 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i128, ptr noundef nonnull @.str.81, i32 noundef %call.i126) #17
  br label %cleanup85

do.end:                                           ; preds = %if.end
  %firmid = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 17
  %data1.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 9
  %7 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data1.i, align 4
  %9 = ptrtoint ptr %firmid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %firmid, align 4
  %10 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.99, i32 noundef %8) #17
  %call8 = call fastcc i32 @request_cmvs(ptr noundef %sc, ptr noundef nonnull %cmvs_ptr, ptr noundef nonnull %cmvs_fw, ptr noundef nonnull %ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end.cleanup85_crit_edge, label %if.end11

do.end.cleanup85_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup85

if.end11:                                         ; preds = %do.end
  %12 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ver, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %13, label %do.end57 [
    i32 1, label %if.then13
    i32 2, label %if.then30
  ]

if.then13:                                        ; preds = %if.end11
  %15 = ptrtoint ptr %cmvs_ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmvs_ptr, align 4
  %17 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc, align 4
  %dev18 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.175) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp19148.not = icmp eq i32 %call8, 0
  br i1 %cmp19148.not, label %if.then13.if.end61_crit_edge, label %if.then13.for.body_crit_edge

if.then13.for.body_crit_edge:                     ; preds = %if.then13
  br label %for.body

if.then13.if.end61_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0149, 1
  %exitcond153.not = icmp eq i32 %inc, %call8
  br i1 %exitcond153.not, label %for.cond.if.end61_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.if.end61_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then13.for.body_crit_edge
  %i.0149 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then13.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uea_cmvs_v1, ptr %16, i32 %i.0149
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %20) #14
  %offset = getelementptr %struct.uea_cmvs_v1, ptr %16, i32 %i.0149, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %offset, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23) #14
  %data = getelementptr %struct.uea_cmvs_v1, ptr %16, i32 %i.0149, i32 2
  %25 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %data, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26) #14
  %call.i130 = call fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext 17, i32 noundef %21, i16 noundef zeroext %24, i32 noundef %27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp.i131 = icmp slt i32 %call.i130, 0
  br i1 %cmp.i131, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc, align 4
  %dev.i132 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i132, ptr noundef nonnull @.str.108, i32 noundef %call.i130) #17
  br label %out

if.then30:                                        ; preds = %if.end11
  %30 = ptrtoint ptr %cmvs_ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmvs_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp32146.not = icmp eq i32 %call8, 0
  br i1 %cmp32146.not, label %if.then30.if.end61_crit_edge, label %if.then30.for.body33_crit_edge

if.then30.for.body33_crit_edge:                   ; preds = %if.then30
  br label %for.body33

if.then30.if.end61_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

for.cond31:                                       ; preds = %for.body33
  %inc49 = add nuw nsw i32 %i.1147, 1
  %exitcond.not = icmp eq i32 %inc49, %call8
  br i1 %exitcond.not, label %for.cond31.if.end61_crit_edge, label %for.cond31.for.body33_crit_edge

for.cond31.for.body33_crit_edge:                  ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body33

for.cond31.if.end61_crit_edge:                    ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

for.body33:                                       ; preds = %for.cond31.for.body33_crit_edge, %if.then30.for.body33_crit_edge
  %i.1147 = phi i32 [ %inc49, %for.cond31.for.body33_crit_edge ], [ 0, %if.then30.for.body33_crit_edge ]
  %address35 = getelementptr %struct.uea_cmvs_v2, ptr %31, i32 %i.1147, i32 1
  %32 = ptrtoint ptr %address35 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %address35, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %33) #14
  %offset38 = getelementptr %struct.uea_cmvs_v2, ptr %31, i32 %i.1147, i32 2
  %35 = ptrtoint ptr %offset38 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %offset38, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36) #14
  %conv = trunc i32 %37 to i16
  %data41 = getelementptr %struct.uea_cmvs_v2, ptr %31, i32 %i.1147, i32 3
  %38 = ptrtoint ptr %data41 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %data41, align 1
  %40 = call i32 @llvm.bswap.i32(i32 %39) #14
  %call.i135 = call fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext 17, i32 noundef %34, i16 noundef zeroext %conv, i32 noundef %40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp.i136 = icmp slt i32 %call.i135, 0
  br i1 %cmp.i136, label %cleanup51, label %for.cond31

cleanup51:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sc, align 4
  %dev.i137 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i137, ptr noundef nonnull @.str.108, i32 noundef %call.i135) #17
  br label %out

do.end57:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sc, align 4
  %dev59 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.102, i32 noundef %13) #17
  br label %out

if.end61:                                         ; preds = %for.cond31.if.end61_crit_edge, %if.then30.if.end61_crit_edge, %for.cond.if.end61_crit_edge, %if.then13.if.end61_crit_edge
  %call62 = call fastcc i32 @uea_write_cmv_e1(ptr noundef %sc, i32 noundef 1414284110, i16 noundef zeroext 0, i32 noundef 2)
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp64 = icmp ugt i32 %45, 1
  br i1 %cmp64, label %do.body67, label %if.end61.do.end82_crit_edge

if.end61.do.end82_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end82

do.body67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_send_cmvs_e1.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_send_cmvs_e1, %if.then71)) #14
          to label %do.end82 [label %if.then71], !srcloc !690

if.then71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sc, align 4
  %dev73 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_send_cmvs_e1.__UNIQUE_ID_ddebug497, ptr noundef %dev73, ptr noundef nonnull @.str.104) #14
  br label %do.end82

do.end82:                                         ; preds = %if.then71, %do.body67, %if.end61.do.end82_crit_edge
  %48 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sc, align 4
  %dev84 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev84, ptr noundef nonnull @.str.106) #17
  br label %out

out:                                              ; preds = %do.end82, %do.end57, %cleanup51, %cleanup
  %ret.4 = phi i32 [ %call.i130, %cleanup ], [ %call62, %do.end82 ], [ %call.i135, %cleanup51 ], [ %call8, %do.end57 ]
  %50 = ptrtoint ptr %cmvs_fw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmvs_fw, align 4
  call void @release_firmware(ptr noundef %51) #14
  br label %cleanup85

cleanup85:                                        ; preds = %out, %do.end.cleanup85_crit_edge, %uea_read_cmv_e1.exit.thread, %uea_write_cmv_e1.exit.thread
  %retval.0 = phi i32 [ %ret.4, %out ], [ %call8, %do.end.cleanup85_crit_edge ], [ %call.i, %uea_write_cmv_e1.exit.thread ], [ %call.i126, %uea_read_cmv_e1.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmvs_fw) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmvs_ptr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uea_load_page_e1(ptr noundef %work) #2 align 64 {
entry:
  %bi = alloca %struct.block_info_e1, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  %pageno1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %pageno1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pageno1, align 4
  %ovl2 = getelementptr i8, ptr %work, i32 46
  %2 = ptrtoint ptr %ovl2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ovl2, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bi) #14
  %4 = getelementptr inbounds %struct.block_info_e1, ptr %bi, i32 0, i32 1
  %5 = getelementptr inbounds %struct.block_info_e1, ptr %bi, i32 0, i32 2
  %6 = getelementptr inbounds %struct.block_info_e1, ptr %bi, i32 0, i32 3
  %7 = getelementptr inbounds %struct.block_info_e1, ptr %bi, i32 0, i32 4
  %8 = getelementptr inbounds %struct.block_info_e1, ptr %bi, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp5 = icmp eq i16 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dsp_firm = getelementptr i8, ptr %work, i32 48
  %9 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsp_firm, align 4
  tail call void @release_firmware(ptr noundef %10) #14
  %11 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dsp_firm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dsp_firm8 = getelementptr i8, ptr %work, i32 48
  %12 = ptrtoint ptr %dsp_firm8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_firm8, align 4
  %cmp9 = icmp eq ptr %13, null
  br i1 %cmp9, label %land.lhs.true11, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.end
  %call = tail call fastcc i32 @request_dsp(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end15_crit_edge

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %14 = ptrtoint ptr %dsp_firm8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsp_firm8, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv18 = zext i16 %1 to i32
  %20 = zext i8 %19 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %20)
  %cmp20.not = icmp ult i16 %1, %20
  br i1 %cmp20.not, label %if.end23, label %if.end15.do.end81_crit_edge

if.end15.do.end81_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end81

if.end23:                                         ; preds = %if.end15
  %add.ptr17 = getelementptr i8, ptr %17, i32 1
  %mul = shl nuw nsw i32 %conv18, 2
  %add.ptr25 = getelementptr i8, ptr %add.ptr17, i32 %mul
  %21 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr25, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp27 = icmp eq i32 %22, 0
  br i1 %cmp27, label %if.end23.do.end81_crit_edge, label %if.end30

if.end23.do.end81_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end81

if.end30:                                         ; preds = %if.end23
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  %add.ptr33 = getelementptr i8, ptr %17, i32 %23
  %24 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr33, align 1
  %add.ptr34 = getelementptr i8, ptr %add.ptr33, i32 1
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp35.not = icmp eq i32 %26, 0
  br i1 %cmp35.not, label %if.end30.do.end49_crit_edge, label %do.body38

if.end30.do.end49_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49

do.body38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_load_page_e1.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_load_page_e1, %if.then43)) #14
          to label %do.end49 [label %if.then43], !srcloc !690

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  %conv44 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_load_page_e1.__UNIQUE_ID_ddebug476, ptr noundef %dev, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.182, i32 noundef %conv44, i32 noundef %conv18) #14
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %do.body38, %if.end30.do.end49_crit_edge
  %29 = ptrtoint ptr %bi to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -12885, ptr %bi, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %3)
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %7, align 2
  %32 = or i16 %3, -32768
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %6, align 2
  %conv52 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp53134.not = icmp eq i8 %25, 0
  br i1 %cmp53134.not, label %do.end49.cleanup_crit_edge, label %for.body.lr.ph

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end49
  %sub = add nsw i32 %conv52, -1
  br label %for.body

for.body:                                         ; preds = %if.end71.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end71.for.body_crit_edge ]
  %p.0135 = phi ptr [ %add.ptr34, %for.body.lr.ph ], [ %add.ptr73, %if.end71.for.body_crit_edge ]
  %35 = ptrtoint ptr %p.0135 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %p.0135, align 1
  %add.ptr56 = getelementptr i8, ptr %p.0135, i32 2
  %37 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %add.ptr56, align 1
  %add.ptr58 = getelementptr i8, ptr %p.0135, i32 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %5, align 2
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %36, ptr %4, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0136, i32 %sub)
  %cmp60 = icmp eq i32 %i.0136, %sub
  %41 = select i1 %cmp60, i16 256, i16 0
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %8, align 2
  %call63 = call fastcc i32 @uea_idma_write(ptr noundef %add.ptr, ptr noundef nonnull %bi, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %for.body.do.end76_crit_edge

for.body.do.end76_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

if.end66:                                         ; preds = %for.body
  %43 = call i16 @llvm.bswap.i16(i16 %38) #14
  %conv67 = zext i16 %43 to i32
  %call68 = call fastcc i32 @uea_idma_write(ptr noundef %add.ptr, ptr noundef %add.ptr58, i32 noundef %conv67)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.do.end76_crit_edge

if.end66.do.end76_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

if.end71:                                         ; preds = %if.end66
  %add.ptr73 = getelementptr i8, ptr %add.ptr58, i32 %conv67
  %inc = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, %conv52
  br i1 %exitcond.not, label %if.end71.cleanup_crit_edge, label %if.end71.for.body_crit_edge

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end76:                                         ; preds = %if.end66.do.end76_crit_edge, %for.body.do.end76_crit_edge
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  %dev78 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef nonnull @.str.148, i32 noundef %i.0136) #17
  br label %cleanup

do.end81:                                         ; preds = %if.end23.do.end81_crit_edge, %if.end15.do.end81_crit_edge
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %dev83 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83, ptr noundef nonnull @.str.129, i32 noundef %conv18) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %do.end76, %if.end71.cleanup_crit_edge, %do.end49.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bi) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @load_XILINX_firmware(ptr nocapture noundef readonly %sc) unnamed_addr #2 align 64 {
entry:
  %fw_entry = alloca ptr, align 4
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #14
  %0 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !691
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #14
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %value, align 1, !annotation !691
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.body1, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_XILINX_firmware.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_XILINX_firmware, %if.then4)) #14
          to label %do.end7 [label %if.then4], !srcloc !690

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_XILINX_firmware.__UNIQUE_ID_ddebug504, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.187) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.body1, %entry.do.end7_crit_edge
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %call10 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull @.str.186, ptr noundef %dev9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.186) #17
  br label %do.body62

if.end18:                                         ; preds = %do.end7
  %9 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_entry, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22395, i32 %14)
  %cmp20.not = icmp eq i32 %14, 22395
  br i1 %cmp20.not, label %if.end18.for.body_crit_edge, label %do.end24

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sc, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.186) #17
  br label %err1

for.cond:                                         ; preds = %for.body
  %add = add i32 %17, %u.07
  %cmp28 = icmp slt i32 %add, 22395
  br i1 %cmp28, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end18.for.body_crit_edge
  %u.07 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %sub = sub i32 22395, %u.07
  %17 = call i32 @llvm.smin.i32(i32 %sub, i32 64)
  %conv = trunc i32 %17 to i16
  %add.ptr = getelementptr i8, ptr %12, i32 %u.07
  %call31 = call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 14, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end37, label %for.cond

do.end37:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc, align 4
  %dev39 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.191, i32 noundef %call31) #17
  br label %err1

for.end:                                          ; preds = %for.cond
  %call41 = call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 14, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end47, label %if.end50

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc, align 4
  %dev49 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.191, i32 noundef %call41) #17
  br label %err1

if.end50:                                         ; preds = %for.end
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %value, align 1
  %23 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sc, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull %value, i32 noundef 1, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end50.do.end58_crit_edge, label %if.end.i

if.end50.do.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

if.end.i:                                         ; preds = %if.end50
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i = shl i32 %26, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 14, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 1, i32 noundef 1000) #14
  call void @kfree(ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.do.end58_crit_edge, label %uea_send_modem_cmd.exit

if.end.i.do.end58_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

uea_send_modem_cmd.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp7.i = icmp eq i32 %call2.i, 1
  br i1 %cmp7.i, label %uea_send_modem_cmd.exit.err1_crit_edge, label %uea_send_modem_cmd.exit.do.end58_crit_edge

uea_send_modem_cmd.exit.do.end58_crit_edge:       ; preds = %uea_send_modem_cmd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

uea_send_modem_cmd.exit.err1_crit_edge:           ; preds = %uea_send_modem_cmd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

do.end58:                                         ; preds = %uea_send_modem_cmd.exit.do.end58_crit_edge, %if.end.i.do.end58_crit_edge, %if.end50.do.end58_crit_edge
  %27 = phi i32 [ -5, %uea_send_modem_cmd.exit.do.end58_crit_edge ], [ %call2.i, %if.end.i.do.end58_crit_edge ], [ -12, %if.end50.do.end58_crit_edge ]
  %28 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc, align 4
  %dev60 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.196, i32 noundef %27) #17
  br label %err1

err1:                                             ; preds = %do.end58, %uea_send_modem_cmd.exit.err1_crit_edge, %do.end47, %do.end37, %do.end24
  %30 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %31) #14
  br label %do.body62

do.body62:                                        ; preds = %err1, %do.end15
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp63 = icmp ugt i32 %32, 1
  br i1 %cmp63, label %do.body66, label %do.body62.do.end86_crit_edge

do.body62.do.end86_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end86

do.body66:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_XILINX_firmware.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_XILINX_firmware, %if.then78)) #14
          to label %do.end86 [label %if.then78], !srcloc !690

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sc, align 4
  %dev80 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_XILINX_firmware.__UNIQUE_ID_ddebug507, ptr noundef %dev80, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.187) #14
  br label %do.end86

do.end86:                                         ; preds = %if.then78, %do.body66, %do.body62.do.end86_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uea_intr(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %do.body2, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_intr.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_intr, %if.then5)) #14
          to label %do.end8 [label %if.then5], !srcloc !690

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_intr.__UNIQUE_ID_ddebug518, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.198) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body2, %entry.do.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp slt i32 %5, 0
  br i1 %cmp9, label %do.end19, label %if.end22, !prof !695

do.end19:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.199, i32 noundef %5) #17
  br label %cleanup

if.end22:                                         ; preds = %do.end8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp23.not = icmp eq i8 %12, 8
  br i1 %cmp23.not, label %lor.lhs.false, label %if.end22.do.end29_crit_edge

if.end22.do.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

lor.lhs.false:                                    ; preds = %if.end22
  %booting = getelementptr inbounds %struct.uea_softc, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %booting to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %booting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %if.end32, label %lor.lhs.false.do.end29_crit_edge

lor.lhs.false.do.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

do.end29:                                         ; preds = %lor.lhs.false.do.end29_crit_edge, %if.end22.do.end29_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev31 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.201) #17
  br label %resubmit

if.end32:                                         ; preds = %lor.lhs.false
  %wInterrupt = getelementptr inbounds %struct.intr_pkt, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %wInterrupt to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %wInterrupt, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.249)
  switch i16 %19, label %do.end37 [
    i16 1, label %sw.bb
    i16 2, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %schedule_load_page = getelementptr inbounds %struct.uea_softc, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %schedule_load_page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %schedule_load_page, align 4
  tail call void %22(ptr noundef %1, ptr noundef %3) #14
  br label %resubmit

sw.bb34:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %dispatch_cmv = getelementptr inbounds %struct.uea_softc, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %dispatch_cmv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dispatch_cmv, align 4
  tail call void %24(ptr noundef %1, ptr noundef %3) #14
  br label %resubmit

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %conv33 = zext i16 %19 to i32
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %dev39 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.204, i32 noundef %conv33) #17
  br label %resubmit

resubmit:                                         ; preds = %do.end37, %sw.bb34, %sw.bb, %do.end29
  %urb_int = getelementptr inbounds %struct.uea_softc, ptr %1, i32 0, i32 17
  %27 = ptrtoint ptr %urb_int to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb_int, align 4
  %call42 = tail call i32 @usb_submit_urb(ptr noundef %28, i32 noundef 2592) #14
  br label %cleanup

cleanup:                                          ; preds = %resubmit, %do.end19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uea_kthread(ptr noundef %data) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @set_freezable() #14
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.body1, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_kthread.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_kthread, %if.then5)) #14
          to label %do.end8 [label %if.then5], !srcloc !690

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_kthread.__UNIQUE_ID_ddebug502, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.206) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %call9142 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call9142, label %do.end8.do.body80_crit_edge, label %while.body.lr.ph

do.end8.do.body80_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body80

while.body.lr.ph:                                 ; preds = %do.end8
  %reset = getelementptr inbounds %struct.uea_softc, ptr %data, i32 0, i32 6
  %stat = getelementptr inbounds %struct.uea_softc, ptr %data, i32 0, i32 20
  %sync_q = getelementptr inbounds %struct.uea_softc, ptr %data, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %try_to_freeze.exit.while.body_crit_edge, %while.body.lr.ph
  %ret.0143 = phi i32 [ -11, %while.body.lr.ph ], [ %ret.2, %try_to_freeze.exit.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0143)
  %cmp12 = icmp slt i32 %ret.0143, 0
  br i1 %cmp12, label %while.body.if.then14_crit_edge, label %lor.lhs.false

while.body.if.then14_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

lor.lhs.false:                                    ; preds = %while.body
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not = icmp eq i32 %4, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %while.body.if.then14_crit_edge
  %call15 = call fastcc i32 @uea_start_reset(ptr noundef %data)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %lor.lhs.false.if.end16_crit_edge
  %ret.1 = phi i32 [ %call15, %if.then14 ], [ %ret.0143, %lor.lhs.false.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool17.not = icmp eq i32 %ret.1, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stat, align 4
  %call19 = call i32 %6(ptr noundef %data) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end16.if.end20_crit_edge ], [ %call19, %if.then18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.2)
  %cmp21.not = icmp eq i32 %ret.2, -11
  br i1 %cmp21.not, label %if.end20.if.end78_crit_edge, label %if.then22

if.end20.if.end78_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then22:                                        ; preds = %if.end20
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1898) #14
  %call30 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call30, label %if.then22.if.end72_crit_edge, label %if.then42

if.then22.if.end72_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then42:                                        ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call45138 = call i32 @prepare_to_wait_event(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call47139 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call47139, label %if.then42.for.end_crit_edge, label %if.then42.if.end65_crit_edge

if.then42.if.end65_crit_edge:                     ; preds = %if.then42
  br label %if.end65

if.then42.for.end_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end65:                                         ; preds = %cleanup.if.end65_crit_edge, %if.then42.if.end65_crit_edge
  %__ret43.1141 = phi i32 [ %__ret43.1, %cleanup.if.end65_crit_edge ], [ 100, %if.then42.if.end65_crit_edge ]
  %call45140 = phi i32 [ %call45, %cleanup.if.end65_crit_edge ], [ %call45138, %if.then42.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45140)
  %tobool66.not = icmp eq i32 %call45140, 0
  br i1 %tobool66.not, label %cleanup, label %if.end65.__out_crit_edge

if.end65.__out_crit_edge:                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end65
  %call69 = call i32 @schedule_timeout(i32 noundef %__ret43.1141) #14
  %call45 = call i32 @prepare_to_wait_event(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call47 = call zeroext i1 @kthread_should_stop() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool52.not = icmp eq i32 %call69, 0
  %8 = select i1 %call47, i1 %tobool52.not, i1 false
  %__ret43.1 = select i1 %8, i32 1, i32 %call69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret43.1)
  %tobool58.not = icmp eq i32 %__ret43.1, 0
  %9 = select i1 %call47, i1 true, i1 %tobool58.not
  br i1 %9, label %cleanup.for.end_crit_edge, label %cleanup.if.end65_crit_edge

cleanup.if.end65_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then42.for.end_crit_edge
  call void @finish_wait(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end65.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end72

if.end72:                                         ; preds = %__out, %if.then22.if.end72_crit_edge
  %call74 = call zeroext i1 @kthread_should_stop() #14
  br label %if.end78

if.end78:                                         ; preds = %if.end72, %if.end20.if.end78_crit_edge
  %10 = call i32 @llvm.read_register.i32(metadata !680) #14
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end78.if.end.i_crit_edge

if.end78.if.end.i_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  call void @debug_check_no_locks_held() #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end78.if.end.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.210, i32 noundef 57) #14
  %16 = call i32 @llvm.read_register.i32(metadata !680) #14
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %20 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !693

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %19) #14
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !695

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #14
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %call9 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call9, label %try_to_freeze.exit.do.body80_crit_edge, label %try_to_freeze.exit.while.body_crit_edge

try_to_freeze.exit.while.body_crit_edge:          ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

try_to_freeze.exit.do.body80_crit_edge:           ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body80

do.body80:                                        ; preds = %try_to_freeze.exit.do.body80_crit_edge, %do.end8.do.body80_crit_edge
  %ret.0.lcssa = phi i32 [ -11, %do.end8.do.body80_crit_edge ], [ %ret.2, %try_to_freeze.exit.do.body80_crit_edge ]
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp81 = icmp ugt i32 %21, 1
  br i1 %cmp81, label %do.body83, label %do.body80.do.end103_crit_edge

do.body80.do.end103_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end103

do.body83:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_kthread.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_kthread, %if.then95)) #14
          to label %do.end103 [label %if.then95], !srcloc !690

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %dev97 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_kthread.__UNIQUE_ID_ddebug503, ptr noundef %dev97, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.206) #14
  br label %do.end103

do.end103:                                        ; preds = %if.then95, %do.body83, %do.body80.do.end103_crit_edge
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_read_cmv_e4(ptr noundef %sc, i8 noundef zeroext %size, i16 noundef zeroext %group, i16 noundef zeroext %address, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %data) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = and i8 %size, 15
  %conv1 = zext i8 %0 to i16
  %call = tail call fastcc i32 @uea_cmv_e4(ptr noundef %sc, i16 noundef zeroext %conv1, i16 noundef zeroext %group, i16 noundef zeroext %address, i16 noundef zeroext %offset, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %call) #17
  br label %if.end8

if.else:                                          ; preds = %entry
  %data3 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 9
  %3 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data3, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %size)
  %cmp5 = icmp ugt i8 %size, 2
  br i1 %cmp5, label %if.then7, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %data1 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 10
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data1, align 4
  %add.ptr = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %add.ptr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else.if.end8_crit_edge, %do.end
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_request(ptr nocapture noundef readonly %sc, i16 noundef zeroext %value, i16 noundef zeroext %index, i16 noundef zeroext %size, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %size to i32
  %call = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %conv, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call, null
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %call4 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef nonnull %call, i16 noundef zeroext %size, i32 noundef 1000) #14
  tail call void @kfree(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.90, i32 noundef %call4) #17
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %conv)
  %cmp14.not = icmp eq i32 %call4, %conv
  br i1 %cmp14.not, label %if.end12.cleanup_crit_edge, label %do.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.93, i32 noundef %call4, i32 noundef %conv) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end12.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %call4, %do.end9 ], [ -5, %do.end19 ], [ -12, %do.end ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uea_set_bulk_timeout(ptr nocapture noundef readonly %sc, i32 noundef %dsrate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 3
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %modem_index = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 2
  %2 = ptrtoint ptr %modem_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modem_index, align 4
  %arrayidx = getelementptr [4 x i32], ptr @altsetting, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %dsrate3 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22, i32 0, i32 5
  %6 = ptrtoint ptr %dsrate3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsrate3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %dsrate)
  %cmp4 = icmp eq i32 %7, %dsrate
  br i1 %cmp4, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %dsrate)
  %cmp5 = icmp ugt i32 %dsrate, 1048576
  %conv = zext i1 %cmp5 to i16
  %call = tail call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 17, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null)
  %8 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %conv6 = zext i1 %cmp5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  %cond9 = select i1 %cmp7, ptr @.str.97, ptr @.str.98
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %conv6, ptr noundef nonnull %cond9) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_cmv_e4(ptr noundef %sc, i16 noundef zeroext %function, i16 noundef zeroext %group, i16 noundef zeroext %address, i16 noundef zeroext %offset, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  %cmv = alloca %struct.cmv_e4, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmv) #14
  %0 = getelementptr inbounds %struct.cmv_e4, ptr %cmv, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmv_e4, ptr %cmv, i32 0, i32 2
  %2 = getelementptr inbounds %struct.cmv_e4, ptr %cmv, i32 0, i32 3
  %3 = getelementptr inbounds %struct.cmv_e4, ptr %cmv, i32 0, i32 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %do.body1, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_cmv_e4.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_cmv_e4, %if.then4)) #14
          to label %do.end7 [label %if.then4], !srcloc !690

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_cmv_e4.__UNIQUE_ID_ddebug485, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.83) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.body1, %entry.do.end7_crit_edge
  %7 = getelementptr inbounds i8, ptr %cmv, i32 12
  %8 = call ptr @memset(ptr %7, i32 0, i32 20)
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp9 = icmp ugt i32 %9, 1
  br i1 %cmp9, label %do.body11, label %do.end7.do.end36_crit_edge

do.end7.do.end36_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36

do.body11:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_cmv_e4.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_cmv_e4, %if.then23)) #14
          to label %do.end36 [label %if.then23], !srcloc !690

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = lshr i16 %function, 4
  %13 = and i16 %12, 15
  %and = zext i16 %13 to i32
  %conv28 = zext i16 %group to i32
  %conv29 = zext i16 %address to i32
  %conv30 = zext i16 %offset to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_cmv_e4.__UNIQUE_ID_ddebug486, ptr noundef %dev25, ptr noundef nonnull @.str.84, i32 noundef 0, i32 noundef %and, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %conv30, i32 noundef %data) #14
  br label %do.end36

do.end36:                                         ; preds = %if.then23, %do.body11, %do.end7.do.end36_crit_edge
  %14 = or i16 %function, 16
  %cmv_dsc = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12
  %15 = ptrtoint ptr %cmv_dsc to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %cmv_dsc, align 4
  %offset41 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 1
  %16 = ptrtoint ptr %offset41 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %offset, ptr %offset41, align 2
  %address43 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 2
  %17 = ptrtoint ptr %address43 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %address, ptr %address43, align 4
  %group45 = getelementptr inbounds %struct.cmv_dsc_e4, ptr %cmv_dsc, i32 0, i32 3
  %18 = ptrtoint ptr %group45 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %group, ptr %group45, align 2
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %function, ptr %0, align 2
  %20 = ptrtoint ptr %cmv to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %group, ptr %cmv, align 2
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %address, ptr %2, align 2
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %offset, ptr %1, align 2
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %data, ptr %3, align 2
  %call46 = call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 44, i16 noundef zeroext 32718, i16 noundef zeroext 32, ptr noundef nonnull %cmv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end36.cleanup_crit_edge, label %if.end50

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end50:                                         ; preds = %do.end36
  %call51 = call fastcc i32 @wait_cmv_ack(ptr noundef %sc)
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp53 = icmp ugt i32 %24, 1
  br i1 %cmp53, label %do.body56, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_cmv_e4.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_cmv_e4, %if.then68)) #14
          to label %cleanup [label %if.then68], !srcloc !690

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  %dev70 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_cmv_e4.__UNIQUE_ID_ddebug487, ptr noundef %dev70, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.83) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body56, %if.end50.cleanup_crit_edge, %do.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %do.end36.cleanup_crit_edge ], [ %call51, %if.then68 ], [ %call51, %if.end50.cleanup_crit_edge ], [ %call51, %do.body56 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmv) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_cmv_ack(ptr noundef %sc) unnamed_addr #9 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1085) #14
  %cmv_ack = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 11
  %0 = ptrtoint ptr %cmv_ack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmv_ack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.end, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

lor.end:                                          ; preds = %entry
  %call4 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call4, label %lor.end.if.end45_crit_edge, label %if.then12

lor.end.if.end45_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then12:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %sync_q = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 7
  %call15116 = call i32 @prepare_to_wait_event(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %3 = ptrtoint ptr %cmv_ack to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmv_ack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool18.not117 = icmp eq i32 %4, 0
  br i1 %tobool18.not117, label %if.then12.lor.end21_crit_edge, label %if.then12.for.end_crit_edge

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then12.lor.end21_crit_edge:                    ; preds = %if.then12
  br label %lor.end21

lor.end21.thread:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool26.not92 = icmp eq i32 %call42, 0
  %spec.select135 = select i1 %tobool26.not92, i32 1, i32 %call42
  br label %for.end

lor.end21:                                        ; preds = %cleanup.lor.end21_crit_edge, %if.then12.lor.end21_crit_edge
  %call15119 = phi i32 [ %call15, %cleanup.lor.end21_crit_edge ], [ %call15116, %if.then12.lor.end21_crit_edge ]
  %__ret13.0118 = phi i32 [ %call42, %cleanup.lor.end21_crit_edge ], [ 300, %if.then12.lor.end21_crit_edge ]
  %call20 = call zeroext i1 @kthread_should_stop() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.0118)
  %tobool26.not.le = icmp eq i32 %__ret13.0118, 0
  br i1 %call20, label %for.end.loopexit.split.loop.exit111, label %5

5:                                                ; preds = %lor.end21
  br i1 %tobool26.not.le, label %.for.end_crit_edge, label %if.end38

.for.end_crit_edge:                               ; preds = %5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end38:                                         ; preds = %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15119)
  %tobool39.not = icmp eq i32 %call15119, 0
  br i1 %tobool39.not, label %cleanup, label %if.end38.__out_crit_edge

if.end38.__out_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end38
  %call42 = call i32 @schedule_timeout(i32 noundef %__ret13.0118) #14
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %6 = ptrtoint ptr %cmv_ack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmv_ack, align 4
  %tobool18.not = icmp eq i32 %7, 0
  br i1 %tobool18.not, label %cleanup.lor.end21_crit_edge, label %lor.end21.thread

cleanup.lor.end21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end21

for.end.loopexit.split.loop.exit111:              ; preds = %lor.end21
  call void @__sanitizer_cov_trace_pc() #16
  %spec.store.select75.le = select i1 %tobool26.not.le, i32 1, i32 %__ret13.0118
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit111, %.for.end_crit_edge, %lor.end21.thread, %if.then12.for.end_crit_edge
  %__ret13.2.ph = phi i32 [ %spec.store.select75.le, %for.end.loopexit.split.loop.exit111 ], [ 300, %if.then12.for.end_crit_edge ], [ %spec.select135, %lor.end21.thread ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end38.__out_crit_edge
  %__ret13.298 = phi i32 [ %__ret13.2.ph, %for.end ], [ %call15119, %if.end38.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end45

if.end45:                                         ; preds = %__out, %lor.end.if.end45_crit_edge, %entry.if.end45_crit_edge
  %__ret.1 = phi i32 [ 300, %lor.end.if.end45_crit_edge ], [ %__ret13.298, %__out ], [ 300, %entry.if.end45_crit_edge ]
  %call47 = call zeroext i1 @kthread_should_stop() #14
  %spec.select = select i1 %call47, i32 -19, i32 %__ret.1
  %8 = ptrtoint ptr %cmv_ack to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmv_ack, align 4
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end45.do.end69_crit_edge, label %do.body54

if.end45.do.end69_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69

do.body54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_cmv_ack.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_cmv_ack, %if.then62)) #14
          to label %do.end69 [label %if.then62], !srcloc !690

if.then62:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %call63 = call i32 @jiffies_to_msecs(i32 noundef %spec.select) #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_cmv_ack.__UNIQUE_ID_ddebug481, ptr noundef %dev, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef %call63) #14
  br label %do.end69

do.end69:                                         ; preds = %if.then62, %do.body54, %if.end45.do.end69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp70 = icmp slt i32 %spec.select, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp73 = icmp eq i32 %spec.select, 0
  %cond = select i1 %cmp73, i32 -110, i32 0
  %retval.0 = select i1 %cmp70, i32 %spec.select, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_write_cmv_e4(ptr noundef %sc, i16 noundef zeroext %group, i16 noundef zeroext %address, i16 noundef zeroext %offset, i32 noundef %data) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @uea_cmv_e4(ptr noundef %sc, i16 noundef zeroext 65, i16 noundef zeroext %group, i16 noundef zeroext %address, i16 noundef zeroext %offset, i32 noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.108, i32 noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @request_cmvs(ptr nocapture noundef readonly %sc, ptr nocapture noundef writeonly %cmvs, ptr noundef %fw, ptr nocapture noundef %ver) unnamed_addr #2 align 64 {
entry:
  %file_arr.i = alloca [10 x i8], align 1
  %cmv_name = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %cmv_name) #14
  %0 = getelementptr inbounds i8, ptr %cmv_name, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %file_arr.i) #14
  %2 = call ptr @memcpy(ptr %file_arr.i, ptr @__const.cmvs_file_name.file_arr, i32 10)
  tail call void @kernel_param_lock(ptr noundef null) #14
  %modem_index.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 2
  %3 = ptrtoint ptr %modem_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %modem_index.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @cmv_file, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %if.then.i, label %entry.cmvs_file_name.exit_crit_edge

entry.cmvs_file_name.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cmvs_file_name.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %driver_info.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 3
  %7 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_info.i, align 4
  %and.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %switch.selectcmp.i = icmp eq i32 %and.i, 4
  %switch.select.i = select i1 %switch.selectcmp.i, i8 52, i8 101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %switch.selectcmp30.i = icmp eq i32 %and.i, 0
  %switch.select31.i = select i1 %switch.selectcmp30.i, i8 57, i8 %switch.select.i
  %arrayidx8.i = getelementptr inbounds [10 x i8], ptr %file_arr.i, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %switch.select31.i, ptr %arrayidx8.i, align 1
  %annex.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 4
  %10 = ptrtoint ptr %annex.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %annex.i, align 4
  %and12.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  %conv.i = select i1 %tobool.not.i, i8 112, i8 105
  %arrayidx13.i = getelementptr inbounds [10 x i8], ptr %file_arr.i, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %arrayidx13.i, align 1
  br label %cmvs_file_name.exit

cmvs_file_name.exit:                              ; preds = %if.then.i, %entry.cmvs_file_name.exit_crit_edge
  %file.0.i = phi ptr [ %file_arr.i, %if.then.i ], [ %6, %entry.cmvs_file_name.exit_crit_edge ]
  %13 = call ptr @memcpy(ptr %cmv_name, ptr @.str.122, i32 12)
  %call18.i = call i32 @strlcat(ptr noundef nonnull %cmv_name, ptr noundef nonnull %file.0.i, i32 noundef 30) #14
  %call22.i = call i32 @strlcat(ptr noundef nonnull %cmv_name, ptr noundef nonnull @.str.123, i32 noundef 30) #14
  call void @kernel_param_unlock(ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %file_arr.i) #14
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  %call = call i32 @request_firmware(ptr noundef %fw, ptr noundef nonnull %cmv_name, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %cmvs_file_name.exit
  %16 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp2 = icmp eq i32 %17, 1
  %18 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  br i1 %cmp2, label %do.end, label %do.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.110, ptr noundef nonnull %cmv_name) #17
  %call7 = call fastcc i32 @request_cmvs_old(ptr noundef %sc, ptr noundef %cmvs, ptr noundef %fw)
  br label %cleanup

do.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.113, ptr noundef nonnull %cmv_name, i32 noundef %call) #17
  br label %cleanup

if.end14:                                         ; preds = %cmvs_file_name.exit
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %data16 = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp17 = icmp slt i32 %23, 4
  br i1 %cmp17, label %if.end14.if.then20_crit_edge, label %lor.lhs.false

if.end14.if.then20_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end14
  %call18 = call i32 @strncmp(ptr noundef %25, ptr noundef nonnull dereferenceable(5) @.str.115, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end31, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end14.if.then20_crit_edge
  %26 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp21 = icmp eq i32 %27, 1
  br i1 %cmp21, label %do.end25, label %if.then20.do.end50_crit_edge

if.then20.do.end50_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50

do.end25:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull @.str.117, ptr noundef nonnull %cmv_name) #17
  %30 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %31) #14
  %call29 = call fastcc i32 @request_cmvs_old(ptr noundef %sc, ptr noundef %cmvs, ptr noundef %fw)
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %ver, align 4
  %sub = add nsw i32 %23, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp32 = icmp ult i32 %sub, 5
  br i1 %cmp32, label %if.end31.do.end50_crit_edge, label %if.end34

if.end31.do.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50

if.end34:                                         ; preds = %if.end31
  %add.ptr = getelementptr i8, ptr %25, i32 4
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34) #14
  %add.ptr36 = getelementptr i8, ptr %25, i32 8
  %sub37 = add nsw i32 %23, -8
  %call38 = call i32 @crc32_be(i32 noundef 0, ptr noundef %add.ptr36, i32 noundef %sub37) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call38, i32 %35)
  %cmp39.not = icmp eq i32 %call38, %35
  br i1 %cmp39.not, label %if.end41, label %if.end34.do.end50_crit_edge

if.end34.do.end50_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50

if.end41:                                         ; preds = %if.end34
  %36 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr36, align 1
  %conv = zext i8 %37 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %add = or i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub37, i32 %add)
  %cmp42.not = icmp eq i32 %sub37, %add
  br i1 %cmp42.not, label %if.end45, label %if.end41.do.end50_crit_edge

if.end41.do.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr46 = getelementptr i8, ptr %25, i32 9
  %38 = ptrtoint ptr %cmvs to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr46, ptr %cmvs, align 4
  %39 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr36, align 1
  %conv47 = zext i8 %40 to i32
  br label %cleanup

do.end50:                                         ; preds = %if.end41.do.end50_crit_edge, %if.end34.do.end50_crit_edge, %if.end31.do.end50_crit_edge, %if.then20.do.end50_crit_edge
  %41 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sc, align 4
  %dev52 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.120, ptr noundef nonnull %cmv_name) #17
  %43 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %44) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end45, %do.end25, %do.end10, %do.end
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call, %do.end10 ], [ %call29, %do.end25 ], [ -84, %do.end50 ], [ %conv47, %if.end45 ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %cmv_name) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @request_cmvs_old(ptr nocapture noundef readonly %sc, ptr nocapture noundef writeonly %cmvs, ptr noundef %fw) unnamed_addr #2 align 64 {
entry:
  %file_arr.i = alloca [10 x i8], align 1
  %cmv_name = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %cmv_name) #14
  %0 = getelementptr inbounds i8, ptr %cmv_name, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %file_arr.i) #14
  %2 = call ptr @memcpy(ptr %file_arr.i, ptr @__const.cmvs_file_name.file_arr, i32 10)
  tail call void @kernel_param_lock(ptr noundef null) #14
  %modem_index.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 2
  %3 = ptrtoint ptr %modem_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %modem_index.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @cmv_file, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %if.then.i, label %entry.cmvs_file_name.exit_crit_edge

entry.cmvs_file_name.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cmvs_file_name.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %driver_info.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 3
  %7 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_info.i, align 4
  %and.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %switch.selectcmp.i = icmp eq i32 %and.i, 4
  %switch.select.i = select i1 %switch.selectcmp.i, i8 52, i8 101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %switch.selectcmp30.i = icmp eq i32 %and.i, 0
  %switch.select31.i = select i1 %switch.selectcmp30.i, i8 57, i8 %switch.select.i
  %arrayidx8.i = getelementptr inbounds [10 x i8], ptr %file_arr.i, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %switch.select31.i, ptr %arrayidx8.i, align 1
  %annex.i = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 4
  %10 = ptrtoint ptr %annex.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %annex.i, align 4
  %and12.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  %conv.i = select i1 %tobool.not.i, i8 112, i8 105
  %arrayidx13.i = getelementptr inbounds [10 x i8], ptr %file_arr.i, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %arrayidx13.i, align 1
  br label %cmvs_file_name.exit

cmvs_file_name.exit:                              ; preds = %if.then.i, %entry.cmvs_file_name.exit_crit_edge
  %file.0.i = phi ptr [ %file_arr.i, %if.then.i ], [ %6, %entry.cmvs_file_name.exit_crit_edge ]
  %13 = call ptr @memcpy(ptr %cmv_name, ptr @.str.122, i32 12)
  %call18.i = call i32 @strlcat(ptr noundef nonnull %cmv_name, ptr noundef nonnull %file.0.i, i32 noundef 30) #14
  call void @kernel_param_unlock(ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %file_arr.i) #14
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  %call = call i32 @request_firmware(ptr noundef %fw, ptr noundef nonnull %cmv_name, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %cmvs_file_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.113, ptr noundef nonnull %cmv_name, i32 noundef %call) #17
  br label %cleanup

if.end:                                           ; preds = %cmvs_file_name.exit
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  %data5 = getelementptr inbounds %struct.firmware, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data5, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp7 = icmp slt i32 %23, 1
  br i1 %cmp7, label %if.end.do.end17_crit_edge, label %if.end9

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

if.end9:                                          ; preds = %if.end
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %21, align 1
  %conv = zext i8 %25 to i32
  %mul = mul nuw nsw i32 %conv, 10
  %add = or i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add)
  %cmp10.not = icmp eq i32 %23, %add
  br i1 %cmp10.not, label %if.end13, label %if.end9.do.end17_crit_edge

if.end9.do.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %21, i32 1
  %26 = ptrtoint ptr %cmvs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %cmvs, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %21, align 1
  %conv14 = zext i8 %28 to i32
  br label %cleanup

do.end17:                                         ; preds = %if.end9.do.end17_crit_edge, %if.end.do.end17_crit_edge
  %29 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sc, align 4
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.120, ptr noundef nonnull %cmv_name) #17
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %32) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end13, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -84, %do.end17 ], [ %conv14, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %cmv_name) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @request_dsp(ptr noundef %sc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 3
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %and = and i32 %1, 15
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %and, label %if.else14 [
    i32 4, label %if.then
    i32 0, label %if.then7
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %annex = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 4
  %3 = ptrtoint ptr %annex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %annex, align 4
  %and1 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %.str.136..str.135 = select i1 %tobool.not, ptr @.str.136, ptr @.str.135
  br label %if.end22

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %annex8 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 4
  %5 = ptrtoint ptr %annex8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %annex8, align 4
  %and9 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %.str.138..str.137 = select i1 %tobool10.not, ptr @.str.138, ptr @.str.137
  br label %if.end22

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %annex15 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 4
  %7 = ptrtoint ptr %annex15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %annex15, align 4
  %and16 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %.str.140..str.139 = select i1 %tobool17.not, ptr @.str.140, ptr @.str.139
  br label %if.end22

if.end22:                                         ; preds = %if.else14, %if.then7, %if.then
  %dsp_name.0 = phi ptr [ %.str.136..str.135, %if.then ], [ %.str.138..str.137, %if.then7 ], [ %.str.140..str.139, %if.else14 ]
  %dsp_firm = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 16
  %9 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  %call = tail call i32 @request_firmware(ptr noundef %dsp_firm, ptr noundef nonnull %dsp_name.0, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp23 = icmp slt i32 %call, 0
  br i1 %cmp23, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sc, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.113, ptr noundef nonnull %dsp_name.0, i32 noundef %call) #17
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %13 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_info, align 4
  %and29 = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 4
  %15 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dsp_firm, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  br i1 %cmp30, label %if.then31, label %if.else35

if.then31:                                        ; preds = %if.end27
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %20)
  %cmp.i = icmp ult i32 %20, 1280
  br i1 %cmp.i, label %if.then31.do.end46_crit_edge, label %if.end.i

if.then31.do.end46_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

if.end.i:                                         ; preds = %if.then31
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.144, ptr noundef %18) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call5.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.145, ptr noundef %18) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %land.lhs.true.i.do.end46_crit_edge

land.lhs.true.i.do.end46_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %conv37.i = sext i32 %20 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.i
  %sum.084.i = phi i32 [ 1280, %if.end8.i ], [ %sum.3.i, %for.inc.i.for.body.i_crit_edge ]
  %i.083.i = phi i32 [ 0, %if.end8.i ], [ %inc46.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.l1_code, ptr %18, i32 0, i32 1, i32 %i.083.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %22)
  %cmp10.i = icmp ugt i8 %22, 48
  br i1 %cmp10.i, label %for.body.i.for.inc.i_crit_edge, label %do.body.preheader.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

do.body.preheader.i:                              ; preds = %for.body.i
  %23 = zext i8 %22 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %indvars.iv.i = phi i32 [ %23, %do.body.preheader.i ], [ %indvars.iv.next.i, %do.cond.i.do.body.i_crit_edge ]
  %sum.1.i = phi i32 [ %sum.084.i, %do.body.preheader.i ], [ %add.i, %do.cond.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %indvars.iv.i)
  %exitcond.i = icmp eq i32 %indvars.iv.i, 49
  br i1 %exitcond.i, label %do.body.i.do.end46_crit_edge, label %if.end18.i

do.body.i.do.end46_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

if.end18.i:                                       ; preds = %do.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %arrayidx19.i = getelementptr %struct.l1_code, ptr %18, i32 0, i32 2, i32 %indvars.iv.i
  %add.ptr.i = getelementptr %struct.block_index, ptr %arrayidx19.i, i32 1
  %sub.ptr.lhs.cast20.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub22.i = sub i32 %sub.ptr.lhs.cast20.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub22.i, i32 %20)
  %cmp23.not.i = icmp slt i32 %sub.ptr.sub22.i, %20
  br i1 %cmp23.not.i, label %if.end26.i, label %if.end18.i.do.end46_crit_edge

if.end18.i.do.end46_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

if.end26.i:                                       ; preds = %if.end18.i
  %PageNumber.i = getelementptr %struct.l1_code, ptr %18, i32 0, i32 2, i32 %indvars.iv.i, i32 6
  %24 = ptrtoint ptr %PageNumber.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %PageNumber.i, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #14
  %conv27.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.083.i, i32 %conv27.i)
  %cmp28.not.i = icmp eq i32 %i.083.i, %conv27.i
  br i1 %cmp28.not.i, label %cleanup.i, label %if.end26.i.do.end46_crit_edge

if.end26.i.do.end46_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

cleanup.i:                                        ; preds = %if.end26.i
  %PageSize.i = getelementptr %struct.l1_code, ptr %18, i32 0, i32 2, i32 %indvars.iv.i, i32 3
  %27 = ptrtoint ptr %PageSize.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %PageSize.i, align 1
  %29 = and i32 %28, -129
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  %mul.i = shl i32 %30, 2
  %conv32.i = zext i32 %mul.i to i64
  %31 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %arrayidx19.i, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %conv35.i = zext i32 %33 to i64
  %add36.i = add nuw nsw i64 %conv32.i, %conv35.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add36.i, i64 %conv37.i)
  %cmp38.not.i = icmp ugt i64 %add36.i, %conv37.i
  br i1 %cmp38.not.i, label %cleanup.i.do.end46_crit_edge, label %do.cond.i

cleanup.i.do.end46_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

do.cond.i:                                        ; preds = %cleanup.i
  %add.i = add i32 %mul.i, %sum.1.i
  %NotLastBlock.i = getelementptr %struct.l1_code, ptr %18, i32 0, i32 2, i32 %indvars.iv.i, i32 1
  %34 = ptrtoint ptr %NotLastBlock.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %NotLastBlock.i, align 1
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %do.cond.i.for.inc.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.cond.i.for.inc.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.cond.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %sum.3.i = phi i32 [ %sum.084.i, %for.body.i.for.inc.i_crit_edge ], [ %add.i, %do.cond.i.for.inc.i_crit_edge ]
  %inc46.i = add nuw nsw i32 %i.083.i, 1
  %exitcond85.not.i = icmp eq i32 %inc46.i, 88
  br i1 %exitcond85.not.i, label %if.end41, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.else35:                                        ; preds = %if.end27
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %18, align 1
  %conv.i = zext i8 %37 to i32
  %mul.i73 = shl nuw nsw i32 %conv.i, 2
  %add.i74 = or i32 %mul.i73, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i74, i32 %20)
  %cmp.i75 = icmp ugt i32 %add.i74, %20
  br i1 %cmp.i75, label %if.else35.do.end46_crit_edge, label %for.cond.preheader.i

if.else35.do.end46_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

for.cond.preheader.i:                             ; preds = %if.else35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp373.not.i = icmp eq i8 %37, 0
  br i1 %cmp373.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i77_crit_edge

for.cond.preheader.i.for.body.i77_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i77

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i77:                                     ; preds = %for.inc38.i.for.body.i77_crit_edge, %for.cond.preheader.i.for.body.i77_crit_edge
  %p.075.i = phi i32 [ %add5.i, %for.inc38.i.for.body.i77_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i77_crit_edge ]
  %i.074.i = phi i32 [ %inc39.i, %for.inc38.i.for.body.i77_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i77_crit_edge ]
  %add.ptr.i76 = getelementptr i8, ptr %18, i32 %p.075.i
  %38 = ptrtoint ptr %add.ptr.i76 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %add.ptr.i76, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #14
  %add5.i = add nuw nsw i32 %p.075.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp6.i = icmp eq i32 %39, 0
  br i1 %cmp6.i, label %for.body.i77.for.inc38.i_crit_edge, label %if.end9.i

for.body.i77.for.inc38.i_crit_edge:               ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc38.i

if.end9.i:                                        ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %20)
  %cmp10.not.i = icmp ult i32 %40, %20
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end9.i.do.end46_crit_edge

if.end9.i.do.end46_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

if.end13.i:                                       ; preds = %if.end9.i
  %add.ptr14.i = getelementptr i8, ptr %18, i32 %40
  %41 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr14.i, align 1
  %conv17.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp1870.not.i = icmp eq i8 %42, 0
  br i1 %cmp1870.not.i, label %if.end13.i.for.inc38.i_crit_edge, label %for.body20.preheader.i

if.end13.i.for.inc38.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc38.i

for.body20.preheader.i:                           ; preds = %if.end13.i
  %add15.i = add nuw i32 %40, 1
  br label %for.body20.i

for.cond16.i:                                     ; preds = %if.end25.i
  %inc.i = add nuw nsw i32 %j.071.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv17.i
  br i1 %exitcond.not.i, label %for.cond16.i.for.inc38.i_crit_edge, label %for.cond16.i.for.body20.i_crit_edge

for.cond16.i.for.body20.i_crit_edge:              ; preds = %for.cond16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20.i

for.cond16.i.for.inc38.i_crit_edge:               ; preds = %for.cond16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc38.i

for.body20.i:                                     ; preds = %for.cond16.i.for.body20.i_crit_edge, %for.body20.preheader.i
  %pp.072.i = phi i32 [ %add31.i, %for.cond16.i.for.body20.i_crit_edge ], [ %add15.i, %for.body20.preheader.i ]
  %j.071.i = phi i32 [ %inc.i, %for.cond16.i.for.body20.i_crit_edge ], [ 0, %for.body20.preheader.i ]
  %add21.i = add i32 %pp.072.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %20)
  %cmp22.i = icmp ugt i32 %add21.i, %20
  br i1 %cmp22.i, label %for.body20.i.do.end46_crit_edge, label %if.end25.i

for.body20.i.do.end46_crit_edge:                  ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

if.end25.i:                                       ; preds = %for.body20.i
  %add26.i = add i32 %pp.072.i, 2
  %add.ptr27.i = getelementptr i8, ptr %18, i32 %add26.i
  %43 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %add.ptr27.i, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #14
  %conv30.i = zext i16 %45 to i32
  %add31.i = add i32 %add21.i, %conv30.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add31.i, i32 %20)
  %cmp32.i = icmp ugt i32 %add31.i, %20
  br i1 %cmp32.i, label %if.end25.i.do.end46_crit_edge, label %for.cond16.i

if.end25.i.do.end46_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

for.inc38.i:                                      ; preds = %for.cond16.i.for.inc38.i_crit_edge, %if.end13.i.for.inc38.i_crit_edge, %for.body.i77.for.inc38.i_crit_edge
  %inc39.i = add nuw nsw i32 %i.074.i, 1
  %exitcond78.not.i = icmp eq i32 %inc39.i, %conv.i
  br i1 %exitcond78.not.i, label %for.inc38.i.cleanup_crit_edge, label %for.inc38.i.for.body.i77_crit_edge

for.inc38.i.for.body.i77_crit_edge:               ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i77

for.inc38.i.cleanup_crit_edge:                    ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end41:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sum.3.i, i32 %20)
  %cmp47.i.not = icmp eq i32 %sum.3.i, %20
  br i1 %cmp47.i.not, label %if.end41.cleanup_crit_edge, label %if.end41.do.end46_crit_edge

if.end41.do.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end46:                                         ; preds = %if.end41.do.end46_crit_edge, %if.end25.i.do.end46_crit_edge, %for.body20.i.do.end46_crit_edge, %if.end9.i.do.end46_crit_edge, %if.else35.do.end46_crit_edge, %cleanup.i.do.end46_crit_edge, %if.end26.i.do.end46_crit_edge, %if.end18.i.do.end46_crit_edge, %do.body.i.do.end46_crit_edge, %land.lhs.true.i.do.end46_crit_edge, %if.then31.do.end46_crit_edge
  %46 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sc, align 4
  %dev48 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.120, ptr noundef nonnull %dsp_name.0) #17
  %48 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dsp_firm, align 4
  tail call void @release_firmware(ptr noundef %49) #14
  %50 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %dsp_firm, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.end41.cleanup_crit_edge, %for.inc38.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -84, %do.end46 ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %for.inc38.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__uea_load_page_e4(ptr nocapture noundef readonly %sc, i8 noundef zeroext %pageno, i32 noundef %boot) unnamed_addr #2 align 64 {
entry:
  %bi = alloca %struct.block_info_e4, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %bi) #14
  %0 = getelementptr inbounds %struct.block_info_e4, ptr %bi, i32 0, i32 1
  %1 = getelementptr inbounds %struct.block_info_e4, ptr %bi, i32 0, i32 2
  %2 = getelementptr inbounds %struct.block_info_e4, ptr %bi, i32 0, i32 3
  %3 = getelementptr inbounds %struct.block_info_e4, ptr %bi, i32 0, i32 4
  %4 = getelementptr inbounds %struct.block_info_e4, ptr %bi, i32 0, i32 5
  %dsp_firm = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 16
  %5 = getelementptr inbounds i8, ptr %bi, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 2
  %7 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsp_firm, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %idxprom = zext i8 %pageno to i32
  %arrayidx = getelementptr %struct.l1_code, ptr %10, i32 0, i32 1, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %bi to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -21555, ptr %bi, align 2
  %conv = trunc i32 %boot to i8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %0, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %pageno, ptr %1, align 1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %4, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond26.do.body_crit_edge, %entry
  %blockno.0 = phi i8 [ %12, %entry ], [ %inc, %do.cond26.do.body_crit_edge ]
  %idxprom1 = zext i8 %blockno.0 to i32
  %arrayidx2 = getelementptr %struct.l1_code, ptr %10, i32 0, i32 2, i32 %idxprom1
  %PageSize = getelementptr %struct.l1_code, ptr %10, i32 0, i32 2, i32 %idxprom1, i32 3
  %17 = ptrtoint ptr %PageSize to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %PageSize, align 1
  %19 = and i32 %18, -129
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %mul = shl i32 %20, 2
  %21 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dsp_firm, align 4
  %data4 = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data4, align 4
  %25 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx2, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %add.ptr = getelementptr i8, ptr %24, i32 %27
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %mul, ptr %2, align 2
  %PageAddress = getelementptr %struct.l1_code, ptr %10, i32 0, i32 2, i32 %idxprom1, i32 4
  %29 = ptrtoint ptr %PageAddress to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %PageAddress, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %3, align 2
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not = icmp eq i32 %33, 0
  br i1 %cmp.not, label %do.body.do.end16_crit_edge, label %do.body7

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__uea_load_page_e4.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__uea_load_page_e4, %if.then10)) #14
          to label %do.end16 [label %if.then10], !srcloc !690

if.then10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %PageAddress to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %PageAddress, align 1
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__uea_load_page_e4.__UNIQUE_ID_ddebug477, ptr noundef %dev, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.146, i32 noundef %idxprom1, i32 noundef %idxprom, i32 noundef %mul, i32 noundef %38) #14
  br label %do.end16

do.end16:                                         ; preds = %if.then10, %do.body7, %do.body.do.end16_crit_edge
  %call17 = call fastcc i32 @uea_idma_write(ptr noundef %sc, ptr noundef nonnull %bi, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %do.end16.do.end31_crit_edge

do.end16.do.end31_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

if.end20:                                         ; preds = %do.end16
  %call21 = call fastcc i32 @uea_idma_write(ptr noundef %sc, ptr noundef %add.ptr, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.cond26, label %if.end20.do.end31_crit_edge

if.end20.do.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

do.cond26:                                        ; preds = %if.end20
  %inc = add i8 %blockno.0, 1
  %NotLastBlock = getelementptr %struct.l1_code, ptr %10, i32 0, i32 2, i32 %idxprom1, i32 1
  %39 = ptrtoint ptr %NotLastBlock to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %NotLastBlock, align 1
  %tobool27.not = icmp eq i32 %40, 0
  br i1 %tobool27.not, label %do.cond26.cleanup35_crit_edge, label %do.cond26.do.body_crit_edge

do.cond26.do.body_crit_edge:                      ; preds = %do.cond26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.cond26.cleanup35_crit_edge:                    ; preds = %do.cond26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup35

do.end31:                                         ; preds = %if.end20.do.end31_crit_edge, %do.end16.do.end31_crit_edge
  %41 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sc, align 4
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.148, i32 noundef %idxprom1) #17
  br label %cleanup35

cleanup35:                                        ; preds = %do.end31, %do.cond26.cleanup35_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %bi) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_idma_write(ptr nocapture noundef readonly %sc, ptr noundef %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %bytes_read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_read) #14
  %0 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bytes_read, align 4, !annotation !691
  %call = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %size, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call, null
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %or = or i32 %shl.i, -1073610752
  %call4 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or, ptr noundef nonnull %call, i32 noundef %size, ptr noundef nonnull %bytes_read, i32 noundef 300) #14
  call void @kfree(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bytes_read, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %size)
  %cmp7.not = icmp eq i32 %6, %size
  br i1 %cmp7.not, label %if.end6.cleanup_crit_edge, label %do.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc, align 4
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.151, i32 noundef %size, i32 noundef %6) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end11 ], [ -12, %do.end ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_read_cmv_e1(ptr noundef %sc, i32 noundef %address, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %data) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext 16, i32 noundef %address, i16 noundef zeroext %offset, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %call) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %data1 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 9
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data1, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext %function, i32 noundef %address, i16 noundef zeroext %offset, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  %cmv = alloca %struct.cmv_e1, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmv) #14
  %0 = getelementptr inbounds %struct.cmv_e1, ptr %cmv, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmv_e1, ptr %cmv, i32 0, i32 2
  %2 = getelementptr inbounds %struct.cmv_e1, ptr %cmv, i32 0, i32 3
  %3 = getelementptr inbounds %struct.cmv_e1, ptr %cmv, i32 0, i32 4
  %4 = getelementptr inbounds %struct.cmv_e1, ptr %cmv, i32 0, i32 5
  %5 = getelementptr inbounds %struct.cmv_e1, ptr %cmv, i32 0, i32 6
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %do.body1, label %entry.do.body8_crit_edge

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_cmv_e1.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_cmv_e1, %if.then4)) #14
          to label %do.body8 [label %if.then4], !srcloc !690

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_cmv_e1.__UNIQUE_ID_ddebug482, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.171) #14
  br label %do.body8

do.body8:                                         ; preds = %if.then4, %do.body1, %entry.do.body8_crit_edge
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp9 = icmp ugt i32 %9, 1
  br i1 %cmp9, label %do.body11, label %do.body8.do.end40_crit_edge

do.body8.do.end40_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end40

do.body11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_cmv_e1.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_cmv_e1, %if.then23)) #14
          to label %do.end40 [label %if.then23], !srcloc !690

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = and i8 %function, 15
  %and = zext i8 %12 to i32
  %shr27 = lshr i32 %address, 8
  %and28 = and i32 %shr27, 255
  %and29 = and i32 %address, 255
  %shr30 = lshr i32 %address, 24
  %shr32 = lshr i32 %address, 16
  %and33 = and i32 %shr32, 255
  %conv34 = zext i16 %offset to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_cmv_e1.__UNIQUE_ID_ddebug483, ptr noundef %dev25, ptr noundef nonnull @.str.172, i32 noundef 1, i32 noundef %and, i32 noundef %and28, i32 noundef %and29, i32 noundef %shr30, i32 noundef %and33, i32 noundef %conv34, i32 noundef %data) #14
  br label %do.end40

do.end40:                                         ; preds = %if.then23, %do.body11, %do.body8.do.end40_crit_edge
  %13 = or i8 %function, 2
  %cmv_dsc = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12
  %14 = ptrtoint ptr %cmv_dsc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %cmv_dsc, align 4
  %idx = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 1
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %idx, align 2
  %inc = add i16 %16, 1
  store i16 %inc, ptr %idx, align 2
  %address46 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 2
  %17 = ptrtoint ptr %address46 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %address, ptr %address46, align 4
  %offset48 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12, i32 0, i32 3
  %18 = ptrtoint ptr %offset48 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %offset, ptr %offset48, align 4
  %19 = ptrtoint ptr %cmv to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 23635, ptr %cmv, align 2
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %0, align 2
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %function, ptr %1, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %inc)
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %2, align 2
  %24 = tail call i32 @llvm.bswap.i32(i32 %address) #14
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %3, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %offset)
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %4, align 2
  %or52 = tail call i32 @llvm.fshl.i32(i32 %data, i32 %data, i32 16)
  %28 = tail call i32 @llvm.bswap.i32(i32 %or52) #14
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %5, align 2
  %call53 = call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 1, i16 noundef zeroext 32718, i16 noundef zeroext 16, ptr noundef nonnull %cmv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end40.cleanup_crit_edge, label %if.end57

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end57:                                         ; preds = %do.end40
  %call58 = call fastcc i32 @wait_cmv_ack(ptr noundef %sc)
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp60 = icmp ugt i32 %30, 1
  br i1 %cmp60, label %do.body63, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_cmv_e1.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_cmv_e1, %if.then75)) #14
          to label %cleanup [label %if.then75], !srcloc !690

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sc, align 4
  %dev77 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_cmv_e1.__UNIQUE_ID_ddebug484, ptr noundef %dev77, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.171) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %do.body63, %if.end57.cleanup_crit_edge, %do.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %do.end40.cleanup_crit_edge ], [ %call58, %if.then75 ], [ %call58, %if.end57.cleanup_crit_edge ], [ %call58, %do.body63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmv) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_write_cmv_e1(ptr noundef %sc, i32 noundef %address, i16 noundef zeroext %offset, i32 noundef %data) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @uea_cmv_e1(ptr noundef %sc, i8 noundef zeroext 17, i32 noundef %address, i16 noundef zeroext %offset, i32 noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.108, i32 noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uea_start_reset(ptr noundef %sc) unnamed_addr #2 align 64 {
entry:
  %zero = alloca i16, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry117 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zero) #14
  %0 = ptrtoint ptr %zero to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %zero, align 2
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %do.body1, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_start_reset.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_start_reset, %if.then4)) #14
          to label %do.end10 [label %if.then4], !srcloc !690

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_start_reset.__UNIQUE_ID_ddebug499, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.207) #14
  br label %do.end10

do.end10:                                         ; preds = %if.then4, %do.body1, %entry.do.end10_crit_edge
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.208) #17
  %booting = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 5
  %6 = ptrtoint ptr %booting to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %booting, align 4
  %cmv_ack = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 11
  %7 = ptrtoint ptr %cmv_ack to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cmv_ack, align 4
  %usbatm = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 1
  %8 = ptrtoint ptr %usbatm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usbatm, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atm_dev, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %do.end10.do.end20_crit_edge, label %if.then15

do.end10.do.end20_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

if.then15:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @atm_dev_signal_change(ptr noundef nonnull %11, i8 noundef zeroext 0) #14
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.end10.do.end20_crit_edge
  %stats = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 22
  %12 = call ptr @memset(ptr %stats, i32 0, i32 72)
  %call21 = tail call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 3, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef null)
  %call22 = tail call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 3, i16 noundef zeroext 6, i16 noundef zeroext 0, ptr noundef null)
  %call23 = tail call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 3, i16 noundef zeroext 7, i16 noundef zeroext 0, ptr noundef null)
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1830) #14
  %call31 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call31, label %do.end20.if.end73_crit_edge, label %if.then43

do.end20.if.end73_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then43:                                        ; preds = %do.end20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %sync_q = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 7
  %call46324 = call i32 @prepare_to_wait_event(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call48325 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call48325, label %if.then43.for.end_crit_edge, label %if.then43.if.end66_crit_edge

if.then43.if.end66_crit_edge:                     ; preds = %if.then43
  br label %if.end66

if.then43.for.end_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end66:                                         ; preds = %cleanup.if.end66_crit_edge, %if.then43.if.end66_crit_edge
  %__ret44.1327 = phi i32 [ %__ret44.1, %cleanup.if.end66_crit_edge ], [ 10, %if.then43.if.end66_crit_edge ]
  %call46326 = phi i32 [ %call46, %cleanup.if.end66_crit_edge ], [ %call46324, %if.then43.if.end66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46326)
  %tobool67.not = icmp eq i32 %call46326, 0
  br i1 %tobool67.not, label %cleanup, label %if.end66.__out_crit_edge

if.end66.__out_crit_edge:                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end66
  %call70 = call i32 @schedule_timeout(i32 noundef %__ret44.1327) #14
  %call46 = call i32 @prepare_to_wait_event(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call48 = call zeroext i1 @kthread_should_stop() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool53.not = icmp eq i32 %call70, 0
  %14 = select i1 %call48, i1 %tobool53.not, i1 false
  %__ret44.1 = select i1 %14, i32 1, i32 %call70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret44.1)
  %tobool59.not = icmp eq i32 %__ret44.1, 0
  %15 = select i1 %call48, i1 true, i1 %tobool59.not
  br i1 %15, label %cleanup.for.end_crit_edge, label %cleanup.if.end66_crit_edge

cleanup.if.end66_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then43.for.end_crit_edge
  %__ret44.1.lcssa = phi i32 [ 10, %if.then43.for.end_crit_edge ], [ %__ret44.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %sync_q, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end66.__out_crit_edge
  %__ret44.2304 = phi i32 [ %__ret44.1.lcssa, %for.end ], [ %call46326, %if.end66.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end73

if.end73:                                         ; preds = %__out, %do.end20.if.end73_crit_edge
  %__ret.1 = phi i32 [ 10, %do.end20.if.end73_crit_edge ], [ %__ret44.2304, %__out ]
  %call75 = call zeroext i1 @kthread_should_stop() #14
  %spec.select = select i1 %call75, i32 -19, i32 %__ret.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp79 = icmp slt i32 %spec.select, 0
  br i1 %cmp79, label %if.end73.cleanup229_crit_edge, label %if.end81

if.end73.cleanup229_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup229

if.end81:                                         ; preds = %if.end73
  %call82 = call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 3, i16 noundef zeroext 8, i16 noundef zeroext 0, ptr noundef null)
  %driver_info = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 3
  %16 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_info, align 4
  %and = and i32 %17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp83.not = icmp eq i32 %and, 4
  br i1 %cmp83.not, label %if.end81.if.end88_crit_edge, label %if.then84

if.end81.if.end88_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %call85 = call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 4, i16 noundef zeroext 32726, i16 noundef zeroext 2, ptr noundef nonnull %zero)
  %call86 = call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 4, i16 noundef zeroext 32735, i16 noundef zeroext 2, ptr noundef nonnull %zero)
  %call87 = call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 4, i16 noundef zeroext 32717, i16 noundef zeroext 2, ptr noundef nonnull %zero)
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end81.if.end88_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1844) #14
  %call99 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call99, label %if.end88.if.end155_crit_edge, label %if.then116

if.end88.if.end155_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155

if.then116:                                       ; preds = %if.end88
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry117) #14
  %18 = call ptr @memset(ptr %__wq_entry117, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry117, i32 noundef 0) #14
  %sync_q122 = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 7
  %call123329 = call i32 @prepare_to_wait_event(ptr noundef %sync_q122, ptr noundef nonnull %__wq_entry117, i32 noundef 1) #14
  %call125330 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call125330, label %if.then116.for.end151_crit_edge, label %if.then116.if.end143_crit_edge

if.then116.if.end143_crit_edge:                   ; preds = %if.then116
  br label %if.end143

if.then116.for.end151_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end151

if.end143:                                        ; preds = %cleanup148.if.end143_crit_edge, %if.then116.if.end143_crit_edge
  %__ret118.1332 = phi i32 [ %__ret118.1, %cleanup148.if.end143_crit_edge ], [ 100, %if.then116.if.end143_crit_edge ]
  %call123331 = phi i32 [ %call123, %cleanup148.if.end143_crit_edge ], [ %call123329, %if.then116.if.end143_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123331)
  %tobool144.not = icmp eq i32 %call123331, 0
  br i1 %tobool144.not, label %cleanup148, label %if.end143.__out153_crit_edge

if.end143.__out153_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out153

cleanup148:                                       ; preds = %if.end143
  %call147 = call i32 @schedule_timeout(i32 noundef %__ret118.1332) #14
  %call123 = call i32 @prepare_to_wait_event(ptr noundef %sync_q122, ptr noundef nonnull %__wq_entry117, i32 noundef 1) #14
  %call125 = call zeroext i1 @kthread_should_stop() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool130.not = icmp eq i32 %call147, 0
  %19 = select i1 %call125, i1 %tobool130.not, i1 false
  %__ret118.1 = select i1 %19, i32 1, i32 %call147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret118.1)
  %tobool136.not = icmp eq i32 %__ret118.1, 0
  %20 = select i1 %call125, i1 true, i1 %tobool136.not
  br i1 %20, label %cleanup148.for.end151_crit_edge, label %cleanup148.if.end143_crit_edge

cleanup148.if.end143_crit_edge:                   ; preds = %cleanup148
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

cleanup148.for.end151_crit_edge:                  ; preds = %cleanup148
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end151

for.end151:                                       ; preds = %cleanup148.for.end151_crit_edge, %if.then116.for.end151_crit_edge
  %__ret118.1.lcssa = phi i32 [ 100, %if.then116.for.end151_crit_edge ], [ %__ret118.1, %cleanup148.for.end151_crit_edge ]
  call void @finish_wait(ptr noundef %sync_q122, ptr noundef nonnull %__wq_entry117) #14
  br label %__out153

__out153:                                         ; preds = %for.end151, %if.end143.__out153_crit_edge
  %__ret118.2311 = phi i32 [ %__ret118.1.lcssa, %for.end151 ], [ %call123331, %if.end143.__out153_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry117) #14
  br label %if.end155

if.end155:                                        ; preds = %__out153, %if.end88.if.end155_crit_edge
  %__ret90.1 = phi i32 [ 100, %if.end88.if.end155_crit_edge ], [ %__ret118.2311, %__out153 ]
  %call157 = call zeroext i1 @kthread_should_stop() #14
  %spec.select290 = select i1 %call157, i32 -19, i32 %__ret90.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select290)
  %cmp161 = icmp slt i32 %spec.select290, 0
  br i1 %cmp161, label %if.end155.cleanup229_crit_edge, label %if.end163

if.end155.cleanup229_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup229

if.end163:                                        ; preds = %if.end155
  %21 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_info, align 4
  %and165 = and i32 %22, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and165)
  %cmp166 = icmp eq i32 %and165, 4
  %cmv_dsc = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 12
  br i1 %cmp166, label %if.then167, label %if.else

if.then167:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %cmv_dsc to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 3857, ptr %cmv_dsc, align 4
  br label %if.end170

if.else:                                          ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %cmv_dsc to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 113, ptr %cmv_dsc, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.else, %if.then167
  %25 = ptrtoint ptr %booting to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %booting, align 4
  %pageno = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 14
  %26 = ptrtoint ptr %pageno to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %pageno, align 4
  %ovl = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 15
  %27 = ptrtoint ptr %ovl to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %ovl, align 2
  %task = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %task) #14
  %call173 = call fastcc i32 @wait_cmv_ack(ptr noundef %sc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.end170.cleanup229_crit_edge, label %do.body177

if.end170.cleanup229_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup229

do.body177:                                       ; preds = %if.end170
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp178 = icmp ugt i32 %29, 1
  br i1 %cmp178, label %do.body180, label %do.body177.do.end200_crit_edge

do.body177.do.end200_crit_edge:                   ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end200

do.body180:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_start_reset.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_start_reset, %if.then192)) #14
          to label %do.end200 [label %if.then192], !srcloc !690

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc, align 4
  %dev194 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_start_reset.__UNIQUE_ID_ddebug500, ptr noundef %dev194, ptr noundef nonnull @.str.209) #14
  br label %do.end200

do.end200:                                        ; preds = %if.then192, %do.body180, %do.body177.do.end200_crit_edge
  %send_cmvs = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 21
  %32 = ptrtoint ptr %send_cmvs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %send_cmvs, align 4
  %call201 = call i32 %33(ptr noundef %sc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %do.end200.cleanup229_crit_edge, label %if.end204

do.end200.cleanup229_crit_edge:                   ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup229

if.end204:                                        ; preds = %do.end200
  %reset = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 6
  %34 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %reset, align 4
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp206 = icmp ugt i32 %35, 1
  br i1 %cmp206, label %do.body208, label %if.end204.cleanup229_crit_edge

if.end204.cleanup229_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup229

do.body208:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_start_reset.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_start_reset, %if.then220)) #14
          to label %cleanup229 [label %if.then220], !srcloc !690

if.then220:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sc, align 4
  %dev222 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_start_reset.__UNIQUE_ID_ddebug501, ptr noundef %dev222, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.207) #14
  br label %cleanup229

cleanup229:                                       ; preds = %if.then220, %do.body208, %if.end204.cleanup229_crit_edge, %do.end200.cleanup229_crit_edge, %if.end170.cleanup229_crit_edge, %if.end155.cleanup229_crit_edge, %if.end73.cleanup229_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end73.cleanup229_crit_edge ], [ %spec.select290, %if.end155.cleanup229_crit_edge ], [ %call173, %if.end170.cleanup229_crit_edge ], [ %call201, %do.end200.cleanup229_crit_edge ], [ %call201, %if.then220 ], [ %call201, %if.end204.cleanup229_crit_edge ], [ %call201, %do.body208 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zero) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uea_stop(ptr noundef %sc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.body1, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stop.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stop, %if.then4)) #14
          to label %do.end7 [label %if.then4], !srcloc !690

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stop.__UNIQUE_ID_ddebug522, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.211) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.body1, %entry.do.end7_crit_edge
  %kthread = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 8
  %3 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kthread, align 4
  %call8 = tail call i32 @kthread_stop(ptr noundef %4) #14
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.not = icmp eq i32 %5, 0
  br i1 %cmp10.not, label %do.end7.do.end32_crit_edge, label %do.body12

do.end7.do.end32_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end32

do.body12:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stop.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stop, %if.then24)) #14
          to label %do.end32 [label %if.then24], !srcloc !690

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stop.__UNIQUE_ID_ddebug523, ptr noundef %dev26, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.211, i32 noundef %call8) #14
  br label %do.end32

do.end32:                                         ; preds = %if.then24, %do.body12, %do.end7.do.end32_crit_edge
  %call33 = tail call fastcc i32 @uea_request(ptr noundef %sc, i16 noundef zeroext 3, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef null)
  %urb_int = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 17
  %8 = ptrtoint ptr %urb_int to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb_int, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #14
  %10 = ptrtoint ptr %urb_int to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb_int, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %13) #14
  %14 = ptrtoint ptr %urb_int to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb_int, align 4
  tail call void @usb_free_urb(ptr noundef %15) #14
  %task = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 13
  %call36 = tail call zeroext i1 @flush_work(ptr noundef %task) #14
  %dsp_firm = getelementptr inbounds %struct.uea_softc, ptr %sc, i32 0, i32 16
  %16 = ptrtoint ptr %dsp_firm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_firm, align 4
  tail call void @release_firmware(ptr noundef %17) #14
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp38 = icmp ugt i32 %18, 1
  br i1 %cmp38, label %do.body40, label %do.end32.do.end60_crit_edge

do.end32.do.end60_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60

do.body40:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uea_stop.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uea_stop, %if.then52)) #14
          to label %do.end60 [label %if.then52], !srcloc !690

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc, align 4
  %dev54 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uea_stop.__UNIQUE_ID_ddebug524, ptr noundef %dev54, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.211) #14
  br label %do.end60

do.end60:                                         ; preds = %if.then52, %do.body40, %do.end32.do.end60_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbatm_usb_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_status_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %stats = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_status_store(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %reset = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %reset, align 4
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %count, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_mflags_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %mflags = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 2
  %4 = ptrtoint ptr %mflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mflags, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  %6 = ptrtoint ptr %mflags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mflags, align 4
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_human_status_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  %driver_info = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_info, align 4
  %and = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp eq i32 %and, 4
  %stats = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stats, align 4
  br i1 %cmp, label %if.then1, label %if.end9

if.then1:                                         ; preds = %if.end
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %7, label %if.then1.sw.default18_crit_edge [
    i32 0, label %if.then1.sw.bb10_crit_edge
    i32 1, label %if.then1.sw.bb10_crit_edge39
    i32 3, label %if.then1.sw.bb10_crit_edge40
    i32 4, label %if.then1.sw.bb10_crit_edge41
    i32 5, label %if.then1.sw.bb12_crit_edge
    i32 6, label %if.then1.sw.bb12_crit_edge42
    i32 9, label %if.then1.sw.bb12_crit_edge43
    i32 10, label %if.then1.sw.bb12_crit_edge44
    i32 7, label %if.then1.sw.bb14_crit_edge
    i32 2, label %if.then1.sw.bb16_crit_edge
  ]

if.then1.sw.bb16_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.then1.sw.bb14_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

if.then1.sw.bb12_crit_edge44:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb12

if.then1.sw.bb12_crit_edge43:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb12

if.then1.sw.bb12_crit_edge42:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb12

if.then1.sw.bb12_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb12

if.then1.sw.bb10_crit_edge41:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

if.then1.sw.bb10_crit_edge40:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

if.then1.sw.bb10_crit_edge39:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

if.then1.sw.bb10_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

if.then1.sw.default18_crit_edge:                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default18

if.end9:                                          ; preds = %if.end
  %shr = lshr i32 %7, 8
  %and8 = and i32 %shr, 15
  %9 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %and8, label %if.end9.sw.default18_crit_edge [
    i32 0, label %if.end9.sw.bb10_crit_edge
    i32 1, label %if.end9.sw.bb12_crit_edge
    i32 2, label %if.end9.sw.bb14_crit_edge
    i32 3, label %if.end9.sw.bb16_crit_edge
  ]

if.end9.sw.bb16_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end9.sw.bb14_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

if.end9.sw.bb12_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb12

if.end9.sw.bb10_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb10

if.end9.sw.default18_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default18

sw.bb10:                                          ; preds = %if.end9.sw.bb10_crit_edge, %if.then1.sw.bb10_crit_edge, %if.then1.sw.bb10_crit_edge39, %if.then1.sw.bb10_crit_edge40, %if.then1.sw.bb10_crit_edge41
  %10 = call ptr @memcpy(ptr %buf, ptr @.str.221, i32 18)
  br label %out

sw.bb12:                                          ; preds = %if.end9.sw.bb12_crit_edge, %if.then1.sw.bb12_crit_edge, %if.then1.sw.bb12_crit_edge42, %if.then1.sw.bb12_crit_edge43, %if.then1.sw.bb12_crit_edge44
  %11 = call ptr @memcpy(ptr %buf, ptr @.str.222, i32 23)
  br label %out

sw.bb14:                                          ; preds = %if.end9.sw.bb14_crit_edge, %if.then1.sw.bb14_crit_edge
  %12 = call ptr @memcpy(ptr %buf, ptr @.str.223, i32 22)
  br label %out

sw.bb16:                                          ; preds = %if.end9.sw.bb16_crit_edge, %if.then1.sw.bb16_crit_edge
  %13 = call ptr @memcpy(ptr %buf, ptr @.str.224, i32 30)
  br label %out

sw.default18:                                     ; preds = %if.end9.sw.default18_crit_edge, %if.then1.sw.default18_crit_edge
  %14 = call ptr @memcpy(ptr %buf, ptr @.str.225, i32 24)
  br label %out

out:                                              ; preds = %sw.default18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 23, %sw.default18 ], [ 29, %sw.bb16 ], [ 21, %sw.bb14 ], [ 22, %sw.bb12 ], [ 17, %sw.bb10 ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_delin_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  %driver_info = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_info, align 4
  %and = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp eq i32 %and, 4
  %flags = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  br i1 %cmp, label %if.then1, label %if.else13

if.then1:                                         ; preds = %if.end
  %and2 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then1.if.end29_crit_edge

if.then1.if.end29_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  %and8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select = select i1 %tobool9.not, ptr @.str.227, ptr @.str.229
  br label %if.end29

if.else13:                                        ; preds = %if.end
  %and17 = and i32 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else20, label %if.else13.if.end29_crit_edge

if.else13.if.end29_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.else20:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  %and24 = and i32 %7, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %spec.select36 = select i1 %tobool25.not, ptr @.str.227, ptr @.str.229
  br label %if.end29

if.end29:                                         ; preds = %if.else20, %if.else13.if.end29_crit_edge, %if.else, %if.then1.if.end29_crit_edge
  %delin.0 = phi ptr [ @.str.228, %if.then1.if.end29_crit_edge ], [ %spec.select, %if.else ], [ @.str.230, %if.else13.if.end29_crit_edge ], [ %spec.select36, %if.else20 ]
  %call30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.231, ptr noundef nonnull %delin.0)
  br label %out

out:                                              ; preds = %if.end29, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call30, %if.end29 ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_vidcpe_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vidcpe = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 3
  %4 = ptrtoint ptr %vidcpe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vidcpe, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_usrate_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %usrate = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 6
  %4 = ptrtoint ptr %usrate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usrate, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_dsrate_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dsrate = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 5
  %4 = ptrtoint ptr %dsrate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsrate, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_usattenuation_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %usattenuation = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 13
  %4 = ptrtoint ptr %usattenuation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usattenuation, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_dsattenuation_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dsattenuation = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 14
  %4 = ptrtoint ptr %dsattenuation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsattenuation, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_usmargin_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %usmargin = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 16
  %4 = ptrtoint ptr %usmargin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usmargin, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_dsmargin_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dsmargin = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 15
  %4 = ptrtoint ptr %dsmargin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsmargin, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_txflow_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %txflow = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 11
  %4 = ptrtoint ptr %txflow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txflow, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_rxflow_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %rxflow = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 12
  %4 = ptrtoint ptr %rxflow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxflow, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_uscorr_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %uscorr = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 10
  %4 = ptrtoint ptr %uscorr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uscorr, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_dscorr_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dscorr = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 9
  %4 = ptrtoint ptr %dscorr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dscorr, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_usunc_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %usunc = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 8
  %4 = ptrtoint ptr %usunc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usunc, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_dsunc_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dsunc = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 7
  %4 = ptrtoint ptr %dsunc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsunc, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_firmid_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uea_mutex, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %dev_to_uea.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

dev_to_uea.exit:                                  ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_to_uea.exit.out_crit_edge, label %if.end

dev_to_uea.exit.out_crit_edge:                    ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %dev_to_uea.exit
  call void @__sanitizer_cov_trace_pc() #16
  %firmid = getelementptr inbounds %struct.uea_softc, ptr %3, i32 0, i32 22, i32 0, i32 17
  %4 = ptrtoint ptr %firmid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %firmid, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull @.str.218, i32 noundef %5)
  br label %out

out:                                              ; preds = %if.end, %dev_to_uea.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_uea.exit.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -19, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uea_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 270)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 270)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !139, !140, !141, !143, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !194, !196, !197, !199, !200, !202, !203, !204, !206, !207, !208, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !224, !225, !227, !229, !230, !232, !233, !234, !236, !237, !238, !240, !242, !244, !245, !247, !248, !250, !252, !254, !255, !256, !258, !260, !261, !263, !264, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !285, !286, !287, !288, !290, !291, !293, !294, !296, !298, !299, !300, !302, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !318, !319, !320, !322, !323, !324, !325, !327, !328, !329, !331, !332, !334, !335, !336, !338, !339, !340, !341, !343, !344, !345, !346, !348, !349, !350, !352, !354, !355, !356, !358, !359, !360, !362, !364, !366, !367, !368, !370, !371, !373, !374, !375, !377, !378, !379, !381, !382, !384, !385, !387, !388, !389, !391, !393, !395, !397, !399, !401, !403, !404, !405, !407, !408, !410, !412, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !433, !435, !437, !438, !440, !442, !443, !444, !446, !448, !449, !451, !453, !455, !456, !458, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !476, !478, !479, !480, !482, !483, !485, !486, !488, !490, !491, !492, !494, !495, !496, !498, !499, !501, !503, !504, !506, !507, !508, !510, !511, !512, !514, !515, !517, !518, !520, !522, !523, !525, !526, !528, !529, !531, !532, !533, !535, !536, !538, !539, !540, !542, !544, !545, !547, !548, !549, !551, !552, !553, !555, !556, !557, !559, !560, !562, !564, !565, !567, !568, !569, !571, !572, !574, !576, !578, !579, !581, !582, !584, !586, !587, !589, !590, !591, !593, !595, !596, !597, !599, !601, !602, !604, !606, !607, !609, !611, !612, !614, !615, !617, !619, !621, !623, !625, !627, !628, !630, !632, !634, !636, !638, !640, !641, !643, !644, !646, !647, !649, !650, !652, !653, !655, !656, !658, !659, !661, !662, !664, !665, !667, !668, !670, !671, !673, !674, !676, !677, !679}
!llvm.named.register.sp = !{!680}
!llvm.module.flags = !{!681, !682, !683, !684, !685, !686, !687, !688}
!llvm.ident = !{!689}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 533, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype462, !1, !"__UNIQUE_ID_debugtype462", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug463, !4, !"__UNIQUE_ID_debug463", i1 false, i1 false}
!4 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 534, i32 1}
!5 = !{ptr @__param_altsetting, !6, !"__param_altsetting", i1 false, i1 false}
!6 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 535, i32 1}
!7 = !{ptr @__UNIQUE_ID_altsettingtype464, !6, !"__UNIQUE_ID_altsettingtype464", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_altsetting465, !9, !"__UNIQUE_ID_altsetting465", i1 false, i1 false}
!9 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 536, i32 1}
!10 = !{ptr @__param_sync_wait, !11, !"__param_sync_wait", i1 false, i1 false}
!11 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 538, i32 1}
!12 = !{ptr @__UNIQUE_ID_sync_waittype466, !11, !"__UNIQUE_ID_sync_waittype466", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_sync_wait467, !14, !"__UNIQUE_ID_sync_wait467", i1 false, i1 false}
!14 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 539, i32 1}
!15 = !{ptr @__param_cmv_file, !16, !"__param_cmv_file", i1 false, i1 false}
!16 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 540, i32 1}
!17 = !{ptr @__UNIQUE_ID_cmv_filetype468, !16, !"__UNIQUE_ID_cmv_filetype468", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_cmv_file469, !19, !"__UNIQUE_ID_cmv_file469", i1 false, i1 false}
!19 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 541, i32 1}
!20 = !{ptr @__param_annex, !21, !"__param_annex", i1 false, i1 false}
!21 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 543, i32 1}
!22 = !{ptr @__UNIQUE_ID_annextype470, !21, !"__UNIQUE_ID_annextype470", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_annex471, !24, !"__UNIQUE_ID_annex471", i1 false, i1 false}
!24 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 544, i32 1}
!25 = !{ptr @__initcall__kmod_ueagle_atm__530_2726_uea_driver_init6, !26, !"__initcall__kmod_ueagle_atm__530_2726_uea_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2726, i32 1}
!27 = !{ptr @__exitcall_uea_driver_exit, !26, !"__exitcall_uea_driver_exit", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_author531, !29, !"__UNIQUE_ID_author531", i1 false, i1 false}
!29 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2728, i32 1}
!30 = !{ptr @__UNIQUE_ID_description532, !31, !"__UNIQUE_ID_description532", i1 false, i1 false}
!31 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2729, i32 1}
!32 = !{ptr @__UNIQUE_ID_file533, !33, !"__UNIQUE_ID_file533", i1 false, i1 false}
!33 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2730, i32 1}
!34 = !{ptr @__UNIQUE_ID_license534, !33, !"__UNIQUE_ID_license534", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_firmware535, !36, !"__UNIQUE_ID_firmware535", i1 false, i1 false}
!36 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2731, i32 1}
!37 = !{ptr @__UNIQUE_ID_firmware536, !38, !"__UNIQUE_ID_firmware536", i1 false, i1 false}
!38 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2732, i32 1}
!39 = !{ptr @__UNIQUE_ID_firmware537, !40, !"__UNIQUE_ID_firmware537", i1 false, i1 false}
!40 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2733, i32 1}
!41 = !{ptr @__UNIQUE_ID_firmware538, !42, !"__UNIQUE_ID_firmware538", i1 false, i1 false}
!42 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2734, i32 1}
!43 = !{ptr @__UNIQUE_ID_firmware539, !44, !"__UNIQUE_ID_firmware539", i1 false, i1 false}
!44 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2735, i32 1}
!45 = !{ptr @__UNIQUE_ID_firmware540, !46, !"__UNIQUE_ID_firmware540", i1 false, i1 false}
!46 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2736, i32 1}
!47 = !{ptr @__UNIQUE_ID_firmware541, !48, !"__UNIQUE_ID_firmware541", i1 false, i1 false}
!48 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2737, i32 1}
!49 = !{ptr @__UNIQUE_ID_firmware542, !50, !"__UNIQUE_ID_firmware542", i1 false, i1 false}
!50 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2738, i32 1}
!51 = !{ptr @__UNIQUE_ID_firmware543, !52, !"__UNIQUE_ID_firmware543", i1 false, i1 false}
!52 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2739, i32 1}
!53 = !{ptr @__UNIQUE_ID_firmware544, !54, !"__UNIQUE_ID_firmware544", i1 false, i1 false}
!54 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2740, i32 1}
!55 = !{ptr @__UNIQUE_ID_firmware545, !56, !"__UNIQUE_ID_firmware545", i1 false, i1 false}
!56 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2741, i32 1}
!57 = !{ptr @__UNIQUE_ID_firmware546, !58, !"__UNIQUE_ID_firmware546", i1 false, i1 false}
!58 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2742, i32 1}
!59 = !{ptr @__UNIQUE_ID_firmware547, !60, !"__UNIQUE_ID_firmware547", i1 false, i1 false}
!60 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2743, i32 1}
!61 = !{ptr @__UNIQUE_ID_firmware548, !62, !"__UNIQUE_ID_firmware548", i1 false, i1 false}
!62 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2744, i32 1}
!63 = !{ptr @__UNIQUE_ID_firmware549, !64, !"__UNIQUE_ID_firmware549", i1 false, i1 false}
!64 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2745, i32 1}
!65 = !{ptr @__UNIQUE_ID_firmware550, !66, !"__UNIQUE_ID_firmware550", i1 false, i1 false}
!66 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2746, i32 1}
!67 = !{ptr @__UNIQUE_ID_firmware551, !68, !"__UNIQUE_ID_firmware551", i1 false, i1 false}
!68 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2747, i32 1}
!69 = !{ptr @__UNIQUE_ID_firmware552, !70, !"__UNIQUE_ID_firmware552", i1 false, i1 false}
!70 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2748, i32 1}
!71 = !{ptr @__UNIQUE_ID_firmware553, !72, !"__UNIQUE_ID_firmware553", i1 false, i1 false}
!72 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2749, i32 1}
!73 = !{ptr @__UNIQUE_ID_firmware554, !74, !"__UNIQUE_ID_firmware554", i1 false, i1 false}
!74 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2750, i32 1}
!75 = !{ptr @__UNIQUE_ID_firmware555, !76, !"__UNIQUE_ID_firmware555", i1 false, i1 false}
!76 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2751, i32 1}
!77 = !{ptr @__UNIQUE_ID_firmware556, !78, !"__UNIQUE_ID_firmware556", i1 false, i1 false}
!78 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2752, i32 1}
!79 = !{ptr @__UNIQUE_ID_firmware557, !80, !"__UNIQUE_ID_firmware557", i1 false, i1 false}
!80 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2753, i32 1}
!81 = !{ptr @__UNIQUE_ID_firmware558, !82, !"__UNIQUE_ID_firmware558", i1 false, i1 false}
!82 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2754, i32 1}
!83 = !{ptr @__UNIQUE_ID_firmware559, !84, !"__UNIQUE_ID_firmware559", i1 false, i1 false}
!84 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2755, i32 1}
!85 = !{ptr @debug, !86, !"debug", i1 false, i1 false}
!86 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 526, i32 21}
!87 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!88 = !{ptr @__param_str_altsetting, !6, !"__param_str_altsetting", i1 false, i1 false}
!89 = !{ptr @__param_arr_altsetting, !6, !"__param_arr_altsetting", i1 false, i1 false}
!90 = !{ptr @altsetting, !91, !"altsetting", i1 false, i1 false}
!91 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 527, i32 21}
!92 = !{ptr @__param_str_sync_wait, !11, !"__param_str_sync_wait", i1 false, i1 false}
!93 = !{ptr @__param_arr_sync_wait, !11, !"__param_arr_sync_wait", i1 false, i1 false}
!94 = !{ptr @sync_wait, !95, !"sync_wait", i1 false, i1 false}
!95 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 529, i32 13}
!96 = !{ptr @__param_str_cmv_file, !16, !"__param_str_cmv_file", i1 false, i1 false}
!97 = !{ptr @__param_arr_cmv_file, !16, !"__param_arr_cmv_file", i1 false, i1 false}
!98 = !{ptr @cmv_file, !99, !"cmv_file", i1 false, i1 false}
!99 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 530, i32 14}
!100 = !{ptr @__param_str_annex, !21, !"__param_str_annex", i1 false, i1 false}
!101 = !{ptr @__param_arr_annex, !21, !"__param_arr_annex", i1 false, i1 false}
!102 = !{ptr @annex, !103, !"annex", i1 false, i1 false}
!103 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 531, i32 12}
!104 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.1, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2717, i32 10}
!107 = !{ptr @uea_driver, !108, !"uea_driver", i1 false, i1 false}
!108 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2716, i32 26}
!109 = !{ptr @.str.2, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2592, i32 2}
!111 = !{ptr @.str.3, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.4, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @uea_probe.__UNIQUE_ID_ddebug527, !110, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!114 = !{ptr @.str.5, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2593, i32 2}
!116 = !{ptr @.str.6, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.7, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @uea_probe._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @uea_probe._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.8, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 523, i32 2}
!122 = !{ptr @.str.9, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 523, i32 12}
!124 = !{ptr @.str.10, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 523, i32 23}
!126 = !{ptr @.str.11, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 523, i32 35}
!128 = !{ptr @.str.12, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 523, i32 48}
!130 = !{ptr @chip_name, !131, !"chip_name", i1 false, i1 false}
!131 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 522, i32 27}
!132 = !{ptr @.str.13, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 681, i32 18}
!134 = !{ptr @.str.14, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 683, i32 2}
!136 = !{ptr @uea_load_firmware.__UNIQUE_ID_ddebug474, !135, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!137 = !{ptr @.str.15, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 684, i32 2}
!139 = !{ptr @uea_load_firmware._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @uea_load_firmware._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.16, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 688, i32 13}
!143 = !{ptr @.str.17, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 691, i32 13}
!145 = !{ptr @.str.18, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 694, i32 13}
!147 = !{ptr @.str.19, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 697, i32 13}
!149 = !{ptr @.str.20, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 700, i32 13}
!151 = !{ptr @.str.22, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 708, i32 3}
!153 = !{ptr @.str.23, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @uea_load_firmware._entry.21, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @uea_load_firmware._entry_ptr.24, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.26, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 710, i32 3}
!158 = !{ptr @uea_load_firmware._entry.25, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @uea_load_firmware._entry_ptr.27, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.28, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 712, i32 2}
!162 = !{ptr @uea_load_firmware.__UNIQUE_ID_ddebug475, !161, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!163 = !{ptr @.str.29, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 608, i32 2}
!165 = !{ptr @uea_upload_pre_firmware.__UNIQUE_ID_ddebug472, !164, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!166 = !{ptr @.str.30, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 610, i32 3}
!168 = !{ptr @uea_upload_pre_firmware._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @uea_upload_pre_firmware._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.32, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 632, i32 3}
!172 = !{ptr @uea_upload_pre_firmware._entry.31, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @uea_upload_pre_firmware._entry_ptr.33, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.35, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 646, i32 4}
!176 = !{ptr @uea_upload_pre_firmware._entry.34, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @uea_upload_pre_firmware._entry_ptr.36, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.38, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 662, i32 3}
!180 = !{ptr @uea_upload_pre_firmware._entry.37, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @uea_upload_pre_firmware._entry_ptr.39, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.41, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 664, i32 3}
!184 = !{ptr @uea_upload_pre_firmware._entry.40, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @uea_upload_pre_firmware._entry_ptr.42, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.44, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 669, i32 2}
!188 = !{ptr @uea_upload_pre_firmware._entry.43, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @uea_upload_pre_firmware._entry_ptr.45, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @uea_upload_pre_firmware.__UNIQUE_ID_ddebug473, !191, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!191 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 672, i32 2}
!192 = !{ptr @uea_usbatm_driver, !193, !"uea_usbatm_driver", i1 false, i1 false}
!193 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2576, i32 29}
!194 = !{ptr @.str.46, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2498, i32 2}
!196 = !{ptr @uea_bind.__UNIQUE_ID_ddebug525, !195, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!197 = !{ptr @.str.47, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2548, i32 4}
!199 = !{ptr @uea_bind.__UNIQUE_ID_ddebug526, !198, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!200 = !{ptr @.str.48, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2549, i32 4}
!202 = !{ptr @uea_bind._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @uea_bind._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.50, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2552, i32 4}
!206 = !{ptr @uea_bind._entry.49, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @uea_bind._entry_ptr.51, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @modem_index, !209, !"modem_index", i1 false, i1 false}
!209 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 525, i32 12}
!210 = !{ptr @.str.52, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2456, i32 3}
!212 = !{ptr @.str.53, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @claim_interface._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @claim_interface._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.55, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2462, i32 3}
!217 = !{ptr @claim_interface._entry.54, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @claim_interface._entry_ptr.56, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.57, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2133, i32 2}
!221 = !{ptr @uea_boot.__UNIQUE_ID_ddebug519, !220, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!222 = !{ptr @uea_boot.__key, !223, !"__key", i1 false, i1 false}
!223 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2141, i32 3}
!224 = !{ptr @.str.58, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @uea_boot.__key.59, !226, !"__key", i1 false, i1 false}
!226 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2148, i32 3}
!227 = !{ptr @uea_boot.__key.60, !228, !"__key", i1 false, i1 false}
!228 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2151, i32 2}
!229 = !{ptr @.str.61, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.62, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2176, i32 3}
!232 = !{ptr @uea_boot._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @uea_boot._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.64, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2186, i32 3}
!236 = !{ptr @uea_boot._entry.63, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @uea_boot._entry_ptr.65, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @uea_boot.__UNIQUE_ID_ddebug520, !239, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!239 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2191, i32 2}
!240 = !{ptr @uea_boot.__UNIQUE_ID_ddebug521, !241, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!241 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2201, i32 2}
!242 = !{ptr @.str.66, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2031, i32 2}
!244 = !{ptr @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug513, !243, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!245 = !{ptr @.str.67, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2032, i32 2}
!247 = !{ptr @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug514, !246, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!248 = !{ptr @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug515, !249, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!249 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2043, i32 3}
!250 = !{ptr @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug516, !251, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!251 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2056, i32 2}
!252 = !{ptr @.str.68, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2060, i32 2}
!254 = !{ptr @uea_dispatch_cmv_e4._entry, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @uea_dispatch_cmv_e4._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @uea_dispatch_cmv_e4.__UNIQUE_ID_ddebug517, !257, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!257 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2064, i32 2}
!258 = !{ptr @.str.69, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1440, i32 2}
!260 = !{ptr @uea_stat_e4.__UNIQUE_ID_ddebug493, !259, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!261 = !{ptr @.str.70, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1453, i32 3}
!263 = !{ptr @uea_stat_e4.__UNIQUE_ID_ddebug494, !262, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!264 = !{ptr @.str.71, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1460, i32 3}
!266 = !{ptr @uea_stat_e4.__UNIQUE_ID_ddebug495, !265, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!267 = !{ptr @.str.72, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1463, i32 3}
!269 = !{ptr @uea_stat_e4._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @uea_stat_e4._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.74, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1469, i32 3}
!273 = !{ptr @.str.75, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @uea_stat_e4._entry.73, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @uea_stat_e4._entry_ptr.76, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.78, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1476, i32 3}
!278 = !{ptr @uea_stat_e4._entry.77, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @uea_stat_e4._entry_ptr.79, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.80, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1507, i32 3}
!282 = !{ptr @uea_stat_e4.__UNIQUE_ID_ddebug496, !281, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!283 = !{ptr @.str.81, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1227, i32 3}
!285 = !{ptr @.str.82, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @uea_read_cmv_e4._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @uea_read_cmv_e4._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.83, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1177, i32 2}
!290 = !{ptr @uea_cmv_e4.__UNIQUE_ID_ddebug485, !289, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!291 = !{ptr @.str.84, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1180, i32 2}
!293 = !{ptr @uea_cmv_e4.__UNIQUE_ID_ddebug486, !292, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!294 = !{ptr @uea_cmv_e4.__UNIQUE_ID_ddebug487, !295, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!295 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1202, i32 2}
!296 = !{ptr @.str.85, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1089, i32 2}
!298 = !{ptr @.str.86, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @wait_cmv_ack.__UNIQUE_ID_ddebug481, !297, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!300 = !{ptr @.str.87, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1108, i32 3}
!302 = !{ptr @.str.88, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @uea_request._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @uea_request._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.90, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1119, i32 3}
!307 = !{ptr @uea_request._entry.89, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @uea_request._entry_ptr.91, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.93, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1124, i32 3}
!311 = !{ptr @uea_request._entry.92, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @uea_request._entry_ptr.94, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.95, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1282, i32 2}
!315 = !{ptr @.str.96, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @uea_set_bulk_timeout._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @uea_set_bulk_timeout._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.97, !314, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.98, !314, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.99, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1758, i32 2}
!322 = !{ptr @.str.100, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @uea_send_cmvs_e4._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @uea_send_cmvs_e4._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.102, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1782, i32 3}
!327 = !{ptr @uea_send_cmvs_e4._entry.101, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @uea_send_cmvs_e4._entry_ptr.103, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.104, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1788, i32 2}
!331 = !{ptr @uea_send_cmvs_e4.__UNIQUE_ID_ddebug498, !330, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!332 = !{ptr @.str.106, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1789, i32 2}
!334 = !{ptr @uea_send_cmvs_e4._entry.105, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @uea_send_cmvs_e4._entry_ptr.107, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.108, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1257, i32 3}
!338 = !{ptr @.str.109, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @uea_write_cmv_e4._entry, !337, !"_entry", i1 false, i1 false}
!340 = !{ptr @uea_write_cmv_e4._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.110, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1627, i32 4}
!343 = !{ptr @.str.111, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @request_cmvs._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @request_cmvs._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.113, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1632, i32 3}
!348 = !{ptr @request_cmvs._entry.112, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @request_cmvs._entry_ptr.114, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.115, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1640, i32 32}
!352 = !{ptr @.str.117, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1642, i32 4}
!354 = !{ptr @request_cmvs._entry.116, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @request_cmvs._entry_ptr.118, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.120, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1670, i32 2}
!358 = !{ptr @request_cmvs._entry.119, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @request_cmvs._entry_ptr.121, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.122, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1574, i32 19}
!362 = !{ptr @.str.123, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1577, i32 21}
!364 = !{ptr @.str.124, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1591, i32 3}
!366 = !{ptr @request_cmvs_old._entry, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @request_cmvs_old._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @request_cmvs_old._entry.125, !369, !"_entry", i1 false, i1 false}
!369 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1609, i32 2}
!370 = !{ptr @request_cmvs_old._entry_ptr.126, !369, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.127, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1031, i32 2}
!373 = !{ptr @.str.128, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @uea_load_page_e4.__UNIQUE_ID_ddebug478, !372, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!375 = !{ptr @.str.129, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1044, i32 3}
!377 = !{ptr @uea_load_page_e4._entry, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @uea_load_page_e4._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.130, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1054, i32 2}
!381 = !{ptr @uea_load_page_e4.__UNIQUE_ID_ddebug479, !380, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!382 = !{ptr @.str.131, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1062, i32 2}
!384 = !{ptr @uea_load_page_e4.__UNIQUE_ID_ddebug480, !383, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!385 = !{ptr @.str.133, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1073, i32 3}
!387 = !{ptr @uea_load_page_e4._entry.132, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @uea_load_page_e4._entry_ptr.134, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.135, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 856, i32 15}
!391 = !{ptr @.str.136, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 858, i32 15}
!393 = !{ptr @.str.137, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 861, i32 15}
!395 = !{ptr @.str.138, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 863, i32 15}
!397 = !{ptr @.str.139, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 866, i32 15}
!399 = !{ptr @.str.140, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 868, i32 15}
!401 = !{ptr @.str.141, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 873, i32 3}
!403 = !{ptr @request_dsp._entry, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @request_dsp._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @request_dsp._entry.142, !406, !"_entry", i1 false, i1 false}
!406 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 885, i32 3}
!407 = !{ptr @request_dsp._entry_ptr.143, !406, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.144, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 782, i32 13}
!410 = !{ptr @.str.145, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 783, i32 13}
!412 = !{ptr @.str.146, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 999, i32 3}
!414 = !{ptr @.str.147, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @__uea_load_page_e4.__UNIQUE_ID_ddebug477, !413, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!416 = !{ptr @.str.148, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1019, i32 2}
!418 = !{ptr @__uea_load_page_e4._entry, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @__uea_load_page_e4._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.149, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 829, i32 3}
!422 = !{ptr @uea_idma_write._entry, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @uea_idma_write._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.151, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 841, i32 3}
!426 = !{ptr @uea_idma_write._entry.150, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @uea_idma_write._entry_ptr.152, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.153, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1969, i32 2}
!430 = !{ptr @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug508, !429, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!431 = !{ptr @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug509, !432, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!432 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1993, i32 3}
!433 = !{ptr @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug510, !434, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!434 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2007, i32 2}
!435 = !{ptr @uea_dispatch_cmv_e1._entry, !436, !"_entry", i1 false, i1 false}
!436 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2011, i32 2}
!437 = !{ptr @uea_dispatch_cmv_e1._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug511, !439, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!439 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2015, i32 2}
!440 = !{ptr @.str.155, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2019, i32 2}
!442 = !{ptr @uea_dispatch_cmv_e1._entry.154, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @uea_dispatch_cmv_e1._entry_ptr.156, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @uea_dispatch_cmv_e1.__UNIQUE_ID_ddebug512, !445, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!445 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2022, i32 2}
!446 = !{ptr @.str.157, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1297, i32 2}
!448 = !{ptr @uea_stat_e1.__UNIQUE_ID_ddebug488, !447, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!449 = !{ptr @uea_stat_e1.__UNIQUE_ID_ddebug489, !450, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!450 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1306, i32 3}
!451 = !{ptr @uea_stat_e1.__UNIQUE_ID_ddebug490, !452, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!452 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1311, i32 3}
!453 = !{ptr @.str.158, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1315, i32 3}
!455 = !{ptr @uea_stat_e1.__UNIQUE_ID_ddebug491, !454, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!456 = !{ptr @uea_stat_e1._entry, !457, !"_entry", i1 false, i1 false}
!457 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1319, i32 3}
!458 = !{ptr @uea_stat_e1._entry_ptr, !457, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.160, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1324, i32 3}
!461 = !{ptr @uea_stat_e1._entry.159, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @uea_stat_e1._entry_ptr.161, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.163, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1329, i32 3}
!465 = !{ptr @uea_stat_e1._entry.162, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @uea_stat_e1._entry_ptr.164, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.166, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1332, i32 3}
!469 = !{ptr @uea_stat_e1._entry.165, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @uea_stat_e1._entry_ptr.167, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @uea_stat_e1._entry.168, !472, !"_entry", i1 false, i1 false}
!472 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1339, i32 3}
!473 = !{ptr @uea_stat_e1._entry_ptr.169, !472, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @uea_stat_e1.__UNIQUE_ID_ddebug492, !475, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!475 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1365, i32 3}
!476 = !{ptr @.str.170, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1212, i32 3}
!478 = !{ptr @uea_read_cmv_e1._entry, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @uea_read_cmv_e1._entry_ptr, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.171, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1139, i32 2}
!482 = !{ptr @uea_cmv_e1.__UNIQUE_ID_ddebug482, !481, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!483 = !{ptr @.str.172, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1140, i32 2}
!485 = !{ptr @uea_cmv_e1.__UNIQUE_ID_ddebug483, !484, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!486 = !{ptr @uea_cmv_e1.__UNIQUE_ID_ddebug484, !487, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!487 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1167, i32 2}
!488 = !{ptr @.str.173, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1691, i32 2}
!490 = !{ptr @uea_send_cmvs_e1._entry, !489, !"_entry", i1 false, i1 false}
!491 = !{ptr @uea_send_cmvs_e1._entry_ptr, !489, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.175, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1703, i32 3}
!494 = !{ptr @uea_send_cmvs_e1._entry.174, !493, !"_entry", i1 false, i1 false}
!495 = !{ptr @uea_send_cmvs_e1._entry_ptr.176, !493, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @uea_send_cmvs_e1._entry.177, !497, !"_entry", i1 false, i1 false}
!497 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1727, i32 3}
!498 = !{ptr @uea_send_cmvs_e1._entry_ptr.178, !497, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @uea_send_cmvs_e1.__UNIQUE_ID_ddebug497, !500, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!500 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1733, i32 2}
!501 = !{ptr @uea_send_cmvs_e1._entry.179, !502, !"_entry", i1 false, i1 false}
!502 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1734, i32 2}
!503 = !{ptr @uea_send_cmvs_e1._entry_ptr.180, !502, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.181, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1244, i32 3}
!506 = !{ptr @uea_write_cmv_e1._entry, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @uea_write_cmv_e1._entry_ptr, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.182, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 937, i32 2}
!510 = !{ptr @.str.183, !509, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @uea_load_page_e1.__UNIQUE_ID_ddebug476, !509, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!512 = !{ptr @uea_load_page_e1._entry, !513, !"_entry", i1 false, i1 false}
!513 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 969, i32 2}
!514 = !{ptr @uea_load_page_e1._entry_ptr, !513, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @uea_load_page_e1._entry.184, !516, !"_entry", i1 false, i1 false}
!516 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 972, i32 2}
!517 = !{ptr @uea_load_page_e1._entry_ptr.185, !516, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.186, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1912, i32 18}
!520 = !{ptr @.str.187, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1914, i32 2}
!522 = !{ptr @load_XILINX_firmware.__UNIQUE_ID_ddebug504, !521, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!523 = !{ptr @load_XILINX_firmware._entry, !524, !"_entry", i1 false, i1 false}
!524 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1918, i32 3}
!525 = !{ptr @load_XILINX_firmware._entry_ptr, !524, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @load_XILINX_firmware._entry.188, !527, !"_entry", i1 false, i1 false}
!527 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1926, i32 3}
!528 = !{ptr @load_XILINX_firmware._entry_ptr.189, !527, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.191, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1935, i32 4}
!531 = !{ptr @load_XILINX_firmware._entry.190, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @load_XILINX_firmware._entry_ptr.192, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @load_XILINX_firmware._entry.193, !534, !"_entry", i1 false, i1 false}
!534 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1944, i32 3}
!535 = !{ptr @load_XILINX_firmware._entry_ptr.194, !534, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.196, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1953, i32 3}
!538 = !{ptr @load_XILINX_firmware._entry.195, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @load_XILINX_firmware._entry_ptr.197, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @load_XILINX_firmware.__UNIQUE_ID_ddebug507, !541, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!541 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1959, i32 2}
!542 = !{ptr @.str.198, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2092, i32 2}
!544 = !{ptr @uea_intr.__UNIQUE_ID_ddebug518, !543, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!545 = !{ptr @.str.199, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2095, i32 3}
!547 = !{ptr @uea_intr._entry, !546, !"_entry", i1 false, i1 false}
!548 = !{ptr @uea_intr._entry_ptr, !546, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @.str.201, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2102, i32 3}
!551 = !{ptr @uea_intr._entry.200, !550, !"_entry", i1 false, i1 false}
!552 = !{ptr @uea_intr._entry_ptr.202, !550, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @.str.204, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2116, i32 3}
!555 = !{ptr @uea_intr._entry.203, !554, !"_entry", i1 false, i1 false}
!556 = !{ptr @uea_intr._entry_ptr.205, !554, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @.str.206, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1891, i32 2}
!559 = !{ptr @uea_kthread.__UNIQUE_ID_ddebug502, !558, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!560 = !{ptr @uea_kthread.__UNIQUE_ID_ddebug503, !561, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!561 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1901, i32 2}
!562 = !{ptr @.str.207, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1807, i32 2}
!564 = !{ptr @uea_start_reset.__UNIQUE_ID_ddebug499, !563, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!565 = !{ptr @.str.208, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1808, i32 2}
!567 = !{ptr @uea_start_reset._entry, !566, !"_entry", i1 false, i1 false}
!568 = !{ptr @uea_start_reset._entry_ptr, !566, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @.str.209, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1868, i32 2}
!571 = !{ptr @uea_start_reset.__UNIQUE_ID_ddebug500, !570, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!572 = !{ptr @uea_start_reset.__UNIQUE_ID_ddebug501, !573, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!573 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 1875, i32 2}
!574 = !{ptr @.str.210, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!576 = !{ptr @.str.211, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2211, i32 2}
!578 = !{ptr @uea_stop.__UNIQUE_ID_ddebug522, !577, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!579 = !{ptr @.str.212, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2213, i32 2}
!581 = !{ptr @uea_stop.__UNIQUE_ID_ddebug523, !580, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!582 = !{ptr @uea_stop.__UNIQUE_ID_ddebug524, !583, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!583 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2225, i32 2}
!584 = !{ptr @.str.213, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2623, i32 2}
!586 = !{ptr @uea_disconnect.__UNIQUE_ID_ddebug528, !585, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!587 = !{ptr @.str.214, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2632, i32 3}
!589 = !{ptr @uea_disconnect._entry, !588, !"_entry", i1 false, i1 false}
!590 = !{ptr @uea_disconnect._entry_ptr, !588, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @uea_disconnect.__UNIQUE_ID_ddebug529, !592, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!592 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2635, i32 2}
!593 = !{ptr @.str.215, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 521, i32 8}
!595 = !{ptr @.str.216, !594, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @uea_mutex, !594, !"uea_mutex", i1 false, i1 false}
!597 = !{ptr @uea_ids, !598, !"uea_ids", i1 false, i1 false}
!598 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2641, i32 35}
!599 = !{ptr @uea_groups, !600, !"uea_groups", i1 false, i1 false}
!600 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2488, i32 1}
!601 = !{ptr @uea_group, !600, !"uea_group", i1 false, i1 false}
!602 = !{ptr @uea_attrs, !603, !"uea_attrs", i1 false, i1 false}
!603 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2467, i32 26}
!604 = !{ptr @.str.217, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2278, i32 8}
!606 = !{ptr @dev_attr_stat_status, !605, !"dev_attr_stat_status", i1 false, i1 false}
!607 = !{ptr @.str.218, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2255, i32 26}
!609 = !{ptr @.str.219, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2397, i32 1}
!611 = !{ptr @dev_attr_stat_mflags, !610, !"dev_attr_stat_mflags", i1 false, i1 false}
!612 = !{ptr @.str.220, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2341, i32 8}
!614 = !{ptr @dev_attr_stat_human_status, !613, !"dev_attr_stat_human_status", i1 false, i1 false}
!615 = !{ptr @.str.221, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2321, i32 22}
!617 = !{ptr @.str.222, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2324, i32 22}
!619 = !{ptr @.str.223, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2327, i32 22}
!621 = !{ptr @.str.224, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2330, i32 22}
!623 = !{ptr @.str.225, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2333, i32 22}
!625 = !{ptr @.str.226, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2373, i32 8}
!627 = !{ptr @dev_attr_stat_delin, !626, !"dev_attr_stat_delin", i1 false, i1 false}
!628 = !{ptr @.str.227, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2348, i32 16}
!630 = !{ptr @.str.228, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2357, i32 12}
!632 = !{ptr @.str.229, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2359, i32 12}
!634 = !{ptr @.str.230, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2362, i32 12}
!636 = !{ptr @.str.231, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2367, i32 21}
!638 = !{ptr @.str.232, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2398, i32 1}
!640 = !{ptr @dev_attr_stat_vidcpe, !639, !"dev_attr_stat_vidcpe", i1 false, i1 false}
!641 = !{ptr @.str.233, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2399, i32 1}
!643 = !{ptr @dev_attr_stat_usrate, !642, !"dev_attr_stat_usrate", i1 false, i1 false}
!644 = !{ptr @.str.234, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2400, i32 1}
!646 = !{ptr @dev_attr_stat_dsrate, !645, !"dev_attr_stat_dsrate", i1 false, i1 false}
!647 = !{ptr @.str.235, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2401, i32 1}
!649 = !{ptr @dev_attr_stat_usattenuation, !648, !"dev_attr_stat_usattenuation", i1 false, i1 false}
!650 = !{ptr @.str.236, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2402, i32 1}
!652 = !{ptr @dev_attr_stat_dsattenuation, !651, !"dev_attr_stat_dsattenuation", i1 false, i1 false}
!653 = !{ptr @.str.237, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2403, i32 1}
!655 = !{ptr @dev_attr_stat_usmargin, !654, !"dev_attr_stat_usmargin", i1 false, i1 false}
!656 = !{ptr @.str.238, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2404, i32 1}
!658 = !{ptr @dev_attr_stat_dsmargin, !657, !"dev_attr_stat_dsmargin", i1 false, i1 false}
!659 = !{ptr @.str.239, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2405, i32 1}
!661 = !{ptr @dev_attr_stat_txflow, !660, !"dev_attr_stat_txflow", i1 false, i1 false}
!662 = !{ptr @.str.240, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2406, i32 1}
!664 = !{ptr @dev_attr_stat_rxflow, !663, !"dev_attr_stat_rxflow", i1 false, i1 false}
!665 = !{ptr @.str.241, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2407, i32 1}
!667 = !{ptr @dev_attr_stat_uscorr, !666, !"dev_attr_stat_uscorr", i1 false, i1 false}
!668 = !{ptr @.str.242, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2408, i32 1}
!670 = !{ptr @dev_attr_stat_dscorr, !669, !"dev_attr_stat_dscorr", i1 false, i1 false}
!671 = !{ptr @.str.243, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2409, i32 1}
!673 = !{ptr @dev_attr_stat_usunc, !672, !"dev_attr_stat_usunc", i1 false, i1 false}
!674 = !{ptr @.str.244, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2410, i32 1}
!676 = !{ptr @dev_attr_stat_dsunc, !675, !"dev_attr_stat_dsunc", i1 false, i1 false}
!677 = !{ptr @.str.245, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/usb/atm/ueagle-atm.c", i32 2411, i32 1}
!679 = !{ptr @dev_attr_stat_firmid, !678, !"dev_attr_stat_firmid", i1 false, i1 false}
!680 = !{!"sp"}
!681 = !{i32 1, !"wchar_size", i32 2}
!682 = !{i32 1, !"min_enum_size", i32 4}
!683 = !{i32 8, !"branch-target-enforcement", i32 0}
!684 = !{i32 8, !"sign-return-address", i32 0}
!685 = !{i32 8, !"sign-return-address-all", i32 0}
!686 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!687 = !{i32 7, !"uwtable", i32 1}
!688 = !{i32 7, !"frame-pointer", i32 2}
!689 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!690 = !{i64 2149019051, i64 2149019056, i64 2149019069, i64 2149019113, i64 2149019147, i64 2149019168}
!691 = !{!"auto-init"}
!692 = !{i8 0, i8 2}
!693 = !{!"branch_weights", i32 2000, i32 1}
!694 = !{i64 2157240889, i64 2157241383, i64 2157240926, i64 2157240982, i64 2157241016, i64 2157241040, i64 2157241081, i64 2157241102, i64 2157241130, i64 2157241164}
!695 = !{!"branch_weights", i32 1, i32 2000}
